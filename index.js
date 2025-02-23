import express from "express";
import rootRouter from "./routes/root.js";
import bodyParser from "body-parser";
import userRouter from "./routes/user.js";
import productRouter from "./routes/product.js";
import cors from "cors";
import session from "express-session";
import adminRouter from "./routes/admin.js";
import adminRoutes from "./routes/adminRoutes.js";
import connectMongo from "./config/connectMongo.js";

connectMongo();

 
const __dirname = import.meta.dirname;
const port = 3000;

const app = express();
app.use(
  session({
    secret: "keyboard cat",
    resave: false,
    saveUninitialized: true,
  })
);
app.use(express.urlencoded({ extended: true }));
app.use(express.json());


app.use("/admin", adminRouter);
console.log("✅ Admin routes loaded!");




app.use(cors());

app.use("/users", userRouter);

app.use(express.static("public"));
app.use("/css", express.static(__dirname + "/node_modules/bootstrap/dist/css"));
app.use("/js", express.static(__dirname + "/node_modules/bootstrap/dist/js"));
app.set("view engine", "ejs");
app.set("views", "./views");

app.use(bodyParser.urlencoded());
app.use(bodyParser.json());

app.use("/", rootRouter);
app.use("/users", userRouter);
app.use("/api/products", productRouter);




app.listen(3000, () => {
  console.log("ExpressJS server started!!!");
});