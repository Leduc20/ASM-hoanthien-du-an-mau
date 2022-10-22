-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 22, 2022 lúc 04:46 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `active` bit(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='3';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id_bill` int(11) NOT NULL,
  `bill_name` varchar(200) NOT NULL,
  `bill_address` varchar(200) NOT NULL,
  `bill_phone` varchar(20) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1Thanh toán TT 2.Chuyển khoản 3.tT Online',
  `date_buy` varchar(55) DEFAULT NULL,
  `sum` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) DEFAULT 0 COMMENT '0.Đơn hàng mowsiu 1.Đang xử lý 2.Đang giao 3.Đã giao',
  `receive_name` varchar(200) DEFAULT NULL,
  `receive_address` varchar(200) DEFAULT NULL,
  `receive_phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_hh` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `id_bill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(10) NOT NULL,
  `content` varchar(50) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_hh` int(10) NOT NULL,
  `date_comment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `content`, `id_user`, `id_hh`, `date_comment`) VALUES
(64, 'hello\r\n', 7, 106, '07:29:16pm 21/10/2022'),
(65, 'quần tây', 7, 105, '07:29:27pm 21/10/2022'),
(66, 'dsadsa', 7, 105, '07:29:31pm 21/10/2022'),
(67, 'sdaĐASA', 7, 104, '07:29:38pm 21/10/2022'),
(68, 'dsadwd', 7, 104, '07:29:41pm 21/10/2022'),
(69, 'dsadwqe23', 7, 104, '07:29:45pm 21/10/2022'),
(71, 'sdfsdf', 7, 106, '07:31:35pm 21/10/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `commodities`
--

CREATE TABLE `commodities` (
  `id_commodities` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `commodities`
--

INSERT INTO `commodities` (`id_commodities`, `name`) VALUES
(41, 'Apple'),
(42, 'Sam Sung'),
(44, 'Yody'),
(46, 'Xiaomi'),
(47, 'Oppo'),
(48, 'Sandro');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_hh` int(11) NOT NULL,
  `name_pro` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` varchar(20) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `sale` varchar(50) NOT NULL,
  `view_pro` int(11) NOT NULL,
  `id_dm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_hh`, `name_pro`, `image`, `price`, `detail`, `sale`, `view_pro`, `id_dm`) VALUES
(95, 'Iphone 12 Pro Max', 'iphone 12 pro max.jpg', '14000000', 'Điện thoại iPhone 12 Pro Max: Nâng tầm đẳng cấp sử dụng Cứ mỗi năm, đến dạo cuối tháng 8 và gần đầu', '13900000', 12, 41),
(96, 'Iphone 12', 'iphone 12 pro max.jpg', '	32323', 'Điện thoại iPhone 12 Pro Max: Nâng tầm đẳng cấp sử dụng Cứ mỗi năm, đến dạo cuối tháng 8 và gần đầu', '	432432', 132, 41),
(97, 'Redmi note 8', 'redmi note 8.jpg', '32323', 'Giống như Xiaomi Redmi Note 8 cũ, máy đã kích hoạt được trang bị Snapdragon 660, đi kèm RAM 4GB, 32', '321321', 11, 46),
(98, 'Xiaomi redmi note 7', 'redmi note 7.jpg', '3000000', 'Giống như Xiaomi Redmi Note 7 cũ, máy đã kích hoạt được trang bị Snapdragon 660, đi kèm RAM 4GB, 32G', '230000', 12, 46),
(99, 'Sam Sung ultra 21', 'sam sung s22 ultra.jpeg', '1700000', 'Đúng như các thông tin được đồn đoán trước đó, mẫu flagship mới của gả khổng lồ Hàn Quốc được ra mắt', '16000000', 1, 42),
(100, 'Iphone 13 Pro Max 128 GB', 'iphone 13 promax.jpg', '27890000', '	iPhone 13 Pro Max chắc chắn sẽ là chiếc smartphone cao cấp được quan tâm nhiều nhất trong năm 2021.', '26789000', 1, 41),
(101, 'Áo khoác mùa thu dáng đẹp cho Nam', 'Co-ao-khoac-nam.jpg', '460000', 'Giữ ấm hiệu quả, mang lại sự an tâm cho bạn trong điều kiện thời tiết khắc nghiệt: mưa lạnh, gió mùa', '420000', 1, 44),
(102, 'Iphone 12', 'iphone-13.jpg', '21000000', 'Điện thoại iPhone 12 Pro Max: Nâng tầm đẳng cấp sử dụng Cứ mỗi năm, đến dạo cuối tháng 8 và gần đầu', '15000000', 1, 41),
(103, 'Quần short phối thêu', 'Sandro_SHPBE00042-94_V_1.jpg', '5340000', '	Quần short nam Sandro • Quần short • Lưng thun co giãn với dây rút • Hai túi ở hai bên • Hình th', '4560000', 144, 48),
(104, 'Quần len ống suông', 'Sandro_SHPPA00857-44_V_1.jpg', '6780000', 'Quần nam Sandro • Virgin wool trousers • Two slanted pockets at the sides and two piped pockets at', '5678000', 23, 48),
(105, 'Quần tây lưng co giãn', 'sandro_shppa00222-20_v_1.jpg', '5000000', 'Quần nam Sandro • Quần tây nam với lưng thun co giãn • Chất liệu pha len • Túi viền phía sau phối', '4000000', 55, 48),
(106, 'Quần jean chất vải tốt', 'Sandro_SHPPA00857-44_V_1.jpg', '459000', 'Quần nam Sandro • Quần tây nam với lưng thun co giãn • Chất liệu pha len • Túi viền phía sau phối', '40000', 345, 48),
(109, 'dsada', 'Sandro_SHPPA00857-44_V_1.jpg', '312321', '3dsdad', '321321', 2323, 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` int(12) DEFAULT NULL,
  `role` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id_user`, `name`, `password`, `email`, `address`, `phone`, `role`) VALUES
(7, 'lequangduc', '310302', 'ducnhat31032002@gmail.com', 'Hà Nôi', 0, 1),
(13, 'leduc', '31032002', 'duclqph25312@fpt.edu.vn', NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id_bill`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_bill` (`id_bill`),
  ADD KEY `id_hh` (`id_hh`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_hh` (`id_hh`);

--
-- Chỉ mục cho bảng `commodities`
--
ALTER TABLE `commodities`
  ADD PRIMARY KEY (`id_commodities`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_hh`),
  ADD KEY `products_ibfk_1` (`id_dm`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id_bill` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `commodities`
--
ALTER TABLE `commodities`
  MODIFY `id_commodities` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_hh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id_bill`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`id_hh`) REFERENCES `products` (`id_hh`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_hh`) REFERENCES `products` (`id_hh`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_dm`) REFERENCES `commodities` (`id_commodities`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
