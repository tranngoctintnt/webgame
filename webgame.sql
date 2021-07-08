-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 06, 2021 lúc 03:19 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webgame`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5f55b407c8703', '5f55b407df973'),
('60e0339bad6d7', '60e0339c0e93a'),
('60e0339c42eb6', '60e0339c4ee27'),
('60e42242433ad', '60e422429938b'),
('60e42242b84a9', '60e42242beed7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('minhnha2308@gmail.com', '60e0336444e7b', 10, 2, 2, 0, '2021-07-06 09:10:31'),
('levan@gmail.com', '60e0336444e7b', 10, 2, 2, 0, '2021-07-06 09:25:38'),
('levan@gmail.com', '60e422096161b', 5, 2, 1, 1, '2021-07-06 09:29:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5f55b407c8703', 'true, true, false ', '5f55b407df973'),
('5f55b407c8703', 'true, true, true ', '5f55b407df979'),
('5f55b407c8703', ' true, false, false ', '5f55b407df97a'),
('5f55b407c8703', ' false, false false', '5f55b407df97b'),
('60e0339bad6d7', '15', '60e0339c0e93a'),
('60e0339bad6d7', '23', '60e0339c0e941'),
('60e0339bad6d7', '3', '60e0339c0e943'),
('60e0339bad6d7', '2', '60e0339c0e944'),
('60e0339c42eb6', '76', '60e0339c4ee1f'),
('60e0339c42eb6', '88', '60e0339c4ee25'),
('60e0339c42eb6', '77', '60e0339c4ee27'),
('60e0339c42eb6', '320', '60e0339c4ee29'),
('60e42242433ad', '3', '60e4224299383'),
('60e42242433ad', '4', '60e4224299389'),
('60e42242433ad', '5', '60e422429938a'),
('60e42242433ad', '32', '60e422429938b'),
('60e42242b84a9', '12', '60e42242beece'),
('60e42242b84a9', '13', '60e42242beed6'),
('60e42242b84a9', '11', '60e42242beed7'),
('60e42242b84a9', '10', '60e42242beed8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('60e0336444e7b', '60e0339bad6d7', '5+10', 4, 1),
('60e0336444e7b', '60e0339c42eb6', '10*5+27', 4, 2),
('60e422096161b', '60e42242433ad', '7+5*5', 4, 1),
('60e422096161b', '60e42242b84a9', '4+7', 4, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('60e0336444e7b', 'Game Math', 5, 2, 2, 2, 'math', 'math', '2021-07-03 09:52:36'),
('60e422096161b', 'Game Troll', 10, 5, 2, 2, 'game troll', 'troll,game', '2021-07-06 09:27:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('admin1@gmail.com', 1, '2021-07-03 05:26:09'),
('n2ftechnology@gmail.com', 5, '2021-07-03 05:27:36'),
('tuantin@gmail.com', 5, '2021-07-03 08:19:18'),
('minhnha2308@gmail.com', 10, '2021-07-06 09:10:32'),
('levan@gmail.com', 15, '2021-07-06 09:29:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Nguyen Nguyen Cao', 'M', 'abc', 'admin1@gmail.com', 394073759, 'df6c2bd4cf3e48a244e4a96f1d50db90'),
('Le Van D', 'Male', 'levanpro123', 'levan@gmail.com', 123456789, '1506d64253c9a871dd9cbc43da8494b5'),
('Nguyen Minh Nha', 'Male', 'minhnha', 'minhnha2308@gmail.com', 123455678, '86a2468385140efa046ccdb748cd73cc'),
('Kiều Oanh', 'F', 'Nhẫn', 'n2ftechnology@gmail.com', 394073759, 'df6c2bd4cf3e48a244e4a96f1d50db90'),
('Nguyen Nguyen Cao', 'M', 'Oanh', 'nguyencaonguyencmu@gmail.com', 394073759, 'e9b654fb4686c0da0f12e9472a65c477'),
('Tr????ng Tuấn T??n', 'M', 'tuantien123', 'tuantin@gmail.com', 394073758, '5595bb8179156fcab98eee14ab569e91');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
