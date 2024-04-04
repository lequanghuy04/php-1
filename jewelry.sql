-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2023 lúc 07:02 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jewelry`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsanpham`
--

CREATE TABLE `anhsanpham` (
  `id_anhsanpham` int(11) NOT NULL,
  `ma_sp` varchar(20) NOT NULL,
  `anhsp1` varchar(100) NOT NULL,
  `anhsp2` varchar(100) NOT NULL,
  `anhsp3` varchar(100) NOT NULL,
  `anhsp4` varchar(100) NOT NULL,
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsanpham`
--

INSERT INTO `anhsanpham` (`id_anhsanpham`, `ma_sp`, `anhsp1`, `anhsp2`, `anhsp3`, `anhsp4`, `role`) VALUES
(93, 'JE221123012106', 'sp-gbpfxmy000536-bong-tai-vang-14k-pnj-1.png', 'sp-gbpfxmy000536-bong-tai-vang-14k-pnj-1.png', 'sp-gbpfxmy000536-bong-tai-vang-14k-pnj-1.png', 'sp-gbpfxmy000536-bong-tai-vang-14k-pnj-1.png', 0),
(94, 'JE221123012347', 'sp-gnxmxmy008567-nhan-nam-vang-14k-pnj-1.png', 'sp-gnxmxmy008567-nhan-nam-vang-14k-pnj-1.png', 'sp-gnxmxmy008567-nhan-nam-vang-14k-pnj-1.png', 'sp-gnxmxmy008567-nhan-nam-vang-14k-pnj-1.png', 0),
(95, 'JE221123012607', 'gmztmxy060003-mat-day-chuyen-vang-14k-dinh-ngoc-trai-akoya-pnj-hello-kitty-01.png', 'gmztmxy060003-mat-day-chuyen-vang-14k-dinh-ngoc-trai-akoya-pnj-hello-kitty-01.png', 'gmztmxy060003-mat-day-chuyen-vang-14k-dinh-ngoc-trai-akoya-pnj-hello-kitty-01.png', 'gmztmxy060003-mat-day-chuyen-vang-14k-dinh-ngoc-trai-akoya-pnj-hello-kitty-01.png', 0),
(96, 'JE221123012745', 'sp-gc0000h000010-day-co-vang-14k-disney-pnj-the-little-mermaid-1.png', 'sp-gc0000h000010-day-co-vang-14k-disney-pnj-the-little-mermaid-1.png', 'sp-gc0000h000010-day-co-vang-14k-disney-pnj-the-little-mermaid-1.png', 'sp-gc0000h000010-day-co-vang-14k-disney-pnj-the-little-mermaid-1.png', 0),
(97, 'JE221123012939', 'sp-glxmxmy000995-lac-tay-vang-14k-dinh-da-cz-pnj-1.png', 'sp-glxmxmy000995-lac-tay-vang-14k-dinh-da-cz-pnj-1.png', 'sp-glxmxmy000995-lac-tay-vang-14k-dinh-da-cz-pnj-1.png', 'sp-glxmxmy000995-lac-tay-vang-14k-dinh-da-cz-pnj-1.png', 0),
(99, 'JE221123013313', 'DWR0099ARW-WG01A-thumbnail.jpg', 'DWR0099ARW-WG01A-thumbnail.jpg', 'DWR0099ARW-WG01A-thumbnail.jpg', 'DWR0099ARW-WG01A-thumbnail.jpg', 0),
(100, 'JE221123013439', 'DRF0136BRW-WG01A-hover.jpg', 'DRF0136BRW-WG01A-hover.jpg', 'DRF0136BRW-WG01A-hover.jpg', 'DRF0136BRW-WG01A-hover.jpg', 0),
(102, 'JE221123013525', 'VWR0222ARWWG-00-thumbnail.jpg', 'VWR0222ARWWG-00-thumbnail.jpg', 'VWR0222ARWWG-00-thumbnail.jpg', 'VWR0222ARWWG-00-thumbnail.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bienthe_size`
--

CREATE TABLE `bienthe_size` (
  `id_bienthesize` int(11) NOT NULL,
  `ma_sanpham` varchar(20) NOT NULL,
  `id_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bienthe_size`
--

INSERT INTO `bienthe_size` (`id_bienthesize`, `ma_sanpham`, `id_size`) VALUES
(142, 'JE221123012106', 43),
(143, 'JE221123012106', 44),
(144, 'JE221123012106', 46),
(150, 'JE221123012347', 43),
(151, 'JE221123012347', 44),
(152, 'JE221123012347', 45),
(153, 'JE221123012347', 46),
(154, 'JE221123012607', 44),
(155, 'JE221123012607', 45),
(156, 'JE221123012607', 46),
(157, 'JE221123012745', 43),
(158, 'JE221123012745', 44),
(159, 'JE221123012939', 44),
(160, 'JE221123012939', 45),
(161, 'JE221123012939', 46),
(162, 'JE221123012939', 47),
(163, 'JE221123013313', 44),
(164, 'JE221123013313', 45),
(165, 'JE221123013313', 46),
(166, 'JE221123013313', 47),
(167, 'JE221123013439', 43),
(168, 'JE221123013439', 44),
(169, 'JE221123013439', 45),
(170, 'JE221123013439', 46),
(171, 'JE221123013439', 47),
(172, 'JE221123013525', 43),
(173, 'JE221123013525', 46),
(174, 'JE221123013525', 47);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bosuutap`
--

CREATE TABLE `bosuutap` (
  `id_bst` int(11) NOT NULL,
  `ten_bst` varchar(30) NOT NULL,
  `img_bosuutap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bosuutap`
--

INSERT INTO `bosuutap` (`id_bst`, `ten_bst`, `img_bosuutap`) VALUES
(1, 'ITATY DELUNA', 'filez.jpg'),
(2, 'FRANCE ROUSE IV', 'lafiore.jpg'),
(3, 'DUCHUONG K04 VIP', 'murano.jpg'),
(4, 'THIT GA LUOC 2023', 'wedding-band.jpg'),
(5, 'Jewelry FPT', 'lafiore.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatlieu`
--

CREATE TABLE `chatlieu` (
  `id_chatlieu` int(11) NOT NULL,
  `ten_chatlieu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chatlieu`
--

INSERT INTO `chatlieu` (`id_chatlieu`, `ten_chatlieu`) VALUES
(1, 'Vàng'),
(2, 'Ngọc trai'),
(3, 'Kim Cương');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `id_giohang` int(11) NOT NULL,
  `ma_nguoidung` varchar(40) NOT NULL,
  `ma_sp` varchar(20) NOT NULL,
  `id_size` int(11) NOT NULL,
  `soluong_sp` varchar(11) NOT NULL,
  `thoi_gian_them` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`id_giohang`, `ma_nguoidung`, `ma_sp`, `id_size`, `soluong_sp`, `thoi_gian_them`) VALUES
(52, 'UNLOGUNLOG3kwuuq5MsQ', 'JE221123013525', 43, '1', ''),
(53, 'UNLOGUNLOG3kwuuq5MsQ', 'JE221123013313', 44, '1', ''),
(54, 'UNLOGUNLOGlAdBkFKNLM', 'JE221123013439', 43, '1', ''),
(55, 'UNLOGUNLOGlAdBkFKNLM', 'JE221123013439', 43, '1', ''),
(56, 'UNLOGUNLOGlAdBkFKNLM', 'JE221123013439', 43, '1', ''),
(57, 'UNLOGUNLOGlAdBkFKNLM', 'JE221123012347', 43, '3', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioitinh`
--

CREATE TABLE `gioitinh` (
  `id_gioitinh` int(11) NOT NULL,
  `ten_gioitinh` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gioitinh`
--

INSERT INTO `gioitinh` (`id_gioitinh`, `ten_gioitinh`) VALUES
(1, 'Nam'),
(2, 'Nu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(11) NOT NULL,
  `id_giohang` int(11) NOT NULL,
  `id_nguoidung` int(11) NOT NULL,
  `ngaytaohoadon` datetime NOT NULL,
  `trangthai_thanhtoan` int(1) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sodienthoai` varchar(20) NOT NULL,
  `giatri_hoadon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_tintuc`
--

CREATE TABLE `img_tintuc` (
  `id_imgtintuc` int(11) NOT NULL,
  `img_nen` varchar(30) NOT NULL,
  `img1` varchar(30) NOT NULL,
  `img2` varchar(30) NOT NULL,
  `img3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id_contact` int(11) NOT NULL,
  `id_nguoidung` varchar(20) NOT NULL,
  `contact_name` varchar(50) NOT NULL,
  `contact_sdt` varchar(10) NOT NULL,
  `contact_email` varchar(40) NOT NULL,
  `contact_title` varchar(50) NOT NULL,
  `contact_content` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id_contact`, `id_nguoidung`, `contact_name`, `contact_sdt`, `contact_email`, `contact_title`, `contact_content`) VALUES
(1, '', '123', '123', '123', '123', '123'),
(2, '', 'Đức Hường', '0962350555', 'duchuong', 'Trả hàng', 'Trả hàng vì hàng lỗi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id_magiamgia` int(11) NOT NULL,
  `ten_magiamgia` varchar(30) NOT NULL,
  `giatri_magiamgia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

CREATE TABLE `mathang` (
  `id_mathang` int(11) NOT NULL,
  `ten_mathang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`id_mathang`, `ten_mathang`) VALUES
(1, 'Nhẫn'),
(2, 'Lắc tay'),
(3, 'Vòng cổ'),
(4, 'Khuyên tai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id_nguoidung` int(11) NOT NULL,
  `tendangnhap` varchar(40) NOT NULL,
  `matkhau` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `sodienthoai` varchar(20) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id_nguoidung`, `tendangnhap`, `matkhau`, `email`, `diachi`, `sodienthoai`, `role`) VALUES
(30, 'duc', '1', '', NULL, '', 1),
(31, 'duc', '2', 'test', NULL, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `noidungtintuc`
--

CREATE TABLE `noidungtintuc` (
  `id_noidungtintuc` int(11) NOT NULL,
  `noidungdoan1` varchar(1000) NOT NULL,
  `noidungdoan2` varchar(1000) NOT NULL,
  `noidungdoan3` varchar(1000) NOT NULL,
  `noidungdoan4` varchar(1000) NOT NULL,
  `noidungdoan5` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_sp` varchar(20) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `gia_sp` varchar(15) NOT NULL,
  `chitiet_sp` varchar(200) NOT NULL,
  `id_chatlieu` int(11) NOT NULL,
  `id_mathang` int(11) NOT NULL,
  `id_bst` int(11) NOT NULL,
  `soluong_tonkho` int(11) NOT NULL,
  `role_prd` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ma_sp`, `ten_sp`, `gia_sp`, `chitiet_sp`, `id_chatlieu`, `id_mathang`, `id_bst`, `soluong_tonkho`, `role_prd`) VALUES
('JE221123012106', 'Bông tai pnj ', '3000000', 'Bông tai vàng đến từ thương hiệu italy', 1, 4, 1, 12, 0),
('JE221123012347', 'Nhẫn nam Hewir', '4000000', 'Nhẫn nam làm từ vàng 9999', 1, 3, 1, 40, 0),
('JE221123012607', 'Mặt dây chuyền Oloas', '6400000', 'Oloas được làm từ vàng nguyên khối trên đỉnh núi Nam Cực', 1, 4, 1, 3, 0),
('JE221123012745', 'Sauwer Hefae', '34000000', 'Sản phẩm đặc biệt từ vua Napoleon IV', 2, 2, 2, 2, 0),
('JE221123012939', 'Lắc tay Jusu', '3400000', 'Lắc tay được chế tác từ những người thợ kim hoàn hàng đầu thế giới', 1, 4, 3, 12, 0),
('JE221123013313', 'Nhẫn Kim Cương Raka34', '4300000', 'Nhẫn kim cương trang nhã dành cho độ tuổi đôi mươi', 1, 3, 3, 12, 0),
('JE221123013439', 'Nhẫn Mặt Trái Tim', '23000000', 'Tượng trưng cho tình yêu , quà tặng bạn nữ ý nghĩa', 1, 3, 3, 12, 0),
('JE221123013525', 'Nhẫn Đặc Quyền JEWE', '54000000', 'Nhẫn kim cương trang nhã dành cho độ tuổi đôi mươi', 1, 3, 3, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id_size` int(11) NOT NULL,
  `so_size` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id_size`, `so_size`) VALUES
(43, 34),
(44, 35),
(45, 36),
(46, 37),
(47, 38);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id_tintuc` int(11) NOT NULL,
  `id_noidungtintuc` int(200) NOT NULL,
  `id_imgtintuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  ADD PRIMARY KEY (`id_anhsanpham`);

--
-- Chỉ mục cho bảng `bienthe_size`
--
ALTER TABLE `bienthe_size`
  ADD PRIMARY KEY (`id_bienthesize`);

--
-- Chỉ mục cho bảng `bosuutap`
--
ALTER TABLE `bosuutap`
  ADD PRIMARY KEY (`id_bst`);

--
-- Chỉ mục cho bảng `chatlieu`
--
ALTER TABLE `chatlieu`
  ADD PRIMARY KEY (`id_chatlieu`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `gioitinh`
--
ALTER TABLE `gioitinh`
  ADD PRIMARY KEY (`id_gioitinh`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `img_tintuc`
--
ALTER TABLE `img_tintuc`
  ADD PRIMARY KEY (`id_imgtintuc`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id_contact`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id_magiamgia`);

--
-- Chỉ mục cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id_mathang`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id_nguoidung`);

--
-- Chỉ mục cho bảng `noidungtintuc`
--
ALTER TABLE `noidungtintuc`
  ADD PRIMARY KEY (`id_noidungtintuc`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_sp`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_tintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `anhsanpham`
--
ALTER TABLE `anhsanpham`
  MODIFY `id_anhsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `bienthe_size`
--
ALTER TABLE `bienthe_size`
  MODIFY `id_bienthesize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT cho bảng `bosuutap`
--
ALTER TABLE `bosuutap`
  MODIFY `id_bst` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `chatlieu`
--
ALTER TABLE `chatlieu`
  MODIFY `id_chatlieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `gioitinh`
--
ALTER TABLE `gioitinh`
  MODIFY `id_gioitinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `img_tintuc`
--
ALTER TABLE `img_tintuc`
  MODIFY `id_imgtintuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id_magiamgia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id_mathang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id_nguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `noidungtintuc`
--
ALTER TABLE `noidungtintuc`
  MODIFY `id_noidungtintuc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_tintuc` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
