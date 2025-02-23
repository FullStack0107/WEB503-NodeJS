-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 22, 2025 lúc 06:27 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demonode2025`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `img`, `price`) VALUES
(1, 'Product 1', 'Description for Product 1', 'product1.jpg', 100),
(2, 'Product 2', 'Description for Product 2', 'product2.jpg', 150),
(3, 'Product 3', 'Description for Product 3', 'product3.jpg', 200),
(4, 'Product 4', 'Description for Product 4', 'product4.jpg', 250),
(5, 'Product 5', 'Description for Product 5', 'product5.jpg', 300),
(6, 'Product 6', 'Description for Product 6', 'product6.jpg', 350),
(7, 'Product 7', 'Description for Product 7', 'product7.jpg', 400),
(8, 'Product 8', 'Description for Product 8', 'product8.jpg', 450),
(9, 'Product 9', 'Description for Product 9', 'product9.jpg', 500),
(10, 'Product 10', 'Description for Product 10', 'product10.jpg', 550),
(11, 'Product 11', 'Description for Product 11', 'product11.jpg', 600),
(12, 'Product 12', 'Description for Product 12', 'product12.jpg', 650),
(13, 'Product 13', 'Description for Product 13', 'product13.jpg', 700),
(14, 'Product 14', 'Description for Product 14', 'product14.jpg', 750),
(15, 'Product 15', 'Description for Product 15', 'product15.jpg', 800),
(16, 'Product 16', 'Description for Product 16', 'product16.jpg', 850),
(17, 'Product 17', 'Description for Product 17', 'product17.jpg', 900),
(18, 'Product 18', 'Description for Product 18', 'product18.jpg', 950),
(19, 'Product 19', 'Description for Product 19', 'product19.jpg', 1000),
(20, 'Product 20', 'Description for Product 20', 'product20.jpg', 1050);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `fullname`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'user1', 'password1', 'user1@example.com', 'Nguyen Van A', '0123456789', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(2, 'user2', 'password2', 'user2@example.com', 'Tran Thi B', '0987654321', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(3, 'user3', 'password3', 'user3@example.com', 'Le Van C', '0111222333', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(4, 'user4', 'password4', 'user4@example.com', 'Pham Thi D', '0901234567', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(5, 'user5', 'password5', 'user5@example.com', 'Hoang Van E', '0912345678', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(6, 'user6', 'password6', 'user6@example.com', 'Nguyen Thi F', '0923456789', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(7, 'user7', 'password7', 'user7@example.com', 'Pham Van G', '0934567890', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(8, 'user8', 'password8', 'user8@example.com', 'Tran Van H', '0945678901', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(9, 'user9', 'password9', 'user9@example.com', 'Nguyen Van I', '0956789012', '2025-02-20 15:38:06', '2025-02-20 15:38:06'),
(10, 'user10', 'password10', 'user10@example.com', 'Le Thi J', '0967890123', '2025-02-20 15:38:06', '2025-02-20 15:38:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
