-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2020 at 09:13 PM
-- Server version: 10.1.40-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `synoteca_freshcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_to_cart`
--

CREATE TABLE `add_to_cart` (
  `id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `product` longtext NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `sort`) VALUES
(1, 'Sri Lankan ', '-163756538324_27446602582_1585200733_n.jpg', 40),
(2, 'Kothmale', '-17465090425_173738050481_1585229224_n.jpg', 13),
(3, 'Ambewela', '-174612522187_16590618719_1585229825_n.jpg', 2),
(4, 'Maggi', '-150582022272_40621118634_1585229873_n.jpg', 18),
(5, 'Harishchandra', '-94464371574_96738769332_1585229985_n.jpg', 9),
(6, 'Prima', '-46863488951_144339651955_1585230130_n.jpg', 29),
(7, 'Mc Currie', '-121405759379_69797381527_1585230196_n.jpg', 21),
(8, 'Not Specified', '-61029503574_130173637332_1585230540_n.jpg', 39),
(9, 'Araliya Rice Producers', '-84673850085_106529290821_1585230875_n.jpg', 4),
(10, 'Nipuna Rice Producers', '-154332585499_36870555407_1585230931_n.jpg', 27),
(11, 'Toblerone', '-24137863199_167065277707_1585260309_n.jpg', 36),
(13, 'Ritgbury', '-147942926364_43260214542_1585260706_n.jpg', 33),
(15, 'MD', '-129879380979_61323759927_1585261127_n.jpg', 22),
(16, 'Highland', '-30927573659_160275567247_1585297883_n.jpg', 11),
(17, 'Cadbury', '-187949453169_3253687737_1585340541_n.jpg', 5),
(18, 'Kandos', '-54244702899_136958438007_1585340613_n.jpg', 12),
(19, 'Lindt', '-22621803092_168581337814_1585340705_n.jpg', 17),
(21, 'Munchee', '-148151368150_43051772756_1585340780_n.jpg', 24),
(22, 'Malliban', '-96655567303_94547573603_1585340794_n.jpg', 19),
(23, 'Marina', '-172139577503_19063563403_1585340856_n.jpg', 20),
(24, 'Fortune', '-148675782058_42527358848_1585340877_n.jpg', 8),
(25, 'Wijaya Products', '-138733261889_52469879017_1585341014_n.jpg', 37),
(26, 'Ruhunu Products', '-102674432773_88528708133_1585341053_n.jpg', 34),
(27, 'NJoy', '-143893178475_47309962431_1585344593_n.jpg', 28),
(28, 'Lifebuoy', '-125939289280_65263851626_1585348781_n.jpg', 16),
(29, 'Dettol', '-24846601488_166356539418_1585348793_n.jpg', 7),
(30, 'MK', '', 1),
(31, 'Coca Cola', '-170650175954_20552964952_1585385500_n.jpg', 6),
(32, 'Red Bull', '-48643106087_142560034819_1585386817_n.jpg', 32),
(33, 'Anchor', '-140417041666_50786099240_1585393943_n.jpg', 3),
(34, 'Raththi', '-66671204699_124531936207_1585394372_n.jpg', 31),
(36, 'Nescafe', '-51592372330_139610768576_1585395383_n.jpg', 25),
(37, 'Milo', '-67979415491_123223725415_1585396444_n.jpg', 23),
(38, 'Nestomalt', '-170043593226_21159547680_1585396778_n.jpg', 26),
(39, 'Horlicks', '-108610073778_82593067128_1585397134_n.jpg', 10),
(40, 'Sunlight', '-170748505122_20454635784_1585398710_n.jpg', 35),
(41, 'Laogi', '-97964468972_93238671934_1585477383_n.jpg', 15),
(42, 'Zesta', '-15828330965_175374809941_1585477477_n.jpg', 38),
(43, 'Pringles', '-151441823665_39761317241_1585518812_n.jpg', 30),
(44, 'CIC', '-144127598113_47075542793_1585545308_n.jpg', 0),
(45, 'Rich Life', '-140502915200_50700225706_1585817431_n.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `district` int(11) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `district`, `sort`) VALUES
(1, 'Colombo', 5, 0),
(2, 'Dehiwala', 5, 0),
(3, 'Homagama', 5, 0),
(4, 'Kaduwela', 5, 0),
(5, 'Kesbewa', 5, 0),
(6, 'Kolonnawa', 5, 0),
(7, 'Maharagama', 5, 0),
(19, 'Malabe', 5, 0),
(20, 'Moratuwa', 5, 0),
(21, 'Padukka', 5, 0),
(22, 'Ratmalana', 5, 0),
(23, 'Sri Jayawardanapura Kotte', 5, 0),
(24, 'Thimbirigasyaya', 5, 0),
(25, 'Sammantranapura', 5, 0),
(26, 'Mattakkulkiya', 5, 0),
(27, 'Modara', 5, 0),
(28, 'Madampitiya', 5, 0),
(29, 'Mahawatta', 5, 0),
(30, 'Aluthmawatha', 5, 0),
(31, 'Lunupokuna', 5, 0),
(32, 'Bloemendhal', 5, 0),
(33, 'Kotahena East', 5, 0),
(34, 'Kotahena West', 5, 0),
(35, 'Kochchikade North', 5, 0),
(36, 'Jinthupitiya', 5, 0),
(37, 'Masangasweediya', 5, 0),
(38, 'New Bazzar', 5, 0),
(39, 'GrandPass South', 5, 0),
(40, 'GrandPass North', 5, 0),
(41, 'Nawagampura', 5, 0),
(42, 'Maligawatte East', 5, 0),
(43, 'Khettarama', 5, 0),
(44, 'Aluthkade East', 5, 0),
(45, 'Aluthkade West', 5, 0),
(46, 'Kochchikade South', 5, 0),
(47, 'Pettah', 5, 0),
(48, 'Fort', 5, 0),
(49, 'Galle Face', 5, 0),
(50, 'Hunupitiya', 5, 0),
(51, 'Suduwella', 5, 0),
(52, 'Keselwatta', 5, 0),
(53, 'Panchikawatta', 5, 0),
(54, 'Maligawatta West', 5, 0),
(55, 'Maligakanda', 5, 0),
(56, 'Maradana', 5, 0),
(57, 'Ibbanwela', 5, 0),
(58, 'Wekanda', 5, 0),
(59, 'Wadulla', 5, 0),
(60, 'Sedawatta', 5, 0),
(61, 'Halmulla', 5, 0),
(62, 'Kotuvila', 5, 0),
(63, 'Veheragoda', 5, 0),
(64, 'Orugodawatta', 5, 0),
(65, 'Kittampahuwa', 5, 0),
(66, 'Maha Buthgamuwa B', 5, 0),
(67, 'Kuda Buthgamuwa', 5, 0),
(68, 'Kelanimulla', 5, 0),
(69, 'Ambathale', 5, 0),
(70, 'Mulleriyawa North', 5, 0),
(71, 'Belagama', 5, 0),
(72, 'Kotikawatta East', 5, 0),
(73, 'Mahabuthgamuwa A', 5, 0),
(74, 'Mahabuthgamuwa C', 5, 0),
(75, 'Wellampitiya', 5, 0),
(76, 'Kuruniyawatta', 5, 0),
(77, 'Dahampura', 5, 0),
(78, 'Sinhapura', 5, 0),
(79, 'Megoda Kollonnawa', 5, 0),
(80, 'Bopetta', 5, 0),
(81, 'Batalandahena', 5, 0),
(82, 'Kotikawatta West', 5, 0),
(83, 'Mulleriyawa South', 5, 0),
(84, 'Malgama', 5, 0),
(85, 'Udumulla North', 5, 0),
(86, 'Maligagodella', 5, 0),
(87, 'Rajasinghegama', 5, 0),
(88, 'Udumulla South', 5, 0),
(89, 'Himbutana East', 5, 0),
(90, 'Himbutana West', 5, 0),
(91, 'Malpura', 5, 0),
(92, 'Gothatuwa new town', 5, 0),
(93, 'Kajugahawatta', 5, 0),
(94, 'Gothatuwa', 5, 0),
(95, 'Salamulla', 5, 0),
(96, 'Wijayapura', 5, 0),
(97, 'Gajabapura', 5, 0),
(98, 'Madinnagoda', 5, 0),
(99, 'Elhena', 5, 0),
(100, 'Dodamgahahena', 5, 0),
(103, 'Welivita', 5, 0),
(104, 'Raggahawatta', 5, 0),
(105, 'Hewagama', 5, 0),
(106, 'Pahala Bomiriya', 5, 0),
(107, 'Ihala Bomiriya', 5, 0),
(108, 'Wekewatta', 5, 0),
(109, 'Nawagamuwa', 5, 0),
(110, 'Pahala Bomiriya B', 5, 0),
(111, 'Welihinda', 5, 0),
(112, 'Kothalawala', 5, 0),
(113, 'Mahadeniya', 5, 0),
(114, 'Thalahena North', 5, 0),
(115, 'Malabe North', 5, 0),
(116, 'Thunadahena', 5, 0),
(117, 'Karathota', 5, 0),
(118, 'Nawagamuwa South', 5, 0),
(119, 'Batewela', 5, 0),
(120, 'Ranala', 5, 0),
(121, 'Dedigamuwa', 5, 0),
(122, 'Embilladeniya', 5, 0),
(123, 'Welipillewa', 5, 0),
(124, 'Shanthalokagama', 5, 0),
(125, 'Pore', 5, 0),
(126, 'Malabe East', 5, 0),
(127, 'Malabe West', 5, 0),
(128, 'Thalangama North B', 5, 0),
(129, 'Thalahena south', 5, 0),
(130, 'Muththettugoda', 5, 0),
(131, 'Thalangama North A', 5, 0),
(132, 'Walpola', 5, 0),
(133, 'Kalapaluwewa', 5, 0),
(134, 'Kotuwegoda', 5, 0),
(135, 'Subhoothipura', 5, 0),
(136, 'Udumulla', 5, 0),
(137, 'Battaramulla North', 5, 0),
(138, 'Batapotha', 5, 0),
(139, 'Pothuarawa', 5, 0),
(140, 'Hokandara North', 5, 0),
(141, 'Oruwala', 5, 0),
(142, 'Athurugiriya', 5, 0),
(143, 'Thaldiyawala', 5, 0),
(144, 'Boralugoda', 5, 0),
(145, 'Hokandara East', 5, 0),
(146, 'Arangala', 5, 0),
(147, 'Everihena', 5, 0),
(148, 'Kumaragewatta', 5, 0),
(149, 'Jayawadanagama', 5, 0),
(150, 'Aruppitiya ', 5, 0),
(151, 'Asiri Uyana', 5, 0),
(152, 'Battaramulla South', 5, 0),
(153, 'Rajamalwatta', 5, 0),
(154, 'Pahalawela', 5, 0),
(155, 'Wickramasinghapura', 5, 0),
(156, 'Wellangiriya ', 5, 0),
(157, 'Hokandara South ', 5, 0),
(158, 'Athurugiriya South ', 5, 0),
(159, 'Jalthara', 5, 0),
(160, 'Henpita ', 5, 0),
(161, 'Atigala West', 5, 0),
(162, 'Atigala East', 5, 0),
(163, 'Batawala', 5, 0),
(164, 'Walpita', 5, 0),
(165, 'Nawalamulla ', 5, 0),
(166, 'Meegasmulla', 5, 0),
(167, 'Habarakada North', 5, 0),
(168, 'Mullegama North ', 5, 0),
(169, 'Mullegama South ', 5, 0),
(170, 'Habarakada South', 5, 0),
(171, 'Panagoda Town', 5, 0),
(172, 'Henawatta ', 5, 0),
(173, 'Meegoda North ', 5, 0),
(174, 'Panaluwa', 5, 0),
(175, 'Watareka North', 5, 0),
(176, 'Meegoda South ', 5, 0),
(177, 'Godagama North', 5, 0),
(178, 'Panagoda West ', 5, 0),
(179, 'Panagoda East ', 5, 0),
(180, 'Habarakada Watta ', 5, 0),
(181, 'Homagama North ', 5, 0),
(182, 'Homagama West ', 5, 0),
(183, 'Homagama West', 5, 0),
(184, 'Homagama South', 5, 0),
(185, 'Galavilawatta North', 5, 0),
(186, 'Homagama Town', 5, 0),
(187, 'Homagama East ', 5, 0),
(188, 'Pitipana Town', 5, 0),
(189, 'Godagama South', 5, 0),
(190, 'Kurunduwatta', 5, 0),
(191, 'Gehenuwala ', 5, 0),
(192, 'Watareka South', 5, 0),
(193, 'Ovitigama ', 5, 0),
(194, 'Kandanawatta', 5, 0),
(195, 'Kiriberiyakele', 5, 0),
(196, 'Mawathgama ', 5, 0),
(197, 'Katuwana ', 5, 0),
(198, 'Galavilawatta South ', 5, 0),
(199, 'Niyandagala', 5, 0),
(200, 'Hiripitiya', 5, 0),
(201, 'Hiripitiya', 5, 0),
(202, 'Mambulgoda', 5, 0),
(203, 'Kithulhena', 5, 0),
(204, 'Siddamulla North ', 5, 0),
(205, 'Siddamulla South ', 5, 0),
(206, 'Mattegoda West ', 5, 0),
(207, 'Mattegoda Central  A', 5, 0),
(208, 'Mattegoda East ', 5, 0),
(209, 'Brahmanagama', 5, 0),
(210, 'Deepangoda ', 5, 0),
(211, 'Magammana West', 5, 0),
(212, 'Magammana East', 5, 0),
(213, 'Uduwana ', 5, 0),
(214, 'Prasannapura ', 5, 0),
(215, 'Pitipana North ', 5, 0),
(216, 'Suwapubudugama ', 5, 0),
(217, 'Pitipana South ', 5, 0),
(218, 'Dolahena', 5, 0),
(219, 'Diyagama East ', 5, 0),
(220, 'Diyagama West', 5, 0),
(221, 'Kirigampamunuwa', 5, 0),
(222, 'Mattegoda Central B', 5, 0),
(223, 'Siyambalagoda North', 5, 0),
(224, 'Kudamaduwa', 5, 0),
(225, 'Sangharama ', 5, 0),
(226, 'Siyambalagoda South ', 5, 0),
(227, 'Rilawala ', 5, 0),
(228, 'Kahathuduwa West', 5, 0),
(229, 'Kiriwattuduwa South', 5, 0),
(230, 'Kiriwattuduwa North', 5, 0),
(231, 'Moonamale - Yakahaluwa ', 5, 0),
(232, 'Kithulavila', 5, 0),
(233, 'Kahathuduwa North', 5, 0),
(234, 'Kahathuduwa East', 5, 0),
(235, 'Kahathuduwa South', 5, 0),
(236, 'Undurugoda ', 5, 0),
(237, 'Wethara', 5, 0),
(238, 'Ambalangoda ', 5, 0),
(239, 'Heraliyawala ', 5, 0),
(240, 'Palagama ', 5, 0),
(241, 'Weniwelkola ', 5, 0),
(263, 'Pinnawala North', 5, 0),
(264, 'Pinnawala South', 5, 0),
(265, 'Waga North', 5, 0),
(266, 'Waga East', 5, 0),
(267, 'Thummodara ', 5, 0),
(268, 'Waga South', 5, 0),
(269, 'Siyabalawa', 5, 0),
(270, 'Pahala Bope', 5, 0),
(271, 'Halpe', 5, 0),
(272, 'Waga West', 5, 0),
(273, 'Uggala', 5, 0),
(274, 'Wewelpanawa', 5, 0),
(275, 'Pitumpe North ', 5, 0),
(276, 'Pitumpe South', 5, 0),
(277, 'Galagedara East ', 5, 0),
(278, 'Galagedara North ', 5, 0),
(279, 'Galagedara South', 5, 0),
(280, 'Padukka ', 5, 0),
(281, 'Arukwatta North ', 5, 0),
(282, 'Arukwatta South', 5, 0),
(283, 'Ganegoda ', 5, 0),
(284, 'Angampitiya', 5, 0),
(285, 'Weragala', 5, 0),
(286, 'Angamuwa ', 5, 0),
(288, 'Poregedara ', 5, 0),
(289, 'Pahala Padukka', 5, 0),
(290, 'Liyanwala', 5, 0),
(291, 'Kurugala ', 5, 0),
(292, 'Madulawa South', 5, 0),
(293, 'Madulawa North', 5, 0),
(294, 'Liyanwala', 5, 0),
(295, 'Kurugala ', 5, 0),
(296, 'Madulawa South', 5, 0),
(297, 'Madulawa North ', 5, 0),
(298, 'Horakandawala ', 5, 0),
(299, 'Dampe', 5, 0),
(300, 'Beruketiya', 5, 0),
(301, 'Horagala West ', 5, 0),
(302, 'Horagala East', 5, 0),
(303, 'Beliattavila ', 5, 0),
(304, 'Miriyagalla', 5, 0),
(305, 'Malagala ', 5, 0),
(306, 'Kahawala', 5, 0),
(307, 'Yatawathura', 5, 0),
(308, 'Mahingala', 5, 0),
(309, 'Ihala Bope', 5, 0),
(310, 'Gurulana ', 5, 0),
(311, 'Udagama ', 5, 0),
(312, 'Dambora', 5, 0),
(313, 'Mirihana North ', 5, 0),
(314, 'Mirihana South', 5, 0),
(315, 'Madiwela ', 5, 0),
(316, 'Thalawathugoda West ', 5, 0),
(317, 'Thalawathugoda West ', 5, 0),
(318, 'Thalawathugoda East ', 5, 0),
(319, 'Kalalgoda ', 5, 0),
(320, 'Kottawa East', 5, 0),
(321, 'Rukmale West', 5, 0),
(322, 'Rukmale East A', 5, 0),
(323, 'Rukmale East B ', 5, 0),
(324, 'Liyanagoda ', 5, 0),
(325, 'Kottawa North ', 5, 0),
(326, 'Depanama ', 5, 0),
(327, 'Polwatta ', 5, 0),
(328, 'Pamunuwa', 5, 0),
(329, 'Thalapathpitiya ', 5, 0),
(330, 'Pragathipura ', 5, 0),
(331, 'Udahamulla East ', 5, 0),
(332, 'Udahamulla West', 5, 0),
(333, 'Pathiragoda ', 5, 0),
(334, 'Maharagama East ', 5, 0),
(335, 'Maharagama West ', 5, 0),
(336, 'Dambahena ', 5, 0),
(337, 'Pannipitiya North ', 5, 0),
(338, 'Kottawa West', 5, 0),
(339, 'Kottawa South ', 5, 0),
(340, 'Malapalla West', 5, 0),
(341, 'Malapalla West ', 5, 0),
(342, 'Malapalla East', 5, 0),
(343, 'Makumbura North ', 5, 0),
(344, 'Makumbura South', 5, 0),
(345, 'Kottawa Town', 5, 0),
(346, 'Pannipitiya South', 5, 0),
(347, 'Maharagama Town ', 5, 0),
(348, 'Godigamuwa South ', 5, 0),
(349, 'Godigamuwa South B ', 5, 0),
(350, 'Godigamuwa North', 5, 0),
(351, 'Wattegedara ', 5, 0),
(352, 'Navinna', 5, 0),
(353, 'Wijerama ', 5, 0),
(354, 'Gangodavila South B', 5, 0),
(355, 'Jambugasmulla ', 5, 0),
(356, 'Obsekarapura ', 5, 0),
(357, 'Welikada West', 5, 0),
(358, 'Welikada East ', 5, 0),
(359, 'Rajagiriya ', 5, 0),
(360, 'Welikada North ', 5, 0),
(361, 'Nawala West', 5, 0),
(362, 'Koswatta ', 5, 0),
(363, 'Koswatta ', 5, 0),
(364, 'Ethulkotte West ', 5, 0),
(365, 'Ethulkotte', 5, 0),
(366, 'Pitakotte East ', 5, 0),
(367, 'Pitakotte', 5, 0),
(368, 'Pitakotte West', 5, 0),
(369, 'Nawala East', 5, 0),
(370, 'Nugegoda West', 5, 0),
(371, 'Pagoda', 5, 0),
(372, 'Nugegoda', 5, 0),
(373, 'Pagoda East', 5, 0),
(374, 'Gangodavila North ', 5, 0),
(375, 'Gangodavila South ', 5, 0),
(376, 'Gangodavila East', 5, 0),
(377, 'Kollupitiya', 5, 0),
(378, 'Bambalapitiya ', 5, 0),
(379, 'Kurunduwatta', 5, 0),
(380, 'Kuppiyawatta West ', 5, 0),
(381, 'Kuppiyawatta East', 5, 0),
(382, 'Dematagoda ', 5, 0),
(383, 'Wanathamulla', 5, 0),
(384, 'Borella North ', 5, 0),
(385, 'Borella South', 5, 0),
(386, 'Gothamipura', 5, 0),
(387, 'Narahenpita', 5, 0),
(388, 'Thimbirigasyaya ', 5, 0),
(389, 'Milagiriya ', 5, 0),
(390, 'Havelock Town', 5, 0),
(391, 'Kirula', 5, 0),
(392, 'Kirulapone', 5, 0),
(393, 'Wellawatta North ', 5, 0),
(394, 'Wellawatta South ', 5, 0),
(395, 'Pamankada West ', 5, 0),
(396, 'Pamankada East', 5, 0),
(397, 'Sri Saranankara', 5, 0),
(398, 'Vilawala', 5, 0),
(399, 'Dutugemunu ', 5, 0),
(400, 'Kohuwala', 5, 0),
(401, 'Kalubovila ', 5, 0),
(402, 'Hathbodhiya', 5, 0),
(403, 'Galwala ', 5, 0),
(404, 'Dehiwala West', 5, 0),
(405, 'Dehiwala East ', 5, 0),
(406, 'Udyanaya', 5, 0),
(407, 'Nedimala ', 5, 0),
(408, 'Malwatta', 5, 0),
(409, 'Jayathilaka ', 5, 0),
(410, 'Karagampitiya', 5, 0),
(411, 'Kawdana East ', 5, 0),
(412, 'Mount Lavinia', 5, 0),
(413, 'Kawdana West ', 5, 0),
(414, 'Watarappala', 5, 0),
(415, 'Wathumulla ', 5, 0),
(416, 'Katukurunduwatta', 5, 0),
(417, 'Attidiya North ', 5, 0),
(418, 'Attidiya South', 5, 0),
(419, 'Piriwena', 5, 0),
(420, 'Piriwena', 5, 0),
(421, 'Wedikanda', 5, 0),
(422, 'Vihara', 5, 0),
(423, 'Rathmalana West', 5, 0),
(424, 'Rathmalana East ', 5, 0),
(425, 'Kandawala ', 5, 0),
(426, 'Angulana North ', 5, 0),
(427, 'Kaldemulla ', 5, 0),
(428, 'Soysapura North', 5, 0),
(429, 'Soysapura South', 5, 0),
(430, 'Dahampura ', 5, 0),
(431, 'Thelawala North', 5, 0),
(432, 'Borupana', 5, 0),
(433, 'Thelawala South', 5, 0),
(434, 'Lakshapathiya North ', 5, 0),
(435, 'Lakshapathiya Central ', 5, 0),
(436, 'Angulana South ', 5, 0),
(437, 'Uyana South ', 5, 0),
(438, 'Uyana North', 5, 0),
(439, 'Rawathawatta South ', 5, 0),
(440, 'Rawathawatta East ', 5, 0),
(441, 'Lakshapathiya South ', 5, 0),
(442, 'Kuduwamulla', 5, 0),
(443, 'Katubedda', 5, 0),
(444, 'Molpe ', 5, 0),
(445, 'Moratumulla North', 5, 0),
(446, 'Kadalana ', 5, 0),
(447, 'Rawathawatta West', 5, 0),
(448, 'Idama ', 5, 0),
(449, 'Uswatta ', 5, 0),
(450, 'Moratuwella South', 5, 0),
(451, 'Indibedda West', 5, 0),
(452, 'Moratumulla East', 5, 0),
(453, 'Moratumulla West ', 5, 0),
(454, 'Villorawatta East ', 5, 0),
(455, 'Villorawatta West', 5, 0),
(456, 'Indibedda East ', 5, 0),
(457, 'Moratuwella North', 5, 0),
(458, 'Moratuwella West', 5, 0),
(459, 'Koralawella North', 5, 0),
(460, 'Koralawella East ', 5, 0),
(461, 'Koralawella West', 5, 0),
(462, 'Koralawella South', 5, 0),
(463, 'Katukurunda North ', 5, 0),
(464, 'Katukurunda South', 5, 0),
(465, 'Egoda Uyana North', 5, 0),
(466, 'Egoda Uyana Central', 5, 0),
(467, 'Egoda Uyana South', 5, 0),
(468, 'Pepiliyana West ', 5, 0),
(469, 'Pepiliyana East ', 5, 0),
(470, 'Divulpitiya East', 5, 0),
(471, 'Divulpitiya West', 5, 0),
(472, 'Bellanvila', 5, 0),
(473, 'Boralesgamuwa West A', 5, 0),
(474, 'Boralesgamuwa West C', 5, 0),
(475, 'Rattanapitiya', 5, 0),
(476, 'Egodawatta', 5, 0),
(477, 'Boralesgamuwa East A', 5, 0),
(478, 'Boralesgamuwa West B', 5, 0),
(479, 'Werahera North', 5, 0),
(480, 'Boralesgamuwa East B ', 5, 0),
(481, 'Neelammahara', 5, 0),
(487, 'Katuwawala North', 5, 0),
(488, 'Vishwakalawa ', 5, 0),
(489, 'Werahera South', 5, 0),
(490, 'Werahera South', 5, 0),
(491, 'Katuwawala South', 5, 0),
(492, 'Niwanthidiya ', 5, 0),
(493, 'Erewwala West ', 5, 0),
(494, 'Erewwala North ', 5, 0),
(495, 'Erewwala East', 5, 0),
(496, 'Rathmaldeniya ', 5, 0),
(497, 'Mahalwarawa ', 5, 0),
(498, 'Bangalawatta', 5, 0),
(499, 'Pelenwatta East ', 5, 0),
(500, 'Pelenwatta North', 5, 0),
(501, 'Pelenwatta West ', 5, 0),
(502, 'Paligedara', 5, 0),
(503, 'Kaliyammahara', 5, 0),
(504, 'Bokundara', 5, 0),
(505, 'Thumbovila South', 5, 0),
(506, 'Thumbovila North', 5, 0),
(507, 'Wewala West', 5, 0),
(508, 'Wewala West', 5, 0),
(509, 'Wewala East ', 5, 0),
(510, 'Thumbovila West ', 5, 0),
(511, 'Mampe North ', 5, 0),
(513, 'Makuludoowa', 5, 0),
(514, 'Gorakapitiya ', 5, 0),
(515, 'Nampamunuwa', 5, 0),
(516, 'Mavittara North', 5, 0),
(517, 'Mampe East', 5, 0),
(518, 'Bodhirajapura ', 5, 0),
(519, 'Mampe West', 5, 0),
(520, 'Mampe South ', 5, 0),
(521, 'Kolamunna', 5, 0),
(522, 'Suwarapola East', 5, 0),
(523, 'Suwarapola West ', 5, 0),
(524, 'Hedigama ', 5, 0),
(525, 'Batakettara North', 5, 0),
(526, 'Kesbewa North ', 5, 0),
(527, 'Kesbewa East ', 5, 0),
(528, 'Mavittara South', 5, 0),
(529, 'Honnanthara North', 5, 0),
(530, 'Honnanthara South', 5, 0),
(531, 'Makandana East ', 5, 0),
(532, 'Kesbewa South ', 5, 0),
(533, 'Batakettara South ', 5, 0),
(534, 'Madapatha ', 5, 0),
(535, 'Delthara West', 5, 0),
(536, 'Delthara East', 5, 0),
(537, 'Dampe', 5, 0),
(538, 'Makandana West', 5, 0),
(539, 'Nivungama', 5, 0),
(540, 'Halpita', 5, 0),
(541, 'Horathuduwa ', 5, 0),
(542, 'Morenda', 5, 0),
(543, 'Batuwandara North ', 5, 0),
(545, 'Batuwandara South', 5, 0),
(546, 'Jamburaliya ', 5, 0),
(548, 'Polhena', 5, 0),
(549, 'Regidel Watta', 5, 0),
(551, 'Kahapola', 5, 0),
(1592, 'Ahangama', 14, 0),
(2445, 'Ahungalla', 14, 0),
(2446, 'Ambalangoda', 14, 0),
(2447, 'Baddegama', 14, 0),
(2448, 'Balapitiya', 14, 0),
(2449, 'Batapola', 14, 0),
(2450, 'Bentota', 14, 0),
(2451, 'Boossa', 14, 0),
(2452, 'Elpitiya', 14, 0),
(2453, 'Habaraduwa', 14, 0),
(2454, 'Hikkaduwa', 14, 0),
(2455, 'Imaduwa', 14, 0),
(2456, 'Karandeniya', 14, 0),
(2457, 'Koggala', 14, 0),
(2458, 'Kosgoda ', 14, 0),
(2459, 'Rathgama', 14, 0),
(2460, 'Thawalama', 14, 0),
(2461, 'Udugama', 14, 0),
(2462, 'Uragasmanhandiya', 14, 0),
(2463, 'Wanduramba', 14, 0),
(2464, 'Yakkalamulla', 14, 0),
(2465, 'Unawatuna', 14, 0),
(2466, 'Talpe', 14, 0),
(2467, 'Angulugaha', 14, 0),
(2468, 'Pilana', 14, 0),
(2469, 'Walahanduwa', 14, 0),
(2470, 'Narawala', 14, 0),
(2471, 'Poddala', 14, 0),
(2472, 'Hapugala ', 14, 0),
(2473, 'Wakwella', 14, 0),
(2474, 'Thelikada ', 14, 0),
(2475, 'Gonapinuwala', 14, 0),
(2476, 'Aluthwala ', 14, 0),
(2477, 'Ampegama', 14, 0),
(2478, 'Thelwaththa', 14, 0),
(2479, 'Kahawa', 14, 0),
(2480, 'Induruwa', 14, 0),
(2481, 'Galle', 14, 0),
(2482, 'Karapitiya', 14, 0),
(2483, 'Labuduwa', 14, 0),
(2484, 'Thalagaha', 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `comment` longtext NOT NULL,
  `is_active` int(11) NOT NULL,
  `queue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `title`, `city`, `image_name`, `comment`, `is_active`, `queue`) VALUES
