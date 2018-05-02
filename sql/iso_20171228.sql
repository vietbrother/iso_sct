-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2017 at 03:11 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iso`
--

-- --------------------------------------------------------

--
-- Table structure for table `cata_user`
--

CREATE TABLE `cata_user` (
  `id` int(11) NOT NULL,
  `BIRTH_DAY` date DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `FIRST_NAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `LOCATION` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SEX` bit(1) DEFAULT NULL,
  `PHONE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ROLE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `WEBSITE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_action`
--

CREATE TABLE `c_action` (
  `C_ACTION_ID` int(11) NOT NULL,
  `CODE` text COLLATE utf8_unicode_ci NOT NULL,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_NEXT` tinyint(1) NOT NULL COMMENT '1: Đến bước tiếp, 0: trả về hồ sơ',
  `SOURCE_PROPERTY` text COLLATE utf8_unicode_ci,
  `DES_PROPERTY` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_action`
--

INSERT INTO `c_action` (`C_ACTION_ID`, `CODE`, `NAME`, `IS_NEXT`, `SOURCE_PROPERTY`, `DES_PROPERTY`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, 'ACT', 'Yêu cầu bổ sung hồ sơ', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'ACT', 'Thu hồi hồ sơ đã chuyển', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'CHK', 'Ký duyệt hồ sơ', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ACT', 'Gửi liên thông hồ sơ', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ACT', 'In phôi kết quả', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'SYS', 'Thông báo email cho công dân', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ACT', 'Hồ sơ không đủ điều kiện', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'ACT', 'Trả lại hồ sơ người chuyển', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ACT', 'Chuyển hồ sơ ra một cửa để trả KQ xử lý', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ACT', 'Hồ sơ không phải xử lý', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'ACT', 'Gửi hồi đáp kết quả xử lý cho đơn vị liên thông', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'ACT', 'Trả thông báo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_asset`
--

CREATE TABLE `c_asset` (
  `C_ASSET_ID` int(10) NOT NULL,
  `CODE` text COLLATE utf8_unicode_ci NOT NULL,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `NUMBER` int(10) DEFAULT NULL,
  `C_UNIT_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_ASSET_TYPE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_ASSET_GROUP_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_ASSET_CLASS_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_ORGANIZATION_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_EMPLOYEE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `DESIGN` text COLLATE utf8_unicode_ci COMMENT 'Kiểu dáng',
  `SEATS` int(11) DEFAULT NULL COMMENT 'Số chỗ ngồi',
  `DEPRECIATION_DATE` date DEFAULT NULL,
  `C_PROVIDER_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci,
  `URL_IMAGE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` date DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_asset`
--

INSERT INTO `c_asset` (`C_ASSET_ID`, `CODE`, `NAME`, `NUMBER`, `C_UNIT_ID`, `C_ASSET_TYPE_ID`, `C_ASSET_GROUP_ID`, `C_ASSET_CLASS_ID`, `C_ORGANIZATION_ID`, `C_EMPLOYEE_ID`, `DESIGN`, `SEATS`, `DEPRECIATION_DATE`, `C_PROVIDER_ID`, `CONTENT`, `URL_IMAGE`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, 'O_TO_29', 'Xe ôtô Huyndai 29 chỗ', 1, '1', '1', '1', '1', '2', '1', NULL, 29, '2017-10-18', '1', 'Xe 29 chỗ hiệu Huyndai', NULL, 'Xe công của Sở y tế', NULL, NULL, NULL, NULL, NULL),
(2, 'O_TO_50', 'Xe 50 chỗ', 2, '1', '2', '1', '1', '3', '2', NULL, 50, '2017-10-17', '2', 'Xe 50 chỗ hiệu Mercedes', NULL, 'Xe phục vụ đưa đón cán bộ, công nhân viên', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_asset_class`
--

CREATE TABLE `c_asset_class` (
  `C_ASSET_CLASS_ID` int(10) NOT NULL,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_asset_class`
--

INSERT INTO `c_asset_class` (`C_ASSET_CLASS_ID`, `NAME`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, 'Tài sản cố định', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Tài sản lưu động', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Tài sản hữu hình', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Tài sản vô hình', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Khác', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_asset_group`
--

CREATE TABLE `c_asset_group` (
  `C_ASSET_GROUP_ID` int(10) NOT NULL,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_asset_group`
--

INSERT INTO `c_asset_group` (`C_ASSET_GROUP_ID`, `NAME`, `IS_ACTIVE`, `DESCRIPTION`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, 'Tài sản vật tư', NULL, 'Tài sản dạng vật tư', NULL, NULL, NULL, NULL),
(2, 'Tài sản khác', NULL, 'Các loại tài sản khác', NULL, NULL, NULL, NULL),
(3, 'Tài sản xe', NULL, 'Các loại tài sản xe: oto, xe máy...', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_asset_type`
--

CREATE TABLE `c_asset_type` (
  `C_ASSET_TYPE_ID` int(10) NOT NULL,
  `CODE` text COLLATE utf8_unicode_ci,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_asset_type`
--

INSERT INTO `c_asset_type` (`C_ASSET_TYPE_ID`, `CODE`, `NAME`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, 'O_TO', 'Ô-tô', 'Xe ô-tô', NULL, NULL, NULL, NULL, NULL),
(2, 'VAN_PHONG', 'Tài sản văn phòng', 'Tài sản phục vụ văn phòng', NULL, NULL, NULL, NULL, NULL),
(3, 'XE_MAY', 'Xe Máy', 'Xe máy', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_calendar`
--

CREATE TABLE `c_calendar` (
  `calendar_id` int(11) NOT NULL,
  `calendar_name` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `working_date` int(11) DEFAULT NULL COMMENT 'ngày đi làm hay không',
  `description` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT 'trạng thái',
  `inserted_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `inserted_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `color` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_calendar`
--

INSERT INTO `c_calendar` (`calendar_id`, `calendar_name`, `working_date`, `description`, `status`, `inserted_by`, `updated_by`, `inserted_time`, `updated_time`, `color`) VALUES
(1, '122', 1, '', NULL, NULL, NULL, NULL, NULL, 'RED');

-- --------------------------------------------------------

--
-- Table structure for table `c_color_defined`
--

CREATE TABLE `c_color_defined` (
  `color_name` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `color_code` varchar(10) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_color_defined`
--

INSERT INTO `c_color_defined` (`color_name`, `color_code`) VALUES
('AQUA', '00FFFF'),
('BLACK', '000000'),
('BLUE', '0000FF'),
('FUCHSIA', 'FF00FF'),
('GRAY', '808080'),
('GREEN', '008000'),
('LIME', '00FF00'),
('MAROON', '800000'),
('NAVY', '000080'),
('OLIVE', '808000'),
('PURPLE', '800080'),
('RED', 'FF0000'),
('SILVER', 'C0C0C0'),
('TEAL', '008080'),
('WHITE', 'FFFFFF'),
('YELLOW', 'FFFF00');

-- --------------------------------------------------------

--
-- Table structure for table `c_document`
--

CREATE TABLE `c_document` (
  `id` int(11) NOT NULL,
  `document_code` varchar(45) NOT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `document_type` varchar(45) DEFAULT NULL,
  `security_level` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `part_storage_time` int(10) DEFAULT NULL,
  `department_storage_time` int(10) DEFAULT NULL,
  `document_url` varchar(1000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_document`
--

INSERT INTO `c_document` (`id`, `document_code`, `document_name`, `document_type`, `security_level`, `created_by`, `status`, `part_storage_time`, `department_storage_time`, `document_url`) VALUES
(3, 'TAI_LIEU_01', 'Tài liệu quy trình nghiệp vụ Y', 'Cứng', 'Trung bình', 'Admin', 'Đã lưu', 36, 12, '../data/ISO-YTHG-QTKT-02.doc'),
(4, 'TAI_LIEU_02', 'Quy định về làm việc liên bộ phận', 'Cứng', 'Cao', 'Admin', 'Đã lưu', 36, 12, '../data/test.pdf'),
(5, '001244_BM.01.01.doc', '001244_BM.01.01.doc', 'Quy trình', 'Cao', 'admin', 'Có hiệu lực', 0, 0, '../data/task_report/2017/12/23/'),
(6, '003800_BM.01.01.doc', '003800_BM.01.01.doc', 'Quy trình', 'Cao', 'admin', 'Có hiệu lực', 0, 0, '../data/task_report/2017/12/23/'),
(7, '003800_BM.01.02.doc', '003800_BM.01.02.doc', 'Quy trình', 'Cao', 'admin', 'Có hiệu lực', 0, 0, '../data/task_report/2017/12/23/'),
(8, '003800_QT.01_Danh_gia_rui_ro.doc', '003800_QT.01_Danh_gia_rui_ro.doc', 'Quy trình', 'Cao', 'admin', 'Có hiệu lực', 0, 0, '../data/task_report/2017/12/23/'),
(9, '003800_BM.01.01.doc', '003800_BM.01.01.doc', 'Quy trình', 'Cao', 'admin', 'Có hiệu lực', 0, 0, '../data/task_report/2017/12/23/'),
(10, '003800_BM.01.02.doc', '003800_BM.01.02.doc', 'Quy trình', 'Cao', 'admin', 'Có hiệu lực', 0, 0, '../data/task_report/2017/12/23/'),
(11, '003800_QT.01_Danh_gia_rui_ro.doc', '003800_QT.01_Danh_gia_rui_ro.doc', 'Quy trình', 'Cao', 'admin', 'Có hiệu lực', 0, 0, '../data/task_report/2017/12/23/');

-- --------------------------------------------------------

--
-- Table structure for table `c_education`
--

CREATE TABLE `c_education` (
  `C_EDUCATION_ID` int(10) NOT NULL,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_education`
--

INSERT INTO `c_education` (`C_EDUCATION_ID`, `NAME`, `VALUE`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, 'DEGREE_TYPE', 'Chứng chỉ', NULL, NULL, NULL, NULL, NULL),
(2, 'DEGREE_TYPE', 'Cao Đẳng', NULL, NULL, NULL, NULL, NULL),
(3, 'DEGREE_TYPE', 'Đại Học', NULL, NULL, NULL, NULL, NULL),
(4, 'DEGREE_TYPE', 'Thạc Sỹ', NULL, NULL, NULL, NULL, NULL),
(5, 'DEGREE_TYPE', 'Tiến Sĩ', NULL, NULL, NULL, NULL, NULL),
(6, 'DEGREE_TYPE', 'Khác', NULL, NULL, NULL, NULL, NULL),
(7, 'EDUCATION_TYPE', 'Tại chức', NULL, NULL, NULL, NULL, NULL),
(8, 'EDUCATION_TYPE', 'Nội bộ', NULL, NULL, NULL, NULL, NULL),
(9, 'EDUCATION_TYPE', 'Chính quy', NULL, NULL, NULL, NULL, NULL),
(10, 'EDUCATION_TYPE', 'Khác', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_employees`
--

CREATE TABLE `c_employees` (
  `C_EMPLOYEE_ID` int(10) NOT NULL,
  `EMPLOYEE_CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã cán bộ, nhân viên',
  `EMPLOYEE_TYPE_ID` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Loại cán bộ hay viên chức hay thử việc',
  `FIRST_NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `LAST_NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `BIRTHDAY` date NOT NULL,
  `EMAIL` text COLLATE utf8_unicode_ci NOT NULL,
  `MOBILE` text COLLATE utf8_unicode_ci NOT NULL,
  `ADDRESS` text COLLATE utf8_unicode_ci,
  `IMAGE_URL` text COLLATE utf8_unicode_ci COMMENT 'Lưu đường dẫn ảnh cá nhân',
  `HIRE_FROM_DATE` date DEFAULT NULL,
  `HIRE_TO_DATE` date DEFAULT NULL,
  `SALARY` text COLLATE utf8_unicode_ci,
  `COMMISSION_PCT` text COLLATE utf8_unicode_ci,
  `DEPARTMENT_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `JOB_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `CREATED` date DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` date DEFAULT NULL,
  `ROLE` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `USERNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `PASSWORD` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `SEX` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_employees`
--

INSERT INTO `c_employees` (`C_EMPLOYEE_ID`, `EMPLOYEE_CODE`, `EMPLOYEE_TYPE_ID`, `FIRST_NAME`, `LAST_NAME`, `BIRTHDAY`, `EMAIL`, `MOBILE`, `ADDRESS`, `IMAGE_URL`, `HIRE_FROM_DATE`, `HIRE_TO_DATE`, `SALARY`, `COMMISSION_PCT`, `DEPARTMENT_ID`, `JOB_ID`, `IS_ACTIVE`, `CREATED_BY`, `CREATED`, `UPDATED_BY`, `UPDATED`, `ROLE`, `USERNAME`, `PASSWORD`, `SEX`) VALUES
(1, '195455', '1', 'Lê Trung Thực', 'Thực', '1987-01-17', 'minhn@viettel.com.vn', '0917333333', 'Cầu Giấy - Hà Nội', '/image/minhn.png', '2010-10-02', NULL, '21000000', 'PCT', '2', '1', 1, NULL, NULL, NULL, NULL, NULL, 'thuclt', 'thuclt', 1),
(2, '195456', '2', 'Nguyễn Diệu Linh', 'Linh', '1988-10-10', 'linhnd20@viettel.com.vn', '0987789987', 'Đống Đa', '/image/2.png', NULL, NULL, NULL, NULL, '1', '2', 1, NULL, NULL, NULL, NULL, NULL, 'admin1', 'admin', 1),
(3, '200118', '2', 'Mai Việt Anh', 'Anh', '1991-10-26', 'anhmv@viettel.com.vn', '01667778889', 'Thanh Xuân', '/image/5.png', NULL, NULL, NULL, NULL, '1', '3', 1, NULL, NULL, NULL, NULL, NULL, 'admin', 'admin', 0),
(4, '123', '2', '123', '123', '2017-12-16', '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2', 1, NULL, NULL, NULL, NULL, NULL, '123', '123', 0),
(5, '122117', '3', 'Lê Văn Khương', 'Lê Văn Khương', '2017-12-21', 'khuonglv@gmail,com', '0123456789', 'Hà Giang', NULL, NULL, NULL, NULL, NULL, '4', '1', 1, NULL, NULL, NULL, NULL, NULL, 'khuonglv', 'khuonglv', 0),
(6, '122118', '2', 'Bùi Văn Đăng', 'Bùi Văn Đăng', '2017-12-21', 'dangbv@gmail.com', '0123456789', 'Hà Nội', NULL, NULL, NULL, NULL, NULL, '10', '2', 1, NULL, NULL, NULL, NULL, NULL, 'dangbv', 'dangbv', 0);

-- --------------------------------------------------------

--
-- Table structure for table `c_employee_education`
--

CREATE TABLE `c_employee_education` (
  `C_EMPLOYEE_EDUCATION_ID` int(10) NOT NULL,
  `C_EMPLOYEE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `FROM_DATE` date NOT NULL,
  `TO_DATE` date NOT NULL,
  `C_DEGREE_TYPE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_EDUCATION_TYPE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `EDUCATION_PLACE` text COLLATE utf8_unicode_ci NOT NULL,
  `CLASSIFICATION` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_employee_education`
--

INSERT INTO `c_employee_education` (`C_EMPLOYEE_EDUCATION_ID`, `C_EMPLOYEE_ID`, `FROM_DATE`, `TO_DATE`, `C_DEGREE_TYPE_ID`, `C_EDUCATION_TYPE_ID`, `EDUCATION_PLACE`, `CLASSIFICATION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, '1', '2017-10-03', '2017-10-11', '3', '9', 'ĐH Công nghệ', 'Khá', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_employee_process`
--

CREATE TABLE `c_employee_process` (
  `C_EMPLOYEE_PROCESS_ID` int(10) NOT NULL,
  `C_EMPLOYEE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `FROM_DATE` date NOT NULL,
  `TO_DATE` date NOT NULL,
  `C_JOB_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_EMPLOYEE_TYPE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `C_DEPARTMENT_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_employee_process`
--

INSERT INTO `c_employee_process` (`C_EMPLOYEE_PROCESS_ID`, `C_EMPLOYEE_ID`, `FROM_DATE`, `TO_DATE`, `C_JOB_ID`, `C_EMPLOYEE_TYPE_ID`, `C_DEPARTMENT_ID`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, '1', '2017-10-04', '2017-10-11', '1', '1', '2', NULL, NULL, NULL, NULL, NULL),
(2, '1', '2017-09-24', '2017-09-30', '2', '1', '3', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_employee_reward`
--

CREATE TABLE `c_employee_reward` (
  `C_EMPLOYEE_REWARD_ID` int(10) DEFAULT NULL,
  `C_EMPLOYEE_ID` text COLLATE utf8_unicode_ci,
  `REWARD_TYPE` text COLLATE utf8_unicode_ci,
  `REWARD_DATE` date DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_employee_reward`
--

INSERT INTO `c_employee_reward` (`C_EMPLOYEE_REWARD_ID`, `C_EMPLOYEE_ID`, `REWARD_TYPE`, `REWARD_DATE`, `CONTENT`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, '1', '1', '2017-10-14', 'Lao động tiên tiến năm 2016', 'Triển khai thành công hệ thống BCCS 2.0 phục vụ SXKD thị trường.', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_employee_type`
--

CREATE TABLE `c_employee_type` (
  `C_EMPLOYEE_TYPE_ID` int(10) NOT NULL,
  `EMPLOYEE_TYPE` text COLLATE utf8_unicode_ci NOT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `CREATED` date DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_employee_type`
--

INSERT INTO `c_employee_type` (`C_EMPLOYEE_TYPE_ID`, `EMPLOYEE_TYPE`, `IS_ACTIVE`, `CREATED_BY`, `CREATED`, `UPDATED_BY`, `UPDATED`) VALUES
(1, 'Viên chức', NULL, NULL, NULL, NULL, NULL),
(2, 'Công chức', NULL, NULL, NULL, NULL, NULL),
(3, 'Nhân viên', NULL, NULL, NULL, NULL, NULL),
(4, 'Hợp đồng ngắn hạn', NULL, NULL, NULL, NULL, NULL),
(5, 'Thử việc', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_field`
--

CREATE TABLE `c_field` (
  `C_FIELD_ID` int(11) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `IS_ACTIVE` varchar(10) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_field`
--

INSERT INTO `c_field` (`C_FIELD_ID`, `CODE`, `NAME`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED_BY`, `UPDATED_BY`, `UPDATED`, `CREATED`) VALUES
(1, 'field_1', 'field_1', 'field_1', '1', 'test', 'test', '2017-11-03 00:00:00', '2017-11-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `c_file`
--

CREATE TABLE `c_file` (
  `id` int(11) NOT NULL,
  `file_code` varchar(45) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(45) DEFAULT NULL,
  `security_level` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `part_storage_time` int(10) DEFAULT NULL,
  `department_storage_time` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_file`
--

INSERT INTO `c_file` (`id`, `file_code`, `file_name`, `file_type`, `security_level`, `created_by`, `status`, `part_storage_time`, `department_storage_time`) VALUES
(2, 'HO_SO_1', 'Hồ sơ 01', 'Mềm', 'Cao', NULL, 'Đã ban hành', 12, 11),
(3, 'HO_SO_2', 'NĐ 01', 'Mềm', 'Cao', NULL, 'Đang xét duyệt', 12, 12),
(5, 'HO_SO_3', 'QĐ 01', 'Cứng', 'Mềm', NULL, 'Nháp', 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `c_flow`
--

CREATE TABLE `c_flow` (
  `FLOW_ID` int(11) NOT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PROCESS_DAYS` int(11) DEFAULT '1',
  `status` int(1) DEFAULT NULL,
  `CREATE_BY` varchar(50) DEFAULT NULL,
  `UPDATE_BY` varchar(50) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_flow`
--

INSERT INTO `c_flow` (`FLOW_ID`, `CODE`, `NAME`, `DESCRIPTION`, `PROCESS_DAYS`, `status`, `CREATE_BY`, `UPDATE_BY`, `CREATED`, `UPDATED`) VALUES
(2, 'test', 'test1', 'test luong', 2, 1, NULL, NULL, NULL, NULL),
(3, 'demo', 'demo', 'demo', 12, 1, NULL, NULL, NULL, NULL),
(4, 'TD', 'tuyển dụng', 'tuyển dụng', 2, 1, NULL, NULL, NULL, NULL),
(6, 'abc', 'Rủi ro', 'Rủi ro', 1, 1, NULL, NULL, NULL, NULL),
(7, 'abc', 'abc', 'abc', 1, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_job`
--

CREATE TABLE `c_job` (
  `C_JOB_ID` int(11) NOT NULL,
  `JOB_TITLE` text COLLATE utf8_unicode_ci NOT NULL,
  `SALARY_GLONE` decimal(10,0) DEFAULT NULL,
  `SALARY_WAGE` decimal(10,0) DEFAULT NULL,
  `MIN_SALARY` decimal(10,0) DEFAULT NULL,
  `MAX_SALARY` decimal(10,0) DEFAULT NULL,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `CREATED` date DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_job`
--

INSERT INTO `c_job` (`C_JOB_ID`, `JOB_TITLE`, `SALARY_GLONE`, `SALARY_WAGE`, `MIN_SALARY`, `MAX_SALARY`, `IS_ACTIVE`, `CREATED_BY`, `CREATED`, `UPDATED_BY`, `UPDATED`) VALUES
(1, 'Trưởng phòng', '3', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Nhân viên', '2', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Phó Trưởng Phòng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_job_history`
--

CREATE TABLE `c_job_history` (
  `C_JOB_HISTORY_ID` int(10) NOT NULL,
  `EMPLOYEE_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `EMPLOYEE_TYPE_ID` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Loại cán bộ, viên chức, hợp đồng, thử việc...',
  `START_DATE` text COLLATE utf8_unicode_ci NOT NULL,
  `END_DATE` date NOT NULL,
  `JOB_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `DEPARTMENT_ID` text COLLATE utf8_unicode_ci NOT NULL,
  `SALARY_GLONE` decimal(10,0) DEFAULT NULL COMMENT 'Ngạch lương',
  `SALARY_WAGE` decimal(10,0) DEFAULT NULL COMMENT 'Bậc lương',
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `CREATED` date DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_menu`
--

CREATE TABLE `c_menu` (
  `c_menu_id` int(11) NOT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PARENT_ID` int(20) DEFAULT NULL,
  `IS_ACTIVE` int(2) DEFAULT NULL,
  `IS_PARENT` int(2) DEFAULT NULL,
  `IS_CONTAIN_CHILD` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_menu`
--

INSERT INTO `c_menu` (`c_menu_id`, `CREATE_TIME`, `CODE`, `NAME`, `PARENT_ID`, `IS_ACTIVE`, `IS_PARENT`, `IS_CONTAIN_CHILD`) VALUES
(-2, '2017-12-06', 'organizationMngt', 'Quản lý tổ chức', 0, 1, 0, 0),
(-1, '2017-12-06', 'dashboard', 'Trang chủ', 0, 1, 0, 0),
(1, '2017-12-06', 'userMngt', 'Quản lý người dùng', 0, 1, 0, 0),
(2, '2017-12-06', 'processMngt', 'Quản lý quy trình', 0, 1, 1, 1),
(3, '2017-12-06', 'organizationMngt', 'Quản lý công việc tổ chức', 0, 1, 1, 0),
(4, '2017-12-06', 'staffMngt', 'Quản lý cán bộ', 0, 1, 1, 1),
(5, '2017-12-06', 'taskMngt', 'Quản lý công việc', 0, 1, 1, 1),
(6, '2017-12-06', 'archivesMngt', 'Quản lý công văn', 0, 1, 1, 1),
(7, '2017-12-06', 'personalFilesMngt', 'Quản lý hồ sơ', 0, 1, 1, 1),
(8, '2017-12-06', 'assetMngt', 'Quản lý tài sản', 0, 1, 1, 1),
(13, '2017-12-06', 'employeeMngt', 'Danh sách cán bộ', 4, 1, 0, 0),
(14, '2017-12-06', 'jobMngt', 'Danh mục chức danh', 4, 1, 0, 0),
(15, '2017-12-06', 'employeeTypeMngt', 'Danh mục loại cán bộ', 4, 1, 0, 0),
(16, '2017-12-06', 'taskGroupMngt', 'Danh mục nhóm công việc', 5, 1, 0, 0),
(17, '2017-12-06', 'taskPriorityMngt', 'Danh mục mức độ công việc', 5, 1, 0, 0),
(18, '2017-12-06', 'taskOrgMngt', 'Quản lý công việc tổ chức', 5, 1, 0, 0),
(19, '2017-12-06', 'taskPersonalMngt', 'Quản lý công việc cá nhân', 5, 1, 0, 0),
(20, '2017-12-06', 'fileMngt', 'Quản lý thông tin hồ sơ nội bộ', 6, 1, 0, 0),
(21, '2017-12-06', 'documentMngt', 'Quản lý thông tin tài liệu', 6, 1, 0, 0),
(22, '2017-12-06', 'sendFileMngt', 'Gửi hồ sơ', 7, 1, 0, 0),
(23, '2017-12-06', 'fileInfoMngt', 'Thông tin hồ sơ', 7, 1, 0, 0),
(24, '2017-12-06', 'searchFileMngt', 'Tra cứu hồ sơ', 7, 1, 0, 0),
(25, '2017-12-06', 'guideMngt', 'Hướng dẫn', 2, 1, 0, 0),
(26, '2017-12-06', 'cataStepMngt', 'Bước thực hiện', 2, 1, 0, 0),
(27, '2017-12-06', 'cataFlowMngt', 'Quản lý luồng xử lý', 2, 1, 0, 0),
(28, '2017-12-06', 'cataProcedureMngt', 'Danh mục thủ tục', 2, 1, 0, 0),
(29, '2017-12-06', 'assetListMngt', 'Quản lý danh mục tài sản', 8, 1, 0, 0),
(30, '2017-12-06', 'unitMngt', 'Danh mục đơn vị tính', 8, 1, 0, 0),
(31, '2017-12-06', 'providerMngt', 'Danh mục nhà cung cấp', 8, 1, 0, 0),
(32, '2017-12-06', 'assetTypeMngt', 'Danh mục loại tài sản', 8, 1, 0, 0),
(33, '2017-12-06', 'assetGroupMngt', 'Danh mục nhóm tài sản', 8, 1, 0, 0),
(34, '2017-12-06', 'assetClassMngt', 'Danh mục phân lớp tài sản', 8, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `c_organization_task`
--

CREATE TABLE `c_organization_task` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `task_group_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `budget` float DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `task_piority_id` int(11) DEFAULT NULL,
  `task_content` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `attachment` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `process_user_id` int(11) DEFAULT NULL COMMENT 'người thực hiện',
  `progress` int(11) DEFAULT NULL COMMENT 'tiến độ công việc',
  `status` int(11) DEFAULT NULL,
  `task_parent_id` int(11) DEFAULT NULL,
  `insert_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `inserted_user_id` int(11) DEFAULT NULL COMMENT 'người tạo',
  `updated_user_id` int(11) DEFAULT NULL COMMENT 'người cập nhật'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_procedure`
--

CREATE TABLE `c_procedure` (
  `C_PROCEDURE_ID` int(11) NOT NULL,
  `CODE` varchar(100) NOT NULL,
  `NAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `LEVEL` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TYPE` varchar(20) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `CONTENT` varchar(5000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `C_FIELD_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(5000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `IS_ACTIVE` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `CREATED_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `UPDATED_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `UPDATED` datetime NOT NULL,
  `CREATED` datetime NOT NULL,
  `ORGANIZATION_ID` int(20) DEFAULT NULL,
  `PROCESS_TIME` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `COST` varchar(20) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_procedure`
--

INSERT INTO `c_procedure` (`C_PROCEDURE_ID`, `CODE`, `NAME`, `LEVEL`, `TYPE`, `CONTENT`, `C_FIELD_ID`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED_BY`, `UPDATED_BY`, `UPDATED`, `CREATED`, `ORGANIZATION_ID`, `PROCESS_TIME`, `COST`) VALUES
(-4, 'pro_4', 'THỦ TỤC THỰC HIỆN', 'Cấp độ 4', '1', '<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Thủ tục h&agrave;nh ch&iacute;nh</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">THỦ TỤC THỰC HIỆN CHẾ ĐỘ TRỢ CẤP MỘT LẦN ĐỐI VỚI NGƯỜI C&Oacute; TH&Agrave;NH T&Iacute;CH THAM GIA KH&Aacute;NG CHIẾN ĐƯỢC TẶNG BẰNG KHEN CỦA THỦ TƯỚNG CH&Iacute;NH PHỦ, BẰNG KHEN CỦA CẤP BỘ , BẰNG KHEN CỦA CẤP TỈNH (GỌI CHUNG L&Agrave; NGƯỜI C&Oacute; BẰNG KHEN) HOẶC TH&Acirc;N NH&Acirc;N CỦA NGƯỜI C&Oacute; BẰNG KHEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Mức độ 2</strong></div>\r\n</div>\r\n\r\n<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Lĩnh vực</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">Lĩnh vực LĐ-TB v&agrave; X&atilde; hội</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'pro_1', '1', 'test', 'test', '2017-11-03 00:00:00', '2017-11-03 00:00:00', 1, '40 ng?y', '200000'),
(-2, 'pro_2', 'THỦ TỤC THỰC HIỆN 1', 'Cấp độ 2', '1', '<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Thủ tục h&agrave;nh ch&iacute;nh</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">THỦ TỤC THỰC HIỆN CHẾ ĐỘ TRỢ CẤP MỘT LẦN ĐỐI VỚI NGƯỜI C&Oacute; TH&Agrave;NH T&Iacute;CH THAM GIA KH&Aacute;NG CHIẾN ĐƯỢC TẶNG BẰNG KHEN CỦA THỦ TƯỚNG CH&Iacute;NH PHỦ, BẰNG KHEN CỦA CẤP BỘ , BẰNG KHEN CỦA CẤP TỈNH (GỌI CHUNG L&Agrave; NGƯỜI C&Oacute; BẰNG KHEN) HOẶC TH&Acirc;N NH&Acirc;N CỦA NGƯỜI C&Oacute; BẰNG KHEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Mức độ 2</strong></div>\r\n</div>\r\n\r\n<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Lĩnh vực</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">Lĩnh vực LĐ-TB v&agrave; X&atilde; hội</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'pro_1', '1', 'test', 'test', '2017-11-03 00:00:00', '2017-11-03 00:00:00', 1, '40 ng?y', '200000'),
(-1, 'pro_1', 'pro_1', 'Cấp độ 1', '3', 'test', 1, 'pro_1', '1', 'test', 'test', '2017-11-03 00:00:00', '2017-11-03 00:00:00', 1, '', '200000'),
(1, 'QT.VP.01', 'Quản lý văn bản đi đến', 'Cấp độ 3', '1', 'test', 1, 'QT.VP.01', '1', 'admin', 'admin', '2017-11-03 00:00:00', '2017-11-03 00:00:00', 1, '40 ng?y', '240.000'),
(2, 'QT.VP.02', 'Thi đua khen thưởng, kỷ luật', 'Cấp độ 2', '1', '<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Thủ tục h&agrave;nh ch&iacute;nh</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">THỦ TỤC THỰC HIỆN CHẾ ĐỘ TRỢ CẤP MỘT LẦN ĐỐI VỚI NGƯỜI C&Oacute; TH&Agrave;NH T&Iacute;CH THAM GIA KH&Aacute;NG CHIẾN ĐƯỢC TẶNG BẰNG KHEN CỦA THỦ TƯỚNG CH&Iacute;NH PHỦ, BẰNG KHEN CỦA CẤP BỘ , BẰNG KHEN CỦA CẤP TỈNH (GỌI CHUNG L&Agrave; NGƯỜI C&Oacute; BẰNG KHEN) HOẶC TH&Acirc;N NH&Acirc;N CỦA NGƯỜI C&Oacute; BẰNG KHEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Mức độ 2</strong></div>\r\n</div>\r\n\r\n<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Lĩnh vực</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">Lĩnh vực LĐ-TB v&agrave; X&atilde; hội</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'QT.VP.02', '1', 'admin', 'admin', '2017-11-03 00:00:00', '2017-11-03 00:00:00', 1, '8 ng?y', '250.000'),
(3, 'QT.VP.03', 'Tuyển dụng công chức, viên chức', 'Cấp độ 3', '1', 'test', 1, 'QT.VP.03', '1', 'admin', 'admin', '2017-11-03 00:00:00', '2017-11-03 00:00:00', 1, '15 ng?y', '220.000'),
(4, 'QT.VP.04', 'Quản lý đào tạo', 'Cấp độ 3', '1', '<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Thủ tục h&agrave;nh ch&iacute;nh</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">THỦ TỤC THỰC HIỆN CHẾ ĐỘ TRỢ CẤP MỘT LẦN ĐỐI VỚI NGƯỜI C&Oacute; TH&Agrave;NH T&Iacute;CH THAM GIA KH&Aacute;NG CHIẾN ĐƯỢC TẶNG BẰNG KHEN CỦA THỦ TƯỚNG CH&Iacute;NH PHỦ, BẰNG KHEN CỦA CẤP BỘ , BẰNG KHEN CỦA CẤP TỈNH (GỌI CHUNG L&Agrave; NGƯỜI C&Oacute; BẰNG KHEN) HOẶC TH&Acirc;N NH&Acirc;N CỦA NGƯỜI C&Oacute; BẰNG KHEN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Mức độ 2</strong></div>\r\n</div>\r\n\r\n<div class=\"form-group-new\" style=\"-webkit-text-stroke-width:0px; background-color:#ffffff; border:0px; box-sizing:border-box; color:#333333; font-family:Arial; font-size:12px; font-style:normal; font-variant-caps:normal; font-variant-ligatures:normal; font-weight:normal; letter-spacing:normal; margin-bottom:7px; margin-left:0px; margin-right:0px; margin-top:0px; orphans:2; padding:0px; text-align:start; text-decoration-color:initial; text-decoration-style:initial; text-indent:0px; text-transform:none; white-space:normal; widows:2; word-spacing:0px\">\r\n<h4 style=\"margin-left:0px; margin-right:0px\"><strong>Lĩnh vực</strong></h4>\r\n\r\n<div style=\"border:0px; box-sizing:border-box; margin-bottom:0px; margin-left:30px; margin-right:10px; margin-top:0px; padding:0px; text-align:justify\">Lĩnh vực LĐ-TB v&agrave; X&atilde; hội</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 'QT.VP.04', '1', 'admin', 'admin', '2017-11-03 00:00:00', '2017-11-03 00:00:00', 1, '17 ng?y', '200.000'),
(5, 'QT.ISO.01', 'Kiểm soát thông tin, dữ liệu dạng văn bản', 'Cấp độ 3', '2', 'QT.ISO.01', 1, 'QT.ISO.01', '1', 'Admin', 'Admin', '2017-08-01 00:00:00', '2017-11-21 00:00:00', 1, '', '300.000'),
(6, 'QT.ISO.02', 'Đánh giá nội bộ', 'Cấp độ 3', '2', 'QT.ISO.02', 1, 'QT.ISO.02', '1', 'Admin', 'Admin', '2017-11-17 00:00:00', '2017-11-17 00:00:00', 1, '', '0'),
(7, 'QT.ISO.03', 'Kiểm soát sản phẩm không phù hợp, hành động khắc phục', 'Cấp độ 3', '2', 'QT.ISO.03', 1, 'QT.ISO.03', '1', 'Admin', 'Admin', '2017-11-17 00:00:00', '2017-11-17 00:00:00', 1, '', '0'),
(8, 'QT.ISO.04', 'Đánh giá rủi ro', 'Cấp độ 3', '2', 'QT.ISO.04', 1, 'QT.ISO.04', '1', 'Admin', 'Admin', '2017-11-17 00:00:00', '2017-11-17 00:00:00', 1, '', '0'),
(9, 'QT.ISO.05', 'Xem xét lãnh đạo', 'Cấp độ 3', '1', 'QT.ISO.05', 1, 'QT.ISO.05', '1', 'Admin', 'Admin', '2017-11-17 10:33:31', '2017-11-17 10:33:32', 1, '11 ng?y', '0'),
(10, 'QT.ISO.06', 'Nhận diện bối cảnh tổ chức', 'Cấp độ 3', '1', 'QT.ISO.06', 1, 'QT.ISO.06', '1', 'Admin', 'Admin', '2017-11-17 10:34:24', '2017-11-17 10:34:26', 1, '19 ng?y', '0'),
(11, 'QT.VP.05', 'Quản lý nghỉ hưu', 'Cấp độ 3', '1', 'QT.VP.05', 1, 'QT.VP.05', '1', 'Admin', 'Admin', '2017-11-17 10:35:53', '2017-11-17 10:35:55', 1, '25 ng?y', '0');

-- --------------------------------------------------------

--
-- Table structure for table `c_process_guide`
--

CREATE TABLE `c_process_guide` (
  `process_guide_id` int(11) NOT NULL,
  `process_guide_name` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `position` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_process_guide`
--

INSERT INTO `c_process_guide` (`process_guide_id`, `process_guide_name`, `description`, `status`, `position`) VALUES
(1, 'Đăng ký tài khoản', 'group__1', 0, '1'),
(2, 'Nộp hồ sơ trực tuyến', 'group__2', 1, '2'),
(3, 'Thanh toán lệ phí', 'group__3', 1, '3');

-- --------------------------------------------------------

--
-- Table structure for table `c_provider`
--

CREATE TABLE `c_provider` (
  `C_PROVIDER_ID` int(10) DEFAULT NULL,
  `CODE` text COLLATE utf8_unicode_ci,
  `NAME` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED_BY` datetime DEFAULT NULL,
  `UPDATED` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_provider`
--

INSERT INTO `c_provider` (`C_PROVIDER_ID`, `CODE`, `NAME`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED_BY`, `UPDATED`) VALUES
(1, 'MERC', 'Mercedez', 'Hãng xe Mercedez', NULL, NULL, NULL, NULL, NULL),
(2, 'AN_PHAT', 'Công ty cổ phần công nghệ An Phát', 'Cung cấp mặt hàng Router, Network Device', NULL, NULL, NULL, NULL, NULL),
(3, 'HOA_PHAT', 'Công ty thương mại dịch vụ Hòa Phát', 'Cung cấp đồ dùng văn phòng, thiết bị văn phòng', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_security_level`
--

CREATE TABLE `c_security_level` (
  `id` int(11) NOT NULL,
  `security_level_name` varchar(255) DEFAULT NULL,
  `security_level_color` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_by` varchar(45) DEFAULT NULL,
  `updated_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c_security_level`
--

INSERT INTO `c_security_level` (`id`, `security_level_name`, `security_level_color`, `description`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'test', '#0000', 'test324', 0, 'test', NULL, 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c_step`
--

CREATE TABLE `c_step` (
  `step_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `description` text COLLATE utf8_vietnamese_ci,
  `time_execute` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `position` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `created_time` date DEFAULT NULL,
  `CREATED_BY` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `UPDATED_TIME` date DEFAULT NULL,
  `UPDATED_BY` text CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_step`
--

INSERT INTO `c_step` (`step_id`, `name`, `code`, `description`, `time_execute`, `position`, `created_time`, `CREATED_BY`, `UPDATED_TIME`, `UPDATED_BY`) VALUES
(1, 'step1', 'step1', 'step1', '1', '1', '2017-10-28', 'admin', '2017-10-28', 'amdin'),
(4, 'step2', 'step2', 'step2', '1', '1', '2017-11-04', '1', '2017-11-04', '1'),
(5, 'Nộp hồ sơ', 'step1', 'Nộp hồ sơ', '1', '1', '2017-10-28', 'admin', '2017-10-28', 'admin'),
(6, 'Xử lý hồ sơ', 'step2', 'Xử lý hồ sơ', '1', '2', '2017-10-28', 'admin', '2017-10-28', 'admin'),
(7, 'Phê duyệt', 'step3', 'Phê duyệt', '1', '3', '2017-11-04', '1', '2017-11-04', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `c_task`
--

CREATE TABLE `c_task` (
  `task_id` int(11) NOT NULL,
  `task_name` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `task_group_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `budget` float DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `task_piority_id` int(11) DEFAULT NULL,
  `task_content` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `task_parent_id` int(11) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL COMMENT 'người giao việc',
  `insert_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL COMMENT 'người tạo',
  `updated_by` int(11) DEFAULT NULL COMMENT 'người cập nhật',
  `reviewed_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `reviewed_result` int(11) DEFAULT NULL,
  `reviewed_content` varchar(3000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_task`
--

INSERT INTO `c_task` (`task_id`, `task_name`, `task_group_id`, `department_id`, `start_time`, `end_time`, `budget`, `currency`, `task_piority_id`, `task_content`, `status`, `task_parent_id`, `assigned_by`, `insert_time`, `update_time`, `created_by`, `updated_by`, `reviewed_time`, `reviewed_result`, `reviewed_content`, `reviewed_by`, `rate`) VALUES
(1, 'task_name', 1, 2, '2017-10-04 00:00:00', '2017-10-06 00:00:00', 100000, NULL, 1, 'content', 2, NULL, NULL, '2017-10-04 00:00:00', '2017-10-04 00:00:00', 1, 1, '2017-10-05 15:27:03', NULL, NULL, NULL, 100),
(2, 'task_childname', 1, 2, '2017-10-04 00:00:00', '2017-10-06 00:00:00', 100000, NULL, 1, 'sub_content', 2, 1, NULL, '2017-10-04 00:00:00', '2017-10-04 00:00:00', 1, 1, '2017-10-05 15:27:03', NULL, NULL, NULL, NULL),
(3, 'abc', 1, 2, '2017-10-11 16:49:35', '2017-10-11 16:49:38', 1234, NULL, 1, 'ác', 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100),
(4, 'Công việc hành chính', 1, 10, '2017-12-18 00:38:09', '2018-01-01 00:38:18', 1000000, NULL, 3, 'Công việc hành chính hàng ngày', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Vận hành hệ thống ISO điện tử', 1, 4, '2017-12-21 00:39:52', '2018-01-10 00:39:56', 1000000, NULL, 3, 'Vận hành hệ thống ISO điện tử', 2, NULL, NULL, NULL, '2017-12-21 00:41:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Triển khai tập huấn hệ thống ISO điện tử', 1, 4, '2017-12-05 00:42:35', '2017-12-22 00:42:39', 100000, NULL, 3, 'Triển khai tập huấn hệ thống ISO điện tử', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Triggers `c_task`
--
DELIMITER $$
CREATE TRIGGER `c_task_AU` BEFORE UPDATE ON `c_task` FOR EACH ROW BEGIN
      IF (NEW.rate = 100) THEN
        SET NEW.status = 3;
      END IF;
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `c_task_assignee`
--

CREATE TABLE `c_task_assignee` (
  `task_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `assigned_id` int(11) NOT NULL,
  `is_main` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_task_assignee`
--

INSERT INTO `c_task_assignee` (`task_id`, `seq`, `assigned_id`, `is_main`) VALUES
(2, 1, 1, NULL),
(1, 1, 1, NULL),
(5, 1, 5, NULL),
(6, 1, 5, NULL);

--
-- Triggers `c_task_assignee`
--
DELIMITER $$
CREATE TRIGGER `c_task_assignee_BI` BEFORE INSERT ON `c_task_assignee` FOR EACH ROW BEGIN
    SET NEW.seq = (
       SELECT IFNULL(MAX(seq), 0) + 1
       FROM c_task_assignee
       WHERE task_id  = NEW.task_id
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `c_task_attachment`
--

CREATE TABLE `c_task_attachment` (
  `task_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `attachment_type` int(11) NOT NULL COMMENT 'loại đính kèm: task hoặc báo cáo',
  `file_name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `attachment_url` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `hist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_task_attachment`
--

INSERT INTO `c_task_attachment` (`task_id`, `seq`, `attachment_type`, `file_name`, `attachment_url`, `hist_id`) VALUES
(6, 1, 1, '014407_tuyen_26_3x_copy.jpg', '../data/task/2017/10/10/', NULL),
(7, 1, 2, '084335_d75fd_De_cuong_Do_an_tot_nghiep_HTTT_.doc', '../data/task_report/2017/10/15/', 3),
(4, 1, 1, '155518_bao_cao_datn_Mai_Thi_Nga.docx', '../data/task/2017/10/19/', NULL),
(4, 1, 2, '163340_BCompare_4_key.txt', '../data/task_report/2017/10/19/', 4),
(1, 1, 1, '221101_gw040.txt', '../data/task/2017/11/10/', NULL),
(2, 1, 2, '162353_sql.txt', '../data/task_report/2017/12/18/', 7),
(5, 1, 1, '004124_real.txt', '../data/task/2017/12/21/', NULL),
(6, 2, 1, '004231_staging.txt', '../data/task/2017/12/21/', NULL);

--
-- Triggers `c_task_attachment`
--
DELIMITER $$
CREATE TRIGGER `c_task_attachment_BI` BEFORE INSERT ON `c_task_attachment` FOR EACH ROW BEGIN
    SET NEW.seq = (
       SELECT IFNULL(MAX(seq), 0) + 1
       FROM c_task_attachment
       WHERE task_id  = NEW.task_id
       AND attachment_type = NEW.attachment_type
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `c_task_group`
--

CREATE TABLE `c_task_group` (
  `task_group_id` int(11) NOT NULL,
  `task_group_name` varchar(200) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_task_group`
--

INSERT INTO `c_task_group` (`task_group_id`, `task_group_name`, `description`, `status`, `color`) VALUES
(1, 'Nhóm hành chính', 'Nhóm hành chính', 1, 'blue'),
(2, 'Nhóm xử lý hồ sơ', 'Nhóm xử lý hồ sơ', 1, 'red'),
(3, 'Nhóm tiếp nhận và trả hồ sơ', 'Nhóm tiếp nhận và trả hồ sơ', 1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `c_task_history`
--

CREATE TABLE `c_task_history` (
  `hist_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `report_content` varchar(3000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `report_time` datetime DEFAULT NULL,
  `inserted_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inserted_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `report_rate` int(3) DEFAULT NULL COMMENT 'tiến độ công việc: dánh cho báo cáo và kiểm tra',
  `check_result` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `check_time` datetime DEFAULT NULL,
  `check_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_task_history`
--

INSERT INTO `c_task_history` (`hist_id`, `task_id`, `report_content`, `report_time`, `inserted_time`, `updated_time`, `inserted_by`, `updated_by`, `report_rate`, `check_result`, `check_time`, `check_rate`) VALUES
(3, 7, 'test', '2017-10-15 08:43:31', '2017-10-15 08:43:44', '2017-10-15 09:18:11', NULL, NULL, 5, 'chua dung voi bao cao', '2017-10-15 09:17:56', 3),
(4, 4, 'y bc', '2017-10-19 16:33:41', '2017-10-19 16:33:47', '2017-10-19 16:43:05', NULL, NULL, 9, 'test kt', '2017-10-19 16:42:59', 5),
(5, 1, 'aaaaa', '2017-12-19 15:53:12', '2017-12-18 15:53:59', '2017-12-18 16:03:42', NULL, NULL, 100, 'ok', '2017-12-19 16:03:34', 100),
(6, 1, 'bbbb', '2017-12-12 15:54:09', '2017-12-18 15:54:49', '2017-12-18 16:04:28', NULL, NULL, 100, 'ok', NULL, 100),
(7, 2, 'làm xong', '2017-12-18 16:24:03', '2017-12-18 16:24:11', '2017-12-18 16:24:11', NULL, NULL, 0, NULL, NULL, NULL);

--
-- Triggers `c_task_history`
--
DELIMITER $$
CREATE TRIGGER `CHECK_RATE_AI` AFTER INSERT ON `c_task_history` FOR EACH ROW BEGIN
        update c_task set rate = (select check_rate from c_task_history where task_id = NEW.task_id and inserted_time = (SELECT max(inserted_time) from c_task_history where task_id = NEW.task_id GROUP BY task_id)) where task_id = NEW.task_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `CHECK_RATE_AU` AFTER UPDATE ON `c_task_history` FOR EACH ROW BEGIN
        update c_task set rate = (select check_rate from c_task_history where task_id = NEW.task_id and inserted_time = (SELECT max(inserted_time) from c_task_history where task_id = NEW.task_id GROUP BY task_id)) where task_id = NEW.task_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `c_task_piority`
--

CREATE TABLE `c_task_piority` (
  `task_piority_id` int(11) NOT NULL,
  `task_piority_name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_task_priority`
--

CREATE TABLE `c_task_priority` (
  `task_priority_id` int(11) NOT NULL,
  `task_priority_name` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `c_task_priority`
--

INSERT INTO `c_task_priority` (`task_priority_id`, `task_priority_name`, `description`, `status`, `color`) VALUES
(1, 'Khẩn', 'Khẩn', 1, 'red'),
(2, 'Cao', 'Cao', 1, 'blue'),
(3, 'Bình thường', 'Bình thường', 1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `c_task_review`
--

CREATE TABLE `c_task_review` (
  `task_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  `criteria_name` varchar(500) COLLATE utf8_vietnamese_ci DEFAULT NULL COMMENT 'tên tiêu chí',
  `mark` int(11) DEFAULT NULL COMMENT 'điểm đánh giá',
  `reviewed_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `result` int(11) NOT NULL COMMENT 'đạt hay ko đạt',
  `unsuitable` int(11) NOT NULL COMMENT 'điểm không phù hợp. chưa rõ là gì'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Triggers `c_task_review`
--
DELIMITER $$
CREATE TRIGGER `update_seq` BEFORE INSERT ON `c_task_review` FOR EACH ROW BEGIN
    SET NEW.seq = (
       SELECT IFNULL(MAX(seq), 0) + 1
       FROM c_task_review
       WHERE task_id  = NEW.task_id
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `c_unit`
--

CREATE TABLE `c_unit` (
  `C_UNIT_ID` int(10) NOT NULL,
  `CODE` text COLLATE utf8_unicode_ci,
  `NAME` text COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IS_ACTIVE` tinyint(1) DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `CREATED_BY` text COLLATE utf8_unicode_ci,
  `UPDATED` datetime DEFAULT NULL,
  `UPDATED_BY` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `c_unit`
--

INSERT INTO `c_unit` (`C_UNIT_ID`, `CODE`, `NAME`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED`, `CREATED_BY`, `UPDATED`, `UPDATED_BY`) VALUES
(1, 'CHIEC', 'Chiếc', 'Chiếc', NULL, NULL, NULL, NULL, NULL),
(2, 'CAI', 'Cái', 'Cái', NULL, NULL, NULL, NULL, NULL),
(3, 'CUON', 'Cuộn', 'Cuộn', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_flow_procedure`
--

CREATE TABLE `m_flow_procedure` (
  `ID` int(11) NOT NULL,
  `FLOW_ID` int(11) NOT NULL,
  `PROCEDURE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `m_flow_procedure`
--

INSERT INTO `m_flow_procedure` (`ID`, `FLOW_ID`, `PROCEDURE_ID`) VALUES
(1, 2, 1),
(2, 3, 2),
(6, 4, 3),
(9, 4, 6),
(10, 6, 8),
(11, 7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `m_flow_step`
--

CREATE TABLE `m_flow_step` (
  `id` int(11) NOT NULL,
  `FLOW_ID` int(11) DEFAULT NULL,
  `STEP_ID` int(11) DEFAULT NULL,
  `C_ACTION_ID` int(11) DEFAULT NULL,
  `def_employee` int(11) DEFAULT NULL,
  `backup_employee` int(11) DEFAULT NULL,
  `support_employee` int(11) DEFAULT NULL,
  `STEP_INDEX` int(11) DEFAULT NULL,
  `STEP_BRANCH` int(11) DEFAULT NULL,
  `ALLOW_ACTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_flow_step`
--

INSERT INTO `m_flow_step` (`id`, `FLOW_ID`, `STEP_ID`, `C_ACTION_ID`, `def_employee`, `backup_employee`, `support_employee`, `STEP_INDEX`, `STEP_BRANCH`, `ALLOW_ACTION`) VALUES
(-5, 3, 3, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 2, 1, NULL, 1, NULL, NULL, 1, NULL, '1;5;10'),
(4, 2, 4, NULL, 1, NULL, NULL, 1, NULL, '1;5;10'),
(5, 3, 3, NULL, 2, NULL, NULL, 1, NULL, NULL),
(6, 4, 5, NULL, 1, 2, 1, 1, NULL, '1;5'),
(7, 4, 6, NULL, 1, 1, 1, 2, NULL, '1;7'),
(9, 7, 5, NULL, 1, NULL, NULL, 1, NULL, '1');

--
-- Triggers `m_flow_step`
--
DELIMITER $$
CREATE TRIGGER `PROCESS_DAYS_AD` AFTER DELETE ON `m_flow_step` FOR EACH ROW BEGIN
	update c_flow set process_days=(select sum(time_execute) from c_step where step_id in (select step_id from m_flow_step where flow_id=OLD.flow_id)) where flow_id=OLD.flow_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `PROCESS_DAYS_AI` AFTER INSERT ON `m_flow_step` FOR EACH ROW BEGIN
	update c_flow set process_days=(select sum(time_execute) from c_step where step_id in (select step_id from m_flow_step where flow_id=NEW.flow_id)) where flow_id=NEW.flow_id;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `PROCESS_DAYS_AU` AFTER UPDATE ON `m_flow_step` FOR EACH ROW BEGIN
	update c_flow set process_days=(select sum(time_execute) from c_step where step_id in (select step_id from m_flow_step where flow_id=NEW.flow_id)) where flow_id=NEW.flow_id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_procedure_document`
--

CREATE TABLE `m_procedure_document` (
  `M_PROCEDURE_DOCUMENT_ID` int(11) NOT NULL,
  `C_PROCEDURE_ID` int(11) NOT NULL,
  `C_DOCUMENT_ID` int(11) NOT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `IS_ACTIVE` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `CREATED_BY` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UPDATED_BY` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_procedure_document`
--

INSERT INTO `m_procedure_document` (`M_PROCEDURE_DOCUMENT_ID`, `C_PROCEDURE_ID`, `C_DOCUMENT_ID`, `DESCRIPTION`, `IS_ACTIVE`, `CREATED_BY`, `UPDATED_BY`, `UPDATED`, `CREATED`) VALUES
(1, 1, 3, '1', '1', 'ad', 'ad', '2017-11-10 15:41:39', '2017-11-10 15:41:39'),
(2, 1, 4, '1', '1', 'ad', 'ad', '2017-11-10 15:42:54', '2017-11-10 15:42:54'),
(4, 2, 3, '2', '1', 'ad', 'ad', '2017-11-10 15:42:55', '2017-11-10 15:42:55'),
(5, 3, 3, '3', '1', 'ad', 'ad', '2017-11-10 15:42:55', '2017-11-10 15:42:55'),
(6, 4, 4, '4', '4', 'ad', 'ad', '2017-11-10 15:42:55', '2017-11-10 15:42:55'),
(10, 8, 9, 'Đánh giá rủi ro', '1', 'admin', 'admin', '2017-12-23 00:00:00', '2017-12-23 00:00:00'),
(11, 8, 10, 'Đánh giá rủi ro', '1', 'admin', 'admin', '2017-12-23 00:00:00', '2017-12-23 00:00:00'),
(12, 8, 11, 'Đánh giá rủi ro', '1', 'admin', 'admin', '2017-12-23 00:00:00', '2017-12-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `m_user_menu`
--

CREATE TABLE `m_user_menu` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `c_menu_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `m_user_menu`
--

INSERT INTO `m_user_menu` (`id`, `user_id`, `c_menu_id`) VALUES
(1, 4, 20),
(2, 4, 31),
(3, 4, -1),
(4, 4, 15),
(5, 4, 22),
(6, 4, 23),
(7, 4, 29),
(8, 4, 25),
(9, 4, 3),
(10, 4, 7),
(11, 4, 27),
(12, 4, 26),
(13, 4, 30),
(14, 4, 1),
(15, 4, 4),
(16, 4, 2),
(17, 4, 5),
(18, 4, 34),
(19, 4, 14),
(20, 4, 32),
(21, 4, 21),
(22, 4, 19),
(23, 4, 13),
(24, 4, 8),
(25, 4, 24),
(26, 4, 16),
(27, 4, 17),
(28, 4, -2),
(29, 4, 6),
(30, 4, 28),
(31, 4, 18),
(32, 4, 33),
(33, 3, 16),
(34, 3, 28),
(35, 3, 3),
(36, 3, 8),
(37, 3, 33),
(38, 3, 24),
(39, 3, 13),
(40, 3, 18),
(41, 3, -2),
(42, 3, 26),
(43, 3, -1),
(44, 3, 17),
(45, 3, 25),
(46, 3, 7),
(47, 3, 20),
(48, 3, 30),
(49, 3, 22),
(50, 3, 23),
(51, 3, 31),
(52, 3, 34),
(53, 3, 29),
(54, 3, 2),
(55, 3, 15),
(56, 3, 5),
(57, 3, 19),
(58, 3, 4),
(59, 3, 14),
(60, 3, 1),
(61, 3, 21),
(62, 3, 6),
(63, 3, 32),
(64, 3, 27),
(65, 5, 28),
(66, 5, 17),
(67, 5, 24),
(68, 5, 16),
(69, 5, 21),
(70, 5, 20),
(71, 5, -2),
(72, 5, 30),
(73, 5, 4),
(74, 5, 18),
(75, 5, 8),
(76, 5, 22),
(77, 5, 14),
(78, 5, 34),
(79, 5, 23),
(80, 5, 7),
(81, 5, 13),
(82, 5, 33),
(83, 5, 19),
(84, 5, 1),
(85, 5, 2),
(86, 5, 15),
(87, 5, 31),
(88, 5, 3),
(89, 5, 5),
(90, 5, 26),
(91, 5, 27),
(92, 5, 32),
(93, 5, 6),
(94, 5, 25),
(95, 5, 29),
(96, 5, -1),
(97, 6, 14),
(98, 6, 16),
(99, 6, 29),
(100, 6, 20),
(101, 6, 30),
(102, 6, 1),
(103, 6, 8),
(104, 6, 28),
(105, 6, 26),
(106, 6, 2),
(107, 6, 5),
(108, 6, 13),
(109, 6, 15),
(110, 6, 3),
(111, 6, 34),
(112, 6, 25),
(113, 6, 31),
(114, 6, 24),
(115, 6, 32),
(116, 6, 18),
(117, 6, 19),
(118, 6, 21),
(119, 6, 17),
(120, 6, 33),
(121, 6, -2),
(122, 6, 4),
(123, 6, -1),
(124, 6, 22),
(125, 6, 23),
(126, 6, 6),
(127, 6, 27),
(128, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `CREATE_TIME` date DEFAULT NULL,
  `TIME_UPDATE` date DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `POSITION` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT '0',
  `DESCRIPTION` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `STATUS` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `CREATED_BY` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UPDATE_BY` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `level` varchar(25) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`id`, `CREATE_TIME`, `TIME_UPDATE`, `NAME`, `CODE`, `VALUE`, `POSITION`, `PARENT_ID`, `DESCRIPTION`, `STATUS`, `CREATED_BY`, `UPDATE_BY`, `level`) VALUES
(1, '2017-09-20', '2017-09-20', 'Sở y tế Hà Giang', 'cty.x', '-1', '1', 0, 'số 338, đường Nguyễn Trãi, thành phố Hà Giang, P. Nguyễn Trãi, Hà Giang', 'ACTIVE', 'admin', 'admin', '0'),
(2, '2017-09-20', '2017-09-20', 'Phòng nghiệp vụ Dược', 'tt.a', '1', '1', 1, NULL, 'ACTIVE', 'admin', 'admin', '1'),
(3, '2017-09-20', '2017-09-20', 'Phòng nghiệp vụ Y', 'tt.b', '2', '2', 1, NULL, 'ACTIVE', 'admin', 'admin', '1'),
(4, '2017-09-20', '2017-09-20', 'Phòng CNTT', 'tt.c', '3', '3', 1, NULL, 'ACTIVE', 'admin', 'admin', '1'),
(5, '2017-09-20', '2017-09-20', 'Ban A1', 'p.a1', '1', '1', 2, NULL, 'ACTIVE', 'admin', 'admin', '2'),
(6, '2017-09-20', '2017-09-20', 'Ban A2', 'p.a2', '2', '2', 2, NULL, 'ACTIVE', 'admin', 'admin', '2'),
(7, '2017-09-20', '2017-09-20', 'Ban A3', 'p.b', '1', '1', 3, NULL, 'ACTIVE', 'admin', 'admin', '2'),
(10, '2017-09-21', '2017-09-21', 'Phòng Hành chính', 'p.D', '1', '1', 1, 'asdasd', NULL, 'admin', 'admin', '1'),
(11, '2017-11-30', '2017-11-30', 'Ban A3', 'Ban A3', 'Ban A3', '3', 2, 'acb', NULL, 'admin', 'admin', '2');

-- --------------------------------------------------------

--
-- Table structure for table `p_process`
--

CREATE TABLE `p_process` (
  `ID` int(11) NOT NULL,
  `FLOW_ID` int(11) DEFAULT NULL,
  `DOCUMENT_ID` int(11) DEFAULT NULL,
  `C_PROCEDURE_ID` int(11) NOT NULL,
  `C_PROCEDURE_NAME` varchar(2000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `EXECUTE_EMPLOYEE` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `DESCRIPTION` varchar(5000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `CODE` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED_BY` varchar(100) DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `CREATED` datetime DEFAULT NULL,
  `START_DATE` datetime DEFAULT NULL,
  `END_DATE` datetime DEFAULT NULL,
  `PROGRESS` varchar(100) DEFAULT NULL,
  `STATE_ID` int(11) DEFAULT NULL,
  `STATE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `LEVEL` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PRICE` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_process`
--

INSERT INTO `p_process` (`ID`, `FLOW_ID`, `DOCUMENT_ID`, `C_PROCEDURE_ID`, `C_PROCEDURE_NAME`, `EXECUTE_EMPLOYEE`, `name`, `DESCRIPTION`, `CODE`, `CREATED_BY`, `UPDATED_BY`, `UPDATED`, `CREATED`, `START_DATE`, `END_DATE`, `PROGRESS`, `STATE_ID`, `STATE_NAME`, `LEVEL`, `PRICE`) VALUES
(1, NULL, NULL, 1, 'Quản lý văn bản đi đến', NULL, 'admin', '', 'admin', 'admin', NULL, NULL, '2017-11-24 23:54:14', NULL, NULL, '0', 0, NULL, 'Cấp độ 3', '240.000'),
(2, NULL, NULL, 1, 'Quản lý văn bản đi đến', NULL, 'admin', '', 'admin', 'admin', NULL, NULL, '2017-11-27 22:33:44', NULL, NULL, '0', 0, NULL, 'Cấp độ 3', '240.000'),
(3, NULL, NULL, 2, 'Thi đua khen thưởng, kỷ luật', NULL, 'admin', '', 'admin', 'admin', NULL, NULL, '2017-11-27 22:46:35', NULL, NULL, '0', 0, NULL, 'Cấp độ 2', '250.000'),
(4, NULL, NULL, 3, 'Tuyển dụng công chức, viên chức', NULL, '', 'tuyển dụng', '', '', NULL, NULL, '2017-11-29 11:09:36', NULL, NULL, '0', 6, 'Ban hành', 'Cấp độ 3', '220.000'),
(5, NULL, NULL, 2, 'Thi đua khen thưởng, kỷ luật', NULL, 'admin', 'khen thưởng', 'admin', 'admin', NULL, NULL, '2017-11-29 22:23:17', NULL, NULL, '0', 6, 'Ban hành', 'Cấp độ 2', '250.000'),
(6, NULL, NULL, 1, 'Quản lý văn bản đi đến', NULL, 'admin', 'test', 'admin', 'admin', NULL, NULL, '2017-11-29 23:18:55', NULL, NULL, '0', 3, 'Xử lý hồ sơ', 'Cấp độ 3', '240.000'),
(7, NULL, NULL, 3, 'Tuyển dụng công chức, viên chức', NULL, 'admin', '', 'admin', 'admin', NULL, NULL, '2017-11-30 14:06:06', NULL, NULL, '0', 3, 'Xử lý hồ sơ', 'Cấp độ 3', '220.000'),
(8, NULL, NULL, 3, 'Tuyển dụng công chức, viên chức', NULL, 'admin', 'tuyen dung', 'admin', 'admin', NULL, NULL, '2017-11-30 14:57:25', NULL, NULL, '0', 5, 'Phê duyệt', 'Cấp độ 3', '220.000'),
(9, NULL, NULL, 3, 'Tuyển dụng công chức, viên chức', NULL, 'admin', '', 'admin', 'admin', NULL, NULL, '2017-11-30 16:12:21', NULL, NULL, '0', 5, 'Phê duyệt', 'Cấp độ 3', '220.000');

-- --------------------------------------------------------

--
-- Table structure for table `p_process_file`
--

CREATE TABLE `p_process_file` (
  `id` int(11) NOT NULL,
  `file_path` varchar(1000) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(45) DEFAULT NULL,
  `security_level` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `procedure_document_id` int(11) DEFAULT NULL,
  `CREATED_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `p_process_file`
--

INSERT INTO `p_process_file` (`id`, `file_path`, `file_name`, `file_type`, `security_level`, `created_by`, `status`, `process_id`, `procedure_document_id`, `CREATED_TIME`) VALUES
(1, '235112_sql.txt', NULL, NULL, NULL, NULL, NULL, 1, 1, '2017-11-24 00:00:00'),
(2, '235117_sql.txt', NULL, NULL, NULL, NULL, NULL, 1, 2, '2017-11-24 00:00:00'),
(3, '..\\data\\task\\2017\\11\\27\\o_1bvv1pf1thmo1log13sa1f8816671d.pdf', 'test.pdf', NULL, NULL, NULL, NULL, 2, 1, '2017-11-27 00:00:00'),
(4, '..\\data\\task\\2017\\11\\27\\o_1bvv1pkmk1q4l1k3a24m1b48o371i.pdf', 'test.pdf', NULL, NULL, NULL, NULL, 2, 2, '2017-11-27 00:00:00'),
(5, '..\\data\\task\\2017\\11\\27\\o_1bvv2h5nugco1alu1bsqplk11aka.sql', 'c_file.sql', NULL, NULL, NULL, NULL, 3, 4, '2017-11-27 00:00:00'),
(6, '..\\data\\task\\2017\\11\\29\\o_1c02veajc155s1jh66tkgth1bfga.pdf', 'test.pdf', NULL, NULL, '', NULL, 4, 5, '2017-11-29 00:00:00'),
(7, '..\\data\\task\\2017\\11\\29\\o_1c045vt7elum15lpu6j1ece1q0la.pdf', 'test.pdf', NULL, NULL, 'admin', NULL, 5, 4, '2017-11-29 00:00:00'),
(8, '..\\data\\task\\2017\\11\\29\\o_1c0495n8d109rjh3qtf1tgf1d65h.pdf', 'test.pdf', NULL, NULL, 'admin', NULL, 6, 1, '2017-11-29 00:00:00'),
(9, '..\\data\\task\\2017\\11\\29\\o_1c0495puh121snb112n3166mtqtm.pdf', 'test.pdf', NULL, NULL, 'admin', NULL, 6, 2, '2017-11-29 00:00:00'),
(10, '..\\data\\task\\2017\\11\\30\\o_1c05ru5j0mr014uv11lh15meot9a.pdf', 'test.pdf', NULL, NULL, 'admin', NULL, 7, 5, '2017-11-30 00:00:00'),
(11, '..\\data\\task\\2017\\11\\30\\o_1c05ur7v2ovsa0ms8s9n51ln3a.pdf', 'test.pdf', NULL, NULL, 'admin', NULL, 8, 5, '2017-11-30 00:00:00'),
(12, '..\\data\\task\\2017\\11\\30\\o_1c063576k1vutglqcnv1l3j15mlo.doc', 'HD TTDVHCC 38.doc', NULL, NULL, 'admin', NULL, 9, 5, '2017-11-30 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `p_process_his`
--

CREATE TABLE `p_process_his` (
  `ID` int(11) NOT NULL,
  `P_PROCESS_ID` int(11) DEFAULT NULL,
  `FLOW_ID` int(11) DEFAULT NULL,
  `STEP_ID` int(11) DEFAULT NULL,
  `C_ACTION_ID` int(11) DEFAULT NULL,
  `C_PROCEDURE_ID` int(11) DEFAULT NULL,
  `ACTION_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `PROCESS_STATE_ID` int(10) DEFAULT NULL,
  `PROCESS_STATE_NAME` varchar(500) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `P_RESULT` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `EXECUTE_EMPLOYEE` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(5000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `CREATED_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UPDATED_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `UPDATED` datetime DEFAULT NULL,
  `CREATED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_process_his`
--

INSERT INTO `p_process_his` (`ID`, `P_PROCESS_ID`, `FLOW_ID`, `STEP_ID`, `C_ACTION_ID`, `C_PROCEDURE_ID`, `ACTION_NAME`, `PROCESS_STATE_ID`, `PROCESS_STATE_NAME`, `P_RESULT`, `EXECUTE_EMPLOYEE`, `DESCRIPTION`, `CREATED_BY`, `UPDATED_BY`, `UPDATED`, `CREATED`) VALUES
(1, 4, NULL, NULL, NULL, 3, 'Xử lý hồ sơ', 3, 'Xử lý hồ sơ', 'SUCCESS', NULL, 'SUCCESS', '', NULL, NULL, '2017-11-29 16:05:37'),
(2, 4, NULL, NULL, NULL, 3, 'Xử lý hồ sơ', 3, 'Xử lý hồ sơ', 'SUCCESS', NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-29 16:08:11'),
(3, 4, NULL, NULL, NULL, 3, 'Trình phê duyệt', 4, 'Trình phê duyệt', NULL, NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-29 16:08:21'),
(4, 4, NULL, NULL, NULL, 3, 'Phê duyệt', 5, 'pprocess.action.5.approve', NULL, NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-29 16:08:45'),
(5, 4, NULL, NULL, NULL, 3, 'Ban hành', 6, 'Ban hành', NULL, NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-29 16:08:54'),
(6, 5, NULL, NULL, NULL, 2, 'Tạo hồ sơ', 1, 'Tạo hồ sơ', NULL, NULL, NULL, 'admin', NULL, NULL, '2017-11-29 22:23:18'),
(7, 5, NULL, NULL, NULL, 2, 'Nộp hồ sơ', 2, 'Nộp hồ sơ', 'SUCCESS', NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-29 22:23:22'),
(8, 5, NULL, NULL, NULL, 2, 'Xử lý hồ sơ', 2, 'Nộp hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-29 22:24:28', '2017-11-29 22:24:28'),
(9, 5, NULL, NULL, NULL, 2, 'Trình phê duyệt', 3, 'Xử lý hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-29 22:24:45', '2017-11-29 22:24:45'),
(10, 5, NULL, NULL, NULL, 2, 'Phê duyệt', 5, 'Phê duyệt', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-29 22:24:56', '2017-11-29 22:24:56'),
(11, 5, NULL, NULL, NULL, 2, 'Ban hành', 6, 'Ban hành', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-29 22:25:10', '2017-11-29 22:25:10'),
(12, 6, NULL, NULL, NULL, 1, 'Tạo hồ sơ', 1, 'Tạo hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', NULL, NULL, '2017-11-29 23:18:55'),
(13, 6, NULL, NULL, NULL, 1, 'Nộp hồ sơ', 2, 'Nộp hồ sơ', 'SUCCESS', NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-29 23:18:58'),
(14, 6, NULL, NULL, NULL, 1, 'Xử lý hồ sơ', 2, 'Nộp hồ sơ', 'Thành công', NULL, 'Không đạt: test', 'admin', 'admin', '2017-11-29 23:23:52', '2017-11-29 23:23:52'),
(15, 7, NULL, NULL, NULL, 3, 'Tạo hồ sơ', 1, 'Tạo hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', NULL, NULL, '2017-11-30 14:06:06'),
(16, 7, NULL, NULL, NULL, 3, 'Nộp hồ sơ', 2, 'Nộp hồ sơ', 'SUCCESS', NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-30 14:06:13'),
(17, 7, NULL, NULL, NULL, 3, 'Xử lý hồ sơ', 2, 'Nộp hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-30 14:18:02', '2017-11-30 14:18:02'),
(18, 8, NULL, NULL, NULL, 3, 'Tạo hồ sơ', 1, 'Tạo hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', NULL, NULL, '2017-11-30 14:57:26'),
(19, 8, NULL, NULL, NULL, 3, 'Nộp hồ sơ', 2, 'Nộp hồ sơ', 'SUCCESS', NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-30 14:57:31'),
(20, 8, NULL, NULL, NULL, 3, 'Xử lý hồ sơ', 2, 'Nộp hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-30 14:58:12', '2017-11-30 14:58:12'),
(21, 8, NULL, NULL, NULL, 3, 'Trình phê duyệt', 3, 'Xử lý hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-30 14:58:25', '2017-11-30 14:58:25'),
(22, 8, NULL, NULL, NULL, 3, 'Phê duyệt', 5, 'Phê duyệt', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-30 14:58:56', '2017-11-30 14:58:56'),
(23, 9, NULL, NULL, NULL, 3, 'Tạo hồ sơ', 1, 'Tạo hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', NULL, NULL, '2017-11-30 16:12:21'),
(24, 9, NULL, NULL, NULL, 3, 'Nộp hồ sơ', 2, 'Nộp hồ sơ', 'SUCCESS', NULL, 'SUCCESS', 'admin', NULL, NULL, '2017-11-30 16:12:29'),
(25, 9, NULL, NULL, NULL, 3, 'Xử lý hồ sơ', 2, 'Nộp hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-30 16:14:02', '2017-11-30 16:14:02'),
(26, 9, NULL, NULL, NULL, 3, 'Trình phê duyệt', 3, 'Xử lý hồ sơ', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-30 16:14:38', '2017-11-30 16:14:38'),
(27, 9, NULL, NULL, NULL, 3, 'Phê duyệt', 5, 'Phê duyệt', 'Thành công', NULL, 'Đạt', 'admin', 'admin', '2017-11-30 16:15:00', '2017-11-30 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `FIRST_NAME` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `LAST_NAME` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `SECTION` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `BIRTH_DAY` date DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `FIRST_NAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `LOCATION` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SEX` int(2) DEFAULT NULL,
  `PHONE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ROLE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `USERNAME` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `WEBSITE` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ORG_ID` int(11) DEFAULT NULL,
  `ORG_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `BIRTH_DAY`, `EMAIL`, `FIRST_NAME`, `LAST_NAME`, `LOCATION`, `SEX`, `PHONE`, `ROLE`, `TITLE`, `USERNAME`, `WEBSITE`, `ORG_ID`, `ORG_NAME`) VALUES
(1, '2017-09-06', 'EMAIL@gmail.com', 'EMAIL', 'EMAIL', 'fields', 1, 'Mai Việt anh', 'fields', 'fields', 'username1', 'fields', NULL, NULL),
(2, '2017-09-06', 'EMAIL@gmail.com', 'name1', 'name1', 'fields', 1, 'phone1', 'fields', 'fields', 'username2', 'fields', NULL, NULL),
(3, '2017-09-06', 'EMAIL@gmail.com', 'name2', 'name2', 'fields', 1, 'phone1', 'fields', 'fields', 'username3', 'fields', NULL, NULL),
(4, '2017-09-06', 'EMAIL@gmail.com', 'name3', 'name3', 'fields', 1, 'phone1', 'fields', 'fields', 'username4', 'fields', NULL, NULL),
(5, '2017-09-06', 'EMAIL@gmail.com', 'name4', 'name4', 'fields', 1, 'phone1', 'fields', 'fields', 'username5', 'fields', NULL, NULL),
(6, '2017-09-06', 'EMAIL@gmail.com', 'name5', 'name5', 'fields', 1, 'phone1', 'fields', 'fields', 'username6', 'fields', NULL, NULL),
(7, '2017-09-06', 'EMAIL@gmail.com', 'name6', 'name6', 'fields', 1, 'phone1', 'fields', 'fields', 'username7', 'fields', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cata_user`
--
ALTER TABLE `cata_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_action`
--
ALTER TABLE `c_action`
  ADD PRIMARY KEY (`C_ACTION_ID`);

--
-- Indexes for table `c_asset`
--
ALTER TABLE `c_asset`
  ADD PRIMARY KEY (`C_ASSET_ID`);

--
-- Indexes for table `c_asset_class`
--
ALTER TABLE `c_asset_class`
  ADD PRIMARY KEY (`C_ASSET_CLASS_ID`);

--
-- Indexes for table `c_asset_group`
--
ALTER TABLE `c_asset_group`
  ADD PRIMARY KEY (`C_ASSET_GROUP_ID`);

--
-- Indexes for table `c_asset_type`
--
ALTER TABLE `c_asset_type`
  ADD PRIMARY KEY (`C_ASSET_TYPE_ID`);

--
-- Indexes for table `c_calendar`
--
ALTER TABLE `c_calendar`
  ADD PRIMARY KEY (`calendar_id`);

--
-- Indexes for table `c_color_defined`
--
ALTER TABLE `c_color_defined`
  ADD PRIMARY KEY (`color_name`);

--
-- Indexes for table `c_document`
--
ALTER TABLE `c_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_employees`
--
ALTER TABLE `c_employees`
  ADD PRIMARY KEY (`C_EMPLOYEE_ID`);

--
-- Indexes for table `c_employee_education`
--
ALTER TABLE `c_employee_education`
  ADD PRIMARY KEY (`C_EMPLOYEE_EDUCATION_ID`);

--
-- Indexes for table `c_employee_process`
--
ALTER TABLE `c_employee_process`
  ADD PRIMARY KEY (`C_EMPLOYEE_PROCESS_ID`);

--
-- Indexes for table `c_employee_type`
--
ALTER TABLE `c_employee_type`
  ADD PRIMARY KEY (`C_EMPLOYEE_TYPE_ID`);

--
-- Indexes for table `c_field`
--
ALTER TABLE `c_field`
  ADD PRIMARY KEY (`C_FIELD_ID`);

--
-- Indexes for table `c_file`
--
ALTER TABLE `c_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_flow`
--
ALTER TABLE `c_flow`
  ADD PRIMARY KEY (`FLOW_ID`);

--
-- Indexes for table `c_job`
--
ALTER TABLE `c_job`
  ADD PRIMARY KEY (`C_JOB_ID`);

--
-- Indexes for table `c_job_history`
--
ALTER TABLE `c_job_history`
  ADD PRIMARY KEY (`C_JOB_HISTORY_ID`);

--
-- Indexes for table `c_menu`
--
ALTER TABLE `c_menu`
  ADD PRIMARY KEY (`c_menu_id`);

--
-- Indexes for table `c_organization_task`
--
ALTER TABLE `c_organization_task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `c_procedure`
--
ALTER TABLE `c_procedure`
  ADD PRIMARY KEY (`C_PROCEDURE_ID`);

--
-- Indexes for table `c_process_guide`
--
ALTER TABLE `c_process_guide`
  ADD PRIMARY KEY (`process_guide_id`);

--
-- Indexes for table `c_security_level`
--
ALTER TABLE `c_security_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_step`
--
ALTER TABLE `c_step`
  ADD PRIMARY KEY (`step_id`);

--
-- Indexes for table `c_task`
--
ALTER TABLE `c_task`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `c_task_attachment`
--
ALTER TABLE `c_task_attachment`
  ADD KEY `task_id` (`task_id`,`attachment_type`,`seq`) USING BTREE;

--
-- Indexes for table `c_task_group`
--
ALTER TABLE `c_task_group`
  ADD PRIMARY KEY (`task_group_id`);

--
-- Indexes for table `c_task_history`
--
ALTER TABLE `c_task_history`
  ADD PRIMARY KEY (`hist_id`);

--
-- Indexes for table `c_task_piority`
--
ALTER TABLE `c_task_piority`
  ADD PRIMARY KEY (`task_piority_id`);

--
-- Indexes for table `c_task_priority`
--
ALTER TABLE `c_task_priority`
  ADD PRIMARY KEY (`task_priority_id`);

--
-- Indexes for table `c_task_review`
--
ALTER TABLE `c_task_review`
  ADD KEY `task_id` (`task_id`,`seq`);

--
-- Indexes for table `c_unit`
--
ALTER TABLE `c_unit`
  ADD PRIMARY KEY (`C_UNIT_ID`);

--
-- Indexes for table `m_flow_procedure`
--
ALTER TABLE `m_flow_procedure`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `m_flow_step`
--
ALTER TABLE `m_flow_step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_procedure_document`
--
ALTER TABLE `m_procedure_document`
  ADD PRIMARY KEY (`M_PROCEDURE_DOCUMENT_ID`);

--
-- Indexes for table `m_user_menu`
--
ALTER TABLE `m_user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_process`
--
ALTER TABLE `p_process`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `p_process_file`
--
ALTER TABLE `p_process_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_process_his`
--
ALTER TABLE `p_process_his`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cata_user`
--
ALTER TABLE `cata_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_action`
--
ALTER TABLE `c_action`
  MODIFY `C_ACTION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `c_asset`
--
ALTER TABLE `c_asset`
  MODIFY `C_ASSET_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_calendar`
--
ALTER TABLE `c_calendar`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_document`
--
ALTER TABLE `c_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `c_employees`
--
ALTER TABLE `c_employees`
  MODIFY `C_EMPLOYEE_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `c_field`
--
ALTER TABLE `c_field`
  MODIFY `C_FIELD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_file`
--
ALTER TABLE `c_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `c_flow`
--
ALTER TABLE `c_flow`
  MODIFY `FLOW_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `c_menu`
--
ALTER TABLE `c_menu`
  MODIFY `c_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `c_organization_task`
--
ALTER TABLE `c_organization_task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_procedure`
--
ALTER TABLE `c_procedure`
  MODIFY `C_PROCEDURE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `c_process_guide`
--
ALTER TABLE `c_process_guide`
  MODIFY `process_guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c_security_level`
--
ALTER TABLE `c_security_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `c_step`
--
ALTER TABLE `c_step`
  MODIFY `step_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `c_task`
--
ALTER TABLE `c_task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `c_task_group`
--
ALTER TABLE `c_task_group`
  MODIFY `task_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c_task_history`
--
ALTER TABLE `c_task_history`
  MODIFY `hist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `c_task_piority`
--
ALTER TABLE `c_task_piority`
  MODIFY `task_piority_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_task_priority`
--
ALTER TABLE `c_task_priority`
  MODIFY `task_priority_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `c_unit`
--
ALTER TABLE `c_unit`
  MODIFY `C_UNIT_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `m_flow_procedure`
--
ALTER TABLE `m_flow_procedure`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `m_flow_step`
--
ALTER TABLE `m_flow_step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `m_procedure_document`
--
ALTER TABLE `m_procedure_document`
  MODIFY `M_PROCEDURE_DOCUMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `m_user_menu`
--
ALTER TABLE `m_user_menu`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `p_process`
--
ALTER TABLE `p_process`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `p_process_file`
--
ALTER TABLE `p_process_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `p_process_his`
--
ALTER TABLE `p_process_his`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
