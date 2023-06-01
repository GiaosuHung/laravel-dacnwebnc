-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2023 lúc 02:38 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `applestore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `tenNguoiDung` varchar(50) DEFAULT NULL,
  `tenTaiKhoan` varchar(50) DEFAULT NULL,
  `maSP` int(11) DEFAULT NULL,
  `noiDung` varchar(200) NOT NULL,
  `thoiGian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdbh`
--

CREATE TABLE `chitietdbh` (
  `maChiTietDonBanHang` int(11) NOT NULL,
  `maDonHang` int(11) DEFAULT NULL,
  `maSP` int(11) DEFAULT NULL,
  `soLuong` int(11) NOT NULL,
  `donGiaBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietgh`
--

CREATE TABLE `chitietgh` (
  `maChiTietGioHang` int(11) NOT NULL,
  `maGioHang` int(11) DEFAULT NULL,
  `maSP` int(11) DEFAULT NULL,
  `soLuong` int(11) NOT NULL,
  `donGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `maDanhGia` int(11) NOT NULL,
  `tenTK` varchar(50) DEFAULT NULL,
  `maSP` int(11) DEFAULT NULL,
  `soSAo` int(11) NOT NULL,
  `thoigian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donbanhang`
--

CREATE TABLE `donbanhang` (
  `maDonHang` int(11) NOT NULL,
  `tenTK` varchar(50) DEFAULT NULL,
  `tenKhachHang` varchar(50) NOT NULL,
  `ngayLap` date NOT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `tinhtrang` varchar(100) DEFAULT NULL,
  `phuongThucThanhToan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `maGioHang` int(11) NOT NULL,
  `tenTK` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `maND` int(11) NOT NULL,
  `tenND` varchar(100) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanloai`
--

CREATE TABLE `phanloai` (
  `maNhom` varchar(20) NOT NULL,
  `tenNhom` varchar(100) NOT NULL,
  `hinhAnh` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `maQuyen` varchar(20) NOT NULL,
  `tenQuyen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `maSP` int(11) NOT NULL,
  `maNhom` varchar(20) DEFAULT NULL,
  `tenSP` varchar(100) NOT NULL,
  `thongtinSP` varchar(100) NOT NULL,
  `hinhAnh` varchar(200) DEFAULT NULL,
  `mausac` varchar(20) NOT NULL,
  `kichthuoc` varchar(20) NOT NULL,
  `soLuongBan` int(11) NOT NULL,
  `soHienCo` int(11) NOT NULL,
  `nhaSX` varchar(50) NOT NULL,
  `tinhtrang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tenTK` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `maQuyen` varchar(20) DEFAULT NULL,
  `maND` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongke`
--

CREATE TABLE `thongke` (
  `tongSoLuong` int(11) NOT NULL,
  `doanhThu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD KEY `tenTaiKhoan` (`tenTaiKhoan`),
  ADD KEY `maSP` (`maSP`);

--
-- Chỉ mục cho bảng `chitietdbh`
--
ALTER TABLE `chitietdbh`
  ADD PRIMARY KEY (`maChiTietDonBanHang`),
  ADD KEY `maSP` (`maSP`),
  ADD KEY `maDonHang` (`maDonHang`);

--
-- Chỉ mục cho bảng `chitietgh`
--
ALTER TABLE `chitietgh`
  ADD PRIMARY KEY (`maChiTietGioHang`),
  ADD KEY `maGioHang` (`maGioHang`),
  ADD KEY `maSP` (`maSP`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`maDanhGia`),
  ADD KEY `tenTK` (`tenTK`),
  ADD KEY `maSP` (`maSP`);

--
-- Chỉ mục cho bảng `donbanhang`
--
ALTER TABLE `donbanhang`
  ADD PRIMARY KEY (`maDonHang`),
  ADD KEY `tenTK` (`tenTK`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`maGioHang`),
  ADD KEY `tenTK` (`tenTK`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`maND`);

--
-- Chỉ mục cho bảng `phanloai`
--
ALTER TABLE `phanloai`
  ADD PRIMARY KEY (`maNhom`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`maQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`maSP`),
  ADD KEY `maNhom` (`maNhom`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tenTK`),
  ADD KEY `maQuyen` (`maQuyen`),
  ADD KEY `maND` (`maND`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`tenTaiKhoan`) REFERENCES `taikhoan` (`tenTK`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`maSP`);

--
-- Các ràng buộc cho bảng `chitietdbh`
--
ALTER TABLE `chitietdbh`
  ADD CONSTRAINT `chitietdbh_ibfk_1` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`maSP`),
  ADD CONSTRAINT `chitietdbh_ibfk_2` FOREIGN KEY (`maDonHang`) REFERENCES `donbanhang` (`maDonHang`);

--
-- Các ràng buộc cho bảng `chitietgh`
--
ALTER TABLE `chitietgh`
  ADD CONSTRAINT `chitietgh_ibfk_1` FOREIGN KEY (`maGioHang`) REFERENCES `giohang` (`maGioHang`),
  ADD CONSTRAINT `chitietgh_ibfk_2` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`maSP`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`tenTK`) REFERENCES `taikhoan` (`tenTK`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`maSP`) REFERENCES `sanpham` (`maSP`);

--
-- Các ràng buộc cho bảng `donbanhang`
--
ALTER TABLE `donbanhang`
  ADD CONSTRAINT `donbanhang_ibfk_1` FOREIGN KEY (`tenTK`) REFERENCES `taikhoan` (`tenTK`);

--
-- Các ràng buộc cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`tenTK`) REFERENCES `taikhoan` (`tenTK`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maNhom`) REFERENCES `phanloai` (`maNhom`);

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`maQuyen`) REFERENCES `quyen` (`maQuyen`),
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`maND`) REFERENCES `nguoidung` (`maND`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