(1, 'Andria Fernando', 'Quality Products', 'Ambalandosa', '-92304183876_98898957030_1558092233_n.jpg', '<p><span class=\"st\">Find the <em>Man</em> or <em>Men</em> you are looking for in our photo collection. All our <em>pictures</em> are of high quality and can be used for your blog or article - for free</span></p>', 1, 0),
(2, 'Chamoda narayana', 'Friendly Service', 'Galle', '-43006262755_148196878151_1558092266_n.jpg', '<p><span class=\"st\">Find the <em>Man</em> or <em>Men</em> you are looking for in our photo collection. All our <em>pictures</em> are of high quality and can be used for your blog or article - for free</span></p>', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `city` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `resetcode` int(11) NOT NULL,
  `authToken` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `sort`) VALUES
(5, 'Colombo', 100),
(14, 'Galle', 100);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `status`, `description`) VALUES
(1, 'danger', 'You have entered invalid password!...'),
(2, 'danger', 'Your current password is missing or incorrect!...'),
(3, 'danger', 'Password was not changed successfully!...'),
(4, 'success', 'Password has been successfully changed!...'),
(5, 'success', 'You have successfully login!...'),
(6, 'danger', 'Please enter your username and password!....'),
(7, 'danger', 'Invalid username or password!...'),
(9, 'success', 'Your changes saved successfully!...'),
(10, 'success', 'Your data was saved successfully!...'),
(11, 'danger', 'please enter your email address'),
(12, 'success', 'password reset email was sent successfully!...'),
(13, 'danger', 'Invalid email address!...'),
(14, 'danger', 'There was an error '),
(15, 'success', 'password was reset successfully '),
(16, 'danger', 'please check your reset code'),
(17, 'danger', 'new password and confirm password does not match'),
(18, 'danger', 'Old password is incorrect..!');

-- --------------------------------------------------------

--
-- Table structure for table `offer`
--

CREATE TABLE `offer` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `queue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer`
--

INSERT INTO `offer` (`id`, `title`, `image_name`, `product_id`, `queue`) VALUES
(1, '-', '-179832815023_11370325883_1585246643_n.jpg', 26, 0),
(2, '-', '-45171386078_146031754828_1585246688_n.jpg', 83, 0),
(3, '-', '-49073955710_142129185196_1585301121_n.jpg', 171, 0),
(4, 'Custom', '-15679080907_175524059999_1586794087_n.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ordered_at` datetime NOT NULL,
  `member` int(11) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(255) NOT NULL,
  `contact_no_1` varchar(255) NOT NULL,
  `contact_no_2` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `order_note` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status_code` varchar(255) NOT NULL,
  `status_code` longtext NOT NULL,
  `delivery_status` varchar(200) NOT NULL,
  `delivered_at` datetime NOT NULL,
  `completed_at` datetime NOT NULL,
  `canceled_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` decimal(11,2) NOT NULL,
  `amount` decimal(11,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `product_list` longtext NOT NULL,
  `price` double NOT NULL,
  `sort` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `description`, `image_name`) VALUES
(1, 'About Us', '<p>We are the largest online retailer in supplying and delivering fresh goods, foods (Vegetables. Fruits and other Foods including fresh wedding and birthday cakes too) and Flowers to your home.</p>\r\n<p>Corporate offices Operating based on Colombo&nbsp;and Kandy providing an all-island service, 24 x 7.</p>\r\n<div>We are here to help you by delivering your needs to your door on this current situation of Sri Lanka, under permission obtained from the government,</div>\r\n<div>&nbsp;</div>\r\n<div>Fresh Cart:&nbsp; the online foods and goods retailer is currently operating in Western Province, Central Province, and Southern Province, and are planning to further extend the service areas.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div class=\"gs\">\r\n<div class=\"\">\r\n<div id=\":qu\" class=\"ii gt\">\r\n<div id=\":ok\" class=\"a3s aXjCH \">\r\n<div dir=\"ltr\">\r\n<div>\r\n<div>Best Regards from</div>\r\n<div>Team</div>\r\n<div>www.freshcart.lk</div>\r\n</div>\r\n</div>\r\n<div class=\"yj6qo\">&nbsp;</div>\r\n<div class=\"adL\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class=\"hi\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>', '-356902307_190846238599_1585614968_n.jpg'),
(2, 'Terms and Conditions', '<div><span style=\"text-decoration: underline;\"><strong>Terms and Conditions</strong></span></div>\r\n<div>FreshCart.lk is a commercial website, thus we are highly concerned&nbsp;about the responsiveness of the website and the mobile app so as about customer care. We are still waiting for the registration, so you should be aware of the business description of the FreshCart.lk before purchasing from us to avoid any legal issues that will arise later from your side regarding our registration as a business and by purchasing from us you yourself agree that you have carefully read and understood and agreed to all the terms and conditions mentioned herewith with no obligations.</div>\r\n<div>&nbsp;</div>\r\n<div>All the purchases will be confirmed only after the payments&nbsp;are made fully, anything left unpaid&nbsp;will not be confirmed and will not be delivered under any circumstances. Payments&nbsp;are approved through credit or debit cards through the payment gateway of the Kandy Cars Online (PVT) Ltd which is the partnership business of the FreshCart.lk</div>\r\n<div>&nbsp;</div>\r\n<div>Goods purchased will be delivered on our earliest convenience which usually takes 2 to&nbsp;4 days in Colombo and Suburbs and 2-7 days away from the Colombo, and Current situation of the country may further lengthen the duration of delivery time depending on the government restrictions, but still, we are doing our best to serve you on the earliest convenience minimizing the delay or disappointments.</div>\r\n<div>&nbsp;</div>\r\n<div>In case of an ordered item is not available&nbsp;or not in our possession due to the current situation of Sri Lanka, one of our agents may contact you to discuss the solutions that we can come to an agreement with ( either to provide you an alternate product of a different brand name or to refund the cost of the particular product with the other goods on delivery) or in case if we wont be able to reach you via phone, the solution will be to refund you the cost of that particular product/item, as you may not accept the alternate provided by us, so we kindly request you to answer the phone if our customer care agents will call you in such case.</div>\r\n<div>&nbsp;</div>\r\n<div>We are not liable for the issues with a particular canned or packed product, unless if the expiration date is not passed, since it is rather the fault of that particular product and not ours, but we will be responsible for the unpacked products which are being processed from our side including vegetables, fruits, and grains, in that case also if you have ordered a particular branded product and still theres something wrong with it, we will again not be responsible for it rather it is that particular brand, which has produced that particular item; has done the fault.</div>\r\n<div>&nbsp;</div>\r\n<div>We will be responsible for the amounts, expiration dates, delivery time, and delivery quality, as we are a delivery based website and not a production company.</div>\r\n<div>&nbsp;</div>\r\n<div>In case if any restrictions will be imposed by the government regarding the delivery of the goods, this service will have to be stopped/suspended and in such case payments already made will be refunded and the orders which had already started processing to be delivered by that time; will be delivered.&nbsp;&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>No orders can be canceled once the payments are done and nothing will be refunded in such case.</div>\r\n<div>Also be noted that our charges include the cost of the product (market value), taxes, bank processing fees, and delivery fees too. You are requested to keep the invoice (email) with you and it will be valid legally and we will be responsible for the invoices sent via email to our clients. A bank processing fee will be 2.99% of the total invoice value, taxes will be 5% of the total invoice and delivery fee will be calculated by the website automatically depending on the goods that you have purchased, and these charges will be displayed to you clearly, as the price summary before making any payments.</div>\r\n<div>&nbsp;</div>\r\n<div>The payment gateway is integrated with a reputed bank in Sri Lanka (Sampath Bank) and the service is provided by the PayHere, a product of the Basha Lanka (PVT) Ltd. This your payments are secured with the above-mentioned companies and the Sampath Bank of Sri Lanka.</div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"text-decoration: underline;\"><strong>Payment Policies</strong></span></div>\r\n<div>Online payment gateway system integrated by reputed bank in Sri Lanka named Sampath Bank and assisted By PayHere brand of Basha Lanka (PVT) Ltd is being used to accept online payments from credit and debit cards including VISA,&nbsp; MASTERCARD, AMERICAN EXPRESS, and DISCOVER.</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div>If you have a Sampath bank online payment facility so you can pay with Sampath bank too, so as the HNB bank. So as the other mobile wallets like Genie, EzCash, mCash, and Genie.</div>\r\n<div>Orders will be confirmed&nbsp;only after we receive&nbsp;the payments on either one of the above ways, and no orders can be canceled once the payment is received.</div>\r\n<div>&nbsp;</div>\r\n<div>In case if the delivery service will have to be suspended upon government-imposed rules in the future, payments made will be refunded, and the orders that already had started processing will be delivered.</div>\r\n<div>&nbsp;</div>\r\n<div>The PayHere and Sampath bank itself charges 3% of your invoice as the bank processing fee, so that amount is not an amount added by us, instead, it is their service fee for providing the online payment gateway system.</div>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>You are welcome to make purchases and contact our customer care hotline anytime and we will be ready to serve you, in case if the hotline will be busy, kindly drop a text via WhatsApp to&nbsp;+94704511450 so it will be responded soon.</div>\r\n<div>&nbsp;</div>\r\n<div>Enjoy the service, Together we rise, protect yourself, protect motherland and the whole world.</div>', '-57121756620_134081384286_1585628441_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `sub_category` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `discount` int(11) NOT NULL,
  `unite` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `short_description` longtext NOT NULL,
  `description` longtext NOT NULL,
  `in_stock` int(1) NOT NULL,
  `min_qty` decimal(11,2) NOT NULL,
  `max_qty` int(11) NOT NULL,
  `queue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `sub_category`, `brand`, `name`, `discount`, `unite`, `price`, `image_name`, `short_description`, `description`, `in_stock`, `min_qty`, `max_qty`, `queue`) VALUES
