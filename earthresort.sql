-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 07:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `earthresort`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL,
  `department` varchar(150) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`, `department`, `role`) VALUES
(1, 'ducknguydev', '12345', 'Admin', 'admin'),
(2, 'quanlyletan', '12345', 'reception', 'receptionist'),
(3, 'vochau@earthresort.com', '123', 'letan', 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `bookmenu`
--

CREATE TABLE `bookmenu` (
  `id` int(11) NOT NULL,
  `idKhachHang` int(11) NOT NULL,
  `idNhaHang` int(11) NOT NULL,
  `bookdate` datetime NOT NULL,
  `date` datetime NOT NULL,
  `totalPerson` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookservices`
--

CREATE TABLE `bookservices` (
  `id` int(11) NOT NULL,
  `cusTomerId` int(11) NOT NULL,
  `serviceID` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `status_transaction` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(16, 'IMG_91095.png'),
(17, 'IMG_53463.png'),
(18, 'IMG_62274.png'),
(19, 'IMG_37057.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gmap` varchar(200) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(150) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, '123 Lê Văn Thọ, phường 9, quận Gò Vấp', 'https://maps.app.goo.gl/d3RNX6LfNYB4H2yQA', 84702517993, 84393033069, 'ducqtri173@gmail.com', 'https://www.facebook.com/nguyendinhduc.2002', 'https://www.instagram.com/n.duc22/', 'x.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Lễ tân');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(150) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(11, 'IMG_29461.svg', 'Điều hòa', 'Điều hòa Toshiba mát lạnh cả ngày'),
(12, 'IMG_91860.svg', 'Tủ lạnh', 'Tủ lạnh Inverter'),
(13, 'IMG_67188.svg', 'Tivi', 'Tivi có độ phân giải 4k. Tích hợp sẵn tài khoản Netflix, kết hợp dàn âm thanh Dolby AtMos');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(11, 'Phòng bếp'),
(14, 'Phòng tắm'),
(15, 'Lò sưởi'),
(16, 'Ban công'),
(17, 'View hướng biển'),
(19, 'Hồ bơi');

-- --------------------------------------------------------

--
-- Table structure for table `massage`
--

CREATE TABLE `massage` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(80) NOT NULL,
  `description` varchar(300) NOT NULL,
  `removed` tinyint(4) NOT NULL DEFAULT 0,
  `qrcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `massage`
--

INSERT INTO `massage` (`id`, `name`, `price`, `category`, `description`, `removed`, `qrcode`) VALUES
(3, 'Massage Thụy Điển', 450000, 'Massage bằng tay', 'Là kiểu massage phổ biến và nhẹ nhàng nhất, giúp giảm căng thẳng, <br> thư giãn cơ thể và cải thiện tuần hoàn máu\r\n', 1, 'massage_1733259534.png'),
(4, '1', 1, 'Massage bằng tay', '1', 1, ''),
(5, 'Massage', 123, 'Massage bằng tay', '123', 1, ''),
(6, 'Massage chân', 150, 'Massage bằng tay', '150', 1, ''),
(7, 'Massage chân', 150000, 'Massage bằng tay', 'm', 1, ''),
(8, 'Massage Thụy Điển', 300000, 'Massage bằng tay', 'Là kiểu massage phổ biến và nhẹ nhàng nhất, giúp giảm căng thẳng,<br> thư giãn cơ thể và cải thiện tuần hoàn máu\r\n', 0, ''),
(9, 'Massage hương thảo dược', 500000, 'Massage bằng công cụ', 'Sử dụng các loại tinh dầu tự nhiên để massage cơ thể, mang lại cảm <br> giác thư giãn sâu và kích thích các giác quan.', 0, ''),
(10, 'Massage bấm huyệt', 500000, 'Massage bằng tay', 'Tập trung vào các điểm phản chiếu trên bàn tay, bàn chân hoặc tai <br> để kích thích các cơ quan và hệ thống trong cơ thể.', 0, ''),
(11, 'Massage sâu', 500000, 'Massage bằng tay', 'Sử dụng lực mạnh hơn để tác động vào các lớp cơ sâu bên dưới bề mặt, <br> thích hợp cho những người bị căng cơ hoặc đau nhức.', 0, ''),
(12, 'Massage thể thao', 500000, 'Massage bằng tay', 'Được thiết kế dành riêng cho các vận động viên hoặc những người <br> có nhu cầu giải quyết vấn đề về cơ bắp, đau nhức do luyện tập thể thao.', 0, ''),
(13, 'Massage Lomi Lomi', 500000, 'Massage bằng tay', 'Là một loại massage truyền thống của Hawaii với các động tác dài <br> và chậm giúp thư giãn sâu cơ thể và tinh thần.', 0, ''),
(14, 'Massage nén thảo dược Thái', 500000, 'Massage bằng công cụ', 'Dùng các túi thảo dược nén lên cơ thể để giảm đau, thư giãn và <br> cải thiện tuần hoàn máu.', 0, ''),
(15, 'Liệu pháp cột sống và xương chậu', 500000, 'Massage bằng tay', 'Một phương pháp massage nhẹ nhàng, tác động vào hệ thống thần kinh <br> và xương chậu, giúp thư giãn và giảm căng thẳng.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `massage_image`
--

CREATE TABLE `massage_image` (
  `sr_no` int(11) NOT NULL,
  `massage_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `restaurantId` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(300) NOT NULL,
  `image` varchar(150) NOT NULL,
  `BuffettSang` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhansu`
--

CREATE TABLE `nhansu` (
  `id` int(11) NOT NULL,
  `ten` varchar(150) NOT NULL,
  `ngaySinh` date NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `diaChi` varchar(150) NOT NULL,
  `boPhan` varchar(150) DEFAULT NULL,
  `chucVu` varchar(150) DEFAULT NULL,
  `tinhTrang` tinyint(4) NOT NULL DEFAULT 1,
  `qrcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nhansu`
--

INSERT INTO `nhansu` (`id`, `ten`, `ngaySinh`, `sdt`, `email`, `diaChi`, `boPhan`, `chucVu`, `tinhTrang`, `qrcode`) VALUES
(74, 'Võ Châu Bùi', '1998-01-25', '09195704787', 'vochaubui123@gmail.com', '156 Phan Thiết, Phan Thiết', 'Lễ tân', 'Nhân viên', 1, 'nhansu_1733906027.png'),
(75, ' Trần An Đặng', '1995-03-26', '09453814658', 'tranandang789@gmail.com', '78 Nguyễn Thị Minh Khai, Phan Thiết', 'Dịch vụ', 'Nhân viên', 1, 'nhansu_1733906075.png'),
(76, 'Lê Võ Lợi', '1992-07-03', '09559188107', 'levlloi890@gmail.com', '301 Trường Chinh, Phan Thiết', 'Dịch vụ', 'Quản lý', 1, 'nhansu_1733906127.png'),
(77, 'Hoàng Trần Đức Huy', '1988-12-05', '09582444319', 'hoangtranduchuy234@gmail.com', '15 Tôn Đức Thắng, Phan Thiết', 'Resort', 'Quản lý', 1, 'nhansu_1733906203.png');

-- --------------------------------------------------------

--
-- Table structure for table `phieudatdichvumassage`
--

CREATE TABLE `phieudatdichvumassage` (
  `id` int(11) NOT NULL,
  `orderId` varchar(150) NOT NULL,
  `massageId` int(11) NOT NULL,
  `maKhachHang` int(11) NOT NULL,
  `soCCCD` int(11) NOT NULL,
  `ten` varchar(150) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `gia` float NOT NULL,
  `diaChi` varchar(200) NOT NULL,
  `ngayDat` date NOT NULL DEFAULT current_timestamp(),
  `soTienThanhToan` float NOT NULL DEFAULT 0,
  `daThanhToan` tinyint(4) NOT NULL DEFAULT 0,
  `trangThai` tinyint(4) NOT NULL DEFAULT 0,
  `qrcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieudatdichvuspa`
--

CREATE TABLE `phieudatdichvuspa` (
  `id` int(11) NOT NULL,
  `orderId` varchar(150) NOT NULL,
  `spaId` int(11) NOT NULL,
  `maKhachHang` int(11) NOT NULL,
  `ten` varchar(150) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `gia` float NOT NULL,
  `diaChi` varchar(200) NOT NULL,
  `ngayDat` date NOT NULL DEFAULT current_timestamp(),
  `gioPhucVu` time(6) NOT NULL,
  `soTienThanhToan` float NOT NULL DEFAULT 0,
  `daThanhToan` tinyint(4) NOT NULL DEFAULT 0,
  `trangThai` tinyint(4) NOT NULL DEFAULT 0,
  `qrcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieudatphong`
--

CREATE TABLE `phieudatphong` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `orderId` varchar(150) NOT NULL,
  `maKhachHang` int(11) NOT NULL,
  `soCCCD` int(11) NOT NULL,
  `ten` varchar(150) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `gia` float NOT NULL,
  `diaChi` varchar(200) NOT NULL,
  `ngayDatPhong` date NOT NULL DEFAULT current_timestamp(),
  `ngayTraPhong` date NOT NULL DEFAULT current_timestamp(),
  `ngaynhanphong` date NOT NULL DEFAULT current_timestamp(),
  `trangThaiCheckIn` tinyint(4) NOT NULL DEFAULT 0,
  `trangThaiCheckOut` tinyint(4) NOT NULL DEFAULT 0,
  `tongSoNgay` int(11) NOT NULL,
  `yeucaudacbiet` varchar(300) NOT NULL DEFAULT 'không có',
  `soTienThanhToan` float NOT NULL DEFAULT 0,
  `daThanhToan` float NOT NULL DEFAULT 0,
  `trangThai` tinyint(4) NOT NULL DEFAULT 0,
  `arrival` tinyint(4) NOT NULL DEFAULT 1,
  `refund` tinyint(4) NOT NULL DEFAULT 1,
  `booking_status` varchar(30) NOT NULL DEFAULT 'booked',
  `qrcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phieudatphong`
--

INSERT INTO `phieudatphong` (`id`, `room_id`, `orderId`, `maKhachHang`, `soCCCD`, `ten`, `sdt`, `gia`, `diaChi`, `ngayDatPhong`, `ngayTraPhong`, `ngaynhanphong`, `trangThaiCheckIn`, `trangThaiCheckOut`, `tongSoNgay`, `yeucaudacbiet`, `soTienThanhToan`, `daThanhToan`, `trangThai`, `arrival`, `refund`, `booking_status`, `qrcode`) VALUES
(49, 3, 'ORD250603916', 2, 0, 'Vũ Thành', '986991728', 0, '762 Đoàn Thị Điểm, Bình Thạnh, thành phố Hạ Long', '2024-12-07', '2024-12-09', '2024-12-08', 1, 0, 2, 'không', 3000000, 1500000, 0, 1, 0, 'booked', 'ord_1733463194.png'),
(55, 7, 'ORD170534342', 1, 0, 'Mai Thế Hoài Chu', '928125366', 0, '97 Bùi Viện, Thủ Đức, thành phố Hồ Chí Minh', '2024-12-09', '2024-12-12', '2024-12-10', 0, 0, 2, '', 1300000, 0, 0, 1, 0, 'booked', 'ord_1733759438.png'),
(56, 2, 'ORD390247589', 3, 0, 'Bùi Khanh Mai', '842408696', 0, '87 Lê Hồng Phong, Hoàng Mai, thành phố Bình Dương', '2024-12-10', '2024-12-13', '2024-12-11', 0, 0, 2, '', 1000000, 0, 0, 1, 0, 'booked', 'ord_1733804469.png'),
(57, 1, 'ORD111441888', 1, 0, 'Mai Thế Hoài Chu', '928125366', 0, '97 Bùi Viện, Thủ Đức, thành phố Hồ Chí Minh', '2024-12-10', '2024-12-13', '2024-12-11', 0, 0, 2, '', 1900000, 0, 0, 1, 1, 'booked', 'ord_1733841777.png'),
(58, 2, 'ORD188788699', 1, 0, 'Mai Thế Hoài Chu', '928125366', 0, '97 Bùi Viện, Thủ Đức, thành phố Hồ Chí Minh', '2024-12-11', '2024-12-16', '2024-12-14', 0, 0, 2, '', 1000000, 0, 0, 1, 1, 'booked', 'ord_1733898658.png'),
(59, 1, 'ORD1074502337', 10, 0, 'Mai Khanh Hải Hoàng Đỗ', '855172450', 0, '3 Tôn Đức Thắng, Thạch Thất, thành phố Thái Nguyên', '2024-12-11', '2024-12-13', '2024-12-12', 0, 0, 1, '', 1500000, 0, 0, 1, 1, 'booked', 'ord_1733907796.png'),
(60, 1, 'ORD167571275', 1, 0, 'Mai Thế Hoài Chu', '928125366', 0, '97 Bùi Viện, Thủ Đức, thành phố Hồ Chí Minh', '2024-12-12', '2024-12-21', '2024-12-13', 0, 0, 8, 'không có', 12000000, 0, 1, 1, 0, 'cancelled', 'ord_1734014785.png'),
(61, 1, 'ORD178967439', 1, 0, 'Mai Thế Hoài Chu', '928125366', 0, '97 Bùi Viện, Thủ Đức, thành phố Hồ Chí Minh', '2024-12-12', '2024-12-16', '2024-12-12', 0, 0, 4, 'không có', 6000000, 0, 0, 1, 1, 'booked', 'ord_1734015023.png');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `typeFood` varchar(50) NOT NULL,
  `openAT` time NOT NULL,
  `closeAT` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL DEFAULT 'Sliver',
  `area` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `using` tinyint(4) NOT NULL DEFAULT 0,
  `booked` tinyint(4) NOT NULL DEFAULT 0,
  `qrCODE` varchar(150) DEFAULT NULL,
  `removed` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `category`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `using`, `booked`, `qrCODE`, `removed`) VALUES
(1, 'Gold room', 'Gold', 155, 1500000, 4, 3, 3, 'Phòng GOLD có các tiện nghi cơ bản và diện tích phòng khá lớn, nội thất khách sạn được thiết kế theo hướng hiện đại.', 1, 0, 1, '', 0),
(2, 'Sliver room', 'Sliver', 120, 650000, 5, 2, 2, 'Phòng tiêu chuẩn với diện tích nhỏ và các tiện nghi và nội thất khách sạn cơ bản để đáp ứng nhu cầu cơ bản của khách hàng.', 1, 0, 1, '', 0),
(3, 'Dimaond room', 'Diamond', 103, 3000000, 4, 4, 3, 'Phòng Diamond có diện tích lớn và nội thất khách sạn tiện nghi để mang đến trải nghiệm cao cấp và thoải mái cho khách hàng.', 1, 0, 1, '', 0),
(4, 'Sliver room ', 'Sliver', 201, 650000, 5, 2, 2, 'Phòng SLiver với chất lượng 3 sao', 1, 0, 0, '', 0),
(5, 'Gold room', 'Sliver', 202, 950000, 5, 2, 2, 'Phòng GOLD có các tiện nghi cơ bản và diện tích phòng khá lớn, nội thất khách sạn được thiết kế theo hướng hiện đại.', 1, 0, 0, '', 0),
(6, 'Diamond room', 'Sliver', 203, 5000000, 4, 2, 2, 'Phòng Diamond có diện tích lớn và nội thất khách sạn tiện nghi để mang đến trải nghiệm cao cấp và thoải mái cho khách hàng.', 1, 0, 1, '', 0),
(7, 'Sliver room', 'Diamond', 301, 650000, 4, 4, 3, ' Phòng tiêu chuẩn với diện tích nhỏ và các tiện nghi và nội thất khách sạn cơ bản để đáp ứng nhu cầu cơ bản của khách hàng.', 1, 0, 1, '', 0),
(10, 'Sliver room', 'Sliver', 202, 650000, 5, 2, 2, 'Phòng tiêu chuẩn', 1, 0, 0, NULL, 0),
(11, 'Gold room', 'Gold', 151, 1500000, 5, 3, 2, 'Phòng thiết kế sang trọng', 1, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(126, 4, 11),
(127, 4, 12),
(128, 4, 13),
(129, 5, 11),
(130, 5, 12),
(131, 5, 13),
(132, 6, 11),
(133, 6, 12),
(134, 6, 13),
(138, 10, 12),
(142, 3, 11),
(143, 3, 12),
(144, 3, 13),
(145, 7, 11),
(146, 7, 12),
(147, 7, 13),
(148, 2, 12),
(149, 1, 11),
(150, 1, 12),
(151, 1, 13),
(152, 11, 11),
(153, 11, 12),
(154, 11, 13);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(424, 4, 14),
(425, 4, 16),
(426, 4, 17),
(427, 5, 11),
(428, 5, 14),
(429, 5, 16),
(430, 5, 17),
(431, 6, 11),
(432, 6, 14),
(433, 6, 16),
(434, 6, 17),
(435, 6, 19),
(439, 10, 11),
(440, 10, 19),
(447, 3, 11),
(448, 3, 14),
(449, 3, 15),
(450, 3, 16),
(451, 3, 17),
(452, 3, 19),
(453, 7, 11),
(454, 7, 14),
(455, 7, 17),
(456, 2, 15),
(457, 1, 11),
(458, 1, 14),
(459, 1, 15),
(460, 1, 16),
(461, 11, 11),
(462, 11, 14),
(463, 11, 16),
(464, 11, 19);

-- --------------------------------------------------------

--
-- Table structure for table `room_image`
--

CREATE TABLE `room_image` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_image`
--

INSERT INTO `room_image` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(11, 2, 'IMG_23698.png', 0),
(18, 1, 'IMG_78238.png', 0),
(19, 3, 'IMG_45166.jpg', 0),
(20, 3, 'IMG_48986.jpg', 0),
(21, 4, 'IMG_78518.jpg', 0),
(22, 5, 'IMG_96806.jpg', 0),
(23, 6, 'IMG_65098.jpg', 0),
(25, 7, 'IMG_37568.jpg', 0),
(26, 1, 'IMG_51042.jpg', 1),
(27, 2, 'IMG_27043.jpg', 1),
(28, 5, 'IMG_57795.jpg', 1),
(29, 7, 'IMG_88735.jpg', 1),
(30, 6, 'IMG_11825.jpg', 1),
(31, 4, 'IMG_52617.jpg', 1),
(32, 3, 'IMG_31489.jpg', 1),
(33, 4, 'IMG_24962.jpg', 0),
(34, 10, 'IMG_20237.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'Earth Resort', 'Chào mừng bạn đến với Earth Resort', 0);

-- --------------------------------------------------------

--
-- Table structure for table `spa`
--

CREATE TABLE `spa` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `price` varchar(11) NOT NULL,
  `category` varchar(80) NOT NULL,
  `description` varchar(300) NOT NULL,
  `removed` tinyint(4) NOT NULL DEFAULT 0,
  `qrcode` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spa`
--

INSERT INTO `spa` (`id`, `name`, `price`, `category`, `description`, `removed`, `qrcode`) VALUES
(33, 'Tắm bùn ', '450000', 'Spa thư giãn và chăm sóc sức khỏe', 'Tắm bùn sử dụng bùn khoáng tự nhiên giúp làm sạch và tái tạo làn da, đồng thời hỗ trợ điều trị các vấn đề về da và cơ thể.\r\n', 0, 'spa_1733897746.png'),
(34, 'Tắm bồn thủy lực', '500000', 'Spa thủy liệu pháp', 'Sử dụng bồn tắm sục với nước khoáng nóng hoặc lạnh để thư giãn và kích thích tuần hoàn máu.', 0, ''),
(35, 'Bể sục Jacuzzi', '500000', 'Spa thủy liệu pháp', 'Các bể sục có thể giúp giảm căng thẳng, thư giãn cơ bắp, và giảm đau nhức khớp.', 0, ''),
(36, 'Bể bơi muối biển', '500000', 'Spa thủy liệu pháp', 'Bể bơi nước muối giúp làm sạch cơ thể, dưỡng da và thư giãn.', 0, ''),
(37, 'Tắm thảo dược', '500000', 'Spa thảo dược', 'Sử dụng các loại thảo mộc tự nhiên cho tắm hoặc đắp mặt nạ giúp phục hồi da, cải thiện sức khỏe và tinh thần.', 0, ''),
(38, 'Detox cơ thể', '500000', 'Spa detox và làm sạch cơ thể', 'Các liệu pháp giúp loại bỏ độc tố trong cơ thể như tắm bùn, xông hơi, tẩy tế bào chết, và sử dụng các loại nước detox tự nhiên.', 0, ''),
(39, 'Ngâm chân trong nước ấm', '500000', 'Spa Chân', 'Chăm sóc đôi chân ngâm chân trong nước ấm, massage chân, tẩy da chết.', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `spa_image`
--

CREATE TABLE `spa_image` (
  `sr_no` int(11) NOT NULL,
  `spa_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `picture` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(11, 'Quản lý resort', 'IMG_73212.jpg'),
(12, 'Quản lý lễ tân', 'IMG_79606.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phonenum` varchar(10) NOT NULL,
  `dob` date DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(1, 'Mai Thế Hoài Chu', 'maichu6093@gmail.com', '97 Bùi Viện, Thủ Đức, thành phố Hồ Chí Minh', '0928125366', '1984-12-22', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-18 21:16:17'),
(2, 'Vũ Thành', 'vuthanh769@gmail.com', '762 Đoàn Thị Điểm, Bình Thạnh, thành phố Hạ Long', '0986991728', '2005-01-13', 'user.png', '$2y$10$t6bBY0ftnRA/19BmgnAomOHjVYbYYZw9PEVhHv/4vacFPa7CN1SWO', 1, NULL, NULL, 1, '2024-11-23 18:31:05'),
(3, 'Bùi Khanh Mai', 'buimai755@gmail.com', '87 Lê Hồng Phong, Hoàng Mai, thành phố Bình Dương', '0842408696', '1980-03-08', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:31:05'),
(4, 'Lê Tùng Chu', 'lechu7409@gmail.com', '150 Lý Thường Kiệt, Thanh Khê, thành phố Cà Mau', '0856678818', '2009-01-26', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(5, 'Lê Duy Tuấn Vũ', 'levu4119@gmail.com', '172 Cách Mạng Tháng 8, Quận 5, thành phố Bình Phước', '0842610949', '2005-03-26', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(6, 'Nguyễn Văn Minh Hùng', 'nguyenhung2094@gmail.com', '8 Hoàng Văn Thụ, Ninh Kiều, thành phố Nam Định', '0972143461', '1999-09-18', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(7, 'Vũ Hoàng Lê', 'vule8595@gmail.com', '68 Trường Sa, Nam Từ Liêm, thành phố Nam Định', '0872564074', '1980-12-11', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(8, 'Lê Tuấn Tùng Đỗ', 'ledo222@gmail.com', '70 Nguyễn Huệ, Ba Đình, thành phố Bình Dương', '0928879532', '1985-05-21', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(9, 'Đặng Duy Hùng', 'danghung6523@gmail.com', '64 Lê Văn Sỹ, Thủ Đức, thành phố Bình Phước', '0927641944', '1987-05-29', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(10, 'Mai Khanh Hải Hoàng Đỗ', 'maido2840@gmail.com', '3 Tôn Đức Thắng, Thạch Thất, thành phố Thái Nguyên', '0855172450', '1992-08-25', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(11, 'Lê Vũ Vũ', 'levu5245@gmail.com', '90 Nguyễn Trãi, Quận 7, thành phố Bình Phước', '0912275811', '2006-07-28', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(12, 'Lê Minh Thị Quang Bùi', 'lebui2759@gmail.com', '10 Hồng Bàng, Nam Từ Liêm, thành phố Vũng Tàu', '0841731138', '2001-09-26', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(13, 'Hoàng Văn Bùi', 'hoangbui911@gmail.com', '55 Bạch Đằng, Hồng Bàng, thành phố Quảng Ninh', '0902932799', '1992-09-12', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(14, 'Trần Thiện Nguyễn', 'trannguyen163@gmail.com', '1 Điện Biên Phủ, Quận 10, thành phố Vũng Tàu', '0914287682', '1998-10-31', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(15, 'Phạm Thị Tùng', 'phamtung3233@gmail.com', '2 Nguyễn Văn Bảo, Thanh Khê, thành phố Cà Mau', '0937376024', '1980-12-04', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(16, 'Trần Hải Văn Văn Mai', 'tranmai6510@gmail.com', '837 Lê Văn Sỹ, Mỹ Đình, thành phố Hải Phòng', '0856485292', '1989-11-14', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(17, 'Đỗ Bùi', 'dobui7849@gmail.com', '60 Trần Phú, Gò Vấp, thành phố Nam Định', '0873197629', '2002-04-01', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(18, 'Nguyễn Quang Khanh Tùng Anh', 'nguyenanh4816@gmail.com', '1 Bạch Đằng, Chương Mỹ, thành phố Vĩnh Phúc', '0875010779', '1997-10-24', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(19, 'Bùi Tùng Tùng Đặng', 'buidang1115@gmail.com', '348 Cách Mạng Tháng 8, Chương Mỹ, thành phố Bắc Giang', '0851372885', '1981-09-24', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(20, 'Trần Anh Hoàng', 'tranhoang9148@gmail.com', '280 Tôn Đức Thắng, Cẩm Lệ, thành phố Đà Nẵng', '0933850837', '1994-02-07', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(21, 'Vũ Anh', 'vuanh2671@gmail.com', '6 Lê Hồng Phong, Cầu Giấy, thành phố Bình Phước', '0839326025', '2009-01-28', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(22, 'Lê Thế Hoàng Đặng', 'ledang8681@gmail.com', '34 Hoàng Hoa Thám, Mỹ Đình, thành phố Hạ Long', '0857703265', '1997-03-05', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(23, 'Trần Đặng', 'trandang5769@gmail.com', '9 Võ Thị Sáu, Tây Hồ, thành phố Bình Dương', '0941400703', '2000-01-28', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(24, 'Phạm Thành', 'phamthanh567@gmail.com', '3 Trường Chinh, Đống Đa, thành phố Hà Nội', '0903564346', '1995-04-02', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(25, 'Nguyễn Anh', 'nguyenanh4637@gmail.com', '1 Trường Chinh, Ninh Kiều, thành phố Đà Nẵng', '0986458298', '2002-09-08', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(26, 'Vũ Tùng Trần', 'vutran9911@gmail.com', '509 Cộng Hòa, Hạ Long, thành phố Kiên Giang', '0937973096', '2009-03-20', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(27, 'Mai Thành', 'maithanh2089@gmail.com', '2 Trần Phú, Linh Đàm, thành phố Hà Nội', '0984370911', '2010-03-09', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(28, 'Trần Thanh Công Khánh', 'trankhanh2084@gmail.com', '96 Hoàng Diệu, Ba Đình, thành phố Hồ Chí Minh', '0903200785', '2008-03-17', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(29, 'Đỗ Thiện Văn Thanh Ngọc', 'dongoc5220@gmail.com', '93 Tôn Đức Thắng, Đống Đa, thành phố Vũng Tàu', '0986471825', '2002-06-09', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(30, 'Bùi Duy Hoàng Tùng Lê', 'buile5672@gmail.com', '61 Trần Phú, Thủ Đức, thành phố Cà Mau', '0931490659', '1980-03-22', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(31, 'Lê Thế Thanh Duy Phạm', 'lepham2494@gmail.com', '25 Hoàng Diệu, Tây Hồ, thành phố Hà Nội', '0917032028', '2009-12-15', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(32, 'Đặng Ngọc Thanh Vinh', 'dangvinh9754@gmail.com', '3 Lạc Long Quân, Bình Thạnh, thành phố Vũng Tàu', '0945040712', '2004-01-02', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(33, 'Mai Ngọc', 'maingoc2364@gmail.com', '511 Nguyễn Công Trứ, Hoàng Mai, thành phố Vũng Tàu', '0938710466', '1992-09-06', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 18:43:57'),
(49, 'Đỗ Công Anh Chu', 'dochu4710@gmail.com', '7 Lý Thường Kiệt - Cầu Giấy - thành phố Kiên Giang', '0918291068', '1985-06-18', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(50, 'Hoàng Tùng Ngọc Chu', 'hoangchu944@gmail.com', '100 Cộng Hòa - Long Biên - thành phố Vĩnh Phúc', '0912936993', '2005-01-10', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(51, 'Lê Văn Thị Thành', 'lethanh3807@gmail.com', '1 Tôn Đức Thắng - Hoàng Mai - thành phố Kiên Giang', '0918883520', '1987-02-22', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(52, 'Vũ Mai', 'vumai4547@gmail.com', '7 Hồng Bàng - Quận 3 - thành phố Hải Phòng', '0835356112', '1980-11-05', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(53, 'Mai Thanh Ngọc', 'maingoc5517@gmail.com', '923 Võ Thị Sáu - Quận 1 - thành phố Hải Phòng', '0981358468', '1991-03-20', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(54, 'Phạm Bùi', 'phambui764@gmail.com', '6 Nguyễn Huệ - Hồng Bàng - thành phố Hà Nội', '0838239612', '1987-04-13', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(55, 'Mai Công Hương Vinh', 'maivinh1929@gmail.com', '18 Hoàng Hoa Thám - Thủ Đức - thành phố Hội An', '0938382779', '1986-01-19', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(56, 'Lê Thành', 'lethanh1248@gmail.com', '7 Nguyễn Thị Minh Khai - Quận 7 - thành phố Hạ Long', '0901347521', '1994-07-20', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(57, 'Đỗ Ngọc Hoàng', 'dohoang7293@gmail.com', '58 Nguyễn Du - Mỹ Đình - thành phố Hạ Long', '0942866517', '1994-06-07', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(58, 'Bùi Anh Thanh Anh', 'buianh1243@gmail.com', '812 Lê Thị Hồng Gấm - Hồng Bàng - thành phố Hội An', '0849133246', '2009-08-01', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(59, 'Lê Khanh Trần', 'letran8051@gmail.com', '8 Lê Văn Sỹ - Thủ Đức - thành phố Bình Dương', '0984556126', '2000-04-26', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(60, 'Trần Hoàng Đặng', 'trandang2514@gmail.com', '187 Lê Lợi - Bình Thạnh - thành phố Nha Trang', '0838097647', '1986-08-10', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(61, 'Hoàng Duy Anh Hoài Khánh', 'hoangkhanh8189@gmail.com', '44 Nguyễn Trãi - Thanh Khê - thành phố Bắc Giang', '0988593989', '2004-11-19', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(62, 'Đặng Duy Khánh', 'dangkhanh5594@gmail.com', '33 Nguyễn Thị Định - Mỹ Đình - thành phố Vũng Tàu', '0946144992', '1994-01-01', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(63, 'Mai Công Vũ Minh Trần', 'maitran487@gmail.com', '62 Nguyễn Đình Chiểu - Quận 5 - thành phố Quảng Ninh', '0875279041', '1988-12-06', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(64, 'Vũ Anh Ngọc Thế Lê', 'vule2437@gmail.com', '89 Trần Phú - Quận 3 - thành phố Hồ Chí Minh', '0833852296', '1993-10-09', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(65, 'Nguyễn Minh Hoàng Vũ Tùng', 'nguyentung9548@gmail.com', '10 Lý Thường Kiệt - Hoàng Mai - thành phố Cà Mau', '0936321885', '1986-04-15', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(66, 'Vũ Thế Lê', 'vule2677@gmail.com', '7 Nguyễn Công Trứ - Long Biên - thành phố Vũng Tàu', '0985428308', '1990-06-05', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(67, 'Trần Anh', 'trananh2687@gmail.com', '51 Vũ Trọng Phụng - Hoàng Mai - thành phố Phan Thiết', '0909624354', '2000-09-09', 'user.png', '$2y$10$K5dkFCsNK6r1LbDGazsXHOVokU1Xoyhdy9lCqPbz1NPBe4SJEB3ke', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(68, 'Vũ Thiện Tuấn Tùng', 'vutung939@gmail.com', '74 Tôn Đức Thắng - Ninh Kiều - thành phố Thái Nguyên', '0949373036', '1996-03-19', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(69, 'Đặng Công Tuấn Duy Vinh', 'dangvinh7645@gmail.com', '92 Lê Lợi - Tân Bình - thành phố Quảng Ninh', '0842561495', '2001-09-03', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(70, 'Bùi Ngọc Ngọc Vinh', 'buivinh5793@gmail.com', '10 Điện Biên Phủ - Quận 3 - thành phố Vĩnh Phúc', '0911014500', '2007-01-01', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(71, 'Mai Hoàng Quang Anh', 'maianh1589@gmail.com', '8 Trần Phú - Đống Đa - thành phố Hội An', '0914865297', '1988-03-25', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(72, 'Bùi Hoàng Thế Vũ', 'buivu5498@gmail.com', '572 Bạch Đằng - Bắc Từ Liêm - thành phố Đà Lạt', '0831821384', '1999-06-06', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(73, 'Hoàng Hoàng Tuấn Bùi', 'hoangbui1211@gmail.com', '2 Nguyễn Công Trứ - Cẩm Lệ - thành phố Phan Thiết', '0842241886', '1988-08-14', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(74, 'Lê Thiện Đặng', 'ledang5084@gmail.com', '70 Nguyễn Du - Bắc Từ Liêm - thành phố Bình Dương', '0843511142', '1985-09-10', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(75, 'Hoàng Duy Minh', 'hoangminh538@gmail.com', '92 Lê Lợi - Nam Từ Liêm - thành phố Hội An', '0986697629', '2002-10-10', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(76, 'Đỗ Minh Ngọc Hoàng', 'dohoang4170@gmail.com', '7 Nguyễn Văn Bảo - Hoàn Kiếm - thành phố Bắc Giang', '0944124818', '1988-03-03', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(77, 'Lê Công Hoàng Bùi', 'lebui2901@gmail.com', '2 Cộng Hòa - Quận 3 - thành phố Quảng Ninh', '0911528666', '1989-02-07', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(78, 'Trần Ngọc', 'tranngoc6254@gmail.com', '18 Đoàn Thị Điểm - Nam Từ Liêm - thành phố Hội An', '0843795456', '2010-02-22', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(79, 'Đặng Đỗ', 'dangdo7485@gmail.com', '26 Cộng Hòa - Bình Chánh - thành phố Kiên Giang', '0971885777', '1986-04-27', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(80, 'Phạm Vũ Hương Hoàng', 'phamhoang3363@gmail.com', '1 Trường Sa - Quận 1 - thành phố Hải Phòng', '0917389986', '1992-06-07', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(81, 'Nguyễn Duy Vũ Minh', 'nguyenminh2354@gmail.com', '797 Lê Hồng Phong - Linh Đàm - thành phố Hồ Chí Minh', '0833225320', '2008-12-29', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(82, 'Đỗ Quang Đỗ', 'dodo3781@gmail.com', '499 Phạm Văn Đồng - Tây Hồ - thành phố Phan Thiết', '0845789190', '1998-01-26', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(83, 'Đỗ Khanh Anh Hoàng', 'dohoang6066@gmail.com', '81 Phan Đình Phùng - Bình Thạnh - thành phố Vĩnh Phúc', '0846022504', '1999-11-07', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(84, 'Phạm Thế Anh Thị Trần', 'phamtran1282@gmail.com', '72 Tạ Quang Bửu - Quận 7 - thành phố Đà Lạt', '0878549797', '1994-12-16', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(85, 'Hoàng Quang Ngọc Chu', 'hoangchu5906@gmail.com', '731 Nguyễn Thị Minh Khai - Cầu Giấy - thành phố Hải Phòng', '0872083519', '1989-05-28', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(86, 'Đỗ Thị Duy Thanh Cường', 'docuong6550@gmail.com', '10 Hoàng Diệu - Hoàng Mai - thành phố Nam Định', '0924880906', '1981-07-05', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(87, 'Nguyễn Duy Đỗ', 'nguyendo128@gmail.com', '12 Lý Thường Kiệt - Cầu Giấy - thành phố Thái Nguyên', '0855462623', '2010-09-24', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(88, 'Bùi Cường', 'buicuong2219@gmail.com', '545 Nguyễn Công Trứ - Quận 3 - thành phố Đà Lạt', '0924254905', '1986-04-26', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(89, 'Nguyễn Hùng', 'nguyenhung4614@gmail.com', '167 Cộng Hòa - Mỹ Đình - thành phố Hồ Chí Minh', '0918623949', '2007-01-05', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(90, 'Trần Ngọc Lê', 'tranle6357@gmail.com', '6 Trường Chinh - Vĩnh Bảo - thành phố Vĩnh Phúc', '0947021264', '1992-11-30', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(91, 'Bùi Thanh Vũ Minh Tùng', 'buitung3765@gmail.com', '8 Điện Biên Phủ - Đồng Xuân - thành phố Hà Nội', '0847347235', '1994-08-24', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(92, 'Nguyễn Vũ Ngọc Thành', 'nguyenthanh5687@gmail.com', '5 Phan Đình Phùng - Bình Chánh - thành phố Thái Nguyên', '0983900406', '1980-08-31', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(93, 'Nguyễn Minh Thanh Thế Nguyễn', 'nguyennguyen7977@gmail.com', '15 Bùi Viện - Quận 5 - thành phố Hồ Chí Minh', '0914424483', '1994-09-14', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(94, 'Đỗ Thanh Thị Ngọc Nguyễn', 'donguyen2678@gmail.com', '47 Bạch Đằng - Quận 1 - thành phố Quảng Ninh', '0875531466', '2009-01-14', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(95, 'Phạm Thế Quang Hương Mai', 'phammai1566@gmail.com', '5 Vũ Trọng Phụng - Thủ Đức - thành phố Nha Trang', '0842580578', '1989-09-03', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(96, 'Nguyễn Tùng Minh Hương Vũ', 'nguyenvu720@gmail.com', '3 Trần Phú - Quận 10 - thành phố Vĩnh Phúc', '0839340845', '1990-03-16', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(97, 'Mai Quang Quang Hải Bùi', 'maibui9213@gmail.com', '500 Phan Chu Trinh - Hoàng Mai - thành phố Nha Trang', '0929955960', '1996-05-27', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(98, 'Lê Minh Công Ngọc', 'lengoc6213@gmail.com', '51 Tạ Quang Bửu - Thanh Khê - thành phố Kiên Giang', '0931747742', '2008-03-03', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(99, 'Đặng Duy Phạm', 'dangpham125@gmail.com', '450 Vũ Trọng Phụng - Tân Bình - thành phố Phan Thiết', '0987752558', '2008-06-08', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(100, 'Vũ Văn Tùng', 'vutung4701@gmail.com', '93 Hồng Bàng - Thanh Khê - thành phố Hội An', '0833114683', '1980-06-20', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11'),
(101, 'Bùi Quang Duy Vinh', 'buivinh3098@gmail.com', '601 Hoàng Hoa Thám - Vĩnh Bảo - thành phố Cần Thơ', '0937594450', '1982-12-06', 'user.png', '123', 1, NULL, NULL, 1, '2024-11-23 22:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(20, 'Nguyễn Văn A', 'Anguyenvan@gmail.com', 'Phản hồi về việc phòng bị hư đồ', 'Chào khách sạn, tôi là Nguyễn Văn A, tôi ở phòng 101 và hiện tại phòng tôi đang bị hư bình siêu tốc.', '2024-10-06', 1),
(21, 'Nguyễn Văn B', 'Bnguy@gmail.com', 'Phản hồi về thái độ nhân viên phục vụ chưa tốt', 'Vào ngày 06/10/2024 tôi có một trải nghiệm rất tệ khi gặp một nhân viên phục vụ có thái độ chưa tốt với tôi', '2024-10-06', 1),
(22, 'Mai Thế Hoài Chu', 'maichu6093@gmail.com', 'Phòng bị dơ', 'Phòng bị dơ', '2024-12-12', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `bookmenu`
--
ALTER TABLE `bookmenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cusID` (`idKhachHang`),
  ADD KEY `restaurantID` (`idNhaHang`);

--
-- Indexes for table `bookservices`
--
ALTER TABLE `bookservices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicesid` (`serviceID`),
  ADD KEY `customerId` (`cusTomerId`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massage`
--
ALTER TABLE `massage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `massage_image`
--
ALTER TABLE `massage_image`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `massageid` (`massage_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhansu`
--
ALTER TABLE `nhansu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phieudatdichvumassage`
--
ALTER TABLE `phieudatdichvumassage`
  ADD KEY `servicesidrel` (`massageId`),
  ADD KEY `customerIdrel` (`maKhachHang`);

--
-- Indexes for table `phieudatdichvuspa`
--
ALTER TABLE `phieudatdichvuspa`
  ADD KEY `spaIdrel` (`spaId`),
  ADD KEY `KHID` (`maKhachHang`);

--
-- Indexes for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPhong` (`room_id`),
  ADD KEY `maKhachHang` (`maKhachHang`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room id` (`room_id`),
  ADD KEY `facilities id` (`facilities_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `id room` (`room_id`),
  ADD KEY `features id` (`features_id`);

--
-- Indexes for table `room_image`
--
ALTER TABLE `room_image`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `spa`
--
ALTER TABLE `spa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spa_image`
--
ALTER TABLE `spa_image`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `spaid` (`spa_id`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookmenu`
--
ALTER TABLE `bookmenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookservices`
--
ALTER TABLE `bookservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `massage`
--
ALTER TABLE `massage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `massage_image`
--
ALTER TABLE `massage_image`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nhansu`
--
ALTER TABLE `nhansu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT for table `room_image`
--
ALTER TABLE `room_image`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spa`
--
ALTER TABLE `spa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `spa_image`
--
ALTER TABLE `spa_image`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookmenu`
--
ALTER TABLE `bookmenu`
  ADD CONSTRAINT `cusID` FOREIGN KEY (`idKhachHang`) REFERENCES `user_cred` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `restaurantID` FOREIGN KEY (`idNhaHang`) REFERENCES `restaurant` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bookservices`
--
ALTER TABLE `bookservices`
  ADD CONSTRAINT `customerId` FOREIGN KEY (`cusTomerId`) REFERENCES `user_cred` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `massage_image`
--
ALTER TABLE `massage_image`
  ADD CONSTRAINT `massageid` FOREIGN KEY (`massage_id`) REFERENCES `massage` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `phieudatdichvumassage`
--
ALTER TABLE `phieudatdichvumassage`
  ADD CONSTRAINT `customerIdrel` FOREIGN KEY (`maKhachHang`) REFERENCES `user_cred` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `servicesidrel` FOREIGN KEY (`massageId`) REFERENCES `massage` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `phieudatdichvuspa`
--
ALTER TABLE `phieudatdichvuspa`
  ADD CONSTRAINT `KHID` FOREIGN KEY (`maKhachHang`) REFERENCES `user_cred` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `spaIdrel` FOREIGN KEY (`spaId`) REFERENCES `spa` (`id`);

--
-- Constraints for table `phieudatphong`
--
ALTER TABLE `phieudatphong`
  ADD CONSTRAINT `idPhong` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `maKhachHang` FOREIGN KEY (`maKhachHang`) REFERENCES `user_cred` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `id room` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_image`
--
ALTER TABLE `room_image`
  ADD CONSTRAINT `room_image_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `spa_image`
--
ALTER TABLE `spa_image`
  ADD CONSTRAINT `spaid` FOREIGN KEY (`spa_id`) REFERENCES `spa` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
