-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-14 08:23:42
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logi`
--

-- --------------------------------------------------------

--
-- 表的结构 `lg_detail_banner`
--

CREATE TABLE `lg_detail_banner` (
  `pid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `href` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_detail_banner`
--

INSERT INTO `lg_detail_banner` (`pid`, `img`, `href`) VALUES
(1, 'img/product_detail/detail_banner/RUNXQ.jpg', ''),
(2, 'img/product_detail/detail_banner/spotlight.jpg', ''),
(3, 'img/product_detail/detail_banner/MX_SOUND_750.jpg', ''),
(4, 'img/product_detail/detail_banner/MX ERGOXQ.jpg', ''),
(5, 'img/product_detail/detail_banner/ZXXQ.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `lg_detail_pic`
--

CREATE TABLE `lg_detail_pic` (
  `pid` int(11) NOT NULL,
  `lid` int(11) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_detail_pic`
--

INSERT INTO `lg_detail_pic` (`pid`, `lid`, `img`) VALUES
(1, 1, 'img/product_detail/1/CRAFT_PDP_750_02.jpg'),
(2, 1, 'img/product_detail/1/CRAFT_PDP_750_03.jpg'),
(3, 1, 'img/product_detail/1/CRAFT_PDP_750_04.jpg'),
(4, 1, 'img/product_detail/1/CRAFT_PDP_750_05.jpg'),
(5, 1, 'img/product_detail/1/CRAFT_PDP_750_06.gif'),
(6, 1, 'img/product_detail/1/CRAFT_PDP_750_07.jpg'),
(7, 1, 'img/product_detail/1/CRAFT_PDP_750_08.gif'),
(8, 1, 'img/product_detail/1/CRAFT_PDP_750_09.jpg'),
(9, 1, 'img/product_detail/1/CRAFT_PDP_750_10.jpg'),
(10, 1, 'img/product_detail/1/CRAFT_PDP_750_11.jpg'),
(11, 1, 'img/product_detail/1/CRAFT_PDP_750_12.jpg'),
(12, 1, 'img/product_detail/1/CRAFT_PDP_750_13.jpg'),
(13, 1, 'img/product_detail/1/CRAFT_PDP_750_14.jpg'),
(14, 1, 'img/product_detail/1/CRAFT_PDP_750_15.jpg'),
(15, 1, 'img/product_detail/1/CRAFT_PDP_750_16.jpg'),
(16, 1, 'img/product_detail/1/CRAFT_PDP_750_17.jpg'),
(17, 1, 'img/product_detail/1/CRAFT_PDP_750_18.jpg'),
(18, 1, 'img/product_detail/1/CRAFT_PDP_750_19.jpg'),
(19, 1, 'img/product_detail/1/CRAFT_PDP_750_20.jpg'),
(20, 1, 'img/product_detail/1/CRAFT_PDP_750_21.jpg'),
(21, 1, 'img/product_detail/1/CRAFT_PDP_750_22.jpg'),
(22, 1, 'img/product_detail/1/CRAFT_PDP_750_23.jpg'),
(23, 1, 'img/product_detail/1/CRAFT_PDP_750_24.jpg'),
(24, 1, 'img/product_detail/1/THHZC.jpg'),
(25, 2, 'img/product_detail/2/MX_Anywhere_2S_750_01.jpg'),
(26, 2, 'img/product_detail/2/MX_Anywhere_2S_750_02.jpg'),
(27, 2, 'img/product_detail/2/MX_Anywhere_2S_750_03.jpg'),
(28, 2, 'img/product_detail/2/MX_Anywhere_2S_750_04.jpg'),
(29, 2, 'img/product_detail/2/MX_Anywhere_2S_750_05.jpg'),
(30, 2, 'img/product_detail/2/MX_Anywhere_2S_750_06.jpg'),
(31, 2, 'img/product_detail/2/MX_Anywhere_2S_750_07.jpg'),
(32, 2, 'img/product_detail/2/MX_Anywhere_2S_750_08.jpg'),
(33, 2, 'img/product_detail/2/MX_Anywhere_2S_750_09.jpg'),
(34, 2, 'img/product_detail/2/MX_Anywhere_2S_750_10.jpg'),
(35, 2, 'img/product_detail/2/MX_Anywhere_2S_750_11.jpg'),
(36, 2, 'img/product_detail/2/MX_Anywhere_2S_750_12.jpg'),
(37, 2, 'img/product_detail/2/THHZC.jpg'),
(38, 3, 'img/product_detail/3/SLIM_FOLI_01.jpg'),
(39, 3, 'img/product_detail/3/SLIM_FOLI_02.jpg'),
(40, 3, 'img/product_detail/3/SLIM_FOLI_03.jpg'),
(41, 3, 'img/product_detail/3/SLIM_FOLI_04.jpg'),
(42, 3, 'img/product_detail/3/SLIM_FOLI_05.jpg'),
(43, 3, 'img/product_detail/3/SLIM_FOLI_06.jpg'),
(44, 3, 'img/product_detail/3/SLIM_FOLI_07.jpg'),
(45, 3, 'img/product_detail/3/SLIM_FOLI_08.jpg'),
(46, 3, 'img/product_detail/3/SLIM_FOLI_09.jpg'),
(47, 3, 'img/product_detail/3/SLIM_FOLI_10.jpg'),
(48, 3, 'img/product_detail/3/SLIM_FOLI_11.jpg'),
(49, 3, 'img/product_detail/3/THHZC.jpg'),
(50, 4, 'img/product_detail/4/Jaybird_X3_01.jpg'),
(51, 4, 'img/product_detail/4/Jaybird_X3_02.jpg'),
(52, 4, 'img/product_detail/4/Jaybird_X3_03.jpg'),
(53, 4, 'img/product_detail/4/Jaybird_X3_04.jpg'),
(54, 4, 'img/product_detail/4/Jaybird_X3_05.jpg'),
(55, 4, 'img/product_detail/4/Jaybird_X3_06.jpg'),
(56, 4, 'img/product_detail/4/Jaybird_X3_07.jpg'),
(57, 4, 'img/product_detail/4/Jaybird_X3_08.jpg'),
(58, 4, 'img/product_detail/4/Jaybird_X3_09.jpg'),
(59, 4, 'img/product_detail/4/Jaybird_X3_10.jpg'),
(60, 4, 'img/product_detail/4/Jaybird_X3_11.jpg'),
(61, 4, 'img/product_detail/4/Jaybird_X3_12.jpg'),
(62, 4, 'img/product_detail/4/Jaybird_X3_13.jpg'),
(63, 4, 'img/product_detail/4/THHZC.jpg'),
(64, 5, 'img/product_detail/5/01.jpg'),
(65, 5, 'img/product_detail/5/02.jpg'),
(66, 5, 'img/product_detail/5/03.jpg'),
(67, 5, 'img/product_detail/5/04.jpg'),
(68, 5, 'img/product_detail/5/05.jpg'),
(69, 5, 'img/product_detail/5/06.jpg'),
(70, 5, 'img/product_detail/5/07.jpg'),
(71, 5, 'img/product_detail/5/08.jpg'),
(72, 5, 'img/product_detail/5/09.jpg'),
(73, 5, 'img/product_detail/5/10.jpg'),
(74, 5, 'img/product_detail/5/11.jpg'),
(75, 5, 'img/product_detail/5/12.jpg'),
(76, 5, 'img/product_detail/5/13.jpg'),
(77, 5, 'img/product_detail/5/14.jpg'),
(78, 5, 'img/product_detail/5/15.jpg'),
(79, 5, 'img/product_detail/5/THHZC.jpg'),
(80, 6, 'img/product_detail/6/DZ.jpg'),
(81, 6, 'img/product_detail/6/Spotlight_01.jpg'),
(82, 6, 'img/product_detail/6/Spotlight_02.jpg'),
(83, 6, 'img/product_detail/6/Spotlight_03.jpg'),
(84, 6, 'img/product_detail/6/Spotlight_04.jpg'),
(85, 6, 'img/product_detail/6/Spotlight_05.jpg'),
(86, 6, 'img/product_detail/6/Spotlight_06.jpg'),
(87, 6, 'img/product_detail/6/Spotlight_07.jpg'),
(88, 6, 'img/product_detail/6/Spotlight_08.jpg'),
(89, 6, 'img/product_detail/6/Spotlight_09.jpg'),
(90, 6, 'img/product_detail/6/Spotlight_10.jpg'),
(91, 6, 'img/product_detail/6/Spotlight_11.jpg'),
(92, 6, 'img/product_detail/6/Spotlight_12.jpg'),
(93, 6, 'img/product_detail/6/Spotlight_13.jpg'),
(94, 6, 'img/product_detail/6/Spotlight_14.jpg'),
(95, 6, 'img/product_detail/6/THHZC.jpg'),
(96, 7, 'img/product_detail/7/MX_Sound_PDP_790_01.jpg'),
(97, 7, 'img/product_detail/7/MX_Sound_PDP_790_02.jpg'),
(98, 7, 'img/product_detail/7/MX_Sound_PDP_790_03.jpg'),
(99, 7, 'img/product_detail/7/MX_Sound_PDP_790_04.jpg'),
(100, 7, 'img/product_detail/7/MX_Sound_PDP_790_05.jpg'),
(101, 7, 'img/product_detail/7/MX_Sound_PDP_790_06.jpg'),
(102, 7, 'img/product_detail/7/MX_Sound_PDP_790_07.jpg'),
(103, 7, 'img/product_detail/7/MX_Sound_PDP_790_08.jpg'),
(104, 7, 'img/product_detail/7/MX_Sound_PDP_790_09.jpg'),
(105, 7, 'img/product_detail/7/MX_Sound_PDP_790_10.jpg'),
(106, 7, 'img/product_detail/7/THHZC.jpg'),
(107, 8, 'img/product_detail/8/UEWONDERBOOM_01.jpg'),
(108, 8, 'img/product_detail/8/UEWONDERBOOM_02.jpg'),
(109, 8, 'img/product_detail/8/UEWONDERBOOM_03.jpg'),
(110, 8, 'img/product_detail/8/UEWONDERBOOM_04.jpg'),
(111, 8, 'img/product_detail/8/UEWONDERBOOM_05.jpg'),
(112, 8, 'img/product_detail/8/THHZC.jpg'),
(113, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_01.jpg'),
(114, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_02.jpg'),
(115, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_03.jpg'),
(116, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_04.jpg'),
(117, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_05.jpg'),
(118, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_06.jpg'),
(119, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_07.jpg'),
(120, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_08.jpg'),
(121, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_09.jpg'),
(122, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_10.jpg'),
(123, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_11.jpg'),
(124, 9, 'img/product_detail/9/UNIVERSAL_FOLIO_12.jpg'),
(125, 9, 'img/product_detail/9/THHZC.jpg'),
(126, 10, 'img/product_detail/10/K380-京东-750 01.jpg'),
(127, 10, 'img/product_detail/10/K380-京东-750 02.jpg'),
(128, 10, 'img/product_detail/10/K380-京东-750 03.jpg'),
(129, 10, 'img/product_detail/10/K380-京东-750 04.jpg'),
(130, 10, 'img/product_detail/10/K380-京东-750 05.jpg'),
(131, 10, 'img/product_detail/10/K380-京东-750 06.jpg'),
(132, 10, 'img/product_detail/10/K380-京东-750 07.jpg'),
(133, 10, 'img/product_detail/10/K380-京东-750 08.jpg'),
(134, 10, 'img/product_detail/10/K380-京东-750 09.jpg'),
(135, 10, 'img/product_detail/10/K380-京东-750 10.jpg'),
(136, 10, 'img/product_detail/10/K380-京东-750 11.jpg'),
(137, 10, 'img/product_detail/10/K380-京东-750 12.jpg'),
(138, 10, 'img/product_detail/10/K380-京东-750 13.jpg'),
(139, 10, 'img/product_detail/10/K380-京东-750 14.jpg'),
(140, 10, 'img/product_detail/10/K380-京东-750 15.jpg'),
(141, 10, 'img/product_detail/10/K380-京东-750 16.jpg'),
(142, 10, 'img/product_detail/10/K380-京东-750 17.jpg'),
(143, 11, 'img/product_detail/11/Z906_01.jpg'),
(144, 11, 'img/product_detail/11/Z906_02.jpg'),
(145, 11, 'img/product_detail/11/Z906_04.jpg'),
(146, 11, 'img/product_detail/11/Z906_05.jpg'),
(147, 11, 'img/product_detail/11/Z906_06.jpg'),
(148, 11, 'img/product_detail/11/Z906_07.jpg'),
(149, 11, 'img/product_detail/11/Z906_08.jpg'),
(150, 11, 'img/product_detail/11/Z906_09.jpg'),
(151, 11, 'img/product_detail/11/Z906_10.jpg'),
(152, 11, 'img/product_detail/11/Z906_11.jpg'),
(153, 11, 'img/product_detail/11/Z906_12.jpg'),
(154, 11, 'img/product_detail/11/Z906_13.jpg'),
(155, 11, 'img/product_detail/11/Z906_14.jpg'),
(156, 11, 'img/product_detail/11/Z906_15.jpg'),
(157, 11, 'img/product_detail/11/Z906_16.jpg'),
(158, 11, 'img/product_detail/11/Z906_17.jpg'),
(159, 11, 'img/product_detail/11/Z906_18.jpg'),
(160, 11, 'img/product_detail/11/Z906_19.jpg'),
(161, 11, 'img/product_detail/11/Z906_20.jpg'),
(162, 11, 'img/product_detail/11/Z906_21.jpg'),
(163, 11, 'img/product_detail/11/Z906_22.jpg'),
(164, 11, 'img/product_detail/11/THHZC.jpg'),
(165, 12, 'img/product_detail/12/MX_Master_2S_750_01.jpg'),
(166, 12, 'img/product_detail/12/MX_Master_2S_750_02.jpg'),
(167, 12, 'img/product_detail/12/MX_Master_2S_750_03.jpg'),
(168, 12, 'img/product_detail/12/MX_Master_2S_750_04.jpg'),
(169, 12, 'img/product_detail/12/MX_Master_2S_750_05.jpg'),
(170, 12, 'img/product_detail/12/MX_Master_2S_750_06.jpg'),
(171, 12, 'img/product_detail/12/MX_Master_2S_750_07.jpg'),
(172, 12, 'img/product_detail/12/MX_Master_2S_750_08.jpg'),
(173, 12, 'img/product_detail/12/MX_Master_2S_750_09.jpg'),
(174, 12, 'img/product_detail/12/MX_Master_2S_750_10.jpg'),
(175, 12, 'img/product_detail/12/MX_Master_2S_750_11.jpg'),
(176, 12, 'img/product_detail/12/MX_Master_2S_750_12.jpg'),
(177, 12, 'img/product_detail/12/THHZC.jpg'),
(178, 13, 'img/product_detail/13/G533_750_01.jpg'),
(179, 13, 'img/product_detail/13/G533_750_02.jpg'),
(180, 13, 'img/product_detail/13/G533_750_03.jpg'),
(181, 13, 'img/product_detail/13/G533_750_04.jpg'),
(182, 13, 'img/product_detail/13/G533_750_05.jpg'),
(183, 13, 'img/product_detail/13/G533_750_06.jpg'),
(184, 13, 'img/product_detail/13/G533_750_07.jpg'),
(185, 13, 'img/product_detail/13/G533_750_08.jpg'),
(186, 13, 'img/product_detail/13/G533_750_09.jpg'),
(187, 13, 'img/product_detail/13/G533_750_10.jpg'),
(188, 13, 'img/product_detail/13/G533_750_11.jpg'),
(189, 13, 'img/product_detail/13/G533_750_12.jpg'),
(190, 13, 'img/product_detail/13/G533_750_13.jpg'),
(191, 13, 'img/product_detail/13/G533_750_14.jpg'),
(192, 13, 'img/product_detail/13/G533_750_15.jpg'),
(193, 13, 'img/product_detail/13/THHZC.jpg'),
(194, 14, 'img/product_detail/14/c925e_01.jpg'),
(195, 14, 'img/product_detail/14/c925e_02.jpg'),
(196, 14, 'img/product_detail/14/c925e_03.jpg'),
(197, 14, 'img/product_detail/14/c925e_04.jpg'),
(198, 14, 'img/product_detail/14/c925e_05.jpg'),
(199, 14, 'img/product_detail/14/c925e_06.jpg'),
(200, 14, 'img/product_detail/14/THHZC.jpg'),
(201, 15, 'img/product_detail/15/UE_kora_01.jpg'),
(202, 15, 'img/product_detail/15/UE_kora_02.jpg'),
(203, 15, 'img/product_detail/15/UE_kora_03.jpg'),
(204, 15, 'img/product_detail/15/UE_kora_04.jpg'),
(205, 15, 'img/product_detail/15/UE_kora_05.jpg'),
(206, 15, 'img/product_detail/15/UE_kora_06.jpg'),
(207, 15, 'img/product_detail/15/UE_kora_07.jpg'),
(208, 15, 'img/product_detail/15/UE_kora_08.jpg'),
(209, 15, 'img/product_detail/15/UE_kora_09.jpg'),
(210, 15, 'img/product_detail/15/UE_kora_10.jpg'),
(211, 15, 'img/product_detail/15/UE_kora_11.jpg'),
(212, 15, 'img/product_detail/15/UE_kora_12.jpg'),
(213, 15, 'img/product_detail/15/UE_kora_13.jpg'),
(214, 15, 'img/product_detail/15/UE_kora_14.jpg'),
(215, 15, 'img/product_detail/15/UE_kora_15.jpg'),
(216, 15, 'img/product_detail/15/UE_kora_16.jpg'),
(217, 15, 'img/product_detail/15/UE_kora_17.jpg'),
(218, 15, 'img/product_detail/15/THHZC.jpg'),
(219, 16, 'img/product_detail/16/01.jpg'),
(220, 16, 'img/product_detail/16/02.jpg'),
(221, 16, 'img/product_detail/16/03.jpg'),
(222, 16, 'img/product_detail/16/04.jpg'),
(223, 16, 'img/product_detail/16/05.jpg'),
(224, 16, 'img/product_detail/16/THHZC.jpg'),
(225, 17, 'img/product_detail/17/Images-ProductImages-logitech-taocan-G29-tiaozhanzhe-G29+tiaozhanzhe_01.jpg'),
(226, 17, 'img/product_detail/17/Images-ProductImages-logitech-taocan-G29-tiaozhanzhe-G29+tiaozhanzhe_02.jpg'),
(227, 17, 'img/product_detail/17/Images-ProductImages-logitech-taocan-G29-tiaozhanzhe-G29+tiaozhanzhe_03.jpg'),
(228, 17, 'img/product_detail/17/Images-ProductImages-logitech-taocan-G29-tiaozhanzhe-G29+tiaozhanzhe_04.jpg'),
(229, 17, 'img/product_detail/17/Images-ProductImages-logitech-taocan-G29-tiaozhanzhe-G29+tiaozhanzhe_05.jpg'),
(230, 17, 'img/product_detail/17/THHZC.jpg'),
(231, 10, 'img/product_detail/14/THHZC.jpg'),
(232, 18, 'img/product_detail/18/Jaybird_RUN_01.jpg'),
(233, 18, 'img/product_detail/18/Jaybird_RUN_02.jpg'),
(234, 18, 'img/product_detail/18/Jaybird_RUN_03.jpg'),
(235, 18, 'img/product_detail/18/Jaybird_RUN_04.jpg'),
(236, 18, 'img/product_detail/18/Jaybird_RUN_05.jpg'),
(237, 18, 'img/product_detail/18/Jaybird_RUN_06.jpg'),
(238, 18, 'img/product_detail/18/Jaybird_RUN_07.jpg'),
(239, 18, 'img/product_detail/18/Jaybird_RUN_08.jpg'),
(240, 18, 'img/product_detail/18/Jaybird_RUN_09.jpg'),
(241, 18, 'img/product_detail/18/Jaybird_RUN_10.jpg'),
(242, 18, 'img/product_detail/18/Jaybird_RUN_11.jpg'),
(243, 18, 'img/product_detail/18/Jaybird_RUN_12.jpg'),
(244, 18, 'img/product_detail/18/Jaybird_RUN_13.jpg'),
(245, 18, 'img/product_detail/18/RUN1.gif'),
(246, 18, 'img/product_detail/18/RUN2.gif'),
(247, 18, 'img/product_detail/18/RUN3.gif'),
(248, 18, 'img/product_detail/18/Jaybird_RUN_14.jpg'),
(249, 18, 'img/product_detail/18/Jaybird_RUN_15.jpg'),
(250, 18, 'img/product_detail/18/THHZC.jpg'),
(251, 19, 'img/product_detail/19/MX_ERGO_PDP_750_01.jpg'),
(252, 19, 'img/product_detail/19/MX_ERGO_PDP_750_02.jpg'),
(253, 19, 'img/product_detail/19/MX_ERGO_PDP_750_03.jpg'),
(254, 19, 'img/product_detail/19/MX_ERGO_PDP_750_04.jpg'),
(255, 19, 'img/product_detail/19/MX_ERGO_PDP_750_05.jpg'),
(256, 19, 'img/product_detail/19/MX_ERGO_PDP_750_06.jpg'),
(257, 19, 'img/product_detail/19/MX_ERGO_PDP_750_07.jpg'),
(258, 19, 'img/product_detail/19/MX_ERGO_PDP_750_08.jpg'),
(259, 19, 'img/product_detail/19/MX_ERGO_PDP_750_09.jpg'),
(260, 19, 'img/product_detail/19/MX_ERGO_PDP_750_10.jpg'),
(261, 19, 'img/product_detail/19/MX_ERGO_PDP_750_11.jpg'),
(262, 19, 'img/product_detail/19/MX_ERGO_PDP_750_12.jpg'),
(263, 19, 'img/product_detail/19/MX_ERGO_PDP_750_13.jpg'),
(264, 19, 'img/product_detail/19/THHZC.jpg'),
(265, 20, 'img/product_detail/20/MX_Anywhere_2S_750_01.jpg'),
(266, 20, 'img/product_detail/20/MX_Anywhere_2S_750_02.jpg'),
(267, 20, 'img/product_detail/20/MX_Anywhere_2S_750_03.jpg'),
(268, 20, 'img/product_detail/20/MX_Anywhere_2S_750_04.jpg'),
(269, 20, 'img/product_detail/20/MX_Anywhere_2S_750_05.jpg'),
(270, 20, 'img/product_detail/20/MX_Anywhere_2S_750_06.jpg'),
(271, 20, 'img/product_detail/20/MX_Anywhere_2S_750_07.jpg'),
(272, 20, 'img/product_detail/20/MX_Anywhere_2S_750_08.jpg'),
(273, 20, 'img/product_detail/20/MX_Anywhere_2S_750_09.jpg'),
(274, 20, 'img/product_detail/20/MX_Anywhere_2S_750_10.jpg'),
(275, 20, 'img/product_detail/20/MX_Anywhere_2S_750_11.jpg'),
(276, 20, 'img/product_detail/20/MX_Anywhere_2S_750_12.jpg'),
(277, 20, 'img/product_detail/20/THHZC.jpg'),
(278, 21, 'img/product_detail/21/MX_Anywhere_2S_750_01.jpg'),
(279, 21, 'img/product_detail/21/MX_Anywhere_2S_750_02.jpg'),
(280, 21, 'img/product_detail/21/MX_Anywhere_2S_750_03.jpg'),
(281, 21, 'img/product_detail/21/MX_Anywhere_2S_750_04.jpg'),
(282, 21, 'img/product_detail/21/MX_Anywhere_2S_750_05.jpg'),
(283, 21, 'img/product_detail/21/MX_Anywhere_2S_750_06.jpg'),
(284, 21, 'img/product_detail/21/MX_Anywhere_2S_750_07.jpg'),
(285, 21, 'img/product_detail/21/MX_Anywhere_2S_750_08.jpg'),
(286, 21, 'img/product_detail/21/MX_Anywhere_2S_750_09.jpg'),
(287, 21, 'img/product_detail/21/MX_Anywhere_2S_750_10.jpg'),
(288, 21, 'img/product_detail/21/MX_Anywhere_2S_750_11.jpg'),
(289, 21, 'img/product_detail/21/MX_Anywhere_2S_750_12.jpg'),
(290, 21, 'img/product_detail/21/THHZC.jpg'),
(291, 22, 'img/product_detail/22/MX_Master_2S_750_01.jpg'),
(292, 22, 'img/product_detail/22/MX_Master_2S_750_02.jpg'),
(293, 22, 'img/product_detail/22/MX_Master_2S_750_03.jpg'),
(294, 22, 'img/product_detail/22/MX_Master_2S_750_04.jpg'),
(295, 22, 'img/product_detail/22/MX_Master_2S_750_05.jpg'),
(296, 22, 'img/product_detail/22/MX_Master_2S_750_06.jpg'),
(297, 22, 'img/product_detail/22/MX_Master_2S_750_07.jpg'),
(298, 22, 'img/product_detail/22/MX_Master_2S_750_08.jpg'),
(299, 22, 'img/product_detail/22/MX_Master_2S_750_09.jpg'),
(300, 22, 'img/product_detail/22/MX_Master_2S_750_10.jpg'),
(301, 22, 'img/product_detail/22/MX_Master_2S_750_11.jpg'),
(302, 22, 'img/product_detail/22/MX_Master_2S_750_12.jpg'),
(303, 22, 'img/product_detail/22/THHZC.jpg'),
(304, 23, 'img/product_detail/23/G603_01.jpg'),
(305, 23, 'img/product_detail/23/G603_02.jpg'),
(306, 23, 'img/product_detail/23/G603_03.jpg'),
(307, 23, 'img/product_detail/23/G603_04.jpg'),
(308, 23, 'img/product_detail/23/G603_05.jpg'),
(309, 23, 'img/product_detail/23/G603_06.jpg'),
(310, 23, 'img/product_detail/23/G603_07.jpg'),
(311, 23, 'img/product_detail/23/G603_08.jpg'),
(312, 23, 'img/product_detail/23/G603_09.jpg'),
(313, 23, 'img/product_detail/23/G603_10.jpg'),
(314, 23, 'img/product_detail/23/G603_11.jpg'),
(315, 23, 'img/product_detail/23/G603_12.jpg'),
(316, 23, 'img/product_detail/23/G603_13.jpg'),
(317, 23, 'img/product_detail/23/G603_14.jpg'),
(318, 23, 'img/product_detail/23/G603_15.jpg'),
(319, 23, 'img/product_detail/23/G603_16.jpg'),
(320, 23, 'img/product_detail/23/G603_17.jpg'),
(321, 23, 'img/product_detail/23/G603_18.jpg'),
(322, 23, 'img/product_detail/23/G603_19.jpg'),
(323, 23, 'img/product_detail/23/G603_20.jpg'),
(324, 23, 'img/product_detail/23/G603_21.jpg'),
(325, 23, 'img/product_detail/23/THHZC.jpg'),
(326, 24, 'img/product_detail/24/G613_01.jpg'),
(327, 24, 'img/product_detail/24/G613_02.jpg'),
(328, 24, 'img/product_detail/24/G613_03.jpg'),
(329, 24, 'img/product_detail/24/G613_04.jpg'),
(330, 24, 'img/product_detail/24/G613_05.jpg'),
(331, 24, 'img/product_detail/24/G613_06.jpg'),
(332, 24, 'img/product_detail/24/G613_07.jpg'),
(333, 24, 'img/product_detail/24/G613_08.jpg'),
(334, 24, 'img/product_detail/24/G613_09.jpg'),
(335, 24, 'img/product_detail/24/G613_10.jpg'),
(336, 24, 'img/product_detail/24/G613_11.jpg'),
(337, 24, 'img/product_detail/24/G613_12.jpg'),
(338, 24, 'img/product_detail/24/G613_13.jpg'),
(339, 24, 'img/product_detail/24/G613_14.jpg'),
(340, 24, 'img/product_detail/24/G613_15.jpg'),
(341, 24, 'img/product_detail/24/G613_16.jpg'),
(342, 24, 'img/product_detail/24/G613_17.jpg'),
(343, 24, 'img/product_detail/24/G613_18.jpg'),
(344, 24, 'img/product_detail/24/G613_19.jpg'),
(345, 24, 'img/product_detail/24/G613_20.jpg'),
(346, 24, 'img/product_detail/24/G613_21.jpg'),
(347, 24, 'img/product_detail/24/THHZC.jpg'),
(348, 25, 'img/product_detail/25/MK850_01.jpg'),
(349, 25, 'img/product_detail/25/MK850_02.jpg'),
(350, 25, 'img/product_detail/25/MK850_03.jpg'),
(351, 25, 'img/product_detail/25/MK850_04.jpg'),
(352, 25, 'img/product_detail/25/MK850_05.jpg'),
(353, 25, 'img/product_detail/25/MK850_06.jpg'),
(354, 25, 'img/product_detail/25/MK850_07.jpg'),
(355, 25, 'img/product_detail/25/MK850_08.jpg'),
(356, 25, 'img/product_detail/25/MK850_09.jpg'),
(357, 25, 'img/product_detail/25/MK850_10.jpg'),
(358, 25, 'img/product_detail/25/THHZC.jpg'),
(359, 26, 'img/product_detail/26/MX_Master_2S_750_01.jpg'),
(360, 26, 'img/product_detail/26/MX_Master_2S_750_02.jpg'),
(361, 26, 'img/product_detail/26/MX_Master_2S_750_03.jpg'),
(362, 26, 'img/product_detail/26/MX_Master_2S_750_04.jpg'),
(363, 26, 'img/product_detail/26/MX_Master_2S_750_05.jpg'),
(364, 26, 'img/product_detail/26/MX_Master_2S_750_06.jpg'),
(365, 26, 'img/product_detail/26/MX_Master_2S_750_07.jpg'),
(366, 26, 'img/product_detail/26/MX_Master_2S_750_08.jpg'),
(367, 26, 'img/product_detail/26/MX_Master_2S_750_09.jpg'),
(368, 26, 'img/product_detail/26/MX_Master_2S_750_10.jpg'),
(369, 26, 'img/product_detail/26/MX_Master_2S_750_11.jpg'),
(370, 26, 'img/product_detail/26/MX_Master_2S_750_12.jpg'),
(371, 26, 'img/product_detail/26/THHZC.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lg_family_class`
--

CREATE TABLE `lg_family_class` (
  `fcid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_family_class`
--

INSERT INTO `lg_family_class` (`fcid`, `fname`) VALUES
(1, '游戏专区'),
(2, '商务办公'),
(3, '音频音响'),
(4, '平板周边'),
(5, '套装');

-- --------------------------------------------------------

--
-- 表的结构 `lg_hot_product`
--

CREATE TABLE `lg_hot_product` (
  `lid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `resolution` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `cpu` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `expire` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_hot_product`
--

INSERT INTO `lg_hot_product` (`lid`, `fid`, `title`, `subtitle`, `price`, `promise`, `spec`, `lname`, `os`, `memory`, `resolution`, `video_card`, `cpu`, `video_memory`, `category`, `disk`, `shelf_time`, `sold_count`, `is_onsale`, `expire`) VALUES
(1, 1, '【新品发售！】罗技 Craft无线键盘 深灰', '', '1699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 Craft无线键盘', '', '', '', '', '', '', '', '', 1512287402, 0, 0, '0'),
(2, 2, '罗技 MX Anywhere 2S无线便携鼠标 睿智黑', '', '699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '睿智黑', '罗技 MX Anywhere 2S无线便携鼠标', '', '', '', '', '', '', '', '', 1512291259, 0, 0, '0'),
(3, 3, 'Logitech 罗技 iK1052 键盘保护套 黑', '', '699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', ' 黑', 'iK1052 黑', '', '', '', '', '', '', '', '', 1512292727, 0, 0, '0'),
(4, 4, 'Jaybird X3 WIRELESS 无线蓝牙运动耳机 红色', '', '1099.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '红色', 'Jaybird X3 WIRELESS 无线蓝牙运动耳机', '', '', '', '', '', '', '', '', 1512293807, 0, 0, '0'),
(5, 5, 'Jaybird Freedom无线蓝牙运动耳机 黑色', '', '1280.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '黑色', 'Jaybird Freedom无线蓝牙运动耳机', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(6, 6, '罗技 Spotlight无线演示器 灰色', '', '799.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '灰色', '罗技 Spotlight无线演示器', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0');

-- --------------------------------------------------------

--
-- 表的结构 `lg_index_carousel`
--

CREATE TABLE `lg_index_carousel` (
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='轮播产品';

--
-- 转存表中的数据 `lg_index_carousel`
--

INSERT INTO `lg_index_carousel` (`cid`, `lid`, `img`, `title`, `href`) VALUES
(1, 0, 'img/index_carousel/Run.jpg', 'RUN', ''),
(2, 0, 'img/index_carousel/MX ERGO.jpg', '新品轨迹球', ''),
(3, 0, 'img/index_carousel/G613.jpg', 'G613', ''),
(4, 7, 'img/index_carousel/BOUND.jpg', '音响', ''),
(5, 0, 'img/index_carousel/YXZX.jpg', '游戏自选套餐', '');

-- --------------------------------------------------------

--
-- 表的结构 `lg_index_product`
--

CREATE TABLE `lg_index_product` (
  `pid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lg_order`
--

CREATE TABLE `lg_order` (
  `oid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lg_order_detail`
--

CREATE TABLE `lg_order_detail` (
  `did` int(11) NOT NULL,
  `oid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lg_product`
--

CREATE TABLE `lg_product` (
  `lid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `resolution` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `cpu` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL,
  `expire` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_product`
--

INSERT INTO `lg_product` (`lid`, `fid`, `title`, `subtitle`, `price`, `promise`, `spec`, `lname`, `os`, `memory`, `resolution`, `video_card`, `cpu`, `video_memory`, `category`, `disk`, `shelf_time`, `sold_count`, `is_onsale`, `expire`) VALUES
(1, 1, '【新品发售！】罗技 Craft无线键盘 深灰', '', '1699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 Craft无线键盘', '', '', '', '', '', '', '', '', 1512287402, 0, 0, '0'),
(2, 2, '罗技 MX Anywhere 2S无线便携鼠标 睿智黑', '', '699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '睿智黑', '罗技 MX Anywhere 2S无线便携鼠标', '', '', '', '', '', '', '', '', 1512291259, 0, 0, '0'),
(3, 3, 'Logitech 罗技 iK1052 键盘保护套 黑', '', '699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', ' 黑', 'iK1052 黑', '', '', '', '', '', '', '', '', 1512292727, 0, 0, '0'),
(4, 4, 'Jaybird X3 WIRELESS 无线蓝牙运动耳机 红色', '', '1099.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '红色', 'Jaybird X3 WIRELESS 无线蓝牙运动耳机', '', '', '', '', '', '', '', '', 1512293807, 0, 0, '0'),
(5, 5, 'Jaybird Freedom无线蓝牙运动耳机 黑色', '', '1280.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '黑色', 'Jaybird Freedom无线蓝牙运动耳机', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(6, 6, '罗技 Spotlight无线演示器 灰色', '', '799.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '灰色', '罗技 Spotlight无线演示器', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(7, 7, 'Logitech MX Sound有线蓝牙双模式音箱', '', '899.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'Logitech MX Sound有线蓝牙双模式音箱', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(8, 8, '罗技 Wonderboom 便携式蓝牙音箱 黑色', '', '799.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 Wonderboom 便携式蓝牙音箱', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(9, 9, 'Logitech 罗技 UK1050BK 键盘保护套', '', '399.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'Logitech 罗技 UK1050BK 键盘保护套', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(10, 10, '罗技 K380多设备蓝牙键盘 蓝色', '', '249.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 K380多设备蓝牙键盘', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(11, 11, 'Logitech Z906 音箱系统', '', '2499.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'Logitech Z906 音箱系统', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(12, 12, '罗技 MX Master2S 无线蓝牙鼠标 儒雅黑', '', '899.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 MX Master2S 无线蓝牙鼠标', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(13, 13, '罗技（Logitech）G533 Wireless DTS 7.1 环绕声游戏耳机麦克风', '', '999.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'G533 Wireless DTS 7.1 环绕声游戏耳机麦克风', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(14, 14, 'Logitech C925e 高清网络摄像头', '', '799.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'Logitech C925e 高清网络摄像头', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(15, 15, 'UE BOOM 酷乐随身 无线蓝牙便携音箱 红色', '', '799.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'UE BOOM 酷乐随身 无线蓝牙便携音箱', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(16, 16, 'G29和G920的赛车方向盘排挡杆', '', '399.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'G29和G920的赛车方向盘排挡杆', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(17, 17, 'Logitech/罗技G29+Playseat挑战者/进化', '', '4148.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'G29+Playseat挑战者/进化', '', '', '', '', '', '', '', '', 1512301829, 0, 0, '0'),
(18, 18, 'JAYBIRD RUN 真无线运动耳机 黑色【预售】', '新品预售，下单限量送千元精品手环，12月12日发货', '1699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'JAYBIRD RUN 真无线运动耳机', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(19, 19, '罗技MX ERGO 无线轨迹球鼠标', '', '799.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'MX ERGO 无线轨迹球鼠标', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(20, 2, '罗技 MX Anywhere 2S无线便携鼠标 睿智蓝', '', '699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 MX Anywhere 2S无线便携鼠标', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(21, 2, '罗技 MX Anywhere 2S无线便携鼠标 哑光白', '', '699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 MX Anywhere 2S无线便携鼠标', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(22, 12, '罗技 MX Master2S 无线蓝牙鼠标 哑光白', '', '899.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 MX Master2S 无线蓝牙鼠标', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(23, 20, '罗技 G603 LIGHTSPEED 无线游戏鼠标', '', '599.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'G603 LIGHTSPEED 无线游戏鼠标', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(24, 21, '罗技 G613 无线机械游戏键盘', '', '799.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'G613 无线机械游戏键盘', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(25, 22, '罗技 MK850无线键鼠套装', '', '699.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', 'MK850无线键鼠套装', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0'),
(26, 12, '罗技 MX Master2S 无线蓝牙鼠标 睿智蓝', '', '899.00', '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货', '', '罗技 MX Master2S 无线蓝牙鼠标', '', '', '', '', '', '', '', '', 1512811890, 0, 0, '0');

-- --------------------------------------------------------

--
-- 表的结构 `lg_product_col`
--

CREATE TABLE `lg_product_col` (
  `cid` int(11) NOT NULL,
  `lid` int(11) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_product_col`
--

INSERT INTO `lg_product_col` (`cid`, `lid`, `img`) VALUES
(1, 1, 'img/product_detail/1/color/'),
(2, 2, 'img/product_detail/2/color/2840-0045-001.jpg'),
(3, 2, 'img/product_detail/2/color/2880-0020-001.jpg'),
(4, 2, 'img/product_detail/2/color/2880-0021-001.jpg'),
(5, 3, 'img/product_detail/3/color/'),
(6, 4, 'img/product_detail/4/color/2840-0058-001.jpg'),
(7, 4, 'img/product_detail/4/color/2850-0011-001.jpg'),
(8, 4, 'img/product_detail/4/color/3000-0312-001.jpg'),
(9, 4, 'img/product_detail/4/color/3000-0313-001.jpg'),
(10, 5, 'img/product_detail/5/color/2850-0004-001.jpg'),
(11, 5, 'img/product_detail/5/color/2850-0005-001.jpg'),
(12, 5, 'img/product_detail/5/color/2850-0006-001.jpg'),
(13, 5, 'img/product_detail/5/color/2850-0311-001.jpg'),
(14, 6, 'img/product_detail/6/color/3650-0002-001.jpg'),
(15, 6, 'img/product_detail/6/color/3650-0003-001.jpg'),
(16, 6, 'img/product_detail/6/color/3650-0004-001.jpg'),
(17, 7, 'img/product_detail/7/color/'),
(18, 8, 'img/product_detail/8/color/3010-0009-001.jpg'),
(19, 8, 'img/product_detail/8/color/3010-0010-001.jpg'),
(20, 8, 'img/product_detail/8/color/3010-0002-001.jpg'),
(21, 8, 'img/product_detail/8/color/3010-0003-001.jpg'),
(22, 8, 'img/product_detail/8/color/3010-0004-001.jpg'),
(23, 8, 'img/product_detail/8/color/3010-0005-001.jpg'),
(24, 9, 'img/product_detail/9/color/'),
(25, 10, 'img/product_detail/10/color/2840-0001-001.jpg'),
(26, 10, 'img/product_detail/10/color/2840-0002-001.jpg'),
(27, 10, 'img/product_detail/10/color/2920-0002-001.jpg'),
(28, 11, 'img/product_detail/11/color/'),
(29, 12, 'img/product_detail/12/color/2840-0049-001.jpg'),
(30, 12, 'img/product_detail/12/color/2840-0050-001.jpg'),
(31, 12, 'img/product_detail/12/color/2840-0051-001.jpg'),
(32, 13, 'img/product_detail/13/color/'),
(33, 14, 'img/product_detail/14/color/2970-0001-001.jpg'),
(34, 15, 'img/product_detail/15/color/1340-0001-001.jpg'),
(35, 15, 'img/product_detail/15/color/1340-0002-001.jpg'),
(36, 15, 'img/product_detail/15/color/1340-0003-001.jpg'),
(37, 15, 'img/product_detail/15/color/6600-0001-001.jpg'),
(38, 15, 'img/product_detail/15/color/6600-0002-001.jpg'),
(39, 15, 'img/product_detail/15/color/6600-0003-001.jpg'),
(40, 15, 'img/product_detail/15/color/6600-0004-001.jpg'),
(41, 15, 'img/product_detail/15/color/6600-0004-001.jpg'),
(42, 16, 'img/product_detail/16/color/'),
(43, 17, 'img/product_detail/17/color/'),
(44, 5, 'img/product_detail/5/color/2850-0004-001.jpg'),
(45, 5, 'img/product_detail/5/color/2850-0005-001.jpg'),
(46, 5, 'img/product_detail/5/color/2850-0006-001.jpg'),
(47, 5, 'img/product_detail/5/color/2850-0311-001.jpg'),
(48, 6, 'img/product_detail/6/color/3650-0002-001.jpg'),
(49, 6, 'img/product_detail/6/color/3650-0003-001.jpg'),
(50, 6, 'img/product_detail/6/color/3650-0004-001.jpg'),
(51, 7, 'img/product_detail/7/color/'),
(52, 8, 'img/product_detail/8/color/3010-0009-001.jpg'),
(53, 8, 'img/product_detail/8/color/3010-0010-001.jpg'),
(54, 8, 'img/product_detail/8/color/3010-0002-001.jpg'),
(55, 8, 'img/product_detail/8/color/3010-0003-001.jpg'),
(56, 8, 'img/product_detail/8/color/3010-0004-001.jpg'),
(57, 8, 'img/product_detail/8/color/3010-0005-001.jpg'),
(58, 9, 'img/product_detail/9/color/'),
(59, 10, 'img/product_detail/10/color/2840-0001-001.jpg'),
(60, 10, 'img/product_detail/10/color/2840-0002-001.jpg'),
(61, 10, 'img/product_detail/10/color/2920-0002-001.jpg'),
(62, 11, 'img/product_detail/11/color/'),
(63, 12, 'img/product_detail/12/color/2840-0049-001.jpg'),
(64, 12, 'img/product_detail/12/color/2840-0050-001.jpg'),
(65, 12, 'img/product_detail/12/color/2840-0051-001.jpg'),
(66, 13, 'img/product_detail/13/color/'),
(67, 14, 'img/product_detail/14/color/2970-0001-001.jpg'),
(68, 15, 'img/product_detail/15/color/1340-0001-001.jpg'),
(69, 15, 'img/product_detail/15/color/1340-0002-001.jpg'),
(70, 15, 'img/product_detail/15/color/1340-0003-001.jpg'),
(71, 15, 'img/product_detail/15/color/6600-0001-001.jpg'),
(72, 15, 'img/product_detail/15/color/6600-0002-001.jpg'),
(73, 15, 'img/product_detail/15/color/6600-0003-001.jpg'),
(74, 15, 'img/product_detail/15/color/6600-0004-001.jpg'),
(75, 15, 'img/product_detail/15/color/6600-0004-001.jpg'),
(76, 16, 'img/product_detail/16/color/'),
(77, 17, 'img/product_detail/17/color/');

-- --------------------------------------------------------

--
-- 表的结构 `lg_product_family`
--

CREATE TABLE `lg_product_family` (
  `fid` int(11) NOT NULL,
  `fcid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_product_family`
--

INSERT INTO `lg_product_family` (`fid`, `fcid`, `fname`) VALUES
(1, 2, '罗技 Craft无线键盘 '),
(2, 2, '罗技 MX Anywhere 2S无线便携鼠标'),
(3, 4, 'Logitech 罗技 iK1052 键盘保护套'),
(4, 3, 'Jaybird X3 WIRELESS 无线蓝牙运动耳机'),
(5, 3, 'Jaybird Freedom无线蓝牙运动耳机'),
(6, 2, '罗技 Spotlight无线演示器'),
(7, 3, 'Logitech MX Sound有线蓝牙双模式音箱'),
(8, 3, '罗技 Wonderboom 便携式蓝牙音箱'),
(9, 4, 'Logitech 罗技 UK1050BK 键盘保护套'),
(10, 2, '罗技 K380多设备蓝牙键盘'),
(11, 3, 'Logitech Z906 音箱系统'),
(12, 2, '罗技 MX Master2S 无线蓝牙鼠标'),
(13, 3, 'G533 Wireless DTS 7.1'),
(14, 2, 'Logitech C925e 高清网络摄像头'),
(15, 3, 'UE BOOM 酷乐随身 无线蓝牙便携音箱'),
(16, 1, 'G29和G920的赛车方向盘排挡杆'),
(17, 1, 'Logitech/罗技G29+Playseat挑战者/进化'),
(18, 3, 'JAYBIRD RUN 真无线运动耳机'),
(19, 2, '罗技MX ERGO 无线轨迹球鼠标'),
(20, 1, '罗技 G603 LIGHTSPEED 无线游戏鼠标'),
(21, 1, '罗技 G613 无线机械游戏键盘'),
(22, 5, '罗技 MK850无线键鼠套装');

-- --------------------------------------------------------

--
-- 表的结构 `lg_product_pic`
--

CREATE TABLE `lg_product_pic` (
  `pid` int(11) NOT NULL,
  `lid` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_product_pic`
--

INSERT INTO `lg_product_pic` (`pid`, `lid`, `sm`, `lg`) VALUES
(1, 1, 'img/product/1/sm/2840-0059-001.jpg', 'img/product/1/lg/2840-0059-001.jpg'),
(2, 1, 'img/product/1/sm/2840-0059-002.jpg', 'img/product/1/lg/2840-0059-002.jpg'),
(3, 1, 'img/product/1/sm/2840-0059-003.jpg', 'img/product/1/lg/2840-0059-003.jpg'),
(4, 1, 'img/product/1/sm/2840-0059-004.jpg', 'img/product/1/lg/2840-0059-004.jpg'),
(5, 1, 'img/product/1/sm/2840-0059-005.jpg', 'img/product/1/lg/2840-0059-005.jpg'),
(6, 2, 'img/product/2/sm/2840-0045-001.jpg', 'img/product/2/lg/2840-0045-001.jpg'),
(7, 2, 'img/product/2/sm/2840-0045-002.jpg', 'img/product/2/lg/2840-0045-002.jpg'),
(8, 2, 'img/product/2/sm/2840-0045-003.jpg', 'img/product/2/lg/2840-0045-003.jpg'),
(9, 2, 'img/product/2/sm/2840-0045-004.jpg', 'img/product/2/lg/2840-0045-004.jpg'),
(10, 3, 'img/product/3/sm/3060-0003-001.jpg', 'img/product/3/lg/3060-0003-001.jpg'),
(11, 3, 'img/product/3/sm/3060-0003-002.jpg', 'img/product/3/lg/3060-0003-002.jpg'),
(12, 3, 'img/product/3/sm/3060-0003-003.jpg', 'img/product/3/lg/3060-0003-003.jpg'),
(13, 3, 'img/product/3/sm/3060-0003-004.jpg', 'img/product/3/lg/3060-0003-004.jpg'),
(14, 4, 'img/product/4/sm/3000-0312-001.jpg', 'img/product/4/lg/3000-0312-001.jpg'),
(15, 4, 'img/product/4/sm/3000-0312-002.jpg', 'img/product/4/lg/3000-0312-002.jpg'),
(16, 4, 'img/product/4/sm/3000-0312-003.jpg', 'img/product/4/lg/3000-0312-003.jpg'),
(17, 4, 'img/product/4/sm/3000-0312-004.jpg', 'img/product/4/lg/3000-0312-004.jpg'),
(18, 5, 'img/product/5/sm/2850-0004-001.jpg', 'img/product/5/lg/2850-0004-001.jpg'),
(19, 5, 'img/product/5/sm/2850-0004-002.jpg', 'img/product/5/lg/2850-0004-002.jpg'),
(20, 5, 'img/product/5/sm/2850-0004-003.jpg', 'img/product/5/lg/2850-0004-003.jpg'),
(21, 5, 'img/product/5/sm/2850-0004-004.jpg', 'img/product/5/lg/2850-0004-004.jpg'),
(22, 5, 'img/product/5/sm/2850-0004-005.jpg', 'img/product/5/lg/2850-0004-005.jpg'),
(23, 6, 'img/product/6/sm/3650-0002-001.jpg', 'img/product/6/lg/3650-0002-001.jpg'),
(24, 6, 'img/product/6/sm/3650-0002-002.jpg', 'img/product/6/lg/3650-0002-002.jpg'),
(25, 6, 'img/product/6/sm/3650-0002-003.jpg', 'img/product/6/lg/3650-0002-003.jpg'),
(26, 7, 'img/product/7/sm/2840-0076-001.jpg', 'img/product/7/lg/2840-0076-001.jpg'),
(27, 7, 'img/product/7/sm/2840-0076-002.jpg', 'img/product/7/lg/2840-0076-002.jpg'),
(28, 7, 'img/product/7/sm/2840-0076-003.jpg', 'img/product/7/lg/2840-0076-003.jpg'),
(29, 7, 'img/product/7/sm/2840-0076-004.jpg', 'img/product/7/lg/2840-0076-004.jpg'),
(30, 7, 'img/product/7/sm/2840-0076-005.jpg', 'img/product/7/lg/2840-0076-005.jpg'),
(31, 8, 'img/product/8/sm/3010-0002-001.jpg', 'img/product/8/lg/3010-0002-001.jpg'),
(32, 8, 'img/product/8/sm/3010-0002-002.jpg', 'img/product/8/lg/3010-0002-002.jpg'),
(33, 8, 'img/product/8/sm/3010-0002-003.jpg', 'img/product/8/lg/3010-0002-003.jpg'),
(34, 8, 'img/product/8/sm/3010-0002-004.jpg', 'img/product/8/lg/3010-0002-004.jpg'),
(35, 9, 'img/product/9/sm/2870-0003-001.jpg', 'img/product/9/lg/2870-0003-001.jpg'),
(36, 9, 'img/product/9/sm/2870-0003-002.jpg', 'img/product/9/lg/2870-0003-002.jpg'),
(37, 9, 'img/product/9/sm/2870-0003-003.jpg', 'img/product/9/lg/2870-0003-003.jpg'),
(38, 9, 'img/product/9/sm/2870-0003-004.jpg', 'img/product/9/lg/2870-0003-004.jpg'),
(39, 10, 'img/product/10/sm/2840-0002-001.jpg', 'img/product/10/lg/2840-0002-001.jpg'),
(40, 10, 'img/product/10/sm/2840-0002-002.jpg', 'img/product/10/lg/2840-0002-002.jpg'),
(41, 10, 'img/product/10/sm/2840-0002-003.jpg', 'img/product/10/lg/2840-0002-003.jpg'),
(42, 10, 'img/product/10/sm/2840-0002-004.jpg', 'img/product/10/lg/2840-0002-004.jpg'),
(43, 10, 'img/product/10/sm/2840-0002-005.jpg', 'img/product/10/lg/2840-0002-005.jpg'),
(44, 11, 'img/product/11/sm/3500-0008-001.jpg', 'img/product/11/lg/3500-0008-001.jpg'),
(45, 12, 'img/product/12/sm/2840-0049-001.jpg', 'img/product/12/lg/2840-0049-001.jpg'),
(46, 12, 'img/product/12/sm/2840-0049-002.jpg', 'img/product/12/lg/2840-0049-002.jpg'),
(47, 12, 'img/product/12/sm/2840-0049-003.jpg', 'img/product/12/lg/2840-0049-003.jpg'),
(48, 12, 'img/product/12/sm/2840-0049-004.jpg', 'img/product/12/lg/2840-0049-004.jpg'),
(49, 13, 'img/product/13/sm/2860-0030-001.jpg', 'img/product/13/lg/2860-0030-001.jpg'),
(50, 13, 'img/product/13/sm/2860-0030-002.jpg', 'img/product/13/lg/2860-0030-002.jpg'),
(51, 13, 'img/product/13/sm/2860-0030-003.jpg', 'img/product/13/lg/2860-0030-003.jpg'),
(52, 13, 'img/product/13/sm/2860-0030-004.jpg', 'img/product/13/lg/2860-0030-004.jpg'),
(53, 13, 'img/product/13/sm/2860-0030-005.jpg', 'img/product/13/lg/2860-0030-005.jpg'),
(54, 14, 'img/product/14/sm/2970-0004-001.jpg', 'img/product/14/lg/2970-0004-001.jpg'),
(55, 14, 'img/product/14/sm/2970-0004-002.jpg', 'img/product/14/lg/2970-0004-002.jpg'),
(56, 14, 'img/product/14/sm/2970-0004-003.jpg', 'img/product/14/lg/2970-0004-003.jpg'),
(57, 14, 'img/product/14/sm/2970-0004-004.jpg', 'img/product/14/lg/2970-0004-004.jpg'),
(58, 15, 'img/product/15/sm/6600-0004-001.jpg', 'img/product/15/lg/6600-0004-001.jpg'),
(59, 15, 'img/product/15/sm/6600-0004-002.jpg', 'img/product/15/lg/6600-0004-002.jpg'),
(60, 16, 'img/product/16/sm/6100-0002-001.jpg', 'img/product/16/lg/6100-0002-001.jpg'),
(61, 16, 'img/product/16/sm/6100-0002-002.jpg', 'img/product/16/lg/6100-0002-002.jpg'),
(62, 16, 'img/product/16/sm/6100-0002-003.jpg', 'img/product/16/lg/6100-0002-003.jpg'),
(63, 17, 'im2860-0005-001sm/2860-0005-001.jpg', 'img/product/17/lg/2860-0005-001.jpg'),
(64, 17, 'img/product/17/sm/2860-0005-002.jpg', 'img/product/17/lg/2860-0005-002.jpg'),
(65, 17, 'img/product/17/sm/2860-0005-003.jpg', 'img/product/17/lg/2860-0005-003.jpg'),
(66, 18, 'img/product/18/sm/2850-0012-001.jpg', 'img/product/18/lg/2850-0012-001.jpg'),
(67, 18, 'img/product/18/sm/2850-0012-002.jpg', 'img/product/18/lg/2850-0012-002.jpg'),
(68, 18, 'img/product/18/sm/2850-0012-003.jpg', 'img/product/18/lg/2850-0012-003.jpg'),
(69, 19, 'img/product/19/sm/2840-0068-001.jpg', 'img/product/19/lg/2840-0068-001.jpg'),
(70, 19, 'img/product/19/sm/2840-0068-002.jpg', 'img/product/19/lg/2840-0068-002.jpg'),
(71, 19, 'img/product/19/sm/2840-0068-003.jpg', 'img/product/19/lg/2840-0068-003.jpg'),
(72, 19, 'img/product/19/sm/2860-0068-004.jpg', 'img/product/19/lg/2860-0068-004.jpg'),
(73, 20, 'img/product/20/sm/2880-0020-001.jpg', 'img/product/20/lg/2880-0020-001.jpg'),
(74, 20, 'img/product/20/sm/2880-0020-002.jpg', 'img/product/20/lg/2880-0020-002.jpg'),
(75, 20, 'img/product/20/sm/2880-0020-003.jpg', 'img/product/20/lg/2880-0020-003.jpg'),
(76, 20, 'img/product/20/sm/2880-0020-004.jpg', 'img/product/20/lg/2880-0020-004.jpg'),
(77, 21, 'img/product/21/sm/2880-0021-001.jpg', 'img/product/21/lg/2880-0021-001.jpg'),
(78, 21, 'img/product/21/sm/2880-0021-002.jpg', 'img/product/21/lg/2880-0021-002.jpg'),
(79, 21, 'img/product/21/sm/2880-0021-003.jpg', 'img/product/21/lg/2880-0021-003.jpg'),
(80, 21, 'img/product/21/sm/2880-0021-004.jpg', 'img/product/21/lg/2880-0021-004.jpg'),
(81, 22, 'img/product/22/sm/2840-0050-001.jpg', 'img/product/22/lg/2840-0050-001.jpg'),
(82, 22, 'img/product/22/sm/2840-0050-002.jpg', 'img/product/22/lg/2840-0050-002.jpg'),
(83, 22, 'img/product/22/sm/2840-0050-003.jpg', 'img/product/22/lg/2840-0050-003.jpg'),
(84, 22, 'img/product/22/sm/2840-0050-004.jpg', 'img/product/22/lg/2840-0050-004.jpg'),
(85, 23, 'img/product/23/sm/2860-0038-001.jpg', 'img/product/23/lg/2860-0038-001.jpg'),
(86, 23, 'img/product/23/sm/2860-0038-002.jpg', 'img/product/23/lg/2860-0038-002.jpg'),
(87, 23, 'img/product/23/sm/2860-0038-003.jpg', 'img/product/23/lg/2860-0038-003.jpg'),
(88, 23, 'img/product/23/sm/2860-0038-004.jpg', 'img/product/23/lg/2860-0038-004.jpg'),
(89, 24, 'img/product/24/sm/2860-0039-001.jpg', 'img/product/24/lg/2860-0039-001.jpg'),
(90, 24, 'img/product/24/sm/2860-0039-002.jpg', 'img/product/24/lg/2860-0039-002.jpg'),
(91, 24, 'img/product/24/sm/2860-0039-003.jpg', 'img/product/24/lg/2860-0039-003.jpg'),
(92, 24, 'img/product/24/sm/2860-0039-004.jpg', 'img/product/24/lg/2860-0039-004.jpg'),
(93, 25, 'img/product/25/sm/2840-0052-001.jpg', 'img/product/25/lg/2840-0052-001.jpg'),
(94, 25, 'img/product/25/sm/2840-0052-002.jpg', 'img/product/25/lg/2840-0052-002.jpg'),
(95, 25, 'img/product/25/sm/2840-0052-003.jpg', 'img/product/25/lg/2840-0052-003.jpg'),
(96, 26, 'img/product/26/sm/2840-0051-001.jpg', 'img/product/26/lg/2840-0051-001.jpg'),
(97, 26, 'img/product/26/sm/2840-0051-002.jpg', 'img/product/26/lg/2840-0051-002.jpg'),
(98, 26, 'img/product/26/sm/2840-0051-003.jpg', 'img/product/26/lg/2840-0051-003.jpg'),
(99, 26, 'img/product/26/sm/2840-0051-004.jpg', 'img/product/26/lg/2840-0051-004.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lg_receiver_address`
--

CREATE TABLE `lg_receiver_address` (
  `aid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `lg_shoppingcart_item`
--

CREATE TABLE `lg_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT '0',
  `is_checked` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_shoppingcart_item`
--

INSERT INTO `lg_shoppingcart_item` (`iid`, `uid`, `lid`, `count`, `is_checked`) VALUES
(1, 1, 6, 1, 0),
(2, 1, 2, 1, 0),
(3, 1, 3, 7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `lg_user`
--

CREATE TABLE `lg_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lg_user`
--

INSERT INTO `lg_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, '', '123456', '', '13026122416', '', '', 0),
(2, '', '123456', '', '13333333333', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lg_detail_banner`
--
ALTER TABLE `lg_detail_banner`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `lg_detail_pic`
--
ALTER TABLE `lg_detail_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `lg_family_class`
--
ALTER TABLE `lg_family_class`
  ADD PRIMARY KEY (`fcid`);

--
-- Indexes for table `lg_hot_product`
--
ALTER TABLE `lg_hot_product`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `lg_index_carousel`
--
ALTER TABLE `lg_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `lg_index_product`
--
ALTER TABLE `lg_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `lg_order`
--
ALTER TABLE `lg_order`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `lg_order_detail`
--
ALTER TABLE `lg_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `lg_product`
--
ALTER TABLE `lg_product`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `lg_product_col`
--
ALTER TABLE `lg_product_col`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `lg_product_family`
--
ALTER TABLE `lg_product_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `lg_product_pic`
--
ALTER TABLE `lg_product_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `lg_receiver_address`
--
ALTER TABLE `lg_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `lg_shoppingcart_item`
--
ALTER TABLE `lg_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `lg_user`
--
ALTER TABLE `lg_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `lg_detail_banner`
--
ALTER TABLE `lg_detail_banner`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `lg_detail_pic`
--
ALTER TABLE `lg_detail_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;
--
-- 使用表AUTO_INCREMENT `lg_family_class`
--
ALTER TABLE `lg_family_class`
  MODIFY `fcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `lg_hot_product`
--
ALTER TABLE `lg_hot_product`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `lg_index_carousel`
--
ALTER TABLE `lg_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `lg_index_product`
--
ALTER TABLE `lg_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `lg_order`
--
ALTER TABLE `lg_order`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `lg_order_detail`
--
ALTER TABLE `lg_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `lg_product`
--
ALTER TABLE `lg_product`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- 使用表AUTO_INCREMENT `lg_product_col`
--
ALTER TABLE `lg_product_col`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- 使用表AUTO_INCREMENT `lg_product_family`
--
ALTER TABLE `lg_product_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- 使用表AUTO_INCREMENT `lg_product_pic`
--
ALTER TABLE `lg_product_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- 使用表AUTO_INCREMENT `lg_receiver_address`
--
ALTER TABLE `lg_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `lg_shoppingcart_item`
--
ALTER TABLE `lg_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `lg_user`
--
ALTER TABLE `lg_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