(1, 1, 5, 1, 'Budget Pack', 0, 'Packs', 0, '-66240123945_124963016961_1585208344_n.jpg', 'Budget Package', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à·ƒà·’à¶ºà¶½à·”à¶¸ à¶¸à·’à¶½ à¶œà¶«à¶±à·Š à¶»à¶¢à¶ºà·š à¶´à·à¶½à¶± à¶¸à·’à¶½à¶§ à¶ºà¶§à¶­à·Šà·€ à·ƒà¶¯à·„à¶±à·Š à¶šà¶» à¶‡à¶­ (à¶‡à¶­à·à¶¸à·Š à·€à·’à¶§ à¶»à·”.10-20 à¶š à·€à·™à¶±à·ƒà¶šà·Š à¶´à·à·€à¶­à·’à¶š à·„à·à¶šâ€‹)</p>\r\n<p>Speacial note - Charges are mentioned in accordance with the governemnt regulations (unless if there is a difference of 10 - 20 LKR may be)</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Brand</p>\r\n<p>(à·€à·™à·…à¶³ à¶±à·à¶¸à¶º)</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Rice Samba(à·ƒà¶¸à·Šà¶¶à· à·ƒà·„à¶½à·Š)</td>\r\n<td style=\"text-align: left;\">10 kg</td>\r\n<td style=\"text-align: left;\">100 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Sugar (à·ƒà·”à¶¯à·” à·ƒà·“à¶±à·’)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">110 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Pasta (à¶´à·à·ƒà·Šà¶§à·)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">600 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Noodles (à¶±à·–à¶©à·Šà¶½à·Šà·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">500 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Dhal (à¶´à¶»à·’à¶´à·Šà¶´à·”)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">180 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Chicken (à¶šà·”à¶šà·”à·…à·” à¶¸à·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">750 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Eggs (à¶¶à·’à¶­à·Šà¶­à¶»â€‹)</td>\r\n<td style=\"text-align: left;\">20</td>\r\n<td style=\"text-align: left;\">20 per 1 egg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Leaks (à¶½à·“à¶šà·Šà·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">290 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beans (<span lang=\"si\">à¶¶à·à¶‚à¶ à·’)</span></td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">260 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Carrot (à¶šà·à¶»à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">320 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beet (à¶¶à·“à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">200 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Banana (à¶‡à¶¹à·”à¶½à·Š à¶šà·™à·ƒà·™à¶½à·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">250 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Coconut Powder (à¶´à·’à¶§à·’ à¶šà¶½ à¶´à·œà¶½à·Š à¶šà·’à¶»à·’)</td>\r\n<td style=\"text-align: left;\">400 g</td>\r\n<td style=\"text-align: left;\">500 per 400g Packet</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">0</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>&nbsp;</p>\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp; the order, and will be shown to you as a price summary before making any payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can not just add it as an hidden charge as all of the other&nbsp;companies do and has been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·” à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’ à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 1, 1.00, 1, 0),
(2, 1, 5, 8, 'Standard Pack', 0, 'Packs', 0, '-149906296180_41296844726_1585210627_n.jpg', 'Standard Pack', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à·ƒà·’à¶ºà¶½à·”à¶¸ à¶¸à·’à¶½ à¶œà¶«à¶±à·Š à¶»à¶¢à¶ºà·š à¶´à·à¶½à¶± à¶¸à·’à¶½à¶§ à¶ºà¶§à¶­à·Šà·€ à·ƒà¶¯à·„à¶±à·Š à¶šà¶» à¶‡à¶­ (à¶‡à¶­à·à¶¸à·Š à·€à·’à¶§ à¶»à·”.10-20 à¶š à·€à·™à¶±à·ƒà¶šà·Š à¶´à·à·€à¶­à·’à¶š à·„à·à¶šâ€‹)</p>\r\n<p>Speacial note - Charges are mentioned in accordance with the governemnt regulations (unless if there is a difference of 10 - 20 LKR may be)</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Brand</p>\r\n<p>(à·€à·™à·…à¶³ à¶±à·à¶¸à¶º)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Rice Samba(à·ƒà¶¸à·Šà¶¶à· à·ƒà·„à¶½à·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">10 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">100 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Pasta (à¶´à·à·ƒà·Šà¶§à·)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">600 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Noodles (à¶±à·–à¶©à·Šà¶½à·Šà·ƒà·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">2 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">500 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Dhal (à¶´à¶»à·’à¶´à·Šà¶´à·”)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">3 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">180 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Chicken (à¶šà·”à¶šà·”à·…à·” à¶¸à·ƒà·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">4 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">750 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Salmon (à·ƒà·à¶¸à¶±à·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">5</td>\r\n<td style=\"border-color: black; text-align: left;\">100 per</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Eggs (à¶¶à·’à¶­à·Šà¶­à¶»â€‹)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">20</td>\r\n<td style=\"border-color: black; text-align: left;\">15 per 1 egg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Saussages (à·ƒà·œà·ƒà·šà¶¢à·ƒà·Š) - 1 kg</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">1250 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Leaks (à¶½à·“à¶šà·Šà·ƒà·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1.5 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">290 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Beans (<span lang=\"si\">à¶¶à·à¶‚à¶ à·’)</span></p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1.5 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">260 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Carrot (à¶šà·à¶»à¶§à·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1.5 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">320&nbsp;per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Beet (à¶¶à·“à¶§à·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1.5 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">200 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Apples (à¶‡à¶´à¶½à·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">10</td>\r\n<td style=\"border-color: black; text-align: left;\">100 per 1 apple</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Banana (à¶‡à¶¹à·”à¶½à·Š à¶šà·™à·ƒà·™à¶½à·Š)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1.5 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">200 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Grapes (à¶¸à·’à¶¯à·’)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">1300 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\">\r\n<p>Coconut Powder (à¶´à·’à¶§à·’ à¶šà¶½ à¶´à·œà¶½à·Š à¶šà·’à¶»à·’)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">1 kg</td>\r\n<td style=\"border-color: black; text-align: left;\">1000 per kg</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\" colspan=\"3\">\r\n<p>Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n<td style=\"border-color: black; text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-color: black; text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 1, 1.00, 1, 0),
(9, 3, 12, 1, 'Water Melon', 0, 'kg', 150, '-158838626706_32364514200_1585217868_n.jpg', 'Buy water melon online in Sri Lanka, order online', '<p>Water Melon</p>', 1, 0.50, 5, 0),
(10, 3, 12, 1, 'Sugar Banana', 0, 'kg', 250, '-158083286368_33119854538_1585217974_n.jpg', 'Buy sugar banana online in Sri Lanka', '<p>Sugar Banana</p>', 1, 0.50, 1, 0),
(11, 3, 12, 1, 'Green Grapes', 0, 'kg', 1250, '-105029726855_86173414051_1585218083_n.jpg', 'Buy green grapes online in Sri Lanka, place the order online, visit website for more details', '<p>Green Grapes</p>', 1, 0.50, 5, 0),
(12, 3, 12, 1, 'Banana Kolikuttu', 0, '1', 350, '-39828350977_151374789929_1585218212_n.jpg', 'Buy Kolikuttu banana online in Sri Lanka, visit website to place the order', '<p>Banana Kolikuttu</p>', 1, 1.00, 5, 0),
(13, 3, 12, 1, 'Grapes Black', 0, 'kg', 1300, '-80510054826_110693086080_1585218351_n.jpg', 'Buy black grapes online in Sri Lanka, order online through freshcart.lk', '<p>Black Grapes</p>', 1, 0.50, 5, 0),
(14, 3, 12, 1, 'Avacado', 0, 'kg', 750, '-56550887751_134652253155_1585218564_n.jpg', 'Buy Avacado online in Sri Lanka through freshcart.lk', '<p>Avacado</p>', 1, 0.50, 5, 0),
(16, 3, 12, 1, 'Anoda', 0, '1', 750, '-169818431982_21384708924_1585219168_n.jpg', 'Buy anoda in Sri Lanka online, visit freshcart.lk', '<p>Anoda</p>', 0, 1.00, 5, 0),
(17, 3, 12, 1, 'Dragon Fruit', 0, 'kg', 1900, '-61995564473_129207576433_1585219331_n.jpg', 'Buy dragon fruit online sri lanka from freshcart.lk , the online shopping mall', '<p>Dragon Fruit</p>', 1, 0.50, 5, 0),
(18, 3, 12, 1, 'Orange', 0, 'kg', 650, '-150527916404_40675224502_1585219452_n.jpg', 'Buy orange online from freshcart.lk the online shopping mall in Sri Lanka', '<p>Orange</p>', 0, 0.50, 5, 0),
(19, 3, 12, 1, 'Red Apple', 0, 'kg', 550, '-166646275535_24556865371_1585219867_n.jpg', 'Buy red apple online from online store in Sri Lanka, freshcart.lk', '<p>Red Apple</p>', 1, 0.50, 5, 0),
(20, 3, 12, 1, 'Green Apple', 0, 'kg', 700, '-44933757926_146269382980_1585219956_n.jpg', 'Buy green apple in Sri Lanka from online shopping mall freshcart.lk', '<p>Green Apple</p>', 1, 0.50, 5, 0),
(21, 3, 12, 1, 'Papaya', 0, 'kg', 250, '-167885243155_23317897751_1585220380_n.jpg', 'Buy fruits online from Sri Lankas biggest shopping mall freshcart.lk', '<p>Papaya</p>', 0, 0.50, 5, 0),
(22, 3, 12, 1, 'Wood AppleX', 0, 'KG', 0, '-143025061280_48178079626_1585220691_n.jpg', 'Buy fruits wood apple  from online shopping mallX', '<p>Buy fruits wood apple&nbsp; from online shopping mallX</p>', 0, 1.00, 1, 0),
(23, 3, 12, 1, 'Pineapple', 0, 'KG', 250, '-41967975069_149235165837_1585220814_n.jpg', 'Buy pineapple from online shopping mall in Sri Lanka from freshcart.lk', '<p>Buy pineapple from online shopping mall in Sri Lanka from freshcart.lk</p>', 1, 0.50, 5, 0),
(26, 1, 5, 1, 'Supreme Pack', 0, 'Packs', 0, '-11873956309_179329184597_1585228632_n.jpg', 'Order groceries online and get delivered to your home, we are serving for high income families like your, visit freshcart.lk for more infomation', '<p><span style=\"text-decoration: underline;\"><strong>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</strong></span></p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à·ƒà·’à¶ºà¶½à·”à¶¸ à¶¸à·’à¶½ à¶œà¶«à¶±à·Š à¶»à¶¢à¶ºà·š à¶´à·à¶½à¶± à¶¸à·’à¶½à¶§ à¶ºà¶§à¶­à·Šà·€ à·ƒà¶¯à·„à¶±à·Š à¶šà¶» à¶‡à¶­ (à¶‡à¶­à·à¶¸à·Š à·€à·’à¶§ à¶»à·”.10-20 à¶š à·€à·™à¶±à·ƒà¶šà·Š à¶´à·à·€à¶­à·’à¶š à·„à·à¶šâ€‹)</p>\r\n<p>Speacial note - Charges are mentioned in accordance with the governemnt regulations (unless if there is a difference of 10 - 20 LKR may be)</p>\r\n<div class=\"table-responsive\">\r\n<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><strong>Food Item</strong></p>\r\n<p><strong>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</strong></p>\r\n</td>\r\n<td>\r\n<p><strong>Quantity</strong></p>\r\n<p><strong>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</strong></p>\r\n</td>\r\n<td>\r\n<p><strong>Unit Price LKR</strong></p>\r\n<p><strong>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</strong></p>\r\n</td>\r\n<td>\r\n<p><strong>Total Price LKR</strong></p>\r\n<p><strong>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</strong></p>\r\n</td>\r\n<td>\r\n<p>Brand</p>\r\n<p>(à·€à·™à·…à¶³ à¶±à·à¶¸à¶º)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"5\">\r\n<p><strong>Grains (à¶°à·à¶±à·Š&zwj;à¶ºà¶ºâ€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Rice Basmati(à¶¶à·à·ƒà·Šà¶¸à¶­à·“ à·ƒà·„à¶½à·Š)</td>\r\n<td>5 kg</td>\r\n<td>220per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Rice Samba (à·ƒà¶¸à·Šà¶¶à· à·ƒà·„à¶½à·Š)</td>\r\n<td>15 kg</td>\r\n<td>100 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Flour (à¶´à·à¶±à·Š à¶´à·’à¶§à·’)</td>\r\n<td>5 kg</td>\r\n<td>150 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Pasta (à¶´à·à·ƒà·Šà¶§à·)</td>\r\n<td>3 kg</td>\r\n<td>600 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Noodles (à¶±à·–à¶©à·Šà¶½à·Šà·ƒà·Š)</td>\r\n<td>3 kg</td>\r\n<td>500 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Dhal (à¶´à¶»à·’à¶´à·Šà¶´à·”)</td>\r\n<td>3 kg</td>\r\n<td>180 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"5\">\r\n<p><strong>Animal Products (&nbsp;à·ƒà¶­à·Šà¶­à·Šà·€ à¶†à·„à·à¶»â€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Chicken (à¶šà·”à¶šà·”à·…à·” à¶¸à·ƒà·Š)</td>\r\n<td>5 kg</td>\r\n<td>750 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Salmon (à·ƒà·à¶¸à¶±à·Š)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Eggs (à¶¶à·’à¶­à·Šà¶­à¶»â€‹)</td>\r\n<td>20</td>\r\n<td>20 per 1</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Dried Fish (à·„à·à¶½à·Šà¶¸à·à·ƒà·Šà·ƒà¶±à·Š)</td>\r\n<td>1 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"5\">\r\n<p><strong>Dairy Products (à¶šà·’à¶»à·’ à¶†à·à·Š&zwj;à¶»à·’à¶­ à¶†à·„à·à¶»â€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Cheese (à¶ à·“à·ƒà·Š) - Kothmale</td>\r\n<td>1 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Fresh Milk (à¶±à·à·€à·”à¶¸à·Š à¶‘à·…à¶šà·’à¶»à·’) - Ambewela</td>\r\n<td>10 L</td>\r\n<td>250 per L</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Milk Powder (à¶šà·’à¶»à·’ à¶´à·’à¶§à·’) - Ambewela (Lakspray)</td>\r\n<td>2 kg</td>\r\n<td>995 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"5\">\r\n<p><strong>Vegetables (à¶‘à·…à·€à·…à·”)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Leaks (à¶½à·“à¶šà·Šà·ƒà·Š)</td>\r\n<td>2 kg</td>\r\n<td>290 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Beans (<span lang=\"si\">à¶¶à·à¶‚à¶ à·’)</span></td>\r\n<td>2 kg</td>\r\n<td>260 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Carrot (à¶šà·à¶»à¶§à·Š)</td>\r\n<td>2 kg</td>\r\n<td>320 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Beet (à¶¶à·“à¶§à·Š)</td>\r\n<td>2 kg</td>\r\n<td>200 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Gotukola (à¶œà·œà¶§à·”à¶šà·œà¶½â€‹)</td>\r\n<td>5</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Mush Room (à·„à¶­à·”)</td>\r\n<td>1 kg</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"5\">\r\n<p><strong>Fruits (à¶´à·…à¶­à·”à¶»à·”)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Apples (à¶‡à¶´à¶½à·Š)</td>\r\n<td>20</td>\r\n<td>100 per&nbsp;1 apple</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Kolikuttu (à¶šà·à¶½à·’à¶šà·”à¶§à·Šà¶§à·” à¶šà·™à·ƒà·™à¶½à·Š)</td>\r\n<td>2 kg</td>\r\n<td>350 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Black Grapes (à¶¯à¶¸à·Š/à¶šà¶½à·” à¶‡à¶´à¶½à·Š)</td>\r\n<td>1 kg</td>\r\n<td>1300 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Katta Sambal bottle(à¶šà¶§à·Šà¶§ à·ƒà¶¸à·Šà¶¶à¶½à·Š à¶¶à·à¶­à¶½à·Š)</td>\r\n<td>2</td>\r\n<td>475 per bottle</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Mango Chatni Bottle (à¶…à¶¹ à¶ à¶§à·Šà¶±à·’ à¶¶à·à¶­à¶½à·Š)</td>\r\n<td>1</td>\r\n<td>550 per bottle</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"5\">\r\n<p><strong>Spices (à¶šà·”à·…à·”à¶¶à¶©à·”)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Green Chilli (à¶…à¶¸à·” à¶¸à·’à¶»à·’à·ƒà·Š)</td>\r\n<td>1 kg</td>\r\n<td>500 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Chilli Powder red (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</td>\r\n<td>500&nbsp;g</td>\r\n<td>1300 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Chilli pieces (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·à¶¶à¶½à·’)</td>\r\n<td>500 g&nbsp;</td>\r\n<td>1100 per kg&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Fish Chips (à¶‹à¶¸à·Šà¶¶à¶½à¶šà¶© à¶šà·à¶¶à¶½à·’)</td>\r\n<td>200 g</td>\r\n<td>400 per 100 g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Pepper Powder (à¶œà¶¸à·Šà¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</td>\r\n<td>200 g</td>\r\n<td>350 per 100 g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Salt (à¶½à·”à¶±à·” (à¶…à¶ºà¶©à·“à¶±à·Š à¶¸à·’à·à·Š&zwj;à¶»â€‹))</td>\r\n<td>400 g</td>\r\n<td>65 per 400 g packet</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Curry Powder (à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)</td>\r\n<td>500 g</td>\r\n<td>110 per 100 g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Big Onion (à¶½à·œà¶šà·” à·…à·–à¶«à·”)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td>Coconut Powder (à¶´à·’à¶§à·’ à¶šà¶½ à¶´à·œà¶½à·Š à¶šà·’à¶»à·’)</td>\r\n<td>2 kg</td>\r\n<td>995 per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><strong>Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</strong></td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"5\" rowspan=\"2\">\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 1, 1.00, 1, 0),
(40, 2, 15, 8, 'Carrot - à¶šà·à¶»à¶§à·Š', 0, 'kg', 0, '-188100490629_3102650277_1585236073_n.jpg', 'Carrot - à¶šà·à¶»à¶§à·Š', '<p>Carrot - à¶šà·à¶»à¶§à·Š</p>\r\n<p>&nbsp;</p>', 0, 0.50, 1, 0),
(41, 2, 15, 1, 'Leeks - à¶½à·“à¶šà·Šà·ƒà·Š', 0, 'kg', 220, '-162387974441_28815166465_1585236350_n.jpg', 'Leeks - à¶½à·“à¶šà·Šà·ƒà·Š', '<p>Leeks - à¶½à·“à¶šà·Šà·ƒà·Š</p>', 0, 0.50, 1, 0),
(42, 2, 15, 1, 'Cabbage - à¶œà·à·€à·', 0, 'kg', 0, '-132109011230_59094129676_1585236447_n.jpg', 'Cabbage - à¶œà·à·€à·', '<p>cabbage - à¶œà·à·€à·</p>', 0, 0.50, 1, 0),
(43, 2, 15, 1, 'Cauliflower - à¶¸à¶½à·Šà¶œà·à·€à·', 0, '0', 0, '-99451594513_91751546393_1585236537_n.jpg', 'Cauliflower - à¶¸à¶½à·Šà¶œà·à·€à·', '<p>Cauliflower - à¶¸à¶½à·Šà¶œà·à·€à·</p>', 0, 0.00, 0, 0),
(44, 2, 15, 1, 'Salad Leaves - à·ƒà¶½à·à¶¯ à¶šà·œà·…', 0, '0', 0, '-70338584874_120864556032_1585236663_n.jpg', 'Salad Leaves - à·ƒà¶½à·à¶¯ à¶šà·œà·…', '<p>Salad Leaves - à·ƒà¶½à·à¶¯ à¶šà·œà·…</p>', 0, 0.00, 0, 0),
(45, 2, 15, 1, 'Beet - à¶¶à·“à¶§à·Š', 0, 'kg', 0, '-69685623554_121517517352_1585236808_n.jpg', 'Beet - à¶¶à·“à¶§à·Š', '<p>Beet - à¶¶à·“à¶§à·Š</p>', 0, 0.50, 1, 0),
(46, 2, 15, 1, 'Green Bean - à¶¶à·à¶‚à¶ à·’', 0, 'kg', 0, '-5613546001_185589594905_1585237081_n.jpg', 'Green Bean - à¶¶à·à¶‚à¶ à·’', '<p>Green Bean - à¶¶à·à¶‚à¶ à·’</p>', 0, 0.50, 1, 0),
(47, 2, 15, 1, 'Bell Pepper - à¶¶à·™à¶½à·Š à¶´à·™à¶´à¶»à·Š', 0, '0', 0, '-130478479298_60724661608_1585237171_n.jpg', 'Bell Pepper - à¶¶à·™à¶½à·Š à¶´à·™à¶´à¶»à·Š', '<p>Bell Pepper - à¶¶à·™à¶½à·Š à¶´à·™à¶´à¶»à·Š</p>', 0, 1.00, 1, 0),
(48, 2, 15, 1, 'Cucumber - à¶´à·’à¶´à·’à¶¤à·Šà¶¤à·', 0, 'kg', 0, '-70418470010_120784670896_1585237421_n.jpg', 'Cucumber - à¶´à·’à¶´à·’à¶¤à·Šà¶¤à·', '<p>Cucumber - à¶´à·’à¶´à·’à¶¤à·Šà¶¤à·</p>', 0, 0.50, 1, 0),
(49, 2, 15, 1, 'Green Chilli - à¶…à¶¸à·” à¶¸à·’à¶»à·’à·ƒà·Š ', 0, 'kg', 0, '-65221374878_125981766028_1585237494_n.jpg', 'Green Chilli - à¶…à¶¸à·” à¶¸à·’à¶»à·’à·ƒà·Š', '<p>Green Chilli - à¶…à¶¸à·” à¶¸à·’à¶»à·’à·ƒà·Š</p>', 0, 0.50, 1, 0),
(50, 2, 15, 1, 'Red Onion - à¶»à¶­à·” à·…à·”à¶«à·”', 0, 'kg', 0, '-123267756524_67935384382_1585237829_n.jpg', 'Red Onion - à¶»à¶­à·” à·…à·”à¶«à·”', '<p>Red Onion - à¶»à¶­à·” à·…à·”à¶«à·”</p>', 0, 1.00, 5, 0),
(51, 2, 15, 1, 'B Onion - à¶¶à·“ à¶½à·–à¶±à·”', 0, 'kg', 0, '-124095415335_67107725571_1585237851_n.jpg', 'B Onion - à¶¶à·“ à¶½à·–à¶±à·”', '<p>B Onion - à¶¶à·“ à¶½à·–à¶±à·”</p>', 0, 1.00, 5, 0),
(52, 2, 15, 1, 'Pumpkin - à·€à¶§à·Šà¶§à¶šà·Šà¶šà·', 0, 'kg', 0, '-61112004598_130091136308_1585238059_n.jpg', 'Pumpkin - à·€à¶§à·Šà¶§à¶šà·Šà¶šà·', '<p>Pumpkin - à·€à¶§à·Šà¶§à¶šà·Šà¶šà·</p>', 0, 0.50, 5, 0),
(53, 2, 15, 1, 'Bitter Gourd - à¶šà¶»à·€à·’à¶½', 0, 'kg', 0, '-181007646519_10195494387_1585238262_n.jpg', 'Bitter Gourd - à¶šà¶»à·€à·’à¶½', '<p>Bitter Gourd - à¶šà¶»à·€à·’à¶½</p>', 0, 0.50, 5, 0),
(54, 2, 15, 1, 'Potatos - à¶…à¶»à·Šà¶­à·à¶´à¶½à·Š', 0, 'kg', 0, '-101000982704_90202158202_1585238404_n.jpg', 'Potatos - à¶…à¶»à·Šà¶­à·à¶´à¶½à·Š', '<p>Potatos - à¶…à¶»à·Šà¶­à·à¶´à¶½à·Š</p>', 0, 0.50, 5, 0);
INSERT INTO `product` (`id`, `category`, `sub_category`, `brand`, `name`, `discount`, `unite`, `price`, `image_name`, `short_description`, `description`, `in_stock`, `min_qty`, `max_qty`, `queue`) VALUES
(55, 1, 1, 8, 'Budget Pack', 0, 'Packs', 0, '-140241917819_50961223087_1585240706_n.jpg', 'Buy vegetables online in Sri Lanka from Sri Lankas largest online shopping mall', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Carrot (à¶šà·à¶»à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">320 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Leaks (à¶½à·“à¶šà·Šà·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">290 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Cabbage (à¶œà·à·€à·)</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">250 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beet Root (à¶¶à·“à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">200 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beans (à¶¶à·à¶‚à¶ à·’)</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">260 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Cucumber</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">180 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Big Onion</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">300 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Pumpkin</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">180 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Potato</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">220 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Green Chilli</td>\r\n<td style=\"text-align: left;\">250 g</td>\r\n<td style=\"text-align: left;\">500 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 1, 1.00, 1, 0),
(56, 1, 1, 8, 'Family Pack', 0, 'Packs', 0, '-179786562670_11416578236_1585241221_n.jpg', 'Buy vegetables online from the largest online shopping mall in Sri Lanka', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Carrot (à¶šà·à¶»à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">320 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Leaks (à¶½à·“à¶šà·Šà·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">290 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Cabbage (à¶œà·à·€à·)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">250 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beet Root (à¶¶à·“à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">200 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beans (à¶¶à·à¶‚à¶ à·’)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">260 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Cucumber(à¶´à·’à¶´à·’à¶¤à·Šà¶¤à·)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">180 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Big Onion(à¶¶à·“ à·…à·–à¶«à·”)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">300 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Pumpkin(à·€à¶§à·Šà¶§à¶šà·Šà¶šà·)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">180 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Potato(à¶…à¶½â€‹)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">220 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Green Chilli (à¶…à¶¸à·” à¶¸à·’à¶»à·’à·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">500 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Bitter Gourd (à¶šà¶»à·€à·’à¶½â€‹)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">250 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 1, 1.00, 1, 0),
(64, 4, 14, 8, 'Basmati (White)  5 kg', 0, 'Packs', 0, '-14927546400_176275594506_1585251341_n.jpg', 'buy basmati rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy basmati rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 5),
(65, 4, 14, 8, 'Basmati (White) 10 kg', 0, 'Packs', 0, '-180580628301_10622512605_1585251378_n.jpg', 'buy basmati rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy basmati rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 1, 6),
(66, 4, 14, 8, 'Basmati (Red) 5 kg', 0, 'Packs', 0, '-93915831770_97287309136_1585251412_n.jpg', 'buy basmati rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy basmati rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 7),
(67, 4, 14, 8, 'Basmati (Red) 10 kg', 0, 'Packs', 0, '-81562200798_109640940108_1585251440_n.jpg', 'buy basmati rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy basmati rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 8),
(68, 4, 14, 8, 'Samba (White) 5 kg', 0, 'Packs', 0, '-72079864507_119123276399_1585251546_n.jpg', 'buy samba rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy samba rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 1),
(69, 4, 14, 8, 'Samba (White) 10 kg', 0, 'Packs', 0, '-173365395345_17837745561_1585251594_n.jpg', 'buy samba rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy samba rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 2),
(70, 4, 14, 8, 'Samba (Red) 5 kg', 0, 'Packs', 0, '-129107378527_62095762379_1585251630_n.jpg', 'buy samba rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy samba rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 5, 3),
(71, 4, 14, 8, 'Samba (Red) 10 kg', 0, 'Packs', 0, '-147518014020_43685126886_1585251665_n.jpg', 'buy samba rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy samba rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 4),
(72, 4, 14, 8, 'Nadu (White) 5 kg', 0, 'Packs', 0, '-157739959928_33463180978_1585251704_n.jpg', 'buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 9),
(73, 4, 14, 8, 'Nadu (White) 10 kg', 0, 'Packs', 0, '-115301746498_75901394408_1585251743_n.jpg', 'buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 10),
(74, 4, 14, 8, 'Nadu (Red) 5 kg', 0, 'Packs', 0, '-25242162229_165960978677_1585251919_n.jpg', 'buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 11),
(75, 4, 14, 8, 'Nadu (Red) 10 kg', 0, 'Packs', 0, '-74883289545_116319851361_1585251955_n.jpg', 'buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk', '<p>buy Nadu rice online from sri lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 2, 12),
(76, 1, 4, 8, 'Budget Pack', 0, '1', 0, '-7254983109_183948157797_1585252490_n.jpg', 'By grains online from Sri Lankas largest online retailer FreshCart.lk', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>&nbsp;</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td>\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Green Gram (à¶¸à·”à¶‚ à¶‡à¶§â€‹)</td>\r\n<td>500 g</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Chickpease (à¶šà¶©à¶½â€‹)</td>\r\n<td>500 g</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Corn Flakes</td>\r\n<td>1 Pack</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Chocolate Flakes</td>\r\n<td>1 Pack</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Noodles (à¶±à·–à¶©à·Šà¶½à·Šà·ƒà·Š)</td>\r\n<td>1 Pack</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Pasta (à¶´à·à·ƒà·Šà¶§à·)</td>\r\n<td>1 Pack</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 0, 0.00, 0, 0),
(77, 1, 4, 8, 'Family Pack', 0, '1', 1, '-16949860699_174253280207_1585252787_n.jpg', 'buy grains online and get delivered to home from freshcart.lk', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Green Gram (à¶¸à·”à¶‚ à¶‡à¶§â€‹)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Chickpease (à¶šà¶©à¶½â€‹)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Red Dhal (à¶»à¶­à·” à¶´à¶»à·’à¶´à·Šà¶´à·”)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Corn Flakes</td>\r\n<td style=\"text-align: left;\">2 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Chocolate Flakes</td>\r\n<td style=\"text-align: left;\">2 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Noodles (à¶±à·–à¶©à·Šà¶½à·Šà·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">2 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Pasta (à¶´à·à·ƒà·Šà¶§à·)</td>\r\n<td style=\"text-align: left;\">2 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 0, 0.00, 0, 0),
(78, 1, 4, 8, 'Standard Pack', 0, '1', 1, '-187220412957_3982727949_1585252991_n.jpg', 'Buy grains online from freshcar.lk the largest online grocery shop in Sri Lanka', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Green Gram (à¶¸à·”à¶‚ à¶‡à¶§â€‹)</td>\r\n<td style=\"text-align: left;\">2&nbsp;kg</td>\r\n<td style=\"text-align: left;\">per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Chickpease (à¶šà¶©à¶½â€‹)</td>\r\n<td style=\"text-align: left;\">2&nbsp;kg</td>\r\n<td style=\"text-align: left;\">per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Red Dhal (à¶»à¶­à·” à¶´à¶»à·’à¶´à·Šà¶´à·”)</td>\r\n<td style=\"text-align: left;\">2&nbsp;kg</td>\r\n<td style=\"text-align: left;\">per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Green Peas (à¶œà·Š&zwj;à¶»à·“à¶±à·Š à¶´à·“à·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">1&nbsp;kg</td>\r\n<td style=\"text-align: left;\">per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Corn Flakes</td>\r\n<td style=\"text-align: left;\">4 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Chocolate Flakes</td>\r\n<td style=\"text-align: left;\">4 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Noodles (à¶±à·–à¶©à·Šà¶½à·Šà·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">4 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Pasta (à¶´à·à·ƒà·Šà¶§à·)</td>\r\n<td style=\"text-align: left;\">4 Packs</td>\r\n<td style=\"text-align: left;\">per pack</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 0, 0.00, 0, 0),
(79, 1, 2, 8, 'Budget Pack', 0, '1', 1, '-61962497784_129240643122_1585253873_n.jpg', 'By fresh fruits online and get delivered to home from Sri Lankas largest online retailer shop', '<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)</p>\r\n<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Fruit</p>\r\n<p>(à¶´à·…à¶­à·”à¶»â€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity in terms of number of fruits</p>\r\n<p>(à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶º à¶œà·™à¶©à·’ à·€à¶½à·’à¶±à·Š)</p>\r\n</td>\r\n<td>\r\n<p>Price LKR</p>\r\n<p>(à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Pineapple (à¶…à¶±à·Šà¶±à·à·ƒà·’)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Red Apple (à¶»à¶­à·” à¶‡à¶´à¶½à·Š)</td>\r\n<td>5 apples</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green Apple (à¶šà·œà·… à¶‡à¶´à¶½à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Pears (à¶´à·™à¶ºà·à¶»à·Šà·ƒà·Š)</td>\r\n<td>0</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Orange(à¶¯à·œà¶©à¶¸à·Š)</td>\r\n<td>5 oranges</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Water Melon (à¶šà·œà¶¸à¶©à·”)</td>\r\n<td>1 water melon</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Black Grapes (à¶šà¶½à·”/à¶¯à¶¸à·Š à¶¸à·’à¶¯à·’)</td>\r\n<td>500 g</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green&nbsp;Grapes (à¶šà·œà·…â€‹ à¶¸à·’à¶¯à·’)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Kolikuttu (à¶šà·à¶½à·’à¶šà·”à¶§à·Šà¶§à·” à¶šà·™à·ƒà·™à¶½à·Š)</td>\r\n<td>0</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Sugar (à·ƒà·“à¶±à·’ à¶šà·™à·ƒà·™à¶½à·Š)&nbsp;</td>\r\n<td>1 kg&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Dragon Fruit (à¶©à·Š&zwj;à¶»à·à¶œà¶±à·Š à·†à·˜à¶§à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Papaya (à¶œà·ƒà·Šà¶½à¶¶à·”)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Wood Apple (à¶¯à·’à·€à·”à¶½à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Total Price LKR (à¶¸à·”à¶½à·” à¶¸à·”à¶¯à¶½ à¶»à·”)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 0, 0.00, 0, 0),
(80, 1, 2, 8, 'Family Pack', 0, '1', 1, '-456362207_190746778699_1585254102_n.jpg', 'Purchase fruits online from sri lankas largest online fruit seller', '<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)</p>\r\n<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Fruit</p>\r\n<p>(à¶´à·…à¶­à·”à¶»â€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity in terms of number of fruits</p>\r\n<p>(à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶º à¶œà·™à¶©à·’ à·€à¶½à·’à¶±à·Š)</p>\r\n</td>\r\n<td>\r\n<p>Price LKR</p>\r\n<p>(à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Pineapple (à¶…à¶±à·Šà¶±à·à·ƒà·’)</td>\r\n<td>1 pineapple</td>\r\n<td>&nbsp;0</td>\r\n</tr>\r\n<tr>\r\n<td>Red Apple (à¶»à¶­à·” à¶‡à¶´à¶½à·Š)</td>\r\n<td>5 apples</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green Apple (à¶šà·œà·… à¶‡à¶´à¶½à·Š)</td>\r\n<td>5 apples</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Pears (à¶´à·™à¶ºà·à¶»à·Šà·ƒà·Š)</td>\r\n<td>5 pears</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Orange(à¶¯à·œà¶©à¶¸à·Š)</td>\r\n<td>5 oranges</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Water Melon (à¶šà·œà¶¸à¶©à·”)</td>\r\n<td>1 water melon</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Black Grapes (à¶šà¶½à·”/à¶¯à¶¸à·Š à¶¸à·’à¶¯à·’)</td>\r\n<td>500 g</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green&nbsp;Grapes (à¶šà·œà·…â€‹ à¶¸à·’à¶¯à·’)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Kolikuttu (à¶šà·à¶½à·’à¶šà·”à¶§à·Šà¶§à·” à¶šà·™à·ƒà·™à¶½à·Š)</td>\r\n<td>1 kg</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Sugar (à·ƒà·“à¶±à·’ à¶šà·™à·ƒà·™à¶½à·Š)&nbsp;</td>\r\n<td>1 kg&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Dragon Fruit (à¶©à·Š&zwj;à¶»à·à¶œà¶±à·Š à·†à·˜à¶§à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Papaya (à¶œà·ƒà·Šà¶½à¶¶à·”)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Wood Apple (à¶¯à·’à·€à·”à¶½à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Total Price LKR (à¶¸à·”à¶½à·” à¶¸à·”à¶¯à¶½ à¶»à·”)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 0, 0.00, 0, 0),
(81, 1, 2, 8, 'Standard Pack', 0, '1', 1, '-155935605716_35267535190_1585254219_n.jpg', 'Order fruits and get delivered to your home from freshcart.lk', '<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)</p>\r\n<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Fruit</p>\r\n<p>(à¶´à·…à¶­à·”à¶»â€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity in terms of number of fruits</p>\r\n<p>(à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶º à¶œà·™à¶©à·’ à·€à¶½à·’à¶±à·Š)</p>\r\n</td>\r\n<td>\r\n<p>Price LKR</p>\r\n<p>(à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Pineapple (à¶…à¶±à·Šà¶±à·à·ƒà·’)</td>\r\n<td>1 pineapple</td>\r\n<td>&nbsp;0</td>\r\n</tr>\r\n<tr>\r\n<td>Red Apple (à¶»à¶­à·” à¶‡à¶´à¶½à·Š)</td>\r\n<td>8 apples</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green Apple (à¶šà·œà·… à¶‡à¶´à¶½à·Š)</td>\r\n<td>8 apples</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Pears (à¶´à·™à¶ºà·à¶»à·Šà·ƒà·Š)</td>\r\n<td>8 pears</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Orange(à¶¯à·œà¶©à¶¸à·Š)</td>\r\n<td>8 oranges</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Water Melon (à¶šà·œà¶¸à¶©à·”)</td>\r\n<td>2 water melon</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Black Grapes (à¶šà¶½à·”/à¶¯à¶¸à·Š à¶¸à·’à¶¯à·’)</td>\r\n<td>500 g</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green&nbsp;Grapes (à¶šà·œà·…â€‹ à¶¸à·’à¶¯à·’)</td>\r\n<td>500 g</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Kolikuttu (à¶šà·à¶½à·’à¶šà·”à¶§à·Šà¶§à·” à¶šà·™à·ƒà·™à¶½à·Š)</td>\r\n<td>1 kg</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Sugar (à·ƒà·“à¶±à·’ à¶šà·™à·ƒà·™à¶½à·Š)&nbsp;</td>\r\n<td>1 kg&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Dragon Fruit (à¶©à·Š&zwj;à¶»à·à¶œà¶±à·Š à·†à·˜à¶§à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Papaya (à¶œà·ƒà·Šà¶½à¶¶à·”)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Wood Apple (à¶¯à·’à·€à·”à¶½à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Total Price LKR (à¶¸à·”à¶½à·” à¶¸à·”à¶¯à¶½ à¶»à·”)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 0.00, 0, 0);
INSERT INTO `product` (`id`, `category`, `sub_category`, `brand`, `name`, `discount`, `unite`, `price`, `image_name`, `short_description`, `description`, `in_stock`, `min_qty`, `max_qty`, `queue`) VALUES
(82, 1, 2, 8, 'Supreme Pack', 0, '1', 1, '-185651499556_5551641350_1585254393_n.jpg', 'Order fruits to your home for any occasion from freshcart.lk', '<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Fruit</p>\r\n<p>(à¶´à·…à¶­à·”à¶»â€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity in terms of number of fruits</p>\r\n<p>(à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶º à¶œà·™à¶©à·’ à·€à¶½à·’à¶±à·Š)</p>\r\n</td>\r\n<td>\r\n<p>Price LKR</p>\r\n<p>(à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Pineapple (à¶…à¶±à·Šà¶±à·à·ƒà·’)</td>\r\n<td>3 pineapples</td>\r\n<td>&nbsp;0</td>\r\n</tr>\r\n<tr>\r\n<td>Red Apple (à¶»à¶­à·” à¶‡à¶´à¶½à·Š)</td>\r\n<td>15 apples</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green Apple (à¶šà·œà·… à¶‡à¶´à¶½à·Š)</td>\r\n<td>15 apples</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Pears (à¶´à·™à¶ºà·à¶»à·Šà·ƒà·Š)</td>\r\n<td>15 pears</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Orange(à¶¯à·œà¶©à¶¸à·Š)</td>\r\n<td>15 oranges</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Water Melon (à¶šà·œà¶¸à¶©à·”)</td>\r\n<td>5 water melon</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Black Grapes (à¶šà¶½à·”/à¶¯à¶¸à·Š à¶¸à·’à¶¯à·’)</td>\r\n<td>1.5 kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green&nbsp;Grapes (à¶šà·œà·…â€‹ à¶¸à·’à¶¯à·’)</td>\r\n<td>1.5 kg</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Kolikuttu (à¶šà·à¶½à·’à¶šà·”à¶§à·Šà¶§à·” à¶šà·™à·ƒà·™à¶½à·Š)</td>\r\n<td>3 kg</td>\r\n<td>0&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Sugar (à·ƒà·“à¶±à·’ à¶šà·™à·ƒà·™à¶½à·Š)&nbsp;</td>\r\n<td>3 kg&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Dragon Fruit (à¶©à·Š&zwj;à¶»à·à¶œà¶±à·Š à·†à·˜à¶§à·Š)</td>\r\n<td>10 dragon fruits</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Papaya (à¶œà·ƒà·Šà¶½à¶¶à·”)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Wood Apple (à¶¯à·’à·€à·”à¶½à·Š)</td>\r\n<td>0</td>\r\n<td>0</td>\r\n</tr>\r\n<tr>\r\n<td>Total Price LKR (à¶¸à·”à¶½à·” à¶¸à·”à¶¯à¶½ à¶»à·”)</td>\r\n<td>&nbsp;</td>\r\n<td>0</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Fruits included (à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à¶´à·…à¶­à·”à¶»à·”)Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 0.00, 0, 0),
(83, 1, 1, 8, 'Standard Pack', 0, 'Packs', 0, '-117276237418_73926903488_1585254825_n.jpg', 'Buy vegetables online and get delivered to your home from freshcart.lk for the lowest possible price in the market', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Carrot (à¶šà·à¶»à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">320 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Leaks (à¶½à·“à¶šà·Šà·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">290 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Cabbage (à¶œà·à·€à·)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">250 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beet Root (à¶¶à·“à¶§à·Š)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">200 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Beans (à¶¶à·à¶‚à¶ à·’)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">260 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Cucumber(à¶´à·’à¶´à·’à¶¤à·Šà¶¤à·)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">180 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Big Onion(à¶¶à·“ à·…à·–à¶«à·”)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">300 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Pumpkin(à·€à¶§à·Šà¶§à¶šà·Šà¶šà·)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">180 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Potato(à¶…à¶½â€‹)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">220 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Green Chilli (à¶…à¶¸à·” à¶¸à·’à¶»à·’à·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">500 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Bitter Gourd (à¶šà¶»à·€à·’à¶½â€‹)</td>\r\n<td style=\"text-align: left;\">2 kg</td>\r\n<td style=\"text-align: left;\">250 LKR per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 1, 1.00, 1, 0),
(84, 4, 24, 8, 'Green Gram 500 g', 0, 'Packs', 0, '-50994674417_140208466489_1585257962_n.jpg', 'Buy green from Sri Lankas largest online retailer shop freshcart.lk', '<p>Buy green from Sri Lankas largest online retailer shop freshcart.lk</p>', 0, 1.00, 5, 0),
(85, 4, 24, 8, 'Dhal 1 kg', 0, 'Packs', 0, '-171682079819_19521061087_1585258451_n.jpg', 'Order dhal from the largest online retailer in Sri Lanka FreshCart.lk', '<p>Order dhal from the largest online retailer in Sri Lanka FreshCart.lk</p>', 0, 1.00, 3, 0),
(86, 4, 24, 8, 'ChickPeas 1 kg', 0, 'Packs', 1, '-32665319895_158537821011_1585259221_n.jpg', 'Chickpeas to be delivered to your home by the Sri Lankas largest online retailer shop', '<p>Chickpeas to be delivered to your home by the Sri Lankas largest online retailer shop</p>', 0, 1.00, 3, 0),
(87, 4, 25, 8, 'Corn Flakes', 0, 'Packs', 0, '-29989815207_161213325699_1585259357_n.jpg', 'We deliver corn flakes to your home, visit our web site freshcart.lk for more details', '<p>We deliver corn flakes to your home, visit our web site freshcart.lk for more details</p>', 1, 5.00, 100, 0),
(88, 4, 25, 8, 'Chocolate Flakes', 0, 'Packs', 0, '-90413007264_100790133642_1585259616_n.jpg', 'Buy your favourite chocolate flakes from our online store and get it delivered to your home', '<p>Buy your favourite chocolate flakes from our online store and get it delivered to your home</p>', 0, 5.00, 100, 0),
(89, 1, 3, 8, 'Budget Pack', 0, 'Packs', 0, '-125771591453_65431549453_1585262899_n.jpg', 'Order meat, eggs, seafood, online through freshcart.lk', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Chicken (à¶šà·”à¶šà·”à·…à·” à¶¸à·ƒà·Š)</td>\r\n<td style=\"text-align: left;\">1 kg</td>\r\n<td style=\"text-align: left;\">650 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Dry Fish (à·„à·à¶½à·Š à¶¸à·à·ƒà·Šà·ƒà¶±à·Š)</td>\r\n<td style=\"text-align: left;\">500 g</td>\r\n<td style=\"text-align: left;\">1150 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Eggs (à¶¶à·’à¶­à·Šà¶­à¶»â€‹)</td>\r\n<td style=\"text-align: left;\">10 eggs</td>\r\n<td style=\"text-align: left;\">15 per kg</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<p>&nbsp;</p>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>&nbsp;</p>', 0, 1.00, 5, 0),
(90, 1, 3, 8, 'Family Pack', 0, 'Packs', 0, '-26928837452_164274303454_1585263118_n.jpg', 'Online shopping in Sri Lanka', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>We can not exactly say the contents, if you are willing to order this seafood package, you may order it, so we will deliver the types of which will be available in delivey time that resembles the cost you had payed. so if you order this, you may send us an email stating the types of product you would love to have and will not like to have, so we can get it for you.</p>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td style=\"text-align: left;\">\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\" colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º&nbsp;à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp;&nbsp;à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp;&nbsp;the order, and will be shown to you as a price summary before making any&nbsp;payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€&nbsp;à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š&nbsp;à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can&nbsp;not just add it as an hidden charge as all of the other&nbsp;companies do and has&nbsp;been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š&nbsp;à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·”&nbsp;à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’&nbsp;à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 1.00, 5, 0),
(91, 0, 0, 8, 'Until Curfew Ends :)', 0, '1', 1, '-150808168686_40394972220_1585264439_n.jpg', 'Shop online during curfew and get good delivered to your home, freshcart.lk', '<p><span style=\"text-decoration: underline;\"><strong>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</strong></span></p>\r\n<div class=\"table-responsive\">\r\n<table class=\"table table-bordered\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><strong>Food Item</strong></p>\r\n<p><strong>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</strong></p>\r\n</td>\r\n<td>\r\n<p><strong>Quantity</strong></p>\r\n<p><strong>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</strong></p>\r\n</td>\r\n<td>\r\n<p><strong>Unit Price LKR</strong></p>\r\n<p><strong>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</strong></p>\r\n</td>\r\n<td>\r\n<p><strong>Total Price LKR</strong></p>\r\n<p><strong>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Grains (à¶°à·à¶±à·Š&zwj;à¶ºà¶ºâ€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Rice Basmati(à¶¶à·à·ƒà·Šà¶¸à¶­à·“ à·ƒà·„à¶½à·Š)</td>\r\n<td>15&nbsp;kg</td>\r\n<td>220 per kg</td>\r\n<td style=\"text-align: left;\">3300&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Rice Samba (à·ƒà¶¸à·Šà¶¶à· à·ƒà·„à¶½à·Š)</td>\r\n<td>10 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Flour (à¶´à·à¶±à·Š à¶´à·’à¶§à·’)</td>\r\n<td>8 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Pasta (à¶´à·à·ƒà·Šà¶§à·)</td>\r\n<td>4 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Noodles (à¶±à·–à¶©à·Šà¶½à·Šà·ƒà·Š)</td>\r\n<td>3 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Dhal (à¶´à¶»à·’à¶´à·Šà¶´à·”)</td>\r\n<td>4 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Chick Peas (à¶šà¶©à¶½â€‹)</td>\r\n<td>3 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green Peas (à¶œà·Š&zwj;à¶»à·“à¶±à·Š à¶´à·“à·ƒà·Š)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green Gram (à¶¸à·”à¶‚ à¶‡à¶§â€‹)</td>\r\n<td>3 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Corn Flakes</td>\r\n<td>10 packs</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Chocolate Flakes&nbsp;</td>\r\n<td>10 packs</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Oats</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Animal Products (&nbsp;à·ƒà¶­à·Šà¶­à·Šà·€ à¶†à·„à·à¶»â€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Chicken (à¶šà·”à¶šà·”à·…à·” à¶¸à·ƒà·Š)</td>\r\n<td>8 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Salmon (à·ƒà·à¶¸à¶±à·Š)</td>\r\n<td>10</td>\r\n<td>per samlmon</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Eggs (à¶¶à·’à¶­à·Šà¶­à¶»â€‹)</td>\r\n<td>25</td>\r\n<td>per 1</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Dried Fish (à·„à·à¶½à·Šà¶¸à·à·ƒà·Šà·ƒà¶±à·Š)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Prawns (à¶‰à·ƒà·Šà·ƒà¶±à·Š)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Dairy Products (à¶šà·’à¶»à·’ à¶†à·à·Š&zwj;à¶»à·’à¶­ à¶†à·„à·à¶»â€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Cheese (à¶ à·“à·ƒà·Š) - Kothmale</td>\r\n<td>1 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Fresh Milk (à¶±à·à·€à·”à¶¸à·Š à¶‘à·…à¶šà·’à¶»à·’) - Ambewela</td>\r\n<td>10 L</td>\r\n<td>per L</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Milk Powder (à¶šà·’à¶»à·’ à¶´à·’à¶§à·’) - Ambewela</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Vegetables (à¶‘à·…à·€à·…à·”)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Leaks (à¶½à·“à¶šà·Šà·ƒà·Š)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Beans (<span lang=\"si\">à¶¶à·à¶‚à¶ à·’)</span></td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Carrot (à¶šà·à¶»à¶§à·Š)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Beet (à¶¶à·“à¶§à·Š)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Gotukola (à¶œà·œà¶§à·”à¶šà·œà¶½â€‹)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Mush Room (à·„à¶­à·”)</td>\r\n<td>1 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Fruits (à¶´à·…à¶­à·”à¶»à·”)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Red Apple (à¶»à¶­à·” à¶‡à¶´à¶½à·Š)</td>\r\n<td>20</td>\r\n<td>per&nbsp;apple</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Green Apple (à¶šà·œà·… à¶‡à¶´à¶½à·Š)</td>\r\n<td>20</td>\r\n<td>per&nbsp;apple</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Pineapple (à¶…à¶±à·Šà¶±à·à·ƒà·’)</td>\r\n<td>3</td>\r\n<td>per pineapple</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Banana Kolikuttu (à¶šà·à¶½à·’à¶šà·”à¶§à·Šà¶§à·” à¶šà·™à·ƒà·™à¶½à·Š)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Black Grapes (à¶¯à¶¸à·Š/à¶šà¶½à·” à¶‡à¶´à¶½à·Š)</td>\r\n<td>1 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Dragon Fruit (à¶©à·Š&zwj;à¶»à·à¶œà¶±à·Š à·†à·˜à¶§à·Š)</td>\r\n<td>10 dragon fruits</td>\r\n<td>per dradon fruit</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Spices (à¶šà·”à·…à·”à¶¶à¶©à·”)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Green Chilli (à¶…à¶¸à·” à¶¸à·’à¶»à·’à·ƒà·Š)</td>\r\n<td>1 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Chilli Powder red (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</td>\r\n<td>250 g</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Chilli pieces (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·à¶¶à¶½à·’)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Fish Chips (à¶‹à¶¸à·Šà¶¶à¶½à¶šà¶© à¶šà·à¶¶à¶½à·’)</td>\r\n<td>1&nbsp;kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Pepper Powder (à¶œà¶¸à·Šà¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</td>\r\n<td>250 g</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Salt (à¶½à·”à¶±à·” (à¶…à¶ºà¶©à·“à¶±à·Š à¶¸à·’à·à·Š&zwj;à¶»â€‹))</td>\r\n<td>1 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Curry Powder (à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)</td>\r\n<td>250 g</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Katta Sambal bottle(à¶šà¶§à·Šà¶§ à·ƒà¶¸à·Šà¶¶à¶½à·Š à¶¶à·à¶­à¶½à·Š)</td>\r\n<td>2</td>\r\n<td>per bottle</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Mango Chatni Bottle (à¶…à¶¹ à¶ à¶§à·Šà¶±à·’ à¶¶à·à¶­à¶½à·Š)</td>\r\n<td>1</td>\r\n<td>per bottle</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Big Onion (à¶½à·œà¶šà·” à·…à·–à¶«à·”)</td>\r\n<td>2 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Red Onion (à¶»à¶­à·” à·…à·–à¶«à·”)</td>\r\n<td>2 kg</td>\r\n<td>per kg&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Coconut Powder (à¶´à·’à¶§à·’ à¶šà¶½ à¶´à·œà¶½à·Š à¶šà·’à¶»à·’)</td>\r\n<td>3 kg</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Candy (à¶´à·à¶«à·’à¶»à·ƒ à¶šà·‘à¶¸â€‹)</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Chocolate (à¶ à·œà¶šà¶½à¶§à·Š) - Toblerone</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Jam (à¶¢à·‘à¶¸à·Š) - Mixed Fruit (à¶¸à·’à·à·Š&zwj;à¶» à¶´à·…à¶­à·”à¶»à·”)<br />Note - Jam type (Brand and the falvour) <br />will depend on the availability of the time <br />of order placement</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>Other</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Potato Chips</td>\r\n<td>10 packs</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Tipitip</td>\r\n<td>5 packs</td>\r\n<td>per pack</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">\r\n<p><strong>Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</strong></p>\r\n</td>\r\n<td style=\"text-align: right;\"><strong>30,000 LKR</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 0.00, 0, 0),
(92, 4, 25, 8, 'Oats', 0, 'Packs', 1, '-4240254916_186962885990_1585266716_n.jpg', 'Order and get delivered oats to your home from Sri Lankas biggest online shopping mall', '<p>Order and get delivered oats to your home from Sri Lankas biggest online shopping mall</p>', 0, 0.00, 0, 0),
(94, 9, 32, 8, 'Dried Red Chilli (à·€à·’à¶ºà·…à·’ à¶¸à·’à¶»à·’à·ƒà·Š)', 0, '1', 0, '-68732538854_122470602052_1585288756_n.jpg', 'Buy dried red chilli online and get delivered to your home from freshcart.lk', '<p>Buy dried red chilli online and get delivered to your home from freshcart.lk</p>', 0, 0.00, 0, 4),
(95, 9, 32, 8, 'Chilli Powder red(à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)100g', 0, 'Packs', 0, '-14228707089_176974433817_1585289212_n.jpg', 'Order chilli powder and get delivered to your home from FreshCart.lk', '<p>&nbsp;Order chilli powder and get delivered to your home from FreshCart.lk</p>', 0, 1.00, 1, 2),
(96, 9, 32, 8, 'Chilli pieces(à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·à¶¶à¶½à·’)100g	', 0, 'Packs', 0, '-157137760238_34065380668_1585293193_n.jpg', 'Order Chilli Pieces online from Sri Lankas largest online retailer', '<p>Order Chilli Pieces online from Sri Lankas largest online retailer</p>', 0, 1.00, 1, 1),
(97, 9, 32, 8, 'Fish Chips(à¶‹à¶¸à·Šà¶¶à¶½à¶šà¶© à¶šà·à¶¶à¶½à·’)100g', 0, 'Packs', 0, '-22439569637_168763571269_1585293342_n.jpg', 'Order fish chips from Sri Lankas largest online retailer and get delivered to home', '<p>Order fish chips from Sri Lankas largest online retailer and get delivered to home</p>', 0, 1.00, 1, 5),
(98, 9, 32, 8, 'Pepper Powder(à¶œà¶¸à·Šà¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)100g', 0, 'Packs', 0, '-25166016277_166037124629_1585293452_n.jpg', 'Pepper powder buy online from freshcart.lk', '<p>Pepper powder buy online from freshcart.lk</p>', 0, 1.00, 1, 7),
(99, 9, 32, 8, 'Curry Powder(à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)100g', 0, 'Packs', 0, '-61582789627_129620351279_1585293617_n.jpg', 'Buy curry powder and get delivered to your home from freshcart.lk', '<p>Buy curry powder and get delivered to your home from freshcart.lk</p>', 0, 1.00, 1, 3),
(100, 9, 32, 8, 'Salt (à¶…à¶ºà¶©à·“à¶±à·Š à¶¸à·’à·à·Šâ€à¶»â€‹ à¶½à·”à¶±à·”)400g', 0, 'Packs', 0, '-130194836631_61008304275_1585293790_n.jpg', 'Buy salt online and get delivered to home from online shopping', '<p>Buy salt online and get delivered to home from online shopping</p>', 0, 1.00, 1, 8),
(101, 9, 32, 8, 'Garlic (à·ƒà·”à¶¯à·”à·…à·–à¶«à·”)', 0, '1', 1, '-122238940562_68964200344_1585294831_n.jpg', 'Shop online for garlic and get delivered to home from freshcart.lk', '<p>Shop online for garlic and get delivered to home from freshcart.lk</p>', 0, 0.00, 0, 6),
(102, 11, 35, 3, 'Fresh Milk 1 Ltr (Ambewela)', 0, 'Packs', 275, '-4224462998_186978677908_1585296717_n.jpg', 'Buy ambewela fresh milk online and get delivered to your home', '<p>&nbsp;</p>\r\n<p>The original price of the product is 240 LKR per ltr, but we have to charge 270 LKR due depleting stocks, so we have to bring milk from other area to Colombo.</p>\r\n<p>If you are concerned about the added 35 LKR, kindly not order, we are trying to supply continouslly, that is why.</p>\r\n<p>Team</p>\r\n<p>Fresh Cart</p>', 0, 1.00, 20, 0),
(103, 0, 0, 2, 'Fresh Milk 1 ltr (Kothmale)', 0, 'Packs', 250, '-73840146032_117362994874_1585297342_n.jpg', 'Order Kothmale fresh milk online and get it delivered to your home from Sri Lankas largest online retailer', '<p>Buy&nbsp;Kothmale fresh milk online and get delivered to your home</p>\r\n<p>We deliver fresh milk to your home, on our earliest convenience. As the largest online retailer of the Sri Lanka, we highly value the trust we earn from you by making you satisfied. FreshCart.lk is always dedicated to serve you, at anytime whenever you will be in need.</p>\r\n<p>Kothmale&nbsp;fresh milk is also a proud Sri Lankan product, which has been tested to be free on toxic chemicals</p>', 1, 1.00, 1, 0),
(104, 11, 35, 16, 'Fresh Milk 900 ml (Highland)', 0, 'Packs', 180, '-65259462044_125943678862_1585297944_n.jpg', 'Buy Highland fresh milk online and get delivered to your home  We deliver fresh milk to your home, on our earliest convenience. As the largest online retailer of the Sri Lanka, we highly value the trust we earn from you by making you satisfied. FreshCart.lk is always dedicated to serve you, at anytime whenever you will be in need.  Highland fresh milk is also a proud Sri Lankan product, which has been tested to be free on toxic chemicals', '<p>Buy&nbsp;Highland fresh milk online and get delivered to your home</p>\r\n<p>We deliver fresh milk to your home, on our earliest convenience. As the largest online retailer of the Sri Lanka, we highly value the trust we earn from you by making you satisfied. FreshCart.lk is always dedicated to serve you, at anytime whenever you will be in need.</p>\r\n<p>Highland&nbsp;fresh milk is also a proud Sri Lankan product, which has been tested to be free on toxic chemicals</p>', 0, 1.00, 20, 0),
(105, 6, 26, 19, 'Lindt Spezialitaten Chocolate', 0, '1', 1, '-56242036255_134961104651_1585341220_n.jpg', 'Shop online and buy lindt spezialitaten chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk', '<p>Shop online and buy lindt spezialitaten chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk</p>', 0, 0.00, 0, 0),
(106, 0, 26, 18, 'Kandos Milk Chocolate', 0, '1', 0, '-178002598801_13200542105_1585341685_n.jpg', 'Shop online and buy Kandos Milk chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk', '<p>Shop online and buy Kandos Milk chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk</p>', 0, 0.00, 0, 0),
(107, 6, 26, 19, 'Lindt Pralines Nougat', 0, '1', 0, '-172449318636_18753822270_1585342049_n.jpg', 'Shop online and buy Lindt Pralines Nougat chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk', '<p>Shop online and buy Lindt Pralines Nougat chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk</p>', 0, 0.00, 0, 0),
(108, 0, 26, 19, 'Lindt Zartbitter', 0, '1', 0, '-116482917507_74720223399_1585342443_n.jpg', 'Shop online and buy Lindt Zartbitter chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lkShop online and buy Lindt Zartbitter chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk', '<p>Shop online and buy Lindt Zartbitter chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk</p>', 0, 0.00, 0, 0),
(109, 0, 26, 19, 'Lindt Volmilch', 0, '1', 0, '-48441066656_142762074250_1585342660_n.jpg', 'Shop online and buy Lindt Vollmilch chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk', '<p>Shop online and buy Lindt Vollmilch chocolate and get it delivered to yourself or for your lover, we are the largest online retailer in Sri Lanka freshcart.lk</p>', 0, 0.00, 0, 0),
(110, 9, 38, 24, 'Vegetable Oil 1 ltr (Any Brand)', 0, 'Botles', 0, '-34006907503_157196233403_1585344285_n.jpg', 'Buy fortune vegetable oil by shopping online in Sri Lanka', '<p>Buy fortune vegetable oil by shopping online in Sri Lanka</p>', 0, 1.00, 4, 0),
(111, 9, 38, 23, 'Marina Vegetable Oil 1 ltr', 0, 'Bottles', 0, '-40840932983_150362207923_1585344384_n.jpg', 'Buy Marina vegetable oil by shopping online in Sri Lanka', '<p>Buy Marina vegetable oil by shopping online in Sri Lanka</p>', 0, 1.00, 5, 0),
(113, 14, 39, 28, 'Lifebuoy Soap', 0, 'Bars', 57, '-81745108627_109458032279_1585348922_n.jpg', 'Buy Lifebuoy soap by shopping online with FreshCart.lk', '<p>Buy Lifebuoy soap by shopping online with FreshCart.lk</p>', 1, 10.00, 25, 0),
(114, 14, 39, 29, 'Dettol Soap', 0, 'Bars', 63, '-25473682466_165729458440_1585349042_n.jpg', 'Buy dettol soap online and get delivered to your home', '<p>Buy dettol soap online and get delivered to your home</p>', 1, 10.00, 25, 0),
(115, 14, 40, 29, 'Dettol 500 ml', 0, 'Bottles', 575, '-35138174688_156064966218_1585349351_n.jpg', 'Dettol for sale on Sri Lankas largest online retailer, delivery can be arranged', '<p>Dettol for sale on Sri Lankas largest online retailer, delivery can be arranged</p>', 1, 1.00, 10, 0),
(116, 14, 40, 29, 'Dettol Handwash', 0, 'Bottles', 0, '-114258396750_76944744156_1585349605_n.jpg', 'Dettol hand wash for sale on Sri Lankas largest online retailer, delivery can be arranged', '<p>Dettol hand wash for sale on Sri Lankas largest online retailer, delivery can be arranged</p>', 0, 1.00, 10, 0),
(117, 14, 40, 28, 'Lifebuoy Hand Wash', 0, 'Bottles', 0, '-157180326984_34022813922_1585349732_n.jpg', 'Hand wash for sale on Sri Lankas largest online retailer, delivery can be arranged', '<p>Hand wash for sale on Sri Lankas largest online retailer, delivery can be arranged</p>', 0, 1.00, 10, 0),
(118, 5, 41, 30, 'Home Made Face Masks', 0, '1', 60, '-102935524627_88267616279_1585385017_n.jpg', 'Buy face masks online and get them delivered to your home from the Sri Lankas largest online shopping mall', '<p>These masks are being produced at home in a hygienic environment and later sterilized too. Buy and get yourself protected from the diseases.</p>', 0, 50.00, 500, 0),
(119, 10, 42, 31, 'Coca Cola 250 ml', 0, 'Bottles', 0, '-23870616626_167332524280_1585385593_n.jpg', 'Shop online and buy coca cola and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy coca cola and get delivered to your home, for your family party or for an evening get together</p>', 0, 1.00, 700, 0),
(120, 10, 42, 31, 'Coca Cola 750 ml', 0, 'Bottles', 160, '-41838973494_149364167412_1585386138_n.jpg', 'Shop online and buy coca cola and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy coca cola and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 5, 0),
(121, 10, 42, 31, 'Coca Cola 2l', 0, 'Bottles', 350, '-145612506991_45590633915_1585386266_n.jpg', 'Shop online and buy coca cola and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy coca cola and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 5, 0),
(122, 10, 42, 32, 'Red Bull 250 ml', 0, 'Bottles', 375, '-54373165391_136829975515_1585386876_n.jpg', 'Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 20, 0),
(123, 10, 42, 32, 'Red Bull 350 ml', 0, 'Bottles', 545, '-45745260088_145457880818_1585386951_n.jpg', 'Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 20, 0),
(124, 10, 42, 32, 'Red Bull Sugar Free 250 ml', 0, 'Bottles', 375, '-131964007905_59239133001_1585387073_n.jpg', 'Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 20, 0),
(125, 10, 42, 32, 'Red Bull Sugar Free 350 ml', 0, 'Bottles', 545, '-146926232561_44276908345_1585387106_n.jpg', 'Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy red bull and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 20, 0),
(126, 10, 42, 31, 'Coca Cola Zero 250 ml', 0, '1', 0, '-130645109321_60558031585_1585392941_n.jpg', 'Shop online and buy coca cola zero and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy coca cola zero and get delivered to your home, for your family party or for an evening get together</p>', 0, 1.00, 700, 0),
(127, 10, 42, 31, 'Coca Cola Zero 750 ml', 0, 'Bottles', 160, '-112431078280_78772062626_1585393046_n.jpg', 'Shop online and buy coca cola zero and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy coca cola zero and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 10, 0);
INSERT INTO `product` (`id`, `category`, `sub_category`, `brand`, `name`, `discount`, `unite`, `price`, `image_name`, `short_description`, `description`, `in_stock`, `min_qty`, `max_qty`, `queue`) VALUES
(128, 10, 42, 31, 'Coca Cola Zero 2 L', 0, 'Bottles', 350, '-46143223494_145059917412_1585393149_n.jpg', 'Shop online and buy coca cola zero and get delivered to your home, for your family party or for an evening get together', '<p>Shop online and buy coca cola zero and get delivered to your home, for your family party or for an evening get together</p>', 1, 1.00, 5, 0),
(129, 11, 37, 33, 'Anchor Full Cream Milk Powder 400g', 0, 'Packs', 395, '-12016774631_179186366275_1585394039_n.jpg', 'Buy anchor full cream milk powder from Sri Lankas largest online shopping mall and get delivered to your home especially in Colombo area', '<p>Buy anchor full cream milk powder from Sri Lankas largest online shopping mall and get delivered to your home especially in Colombo area</p>', 1, 1.00, 10, 5),
(130, 11, 37, 33, 'Anchor Full Cream Milk Powder 1 kg', 0, 'Packs', 995, '-107756263347_83446877559_1585394097_n.jpg', 'Buy anchor full cream milk powder from Sri Lankas largest online shopping mall and get delivered to your home especially in Colombo area', '<p>Buy anchor full cream milk powder from Sri Lankas largest online shopping mall and get delivered to your home especially in Colombo area</p>', 1, 1.00, 10, 6),
(131, 11, 37, 34, 'Raththi Full Cream Milk Powder 1 kg', 0, 'Packs', 995, '-66393170051_124809970855_1585394443_n.jpg', 'Shop online Raththi Full Cream Milk Powder and get delivered to your home island wide and especially in Colombo suburbs', '<p>Shop online Raththi Full Cream Milk Powder and get delivered to your home island wide and especially in Colombo suburbs</p>', 1, 1.00, 10, 3),
(132, 11, 37, 34, 'Rathti Full Cream Milk Powder 400 g', 0, 'Packs', 395, '-184712839311_6490301595_1585394495_n.jpg', 'Shop online Raththi Full Cream Milk Powder and get delivered to your home island wide and especially in Colombo suburbs', '<p>Shop online Raththi Full Cream Milk Powder and get delivered to your home island wide and especially in Colombo suburbs</p>', 1, 1.00, 10, 4),
(133, 10, 43, 36, 'Nescafe 200 g', 0, 'Bottles', 1370, '-186308098911_4895041995_1585395464_n.jpg', 'Order Nescafe online from Sri Lankas largest online retailer shop freshcart.lk', '<p>Order Nescafe online from Sri Lankas largest online retailer shop freshcart.lk</p>', 1, 1.00, 2, 0),
(134, 10, 43, 36, 'Nescafe Ice Coffee 200 ml', 0, 'Packs', 65, '-19529257709_171673883197_1585396122_n.jpg', 'Online shop fo nescafe ice coffee and get delivered to your home', '<p>Online shop fo nescafe ice coffee and get delivered to your home</p>', 0, 1.00, 700, 0),
(135, 10, 44, 37, 'Milo Powder 200 g', 0, '1', 0, '-176752594061_14450546845_1585396519_n.jpg', 'Milo Powder order online and get delivered to your home from freshcart.lk', '<p>Milo Powder order online and get delivered to your home from freshcart.lk</p>', 0, 1.00, 700, 3),
(136, 10, 44, 37, 'Milo Powder 400 g', 0, 'Packs', 365, '-25832266145_165370874761_1585396546_n.jpg', 'Milo Powder order online and get delivered to your home from freshcart.lk', '<p>Milo Powder order online and get delivered to your home from freshcart.lk</p>', 1, 1.00, 5, 4),
(137, 10, 44, 38, 'Nestomalt Powder 400 g', 0, 'Packs', 395, '-136870331158_54332809748_1585396830_n.jpg', 'Nestomalt Powder order online and get delivered to your home from freshcart.lk', '<p>Nestomalt Powder order online and get delivered to your home from freshcart.lk</p>', 1, 1.00, 5, 5),
(138, 10, 44, 39, 'Horlicks Classic malt 400g', 0, 'Bottles/Packs', 430, '-186564068587_4639072319_1585397241_n.jpg', 'Order and buy horlicks online from freshcart.lk nad get delivered to your home', '<p>Order and buy horlicks online from freshcart.lk nad get delivered to your home</p>', 0, 1.00, 700, 6),
(139, 10, 44, 39, 'Horlicks Chocolate Delight 400g', 0, 'Bottles/Packs', 425, '-72174346295_119028794611_1585397304_n.jpg', 'Order and buy horlicks online from freshcart.lk nad get delivered to your home', '<p>Order and buy horlicks online from freshcart.lk nad get delivered to your home</p>', 0, 1.00, 700, 7),
(140, 10, 44, 39, 'Horlicks Elaich Surprise 400 g', 0, 'Bottles/Packs', 425, '-157962227395_33240913511_1585397377_n.jpg', 'Order and buy horlicks online from freshcart.lk nad get delivered to your home', '<p>Order and buy horlicks online from freshcart.lk nad get delivered to your home</p>', 0, 1.00, 700, 8),
(141, 10, 44, 39, 'Horlicks Traditional 500 g', 0, 'Bottles/Packs', 475, '-188399284210_2803856696_1585397438_n.jpg', 'Order and buy horlicks online from freshcart.lk nad get delivered to your home', '<p>Order and buy horlicks online from freshcart.lk nad get delivered to your home</p>', 0, 1.00, 700, 9),
(142, 10, 44, 39, 'Horlicks Womens Caromel 400 g', 0, 'Bottles/Packs', 425, '-11829959636_179373181270_1585397666_n.jpg', 'Order and buy horlicks online from freshcart.lk nad get delivered to your home', '<p>Order and buy horlicks online from freshcart.lk nad get delivered to your home</p>', 0, 1.00, 700, 10),
(143, 10, 44, 39, 'Horlicks Womens Chocolate 400 g', 0, 'Bottles/Packs', 425, '-120258784433_70944356473_1585397694_n.jpg', 'Order and buy horlicks online from freshcart.lk and get delivered to your home', '<p>Order and buy horlicks online from freshcart.lk and get delivered to your home</p>', 0, 1.00, 700, 11),
(144, 10, 44, 37, 'Milo Instant Drink 240 ml', 0, '1', 0, '-84148482578_107054658328_1585397911_n.jpg', 'Order and buy milo instant drink online from freshcart.lk nad get delivered to your home', '<p>Order and buy milo instant drink online from freshcart.lk nad get delivered to your home</p>', 0, 1.00, 700, 2),
(145, 10, 44, 37, 'Milo Instant Drink 180 ml', 0, 'Packs', 55, '-145049198442_46153942464_1585397949_n.jpg', 'Order and buy milo instant drink online from freshcart.lk nad get delivered to your home', '<p>Order and buy milo instant drink online from freshcart.lk nad get delivered to your home</p>', 1, 20.00, 20, 1),
(146, 14, 39, 40, 'Sunlight Soap', 0, 'Bars', 55, '-162978910449_28224230457_1585398765_n.jpg', 'Buy sunlight soap from freshcart.lk and get it delivered to your home', '<p>Buy sunlight soap from freshcart.lk and get it delivered to your home</p>', 1, 10.00, 35, 0),
(148, 14, 46, 40, 'Sunlight Washing Powder 5 kg Petals', 0, '1', 0, '-138205794766_52997346140_1585399383_n.jpg', 'Online shopping Sri Lanka has never been easy before, order Sunlight online and get it delivered to your home from FreshCart,lk', '<p>Online shopping Sri Lanka has never been easy before, order Sunlight online and get it delivered to your home from FreshCart,lk</p>', 0, 1.00, 700, 0),
(149, 14, 46, 40, 'Sunlight Washing Powder 2 kg Lemon and Rose', 0, 'Packs', 285, '-68171144541_123031996365_1585399421_n.jpg', 'Online shopping Sri Lanka has never been easy before, order Sunlight online and get it delivered to your home from FreshCart,lk', '<p>Online shopping Sri Lanka has never been easy before, order Sunlight online and get it delivered to your home from FreshCart,lk</p>', 1, 1.00, 10, 0),
(150, 24, 48, 8, 'Chicken Eggs 10 in one', 0, 'Packs', 0, '-46791871222_144411269684_1585414672_n.jpg', 'Shop eggs online from freshcart.lk', '<p>This pack comes with 10 eggs thus the minimum you can order is 10 eggs.</p>', 0, 1.00, 10, 0),
(151, 24, 50, 8, 'Crab (à¶šà¶šà·”à·…à·”à·€à·)', 0, 'kg', 0, '-127668511645_63534629261_1585415391_n.jpg', 'Buy Crab online and get delivered to your home from freshcart.lk', '<p>Buy Crab online and get delivered to your home from freshcart.lk</p>', 0, 0.50, 700, 1),
(152, 24, 50, 8, 'Shrims (à¶‰à·ƒà·Šà·ƒà¶±à·Š)', 0, 'kg', 0, '-170929954092_20273186814_1585415695_n.jpg', 'Order shrimps online and get delivered to your home from FreshCart.lk', '<p>Order shrimps online and get delivered to your home from FreshCart.lk</p>', 0, 0.50, 700, 5),
(153, 24, 50, 8, 'Squid (à¶¯à·à¶½à·Šà¶½à·)', 0, 'kg', 0, '-133390283469_57812857437_1585415876_n.jpg', 'Buy Squid online from Sri Lankas largest online seafood store freshcart.lk and get delivered to your home', '<p>Buy Squid online from Sri Lankas largest online seafood store freshcart.lk and get delivered to your home</p>', 0, 0.50, 700, 6),
(154, 24, 50, 8, 'Eel (à¶†à¶³à·)', 0, 'kg', 0, '-168833100769_22370040137_1585416147_n.jpg', 'Buy Eel online from Sri Lankas largest online seafood store freshcart.lk and get delivered to your home', '<p>Buy Eel online from Sri Lankas largest online seafood store freshcart.lk and get delivered to your home</p>', 0, 0.50, 700, 2),
(155, 24, 51, 8, 'Chicken', 0, 'kg', 0, '-18161606151_173041534755_1585416438_n.jpg', 'Buy branded or unbranded chicken from FreshCart.lk and get delivered to your home', '<p>Buy branded or unbranded chicken from FreshCart.lk and get delivered to your home</p>', 0, 0.50, 20, 0),
(156, 24, 51, 8, 'Beef Steak (à·„à¶»à¶šà·Š à¶¸à·ƒà·Š)', 0, 'kg', 0, '-78840156616_112362984290_1585416821_n.jpg', 'Online shopping mall freshcart.lk is now delivering beef steaks to your home', '<p>Online shopping mall freshcart.lk is now delivering beef steaks to your home</p>', 0, 0.50, 700, 0),
(157, 24, 51, 8, 'Duck meat (à¶­à·à¶»à· à¶¸à·ƒà·Š)', 0, 'kg', 0, '-78583881252_112619259654_1585417789_n.jpg', 'Order duck meat and get delivered to your home from Sri Lankas largest online retailer', '<p>Order duck meat and get delivered to your home from Sri Lankas largest online retailer</p>', 0, 0.50, 700, 0),
(158, 24, 51, 8, 'Beef Fillet (à·„à¶»à¶šà·Š à¶¸à·ƒà·Š à·†à·’à¶½à¶§à·Š)', 0, 'kg', 0, '-176679961180_14523179726_1585418162_n.jpg', 'Order beef fillet online and get delivered to home', '<p>Order beef fillet online and get delivered to home</p>', 0, 0.50, 700, 0),
(159, 24, 50, 8, 'Mackerel (à¶¸à·à¶šà¶»à¶½à·Š)', 0, 'kg', 0, '-45628109814_145575031092_1585418698_n.jpg', 'Buy Mackerel and get delivered to your home from Sri Lankas largest online raw food stall', '<p>Buy Mackerel and get delivered to your home from Sri Lankas largest online raw food stall</p>', 0, 0.50, 700, 3),
(160, 24, 50, 8, 'Tuna (à¶§à·–à¶±à·)', 0, 'kg', 0, '-164476951466_26726189440_1585418919_n.jpg', 'Tuna for sale online and delivery', '<p>Tuna for sale online and delivery</p>', 0, 0.50, 700, 8),
(161, 24, 50, 8, 'Tilapia (à¶­à·’à¶½à·à¶´à·’à¶ºà·)', 0, 'kg', 0, '-79210460679_111992680227_1585419062_n.jpg', 'Tilapia for sale online and we do the home delivery', '<p>Tilapia for sale online and we do the home delivery</p>', 0, 0.50, 10, 7),
(162, 24, 50, 8, 'Sardines à·ƒà·à¶©à·’à¶±à·Š)', 0, 'kg', 0, '-29325909849_161877231057_1585419357_n.jpg', 'Sardines can be bought online and get delivered to home now easily and in fresh condition, place the order online, pay and get delivered to your home', '<p>Sardines can be bought online and get delivered to home now easily and in fresh condition, place the order online, pay and get delivered to your home</p>', 0, 0.50, 700, 4),
(166, 3, 12, 8, 'Reisins (à¶¸à·”à¶¯à·Šà¶¯à¶»à¶´à·Šà¶´à·…à¶¸à·Š / à·€à·’à¶ºà·…à·’ à¶¸à·’à¶¯à·’)', 0, 'kg', 0, '-861615625_190341525281_1585438602_n.jpg', 'Order reisins online and get delivered to your home in Sri Lanka', '<p>Order reisins online and get delivered to your home in Sri Lanka</p>', 0, 0.50, 3000, 0),
(167, 3, 12, 8, 'Olives (à¶”à¶½à·’à·€à·Šà·ƒà·Š)', 0, 'Bottle', 800, '-113344207866_77858933040_1585438944_n.jpg', 'Olives can be bought on online shopping in Sri Lanka', '<p>Olives can be bought on online shopping in Sri Lanka.</p>\r\n<p>And we are extremely sorry for the fact that we can not specify the brand at the moment due to shortage of stoks, but still we will deliver the best brand that we have.</p>', 1, 1.00, 5, 0),
(168, 3, 12, 8, 'King Coconut (à¶­à·à¶¹à·’à¶½à·’)', 0, 'Amount', 100, '-142307934371_48895206535_1585439149_n.jpg', 'Order king coconut online from the largest online shopping cart in Sri Lanka', '<p>Order king coconut online from the largest online shopping cart in Sri Lanka</p>', 0, 1.00, 10, 0),
(169, 9, 55, 30, 'Budget Pack', 0, 'Packs', 0, '-20532542858_170670598048_1585467061_n.jpg', 'You can order spices online and get delivered to your home on time now with freshcart.lk', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à·ƒà·’à¶ºà¶½à·”à¶¸ à¶¸à·’à¶½ à¶œà¶«à¶±à·Š à¶»à¶¢à¶ºà·š à¶´à·à¶½à¶± à¶¸à·’à¶½à¶§ à¶ºà¶§à¶­à·Šà·€ à·ƒà¶¯à·„à¶±à·Š à¶šà¶» à¶‡à¶­ (à¶‡à¶­à·à¶¸à·Š à·€à·’à¶§ à¶»à·”.10-20 à¶š à·€à·™à¶±à·ƒà¶šà·Š à¶´à·à·€à¶­à·’à¶š à·„à·à¶šâ€‹)</p>\r\n<p>Speacial note - Charges are mentioned in accordance with the governemnt regulations (unless if there is a difference of 10 - 20 LKR may be)</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td>\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n<td>\r\n<p>Brand</p>\r\n<p>(à·€à·™à·…à¶³ à¶±à·à¶¸à¶º)</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=94\">Dried Red Chilli (à·€à·’à¶ºà·…à·’ à¶¸à·’à¶»à·’à·ƒà·Š)</a></td>\r\n<td>250g</td>\r\n<td>Sorry not available</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=95\">Chilli Powder red (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</a></td>\r\n<td>200 g</td>\r\n<td>130 per 100g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=96\">Chilli pieces (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·à¶¶à¶½à·’)</a></td>\r\n<td>200 g</td>\r\n<td>110 per 100 g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=97\">Fish Chips (à¶‹à¶¸à·Šà¶¶à¶½à¶šà¶© à¶šà·à¶¶à¶½à·’)</a></td>\r\n<td>200 g</td>\r\n<td>400 per 10 g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=98\">Pepper Powder (à¶œà¶¸à·Šà¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</a></td>\r\n<td>100 g</td>\r\n<td>350 per 100 g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=99\">Curry Powder (à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)</a></td>\r\n<td>100 g</td>\r\n<td>110 per 100 g&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=100\">Salt (à¶½à·”à¶±à·” (à¶…à¶ºà¶©à·“à¶±à·Š à¶¸à·’à·à·Š&zwj;à¶»â€‹)</a></td>\r\n<td>400 g</td>\r\n<td>65 per 100 g</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=101\">Garlic (à·ƒà·”à¶¯à·”à·…à·–à¶«à·”)</a></td>\r\n<td>500 g</td>\r\n<td>Sorry not available</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Vegetable Oil</td>\r\n<td>1 L</td>\r\n<td>595 per ltr</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp; the order, and will be shown to you as a price summary before making any payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can not just add it as an hidden charge as all of the other&nbsp;companies do and has been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·” à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’ à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 1.00, 1, 0),
(170, 9, 55, 30, 'Family Pack', 0, 'Packs', 0, '-83797916381_107405224525_1585468065_n.jpg', 'Order spices online and get delivered to your home from online shopping mall', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à·ƒà·’à¶ºà¶½à·”à¶¸ à¶¸à·’à¶½ à¶œà¶«à¶±à·Š à¶»à¶¢à¶ºà·š à¶´à·à¶½à¶± à¶¸à·’à¶½à¶§ à¶ºà¶§à¶­à·Šà·€ à·ƒà¶¯à·„à¶±à·Š à¶šà¶» à¶‡à¶­ (à¶‡à¶­à·à¶¸à·Š à·€à·’à¶§ à¶»à·”.10-20 à¶š à·€à·™à¶±à·ƒà¶šà·Š à¶´à·à·€à¶­à·’à¶š à·„à·à¶šâ€‹)</p>\r\n<p>Speacial note - Charges are mentioned in accordance with the governemnt regulations (unless if there is a difference of 10 - 20 LKR may be)</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td>\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n<td>\r\n<p>Brand</p>\r\n<p>(à·€à·™à·…à¶³ à¶±à·à¶¸à¶º)</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=94\">Dried Red Chilli (à·€à·’à¶ºà·…à·’ à¶¸à·’à¶»à·’à·ƒà·Š)</a></td>\r\n<td>500g</td>\r\n<td>per kg</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=95\">Chilli Powder red (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</a></td>\r\n<td>400 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=96\">Chilli pieces (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·à¶¶à¶½à·’)</a></td>\r\n<td>400 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=97\">Fish Chips (à¶‹à¶¸à·Šà¶¶à¶½à¶šà¶© à¶šà·à¶¶à¶½à·’)</a></td>\r\n<td>400&nbsp;g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=98\">Pepper Powder (à¶œà¶¸à·Šà¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</a></td>\r\n<td>200 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=99\">Curry Powder (à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)</a></td>\r\n<td>200 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=100\">Salt (à¶½à·”à¶±à·” (à¶…à¶ºà¶©à·“à¶±à·Š à¶¸à·’à·à·Š&zwj;à¶»â€‹)</a></td>\r\n<td>400 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=101\">Garlic (à·ƒà·”à¶¯à·”à·…à·–à¶«à·”)</a></td>\r\n<td>500 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Vegetable Oil</td>\r\n<td>3 L</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 1.00, 700, 0),
(171, 9, 55, 30, 'Supreme Package', 0, 'Packs', 0, '-57692996081_133510144825_1585475888_n.jpg', 'Buy spices from the sri lankas largest online shopping mall', '<p>This Contains (à¶¸à·™à·„à·’ à¶…à¶±à·Šà¶­à¶»à·Šà¶œà¶­ à·€à¶±à·Šà¶±à·š)</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à·ƒà·’à¶ºà¶½à·”à¶¸ à¶¸à·’à¶½ à¶œà¶«à¶±à·Š à¶»à¶¢à¶ºà·š à¶´à·à¶½à¶± à¶¸à·’à¶½à¶§ à¶ºà¶§à¶­à·Šà·€ à·ƒà¶¯à·„à¶±à·Š à¶šà¶» à¶‡à¶­ (à¶‡à¶­à·à¶¸à·Š à·€à·’à¶§ à¶»à·”.10-20 à¶š à·€à·™à¶±à·ƒà¶šà·Š à¶´à·à·€à¶­à·’à¶š à·„à·à¶šâ€‹)</p>\r\n<p>Speacial note - Charges are mentioned in accordance with the governemnt regulations (unless if there is a difference of 10 - 20 LKR may be)</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>Food Item</p>\r\n<p>(à¶†à·„à·à¶» à·€à¶»à·Šà¶œà¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Quantity</p>\r\n<p>(à¶´à·Š&zwj;à¶»à¶¸à·à¶«à¶ºâ€‹)</p>\r\n</td>\r\n<td>\r\n<p>Unit Price LKR</p>\r\n<p>(à¶’à¶šà·Šà¶šà¶šà¶º à¶¸à·’à·…â€‹ à¶»à·”)</p>\r\n</td>\r\n<td>\r\n<p>Total Price LKR</p>\r\n<p>(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</p>\r\n</td>\r\n<td>\r\n<p>Brand</p>\r\n<p>(à·€à·™à·…à¶³ à¶±à·à¶¸à¶º)</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=94\">Dried Red Chilli (à·€à·’à¶ºà·…à·’ à¶¸à·’à¶»à·’à·ƒà·Š)</a></td>\r\n<td>1 kg</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=95\">Chilli Powder red (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</a></td>\r\n<td>400 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=96\">Chilli pieces (à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·à¶¶à¶½à·’)</a></td>\r\n<td>500 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=97\">Fish Chips (à¶‹à¶¸à·Šà¶¶à¶½à¶šà¶© à¶šà·à¶¶à¶½à·’)</a></td>\r\n<td>200&nbsp;g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=98\">Pepper Powder (à¶œà¶¸à·Šà¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)</a></td>\r\n<td>200 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=99\">Curry Powder (à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)</a></td>\r\n<td>200 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=100\">Salt (à¶½à·”à¶±à·” (à¶…à¶ºà¶©à·“à¶±à·Š à¶¸à·’à·à·Š&zwj;à¶»â€‹)</a></td>\r\n<td>400 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td><a href=\"/view-product.php?id=101\">Garlic (à·ƒà·”à¶¯à·”à·…à·–à¶«à·”)</a></td>\r\n<td>500 g</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Vegetable Oil</td>\r\n<td>4 L</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Pickel Bottle (à¶…à¶ à·Šà¶ à·à¶»à·”) 350 g</td>\r\n<td>1 bottle</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Chilli Paste Bottle (à¶ à·’à¶½à·“ à¶´à·šà·ƒà·Šà¶§à·Š) 350 g</td>\r\n<td>2 bottles&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Katta Sambal Bottle (à¶šà¶§à·Šà¶§ à·ƒà¶¸à·Šà¶¶à¶½à·Š) 350 g</td>\r\n<td>2 bottles</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Mango Chutney Bottle (à¶…à¶¹ à¶ à¶§à·Šà¶±à·’) 350 g</td>\r\n<td>&nbsp;à¶…à¶¹ à¶ à¶§à·Šà¶±à·’</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n<td>Not Specified (à·€à·’à·à·šà·‚à¶ºà·™à¶±à·Š à¶¯à¶šà·Šà·€à· à¶±à·à¶­)&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\">Total Price LKR(à¶¸à·”à¶½à·” à·€à¶§à·’à¶±à·à¶šà¶¸ à¶»à·”â€‹)</td>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp; the order, and will be shown to you as a price summary before making any payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can not just add it as an hidden charge as all of the other&nbsp;companies do and has been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·” à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’ à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 1.00, 700, 0),
(172, 10, 43, 41, 'Laogi 100 g', 0, 'Packs', 100, '-79890046210_111313094696_1585477587_n.jpg', 'Buy Laoji tea online from sri lankas largest online shoppin mall', '<p>Buy Laoji tea online from sri lankas largest online shoppin mall</p>', 1, 1.00, 10, 0),
(173, 10, 43, 41, 'Laogi 200 g', 0, 'Packs', 200, '-103699369875_87503771031_1585477618_n.jpg', 'Buy Laoji tea online from sri lankas largest online shoppin mall', '<p>Buy Laoji tea online from sri lankas largest online shoppin mall</p>', 1, 1.00, 10, 0),
(174, 10, 43, 42, 'Zesta Tea 200 g', 0, 'Packs', 310, '-64707145357_126495995549_1585477732_n.jpg', 'Buy Zesta tea online from sri lankas largest online shoppin mall', '<p>Buy Zesta tea online from sri lankas largest online shoppin mall</p>', 1, 1.00, 10, 0),
(175, 10, 43, 42, 'Zesta 500 g', 0, 'Packs', 750, '-58293635853_132909505053_1585477939_n.jpg', 'Buy Zesta tea online from sri lankas largest online shoppin mall', '<p>Buy Zesta tea online from sri lankas largest online shoppin mall</p>', 1, 1.00, 5, 0),
(176, 4, 30, 5, 'Harishchandra Noodles 400 g', 0, 'Packs', 0, '-152393809450_38809331456_1585483356_n.jpg', 'Buy harishchandra noodles and get delivered to home by Sri Lankas largest shopping mall', '<p>Buy harishchandra noodles and get delivered to home by Sri Lankas largest shopping mall</p>', 1, 1.00, 10, 0),
(177, 4, 57, 8, 'Flour 1 kg', 0, 'Packs', 0, '-169036907749_22166233157_1585483434_n.jpg', 'Buy flour get delivered to home by Sri Lankas largest shopping mall', '<p>Buy flour get delivered to home by Sri Lankas largest shopping mall</p>', 0, 1.00, 5, 0),
(178, 24, 53, 8, 'Chicken Sausage or Chicken HotDog (Depending on availability) 1kg', 0, 'Packs', 0, '-21011702834_170191438072_1585483658_n.jpg', 'Order sausages online and get delivered to your home', '<p>Order sausages online and get delivered to your home</p>', 0, 1.00, 700, 0),
(179, 6, 28, 21, 'Munchee Super Cream Cracker 190 g', 0, 'Packs', 100, '-51459607156_139743533750_1585484037_n.jpg', 'Munchee cream cracker delivery to home, order online from freshcart.lk', '<p>Munchee cream cracker delivery to home, order online from freshcart.lk</p>', 1, 2.00, 10, 0),
(180, 6, 28, 21, 'Munchee SUper Cream Cracker 490 g', 0, 'Packs', 200, '-46586918437_144616222469_1585484132_n.jpg', 'Munchee cream cracker delivery to home, order online from freshcart.lk', '<p>Munchee cream cracker delivery to home, order online from freshcart.lk</p>', 1, 1.00, 10, 0),
(181, 6, 28, 22, 'Malliban Smart Cream Cracker 490 g', 0, 'Packs', 200, '-128954728621_62248412285_1585484208_n.jpg', 'Maliban cream cracker delivery to home, order online from freshcart.lk', '<p>Maliban cream cracker delivery to home, order online from freshcart.lk</p>', 1, 1.00, 10, 0),
(182, 6, 28, 22, 'Malliban Smart Cream Cracker 190 g', 0, 'Packs', 100, '-155070644643_36132496263_1585484276_n.jpg', 'Maliban cream cracker delivery to home, order online from freshcart.lk', '<p>Maliban cream cracker delivery to home, order online from freshcart.lk</p>', 1, 2.00, 10, 0),
(183, 6, 28, 22, 'Malliban Chocolate Cream Biscuit 400 g', 0, 'Packs', 200, '-3695476700_187507664206_1585485065_n.jpg', 'Maliban chocolate cream biscuit delivery to home, order online from freshcart.lk', '<p>Maliban chocolate cream biscuit delivery to home, order online from freshcart.lk</p>', 1, 1.00, 10, 0),
(184, 6, 28, 22, 'Maliban Chocolate Cream Biscuit 100 g', 0, 'Packs', 55, '-17565918698_173637222208_1585485129_n.jpg', 'Maliban chocolate cream biscuit delivery to home, order online from freshcart.lk', '<p>Maliban chocolate cream biscuit delivery to home, order online from freshcart.lk</p>', 0, 1.00, 700, 0),
(185, 6, 28, 22, 'Munchee Chocolate Puff 200 g', 0, 'Packs', 120, '-125901287087_65301853819_1585487921_n.jpg', 'Order munchee chocolate puff and get delivered to your home from freshcart.lk', '<p>Order munchee chocolate puff and get delivered to your home from freshcart.lk</p>', 1, 2.00, 10, 0),
(186, 11, 35, 2, 'Kothmale Fresh Milk 1 ltr', 0, 'Packs', 250, '-176867737880_14335403026_1585488548_n.jpg', 'Buy Kothmale fresh milk online and get delivered to your home', '<p>Buy Kothmale fresh milk online and get delivered to your home</p>', 0, 1.00, 20, 0),
(187, 11, 37, 3, 'Lakspray 400 g', 0, 'Packs', 395, '-30518114039_160685026867_1585489441_n.jpg', 'lakspray milk powder home delivery by freshcart.lk', '<p>lakspray milk powder home delivery by freshcart.lk</p>', 1, 1.00, 10, 1),
(188, 11, 37, 3, 'Lakspray 1kg', 0, 'Packa', 995, '-106262963141_84940177765_1585489475_n.jpg', 'lakspray milk powder home delivery by freshcart.lk', '<p>lakspray milk powder home delivery by freshcart.lk</p>\r\n<p>&nbsp;</p>', 1, 1.00, 5, 2),
(189, 24, 52, 8, 'Salmon', 0, 'Tins', 0, '-122161647080_69041493826_1585511483_n.jpg', 'Canned fish online delivery by freshcart.lk', '<p>Canned fish online delivery by freshcart.lk</p>', 0, 1.00, 700, 0),
(190, 5, 41, 30, 'Washable Face Masks 25 pack', 0, 'Pack', 2500, '-9166604777_182036536129_1585513713_n.jpg', 'Buy face masks online and get delivered', '<p>These are not Surgical Face Masks, these are home made, clean and hygeinic face masks.</p>\r\n<p>Sine these are not surgical masks these are usable in stoping spreding from you to others.</p>', 1, 2.00, 100, 0),
(191, 6, 58, 43, 'Pringles Potato Crisps Original 42 g', 0, 'Packs', 220, '-166060463027_25142677879_1585519026_n.jpg', 'Order pringles online and get delivered to your home', '<p>Order pringles online and get delivered to your home</p>\r\n<p>&nbsp;</p>', 0, 1.00, 700, 0),
(192, 6, 58, 43, 'Pringles Potato Crisps Sour, Cream and Onion 42 g', 0, 'Packs', 220, '-24106624037_167096516869_1585519082_n.jpg', 'Order pringles online and get delivered to your home', '<p>Order pringles online and get delivered to your home</p>', 0, 1.00, 700, 0),
(193, 6, 58, 34, 'Pringles Potato Crisps Original 110 g', 0, 'Packs', 450, '-2882654992_188320485914_1585519191_n.jpg', 'Order pringles online and get delivered to your home', '<p>Order pringles online and get delivered to your home</p>', 0, 1.00, 700, 0),
(194, 6, 58, 43, 'Pringles Potato Crisps Sour, Cream and Onion 110 g', 0, 'Packs', 450, '-88459977422_102743163484_1585519241_n.jpg', 'Order pringles online and get delivered to your home', '<p>Order pringles online and get delivered to your home</p>', 1, 10.00, 20, 0),
(195, 6, 58, 43, 'Pringles Potato Crisps Smoky BBQ 110 g', 0, 'Packs', 450, '-138939923864_52263217042_1585519298_n.jpg', 'Order pringles online and get delivered to your home', '<p>Order pringles online and get delivered to your home</p>', 1, 10.00, 20, 0);
INSERT INTO `product` (`id`, `category`, `sub_category`, `brand`, `name`, `discount`, `unite`, `price`, `image_name`, `short_description`, `description`, `in_stock`, `min_qty`, `max_qty`, `queue`) VALUES
(196, 11, 59, 44, 'CIC Dairies Package', 0, 'Packs', 4290, '-12240250217_178962890689_1585546064_n.jpg', 'Get delivered your prefered CIC dairy products to your home', '<p>This Contains</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">Product</td>\r\n<td style=\"text-align: left;\">Price per product LKR</td>\r\n<td style=\"text-align: left;\">Amount</td>\r\n<td style=\"text-align: left;\">Total Price LKR</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Set Yougurt 80 g</td>\r\n<td style=\"text-align: left;\">40</td>\r\n<td style=\"text-align: left;\">20</td>\r\n<td style=\"text-align: left;\">800</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Set Yougurt 475 g</td>\r\n<td style=\"text-align: left;\">190</td>\r\n<td style=\"text-align: left;\">2</td>\r\n<td style=\"text-align: left;\">380</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Jelly Yougurt 80 g</td>\r\n<td style=\"text-align: left;\">40</td>\r\n<td style=\"text-align: left;\">10</td>\r\n<td style=\"text-align: left;\">400</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Yougurt Drink 200 ml</td>\r\n<td style=\"text-align: left;\">75</td>\r\n<td style=\"text-align: left;\">6</td>\r\n<td style=\"text-align: left;\">450</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Curd 950 g</td>\r\n<td style=\"text-align: left;\">290</td>\r\n<td style=\"text-align: left;\">2</td>\r\n<td style=\"text-align: left;\">580</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Fresh Milk 1 ltr</td>\r\n<td style=\"text-align: left;\">280</td>\r\n<td style=\"text-align: left;\">6</td>\r\n<td style=\"text-align: left;\">1680</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Total Price LKR</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">4290</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp; the order, and will be shown to you as a price summary before making any payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can not just add it as an hidden charge as all of the other&nbsp;companies do and has been recentlly cought<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·” à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’ à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 1, 1.00, 50, 0),
(197, 1, 60, 44, 'CIC Dairy Package', 0, 'Packs', 0, '-68161893738_123041247168_1585546408_n.jpg', 'By dairy products and get delivered to your home', '<p>This Contains</p>\r\n<table style=\"border-color: beige;\" border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: left;\">Product</td>\r\n<td style=\"text-align: left;\">Price per product LKR</td>\r\n<td style=\"text-align: left;\">Amount</td>\r\n<td style=\"text-align: left;\">Total Price LKR</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Set Yogurt 80 g</td>\r\n<td style=\"text-align: left;\">40</td>\r\n<td style=\"text-align: left;\">20</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Set Yougurt 475 g</td>\r\n<td style=\"text-align: left;\">190</td>\r\n<td style=\"text-align: left;\">2</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Jelly Yougurt 80 g</td>\r\n<td style=\"text-align: left;\">40</td>\r\n<td style=\"text-align: left;\">10</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Yougurt Drink 200 ml</td>\r\n<td style=\"text-align: left;\">75</td>\r\n<td style=\"text-align: left;\">6</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Curd 950 g</td>\r\n<td style=\"text-align: left;\">290</td>\r\n<td style=\"text-align: left;\">2</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Fresh Milk 1 ltr</td>\r\n<td style=\"text-align: left;\">280</td>\r\n<td style=\"text-align: left;\">6</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: left;\">Total Price LKR</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n<td style=\"text-align: left;\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<table border=\"beige\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"5\" rowspan=\"2\">\r\n<p>Essential Delivery Charge and the payment for the delivery boy<br />(à¶…à¶­à·Š&zwj;à¶ºà·€à·à·Š&zwj;à¶ºà¶º à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·” à·ƒà·„ à¶”à¶¶à¶§ à¶œà·™à¶±à·€à·’à¶­à·Š à¶¯à·™à¶±à·Šà¶±à·à¶œà·š à¶œà·à·ƒà·Šà¶­à·”à·€â€‹)<br /><br />Note - this payment will be reduced and refunded)shared between) in case if we will&nbsp;get&nbsp;few other orders to be delivered to the same area, in such case&nbsp;the cost will be shared between and refunded accordingly<br />à¶”à¶¶ à¶´à·Š&zwj;à¶»à¶¯à·šà·à¶ºà¶§à¶¸ à¶½à¶¶à· à¶¯à·’à¶º à¶ºà·”à¶­à·” à·€à·™à¶±à¶­à·Š à¶‡à¶«à·€à·”à¶¸à·Š à¶šà·“à¶´à¶ºà¶šà·Š à¶…à¶´ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶º à·„à¶»à·„à· à¶½à·à¶¶à·”à¶«à·” à·€à·’à¶§à¶šà¶¯à·“ à·„à· à¶”à¶¶ à¶…à·ƒà¶½à·Šà·€à·à·ƒà·“à¶±à·Šà¶¯ à·ƒà¶¸à¶œ à¶‘à¶šà·Šà·€à·“ à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶½à¶¶à· à¶¯à·™à¶±à·Šà¶±à·š à¶±à¶¸à·Š, à¶¸à·™à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à¶…à¶¯à·à¶½ à·ƒà·’à¶ºà¶½à·”&nbsp;à¶¯à·™à¶±à· à¶…à¶­à¶» à¶¶à·™à¶¯à·“ à¶ºà¶±à·” à¶‡à¶­â€‹.<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p>Delivery fee will be automatically added at the end of the process of placing&nbsp; the order, and will be shown to you as a price summary before making any payments</p>\r\n<p>à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹.à¶‡à¶«à·€à·”à¶¸ à·ƒà¶¸à·Šà¶´à·–à¶»à·Šà¶« à·€à¶± à¶…à·€à·ƒà·Šà¶­à·à·€à·šà¶¯à·“ à¶‡à¶«à·€à·”à¶¸à¶§ à¶…à¶¯à·à·… à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€ à·ƒà·Šà·€à¶ºà¶‚à¶šà·Š&zwj;à¶»à·“à¶ºà·€ à¶‘à¶šà¶­à·” à·€à¶±à·” à¶‡à¶­â€‹. à¶¸à·”à¶¯à¶½à·Š à¶œà·™à·€à·“à¶¸à¶§ à¶´à·™à¶» à¶‘à¶º à·ƒà·’à¶ºà¶½à·” à¶œà·à·ƒà·Šà¶­à·” à·ƒà¶¯à·„à¶±à·Š à·€à·’à·ƒà·Šà¶­à¶»à¶ºà¶šà·Š à¶½à·™à·ƒà¶§ à¶”à¶¶à¶§ à¶¯à·’à·ƒà·Š à·€à¶±à·” à¶‡à¶­â€‹</p>\r\n<p>&nbsp;</p>\r\n<p>If you are not willing to pay the delivery fee you may not order, since we can not just add it as a hidden charge as all of the other&nbsp;companies do and has been recently caught<br /><br />à¶”à¶¶à¶§ à¶…à¶´ à·„à¶§ à¶´à·Š&zwj;à¶»à·€à·à·„à¶± à¶œà·à·ƒà·Šà¶­à·”à·€à¶šà·Š à¶œà·™à·€à·“à¶¸à·š&nbsp; à¶…à¶šà¶¸à·à¶­à·Šà¶­à¶šà·Š à¶´à·€à¶­à·’à¶±à·Šà¶±à·šà¶±à¶¸à·Š à¶šà·à¶»à·”à¶«à·à¶šà¶» à¶‡à¶«à·€à·”à¶¸à·Š&nbsp; à¶šà·’à¶»à·“à¶¸à·™à¶±à·Šà·€ à·…à¶šà·’à¶±à·Šà¶±â€‹, à¶¸à¶šà·Šà¶±à·’à·ƒà·à¶¯ à¶ºà¶­à·Š; à¶‘à¶¸ à¶´à·Š&zwj;à¶»à·€à·à·„à¶±&nbsp;à¶œà·à·ƒà·Šà¶­à·” à·ƒà·à¶œà·€à·”à¶«à·” à¶œà·à·ƒà·Šà¶­à·” à¶½à·™à·ƒ à¶…à¶ºà¶šà¶» à¶œà·à¶±à·“à¶¸à¶§ à¶…à¶´&nbsp; à¶…à¶šà¶¸à·à¶­à·’ à¶¶à·à·€à·’à¶±à·’, à·ƒà·„ à¶‘à·ƒà·š à¶šà·’à¶»à·“à¶¸ à¶±à·“à¶­à·’ à·€à·’à¶»à·à¶°à·“ à·€à¶±&nbsp;à¶¶à·à·€à·’à¶±à·’</p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>If you also need to add some other goods apart from what is mentioned on the package, you always can add any item which is available on the web site, and get them all delivered at once, which will further reduce the delivery cost for you and risk of social contact when you come out of the home<br />à¶”à¶¶à¶§ à¶´à·à¶šà·šà¶¢à¶ºà·š à·ƒà¶³à·„à¶±à·Š à¶šà¶» à¶‡à¶­à·’ à¶¯à·šà¶§ à¶…à¶¸à¶­à¶»à·€ à·€à·™à¶±à¶­à·Š à¶·à·à¶«à·Šà¶© à¶šà·’à·„à·’à¶´à¶ºà¶šà·Š à¶‘à¶šà¶­à·” à¶šà·’à¶»à·“à¶¸à¶§ à¶…à·€à·à·Š&zwj;à¶º à¶±à¶¸à·Š, à¶”à¶¶à¶§ à·ƒà·‘à¶¸ à·€à·’à¶§à¶¸ à·€à·™à¶¶à·Š à¶…à¶©à·€à·’à¶ºà·š à¶‡à¶­à·’ à¶•à¶±à·‘à¶¸ à¶…à¶ºà·’à¶­à¶¸à¶ºà¶šà·Š à¶‘à¶šà·Š à¶šà·… à·„à·à¶šà·’ à¶…à¶­à¶» à¶’à·€à· à·ƒà·’à¶ºà¶½à·Šà¶½à¶¸ à¶‘à¶šà·€à¶» à¶½à¶¶à· à¶œà¶­ à·„à·à¶šà·’à¶º, à¶‘à¶¸à¶Ÿà·’à¶±à·Š à¶¶à·™à¶¯à· à·„à·à¶»à·“à¶¸à·š à¶´à·’à¶»à·’à·€à·à¶º à¶­à·€à¶¯à·”à¶»à¶§à¶­à·Š à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­. à¶”à¶¶ à¶±à·’à·€à·ƒà·’à¶±à·Š à¶´à·’à¶§à¶­à¶§ à¶‘à¶± à·€à·’à¶§ à·ƒà¶¸à·à¶¢ à·ƒà¶¸à·Šà¶¶à¶±à·Šà¶°à¶­à· à¶‡à¶­à·’à·€à·“à¶¸à·š à¶…à·€à¶¯à·à¶±à¶¸à¶¯ à¶…à¶©à·” à·€à¶±à·” à¶‡à¶­.</p>\r\n<div id=\"tw-target-rmn-container\" class=\"tw-ta-container hide-focus-ring tw-nfl\">&nbsp;</div>\r\n<p>Note - We will not be able to specify the brand of the products on this situation, instead we will deliver you the best available brand, plus incase if you need a specific brand, please be kind to contact us via mobile before placing the order.</p>\r\n<p>à·€à·à¶¯à¶œà¶­à·Š - à¶¸à·™à¶¸ à·„à¶¯à·’à·ƒà·’ à¶…à·€à·ƒà·Šà¶®à·à·€à·šà¶¯à·“ à¶…à¶´ à·€à·’à·ƒà·’à¶±à·Š à¶´à·€à¶­à·’à¶±à·Š à¶œà·”à¶«à·à¶­à·Šà¶¸à¶šà¶­à·à·€à¶ºà·™à¶±à·Š à¶‰à·„à·…à¶¸ à¶±à·’à·‚à·Šà¶´à·à¶¯à¶±à¶º à¶”à¶¶à¶§ à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶šà¶§à¶ºà·”à¶­à·” à¶šà¶»à¶± à¶…à¶­à¶» à¶ºà¶¸à·Š à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶±à·Š à¶½à¶¶à· à¶¯à·“à¶¸à¶§ à¶±à·œà·„à·à¶šà·’ à·€à·“à¶¸à¶§ à¶‰à¶© à¶‡à¶­â€‹, à¶”à¶¶à¶§ à¶ºà¶¸à·Š à¶šà·’à·ƒà·’ à·€à·’à·à·šà·‚ à·€à·™à·…à¶¯ à¶±à·à¶¸à¶ºà¶šà·’à¶±à·Šà¶¸ à¶…à·€à·à·Š&zwj;à¶ºà¶º à·€à·š à¶±à¶¸à·Š à¶’ à¶¶à·€ à¶¯à·”à¶»à¶šà¶®à¶± à¶‡à¶¸à¶­à·”à¶¸à¶šà·’à¶±à·Š à¶¯à¶±à·Šà·€à¶± à¶¸à·™à¶±à·Š à¶šà·à¶»à·”à¶«à·’à¶šà·€ à¶‰à¶½à·Šà¶½à· à·ƒà·’à¶§à·’à¶¸à·”&nbsp;&nbsp;</p>', 0, 1.00, 2, 0),
(198, 10, 61, 8, 'Water Bottle 5 ltr', 0, 'Bottle', 550, '-133569708468_57633432438_1585567843_n.jpg', 'Water bottle buy online and get delivered to your home', '<p>Water bottle buy online and get delivered to your home</p>', 1, 1.00, 10, 0),
(199, 9, 32, 8, 'Dried Red Chilli (à·€à·’à¶ºà·…à·’ à¶¸à·’à¶»à·’à·ƒà·Š)250g', 0, 'Packs', 0, '-154906537586_36296603320_1585580637_n.jpg', 'Order dried red chilies and get delivered to your home from Sri Lankas largest shopping mall freshcart.lk', '<p>Order dried red chilies and get delivered to your home from Sri Lankas largest shopping mall freshcart.lk</p>', 0, 1.00, 10, 0),
(200, 9, 32, 8, 'Chilli Powder red(à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)250g', 0, 'Packs', 0, '-71432117394_119771023512_1585580769_n.jpg', 'Buy chilli powder online and get delivered to your home by freshcart.lk Sri Lankas largest online shopping mall', '<p>Buy chilli powder online and get delivered to your home by freshcart.lk Sri Lankas largest online shopping mall</p>', 0, 1.00, 4, 0),
(201, 9, 32, 8, 'Chilli pieces(à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·à¶¶à¶½à·’)250', 0, 'Packs', 0, '-147682109543_43521031363_1585580934_n.jpg', 'Buy chilli pieces online and get delivered to your home from the Sri Lankas largest online shopping mall freshcart.lk', '<p>Buy chilli pieces online and get delivered to your home from the Sri Lankas largest online shopping mall freshcart.lk</p>', 0, 1.00, 4, 0),
(202, 9, 32, 8, 'Fish Chips(à¶‹à¶¸à·Šà¶¶à¶½à¶šà¶© à¶šà·à¶¶à¶½à·’)250g', 0, 'Packs', 0, '-39289412485_151913728421_1585581228_n.jpg', 'Buy fish chips online and get delivered to your home from Sri Lankas biggest online shopping mall, online shopping has been this easy before in Sri Lanka', '<p>Buy fish chips online and get delivered to your home from Sri Lankas biggest online shopping mall, online shopping has been this easy before in Sri Lanka</p>', 0, 1.00, 4, 0),
(203, 9, 32, 8, 'Pepper Powder(à¶œà¶¸à·Šà¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)250g', 0, 'Packs', 0, '-86530395856_104672745050_1585583159_n.jpg', 'Pepper powder buy and get delivered to your home from Sri Lankas largest online shopping mall', '<p>Pepper powder buy and get delivered to your home from Sri Lankas largest online shopping mall</p>', 0, 1.00, 4, 0),
(204, 9, 32, 8, 'Curry Powder(à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)250g', 0, 'Packs', 0, '-127360781652_63842359254_1585583299_n.jpg', 'Get delivered curry powder to your home', '<p>Get delivered curry powder to your home</p>', 0, 1.00, 4, 0),
(205, 0, 0, 8, 'Chilli Powder red(à¶¸à·’à¶»à·’à·ƒà·Š à¶šà·”à¶©à·”)500g', 0, 'Packs', 0, '-17757240059_173445900847_1585583490_n.jpg', ' Order chilli powder and get delivered to your home from FreshCart.lk', '<p>&nbsp;Order chilli powder and get delivered to your home from FreshCart.lk</p>', 1, 1.00, 2, 0),
(206, 9, 32, 8, 'Curry Powder(à¶­à·”à¶±à¶´à·„ à¶šà·”à¶©à·”)500g', 0, 'Packs', 0, '-109848805191_81354335715_1585584475_n.jpg', 'Curry powder buy and get delivered to your home from Sri Lankas largest online retailer shop', '<p>Curry powder buy and get delivered to your home from Sri Lankas largest online retailer shop</p>', 0, 1.00, 2, 0),
(207, 11, 35, 0, 'Fresh Milk  ltr', 0, 'Bottle', 280, '-46757335185_144445805721_1585714052_n.jpg', 'Buy fresh milk (Rich Life or CIC depending on availability) online and get delivered to your home', '<p>Buy fresh milk (Rich Life or CIC depending on availability) online and get delivered to your home</p>', 1, 5.00, 100, 0),
(208, 11, 62, 0, 'Yogurts', 0, 'Cup', 40, '-18099845950_173103294956_1585764031_n.jpg', 'Buy yorguts (Rich Life or CIC depending on availability) online and get delivered to your home', '<p>Buy yorguts (Rich Life or CIC depending on availability) online and get delivered to your home</p>', 1, 1.00, 100, 0),
(209, 11, 62, 0, 'Yogurt Drink', 0, 'Bottle', 75, '-30398656774_160804484132_1585764102_n.jpg', 'Buy yorgut drinks (Rich Life or CIC depending on availability) online and get delivered to your home', '<p>Buy yorgut drinks (Rich Life or CIC depending on availability) online and get delivered to your home</p>', 1, 1.00, 100, 0),
(210, 11, 63, 45, 'Iced Coffee UHT 1Ltr', 0, 'Pack', 300, '-122722412177_68480728729_1585818312_n.jpg', 'Buy  rich life iced coffee UHT 1Ltr from Sri Lankas largest online shopping mall.', '<p>Buy &nbsp;rich life iced coffee UHT 1Ltr from Sri Lankas largest online shopping mall.</p>', 1, 1.00, 100, 0),
(211, 11, 63, 45, 'Strawberry Flavoured Milk UHT 180ml', 0, 'Packs', 55, '-83847615128_107355525778_1585818515_n.jpg', 'Buy  rich life strawberry flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.', '<p>Buy &nbsp;rich life strawberry flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.</p>', 1, 1.00, 100, 0),
(212, 11, 63, 45, 'Vanilla Flavoured Milk UHT 180ml', 0, 'Packs', 55, '-29586012465_161617128441_1585818616_n.jpg', 'Buy  rich life vanilla flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.', '<p>Buy &nbsp;rich life vanilla flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.</p>', 1, 1.00, 100, 0),
(213, 11, 63, 45, 'Chocolate Flavoured Milk UHT 180ml', 0, 'Packs', 55, '-172735736779_18467404127_1585818714_n.jpg', 'Buy rich life chocolate flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.', '<p>Buy rich life chocolate flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.</p>', 1, 1.00, 100, 0),
(214, 11, 63, 45, 'Ice Coffee Flavoured Milk UHT 180ml', 0, 'Packs', 55, '-46888587794_144314553112_1585818787_n.jpg', 'Buy  rich life ice coffee flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.', '<p>Buy &nbsp;rich life ice coffee flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.</p>', 1, 1.00, 100, 0),
(215, 11, 63, 45, 'Toffee Flavoured Milk UHT 180ml', 0, 'Packs', 55, '-145630788649_45572352257_1585818909_n.jpg', 'Buy  rich life toffee flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.', '<p>Buy &nbsp;rich life toffee flavoured milk UHT 180ml from Sri Lankas largest online shopping mall.</p>', 1, 1.00, 100, 0),
(216, 11, 63, 45, 'Full Cream Milk UHT 180ml', 0, 'Pack', 60, '-145784378413_45418762493_1585819055_n.jpg', 'Buy full cream milk UHT 180ml from Sri Lankas largest online shopping mall.', '<p>Buy full cream milk UHT 180ml from Sri Lankas largest online shopping mall.</p>', 1, 1.00, 100, 0),
(217, 11, 35, 45, 'Full Cream Fesh Milk UHT 1Ltr', 0, 'Pack', 260, '-130412831773_60790309133_1585819168_n.jpg', 'Buy full cream fresh milk UHT 1Ltr from Sri Lankas largest online shopping mall.', '<p>Buy full cream fresh milk UHT 1Ltr from Sri Lankas largest online shopping mall.</p>', 0, 1.00, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `icon`, `banner`, `sort`) VALUES
(1, 'Readymade Packages', '-34286752192_156916388714_1585196934_n.jpg', '-69115072631_122088068275_1585196935_n.jpg', 1),
(2, 'Vegetable', '-15047503645_176155637261_1585201916_n.jpg', '-153596812445_37606328461_1585201916_n.jpg', 2),
(3, 'Fruit', '-106636379941_84566760965_1585202338_n.jpg', '-100003310197_91199830709_1585202338_n.jpg', 3),
(4, 'Grains', '-83015293368_108187847538_1585202998_n.jpg', '-87578829696_103624311210_1585202998_n.jpg', 4),
(5, 'Medicine & Healthcare', '-46596478983_144606661923_1585255467_n.jpg', '-36258864484_154944276422_1585255467_n.jpg', 13),
(6, 'Candy,Chocolates, Biscuits', '-102300474895_88902666011_1585259772_n.jpg', '-96513282590_94689858316_1585259772_n.jpg', 7),
(9, 'Spices, Flavours, Oils', '-165380603174_25822537732_1585286543_n.jpg', '-167494116206_23709024700_1585286543_n.jpg', 6),
(10, 'Beverages, Tea, Coffee', '-101262230127_89940910779_1585286689_n.jpg', '-174296365632_16906775274_1585397389_n.jpg', 9),
(11, 'Dairy Products', '-176817565201_14385575705_1585286902_n.jpg', '-38751292403_152451848503_1585286902_n.jpg', 11),
(14, 'Beauty and Hygiene', '-55835072605_135368068301_1585348583_n.jpg', '-142406769107_48796371799_1585348583_n.jpg', 10),
(15, 'Baby Care and Toys', '-186560614764_4642526142_1585399636_n.jpg', '-54283639402_136919501504_1585399636_n.jpg', 12),
(20, 'Cakes, Fresh Flowers', '-14023574087_177179566819_1585405923_n.jpg', '-49835252547_141367888359_1585405924_n.jpg', 8),
(21, 'Ladies Fashion, Essentials', '-165420168151_25782972755_1585407171_n.jpg', '-90345095624_100858045282_1585407172_n.jpg', 14),
(22, 'Gentlemen Fashion', '-134980044977_56223095929_1585407251_n.jpg', '-188695940926_2507199980_1585407251_n.jpg', 15),
(23, 'Construction and Hardware', '-2743823047_188459317859_1585407527_n.jpg', '-87812573952_103390566954_1585407528_n.jpg', 16),
(24, 'Fish, Seafood, and Poultry', '-64477826800_126725314106_1585413748_n.jpg', '-119843375996_71359764910_1585413749_n.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_photo`
--

CREATE TABLE `product_photo` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `queue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_photo`
--

INSERT INTO `product_photo` (`id`, `product`, `image_name`, `caption`, `queue`) VALUES
(1, 40, '-132758337272_58444803634_1585486419_n.jpg', 'ddsdsddsd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `stars` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `customer` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product`, `stars`, `title`, `description`, `customer`, `date_time`, `is_active`) VALUES
(1, 53, '5', 'dsdsd', 'sdsdsd', 0, '2020-03-29 18:20:53', 0),
(2, 1, '3', 'Modified the package', 'Can I removed the 2kg Chicken and order the Budget Pack (Rs. 6190 values) with reduced price?\r\n', 2749, '2020-04-03 12:01:03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `short_description` longtext NOT NULL,
  `description` longtext NOT NULL,
  `queue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `category`, `name`, `image_name`, `sort`) VALUES
(1, 1, 'Vegetable', '-52975903816_138227237090_1585198357_n.jpg', 3),
(2, 1, 'Fruits', '-118577732267_72625408639_1585198422_n.jpg', 4),
(3, 1, 'Fish, Seafood, and Poultry', '-143199010786_48004130120_1585198494_n.jpg', 5),
(4, 1, 'Grains & Noodles', '-188067547886_3135593020_1585200208_n.jpg', 2),
(5, 1, 'All in One', '-121919610000_69283530906_1585200661_n.jpg', 1),
(12, 3, 'Separate Fruit Items', '-153015998063_38187142843_1585213422_n.jpg', 0),
(14, 4, 'Rice', '-48669858498_142533282408_1585226205_n.jpg', 0),
(15, 2, 'All Vegetable', '-63287913650_127915227256_1585235721_n.jpg', 0),
(21, 5, 'Routine Medicines for Chronic Patients', '-46315893738_144887247168_1585255577_n.jpg', 2),
(22, 5, 'Medicines that do not necessarily need a prescrition', '-143377900193_47825240713_1585255647_n.jpg', 3),
(23, 5, 'Medicines that necessarily need a prescrition', '-171070473325_20132667581_1585255683_n.jpg', 4),
(24, 4, 'Natural Grains', '-165964095651_25239045255_1585257046_n.jpg', 0),
(25, 4, 'Packed Grains', '-8103737322_183099403584_1585257070_n.jpg', 0),
(26, 6, 'Chocolate', '-107178540287_84024600619_1585259843_n.jpg', 0),
(27, 6, 'Jam', '-176512821748_14690319158_1585259904_n.jpg', 0),
(28, 6, 'Buscuits', '-51294233321_139908907585_1585264765_n.jpg', 0),
(29, 6, 'Cakes', '-113388761637_77814379269_1585264811_n.jpg', 0),
(30, 4, 'Noodles and Pasta', '-100176004867_91027136039_1585266980_n.jpg', 0),
(31, 4, 'Soya Meat', '-107522793069_83680347837_1585267355_n.jpg', 0),
(32, 9, 'Natural Spices', '-82949030878_108254110028_1585287538_n.jpg', 2),
(33, 9, 'ReadyMade Spices (Soup cubes and etc)', '-95984742182_95218398724_1585287777_n.jpg', 3),
(35, 11, 'Fresh Milk (à¶±à·à·€à·”à¶¸à·Š à¶‘à·…à¶šà·’à¶»à·’)', '-165729951360_25473189546_1585295492_n.jpg', 2),
(36, 11, 'Cheese and Butter  (à¶ à·“à·ƒà·Š à·ƒà·„ à¶¶à¶§à¶»à·Š)', '-129341016647_61862124259_1585295780_n.jpg', 3),
(37, 11, 'Milk Powder (à¶šà·’à¶»à·’ à¶´à·’à¶§à·’)', '-174469792305_16733348601_1585296010_n.jpg', 4),
(38, 9, 'Oils', '-37654259077_153548881829_1585344237_n.jpg', 4),
(39, 14, 'Soap', '-96366473160_94836667746_1585348751_n.jpg', 0),
(40, 14, 'Liquids and Sanitizers and Handwash', '-58467985062_132735155844_1585349282_n.jpg', 0),
(41, 5, 'Home Made Face Masks', '-159176450061_32026690845_1585384523_n.jpg', 1),
(42, 10, 'Cokes and Energy Drinks', '-140268114527_50935026379_1585385477_n.jpg', 0),
(43, 10, 'Tea and Coffee', '-115004823508_76198317398_1585393318_n.jpg', 0),
(44, 10, 'Malts and Chocolate Drinks', '-41906752282_149296388624_1585395270_n.jpg', 0),
(46, 14, 'Washing Powder', '-90142213544_101060927362_1585399327_n.jpg', 0),
(48, 24, 'Eggs', '-168489232573_22713908333_1585413903_n.jpg', 0),
(50, 24, 'SeaFood and Fish', '-115602205487_75600935419_1585414274_n.jpg', 0),
(51, 24, 'Poultry (Chicken, Beef and other meat)', '-125177184125_66025956781_1585414545_n.jpg', 0),
(52, 24, 'Canned  ', '-86573994672_104629146234_1585420614_n.jpg', 0),
(53, 24, 'Chicken Sausages and Chicken  MeatBalls', '-41920555568_149282585338_1585420922_n.jpg', 0),
(54, 9, 'Bottled and Canned Spices and Food Flavours', '-172882762026_18320378880_1585425985_n.jpg', 5),
(55, 9, 'Spice Packages', '-67160724616_124042416290_1585466954_n.jpg', 1),
(56, 15, 'Packages', '-119433884104_71769256802_1585474658_n.jpg', 0),
(57, 4, 'Flour', '-124300957860_66902183046_1585483387_n.jpg', 0),
(58, 6, 'Snacks', '-134988440008_56214700898_1585518692_n.jpg', 0),
(59, 11, 'Package 1', '-177202264723_14000876183_1585544961_n.jpg', 1),
(60, 1, 'Dairries', '-57625043042_133578097864_1585546188_n.jpg', 6),
(61, 10, 'Water', '-118353509119_72849631787_1585567734_n.jpg', 0),
(62, 11, 'Yogurt ', '-115449307729_75753833177_1585763899_n.jpg', 0),
(63, 11, 'Flavoured Milk', '-105170454027_86032686879_1585817578_n.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `authToken` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastLogin` datetime NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resetcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offer`
--
ALTER TABLE `offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_photo`
--
ALTER TABLE `product_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_to_cart`
--
ALTER TABLE `add_to_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2485;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `offer`
--
ALTER TABLE `offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_photo`
--
ALTER TABLE `product_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
