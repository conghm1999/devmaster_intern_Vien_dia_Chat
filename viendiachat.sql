-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2020 lúc 10:16 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `viendiachat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congtrinhcongbo`
--

CREATE TABLE `congtrinhcongbo` (
  `IDCTCB` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Tomtat` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `Ngay` date NOT NULL,
  `IDLT` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `detai`
--

CREATE TABLE `detai` (
  `IDDT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenDT` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `IDTL` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IDCTCB` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitin`
--

CREATE TABLE `loaitin` (
  `IDLT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Thutu` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `IDDVNC` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `IDTin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tieude` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Tomtat` text COLLATE utf8_unicode_ci NOT NULL,
  `Ngaydang` date NOT NULL,
  `Noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci NOT NULL,
  `Anh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Trangthaiht` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tinnoibat` text COLLATE utf8_unicode_ci NOT NULL,
  `IDDT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IDSK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IDTL` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IDLT` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sukien`
--

CREATE TABLE `sukien` (
  `IDSK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tieude` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `IDTL` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Tentl` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `Thutu` varchar(2000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `IDUser` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sex` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ykien`
--

CREATE TABLE `ykien` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ngaydang` date NOT NULL,
  `Noidung` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Hoten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Diachi` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `IDTin` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`IDTin`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`IDTL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
