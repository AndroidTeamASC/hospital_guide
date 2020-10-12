-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2020 at 12:31 PM
-- Server version: 5.6.41-84.1
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
-- Database: `dsvhozmy_hospital_guide`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_banner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hospital_name`, `hospital_image`, `hospital_banner`, `place`, `phone_no`, `website_link`, `email`, `facebook_link`, `created_at`, `updated_at`) VALUES
(1, 'ကန်သာယာဆေးရုံ', '/image/1600428866.logo_kan_thar_yar.JPG', '/banner/banner_kan_thar_yar.jpg', 'အမှတ်(၈၇)၊ (၆)မိုင်ခွဲ၊ ပြည်လမ်း၊ လှိုင်မြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၅၀၅၂၈၄၊ ၀၉ ၃၄၀၀၉၀၀၀၂၊ ၀၉ ၃၄၀၀၉၀၀၀၄၊ ၀၉ ၃၀၅၁၁၁၁၁၊ ၀၉ ၃၀၅၃၃၃၃၃', 'http://kantharyartelemedicine.com/', 'telemedicine.kantharyar@gmail.com', 'https://www.facebook.com/ktyhospital', '2020-09-18 17:34:26', '2020-09-18 17:34:26'),
(2, 'ပင်လုံဆေးရုံ', '/image/1600429025.logo_pinlon.JPG', '/banner/banner_pinlon.jpg', 'အမှတ်(၉)၊ ဆရာစံလမ်း၊ (၂၂၇)ရပ်ကွက်၊ မြောက်ဒဂုံမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၃၅၈ ၁၃၂၉၊ ၀၉ ၇၇၇၇၇ ၉၀၀၃၊ ၀၉ ၇၇၇၇၇ ၉၀၀၄', 'http://www.pinlongrouphospitals.com/pinlon-hospital', '-', 'https://www.facebook.com/pinlonofficial', '2020-09-18 17:37:05', '2020-09-18 17:37:05'),
(3, 'ပန်းလှိုင်ဆေးရုံ', '/image/1600429263.logo_pun_hlaing_siloam.JPG', '/banner/banner_pun_hlaing_siloam.jpg', 'ပန်းလှိုင်ဂေါက်ကွင်းအိမ်ယာ၊ လှိုင်သာယာမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၃၆၈ ၄၃၂၃၊ ၀၁ ၃၆၈ ၄၃၂၅၊ ၀၁ ၃၆၈ ၄၃၃၆၊ ၀၁ ၃၆၈ ၃၀၁၅၊ ၀၁ ၃၆၈ ၃၀၆၀၊ ၀၉ ၄၁ ၀၄၂ ၆၇၉', 'https://www.punhlaingsiloamhospitals.com/', 'phsh@phsh.com.mm', 'https://www.facebook.com/punhlainghospitals', '2020-09-18 17:41:03', '2020-09-18 17:41:03'),
(4, 'ဗဟိုစည်ဆေးရုံ', '/image/1600429395.logo_bahosi.JPG', '/banner/banner_bahosi.png', 'အမှတ်(ခ ၁/၆−၃၁/၃၆−၃၇/၃၈)၊ ဗဟိုစည်အိမ်ယာ၊ ဝါးတန်းလမ်း၊ လမ်းမတော်မြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၂၃၀၀ ၅၀၂၊ ၀၁ ၂၃၀၀ ၅၃၀', 'http://www.bahosihospital.com/', 'info@bahosihospital.com', 'https://www.facebook.com/psi.bahosihospital', '2020-09-18 17:43:15', '2020-09-18 17:43:15'),
(5, 'ဝိတိုရိယဆေးရုံ', '/image/1600429553.logo_victoria.JPG', '/banner/banner_victoria.jpg', 'အမှတ်(၆၈)၊ တော်ဝင်လမ်း၊ ၉−မိုင်၊​ မရမ်းကုန်းမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၉၆၆၆၁၄၁၊ ၀၁ ၉၆၆၆၁၃၅', 'https://www.victoriahospitalmyanmar.com/', 'info@witoriyahospital.com', 'https://www.facebook.com/VictoriaHospitalMyanmar', '2020-09-18 17:45:53', '2020-09-18 17:45:53'),
(6, 'သုခကမ္ဘာဆေးရုံ', '/image/1600435030.thukha_gabar_logo.jpg', '/banner/thukha_gabar_banner.jpg', 'အမှတ်(၆၁၅/င)၊ ပြည်လမ်း၊ ကမာရွတ်မြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၅၀၀ ၁၀၀၊ ၀၁ ၅၀၄ ၅၄၅၊ ၀၁ ၅၂၆ ၃၂၉၊ ၀၁ ၅၀၅ ၂၀၀၊ ၀၁ ၅၃၆ ၅၀၀၊ ၀၁ ၅၀၀ ၆၅၅', 'http://thukhagabarhospital.com/', 'thukhagabar.yangon@gmail.com', 'https://www.facebook.com/TKGBHospital', '2020-09-18 19:17:10', '2020-09-18 19:17:10'),
(7, 'အာယု အပြည်ပြည်ဆိုင်ရာဆေးရုံ', '/image/1600435100.logo_aryu.JPG', '/banner/banner_aryu.jpg', 'အမှတ်(၄၀၀)၊ ကျိုက္ကဆံလမ်း၊ တာမွေမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၉၃၇၆ ၂၀၀၊ ၀၉ ၇၆၇၈ ၁၁၁ ၂၂၊ ၀၉ ၇၆၇၈ ၁၁၁ ၃၃၊ ၀၉ ၇၆၇၈ ၁၁၁ ၄၄', 'http://www.aryuhospital.com/', '-', 'https://www.facebook.com/aryuinternationalhospital', '2020-09-18 19:18:20', '2020-09-18 19:18:20'),
(8, 'အာရှတော်ဝင်ဆေးရုံ', '/image/1600435225.logo_asia_royal.jpg', '/banner/banner_asia_royal.jpg', 'အမှတ်(၁၄)၊ ဗဟိုလမ်း၊ စမ်းချောင်းမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၂၃၀ ၄၉၉၉၊ ၀၁ ၅၃၈၀၅၅', 'https://www.asiaroyalhospital.com/', 'info.hrd@asiaroyalhospital.com', 'https://www.facebook.com/asiaroyalhospital', '2020-09-18 19:20:25', '2020-09-18 19:20:25'),
(9, 'အောင်ရတနာဆေးရုံ', '/image/1600435340.logo_aung_yadana.JPG', '/banner/banner_aung_yadana.jpg', 'အမှတ်(၅/၂၄)၊ သီရိဂုဏ်အိမ်ယာ၊ ဝေဇယန္တာလမ်း၊ ၆/၂ ရပ်ကွက်၊ သင်္ဃန်းကျွန်းမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၃၅၅ ၁၃၅၅၊ ၀၉ ၉၆၄ ၅၅၁၃ ၇၇', 'http://www.aungyadana.com/', 'aychospital@gmail.com', 'https://www.facebook.com/aychospital', '2020-09-18 19:22:20', '2020-09-18 19:22:20'),
(10, 'Grand Hantha ဆေးရုံ', '/image/1600435445.logo_grand_hantha.JPG', '/banner/banner_grand_hantha.jpg', 'အမှတ်(၃)၊ နာနတ်တောလမ်း နှင့် ကြည့်မြင့်တိုင် ကမ်းနားလမ်းကြား၊ ကြည့်မြင့်တိုင်မြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၃၁ ၇၆၁၇၊ ၀၁ ၅၃ ၀၀၀၊ ၀၁ ၅၂၃ ၁၁၁၊ ၀၉ ၄၂၂၀ ၄၉၉၁၁၊ ၀၉ ၅၂၀ ၂၂၈၂', 'https://www.grandhantha.com/', 'info@grandhantha.com', 'https://www.facebook.com/grandhantha', '2020-09-18 19:24:05', '2020-09-18 19:24:05'),
(11, 'OSC ဆေးရုံ', '/image/1600435532.logo_osc.JPG', '/banner/banner_osc.jpg', 'အမှတ်(၁၃၇/ဃ)၊ သုဓမ္မာလမ်း၊ မြောက်ဥက္ကလာပမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၆၅၆ ၁၇၆၊ ၀၁ ၆၅၃ ၁၀၇၊ ၀၁ ၆၆၂ ၉၄၃', 'https://oschospitalmm.com/', 'marketing.oschospital@gmail.com', 'https://www.facebook.com/oschospitalmm', '2020-09-18 19:25:32', '2020-09-18 19:25:32'),
(12, 'SSC ဆေးရုံ', '/image/1600435620.logo_ssc.JPG', '/banner/banner_ssc.PNG', 'အမှတ်(၇)၊ အရှေ့ရွှေဂုံတိုင်လမ်း၊​ ဗဟန်းမြို့နယ်၊ ရန်ကုန်မြို့။', '၀၁ ၅၄၁ ၄၅၇၊ ၀၁ ၅၄၄ ၁၂၈၊ ၀၉ ၉၅၅ ၁၀ ၄၀၇၇', 'http://www.pinlongrouphospitals.com/ssc-hospital', '-', 'https://www.facebook.com/sscmed', '2020-09-18 19:27:00', '2020-09-18 19:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_speciality`
--

CREATE TABLE `hospital_speciality` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `speciality_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospital_speciality`
--

INSERT INTO `hospital_speciality` (`id`, `hospital_id`, `speciality_id`, `created_at`, `updated_at`) VALUES
(31, 1, 51, NULL, NULL),
(32, 1, 52, NULL, NULL),
(33, 1, 54, NULL, NULL),
(34, 1, 55, NULL, NULL),
(35, 1, 62, NULL, NULL),
(36, 1, 64, NULL, NULL),
(37, 1, 78, NULL, NULL),
(38, 1, 80, NULL, NULL),
(39, 1, 81, NULL, NULL),
(40, 1, 110, NULL, NULL),
(41, 6, 48, NULL, NULL),
(42, 6, 52, NULL, NULL),
(43, 6, 55, NULL, NULL),
(44, 6, 59, NULL, NULL),
(45, 6, 61, NULL, NULL),
(46, 6, 64, NULL, NULL),
(47, 6, 65, NULL, NULL),
(48, 6, 68, NULL, NULL),
(49, 6, 78, NULL, NULL),
(50, 6, 80, NULL, NULL),
(51, 6, 81, NULL, NULL),
(52, 6, 83, NULL, NULL),
(53, 6, 85, NULL, NULL),
(54, 6, 88, NULL, NULL),
(55, 6, 89, NULL, NULL),
(56, 6, 93, NULL, NULL),
(57, 6, 94, NULL, NULL),
(58, 6, 106, NULL, NULL),
(59, 6, 110, NULL, NULL),
(86, 8, 50, NULL, NULL),
(87, 8, 52, NULL, NULL),
(88, 8, 53, NULL, NULL),
(89, 8, 55, NULL, NULL),
(90, 8, 57, NULL, NULL),
(91, 8, 59, NULL, NULL),
(92, 8, 61, NULL, NULL),
(93, 8, 62, NULL, NULL),
(94, 8, 64, NULL, NULL),
(95, 8, 65, NULL, NULL),
(96, 8, 68, NULL, NULL),
(97, 8, 76, NULL, NULL),
(98, 8, 79, NULL, NULL),
(99, 8, 80, NULL, NULL),
(100, 8, 81, NULL, NULL),
(101, 8, 84, NULL, NULL),
(102, 8, 85, NULL, NULL),
(103, 8, 86, NULL, NULL),
(104, 8, 88, NULL, NULL),
(105, 8, 89, NULL, NULL),
(106, 8, 92, NULL, NULL),
(107, 8, 94, NULL, NULL),
(108, 8, 97, NULL, NULL),
(109, 8, 107, NULL, NULL),
(110, 8, 108, NULL, NULL),
(111, 8, 109, NULL, NULL),
(112, 8, 110, NULL, NULL),
(113, 11, 48, NULL, NULL),
(114, 11, 49, NULL, NULL),
(115, 11, 50, NULL, NULL),
(116, 11, 51, NULL, NULL),
(117, 11, 54, NULL, NULL),
(118, 11, 55, NULL, NULL),
(119, 11, 57, NULL, NULL),
(120, 11, 59, NULL, NULL),
(121, 11, 60, NULL, NULL),
(122, 11, 62, NULL, NULL),
(123, 11, 64, NULL, NULL),
(124, 11, 65, NULL, NULL),
(125, 11, 68, NULL, NULL),
(126, 11, 73, NULL, NULL),
(127, 11, 76, NULL, NULL),
(128, 11, 78, NULL, NULL),
(129, 11, 79, NULL, NULL),
(130, 11, 80, NULL, NULL),
(131, 11, 82, NULL, NULL),
(132, 11, 83, NULL, NULL),
(133, 11, 84, NULL, NULL),
(134, 11, 85, NULL, NULL),
(135, 11, 87, NULL, NULL),
(136, 11, 88, NULL, NULL),
(137, 11, 89, NULL, NULL),
(138, 11, 91, NULL, NULL),
(139, 11, 92, NULL, NULL),
(140, 11, 94, NULL, NULL),
(141, 11, 106, NULL, NULL),
(142, 11, 107, NULL, NULL),
(143, 11, 109, NULL, NULL),
(144, 11, 110, NULL, NULL),
(145, 9, 48, NULL, NULL),
(146, 9, 50, NULL, NULL),
(147, 9, 52, NULL, NULL),
(148, 9, 55, NULL, NULL),
(149, 9, 56, NULL, NULL),
(150, 9, 59, NULL, NULL),
(151, 9, 61, NULL, NULL),
(152, 9, 62, NULL, NULL),
(153, 9, 64, NULL, NULL),
(154, 9, 65, NULL, NULL),
(155, 9, 67, NULL, NULL),
(156, 9, 68, NULL, NULL),
(157, 9, 74, NULL, NULL),
(158, 9, 75, NULL, NULL),
(159, 9, 78, NULL, NULL),
(160, 9, 79, NULL, NULL),
(161, 9, 80, NULL, NULL),
(162, 9, 81, NULL, NULL),
(163, 9, 82, NULL, NULL),
(164, 9, 83, NULL, NULL),
(165, 9, 84, NULL, NULL),
(166, 9, 85, NULL, NULL),
(167, 9, 88, NULL, NULL),
(168, 9, 89, NULL, NULL),
(169, 9, 92, NULL, NULL),
(170, 9, 94, NULL, NULL),
(171, 9, 106, NULL, NULL),
(172, 9, 109, NULL, NULL),
(173, 9, 110, NULL, NULL),
(174, 4, 48, NULL, NULL),
(175, 4, 50, NULL, NULL),
(176, 4, 52, NULL, NULL),
(177, 4, 53, NULL, NULL),
(178, 4, 54, NULL, NULL),
(179, 4, 55, NULL, NULL),
(180, 4, 59, NULL, NULL),
(181, 4, 60, NULL, NULL),
(182, 4, 62, NULL, NULL),
(183, 4, 63, NULL, NULL),
(184, 4, 64, NULL, NULL),
(185, 4, 65, NULL, NULL),
(186, 4, 73, NULL, NULL),
(187, 4, 79, NULL, NULL),
(188, 4, 80, NULL, NULL),
(189, 4, 83, NULL, NULL),
(190, 4, 84, NULL, NULL),
(191, 4, 85, NULL, NULL),
(192, 4, 87, NULL, NULL),
(193, 4, 88, NULL, NULL),
(194, 4, 89, NULL, NULL),
(195, 4, 92, NULL, NULL),
(196, 4, 94, NULL, NULL),
(197, 4, 95, NULL, NULL),
(198, 4, 106, NULL, NULL),
(199, 4, 109, NULL, NULL),
(200, 4, 110, NULL, NULL),
(201, 12, 47, NULL, NULL),
(202, 12, 50, NULL, NULL),
(203, 12, 53, NULL, NULL),
(204, 12, 54, NULL, NULL),
(205, 12, 55, NULL, NULL),
(206, 12, 57, NULL, NULL),
(207, 12, 59, NULL, NULL),
(208, 12, 61, NULL, NULL),
(209, 12, 62, NULL, NULL),
(210, 12, 64, NULL, NULL),
(211, 12, 65, NULL, NULL),
(212, 12, 68, NULL, NULL),
(213, 12, 73, NULL, NULL),
(214, 12, 74, NULL, NULL),
(215, 12, 77, NULL, NULL),
(216, 12, 78, NULL, NULL),
(217, 12, 79, NULL, NULL),
(218, 12, 80, NULL, NULL),
(219, 12, 83, NULL, NULL),
(220, 12, 84, NULL, NULL),
(221, 12, 85, NULL, NULL),
(222, 12, 88, NULL, NULL),
(223, 12, 89, NULL, NULL),
(224, 12, 91, NULL, NULL),
(225, 12, 93, NULL, NULL),
(226, 12, 94, NULL, NULL),
(227, 12, 95, NULL, NULL),
(228, 12, 97, NULL, NULL),
(229, 12, 106, NULL, NULL),
(230, 12, 109, NULL, NULL),
(231, 3, 48, NULL, NULL),
(232, 3, 51, NULL, NULL),
(233, 3, 52, NULL, NULL),
(234, 3, 55, NULL, NULL),
(235, 3, 57, NULL, NULL),
(236, 3, 61, NULL, NULL),
(237, 3, 64, NULL, NULL),
(238, 3, 65, NULL, NULL),
(239, 3, 67, NULL, NULL),
(240, 3, 68, NULL, NULL),
(241, 3, 70, NULL, NULL),
(242, 3, 71, NULL, NULL),
(243, 3, 72, NULL, NULL),
(244, 3, 78, NULL, NULL),
(245, 3, 79, NULL, NULL),
(246, 3, 80, NULL, NULL),
(247, 3, 88, NULL, NULL),
(248, 3, 93, NULL, NULL),
(249, 3, 95, NULL, NULL),
(250, 3, 105, NULL, NULL),
(251, 3, 106, NULL, NULL),
(252, 3, 107, NULL, NULL),
(253, 3, 110, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_03_094310_create_hospitals_table', 1),
(5, '2020_09_04_025028_create_packages_table', 1),
(6, '2020_09_04_025805_create_specialities_table', 1),
(7, '2020_09_04_030728_create_physicians_table', 1),
(8, '2020_09_04_031152_create_recommendation_and_suggestions_table', 1),
(9, '2020_09_11_100438_create_schedules_table', 1),
(10, '2020_09_23_090608_create_hospital_speciality_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `package_image`, `package_description`, `package_price`, `special_price`, `hospital_id`, `created_at`, `updated_at`) VALUES
(2, 'Medical Checkup Package- Super Senior', '/image/1601198373.general_checkup.JPG', '-', '-', '၂၅၀,၀၀၀ ကျပ်', 1, '2020-09-27 15:19:33', '2020-10-04 18:05:26'),
(3, 'Medical Checkup Package- Annual Checkup', '/image/1601198426.general_checkup.JPG', '-', '-', '၁၇၀,၀၀၀ ကျပ်', 1, '2020-09-27 15:20:26', '2020-10-04 18:05:40'),
(4, 'Medical Checkup Package- Super Hero', '/image/1601198474.general_checkup.JPG', '-', '-', '၁၇၀,၀၀၀ ကျပ်', 1, '2020-09-27 15:21:14', '2020-10-04 18:05:51'),
(5, 'Medical Checkup Package- Super Women', '/image/1601198498.general_checkup.JPG', '-', '-', '၂၅၀,၀၀၀ ကျပ်', 1, '2020-09-27 15:21:38', '2020-10-04 18:06:04'),
(6, 'Heart Checkup Package- Platinum Heart', '/image/1601198532.general_checkup.JPG', '-', '-', '၂၆၀,၀၀၀ ကျပ်', 1, '2020-09-27 15:22:12', '2020-10-04 18:06:18'),
(7, 'Heart Checkup Package- Gold Heart', '/image/1601198556.general_checkup.JPG', '-', '-', '၁၈၀,၀၀၀ ကျပ်', 1, '2020-09-27 15:22:36', '2020-10-04 18:06:31'),
(8, 'Heart Checkup Package- Silver Heart', '/image/1601198584.general_checkup.JPG', '-', '-', '၁၃၀,၀၀၀ ကျပ်', 1, '2020-09-27 15:23:04', '2020-10-04 18:06:41'),
(9, 'Regular Package', '/image/1601198793.general_checkup.JPG', 'ပုံမှန်ကျန်းမာရေးစစ်ဆေးခြင်း', '-', '-', 6, '2020-09-27 15:26:33', '2020-09-27 15:26:33'),
(10, 'Exclusive Package', '/image/1601198854.general_checkup.JPG', 'အထူးကျန်းမာရေးစစ်ဆေးခြင်း', '-', '-', 6, '2020-09-27 15:27:34', '2020-09-27 15:28:26'),
(11, 'Comprehensive Package', '/image/1601198892.general_checkup.JPG', 'အပြည့်အစုံကျန်းမာရေးစစ်ဆေးခြင်း', '-', '-', 6, '2020-09-27 15:28:12', '2020-09-27 15:28:12'),
(12, 'Basic (Any Age)', '/image/1601816275.general_checkup.JPG', 'ပုံမှန်ကျန်းမာရေးစစ်ဆေးခြင်း', '၉၁,၀၀၀ ကျပ်', '၈၀,၀၀၀ ကျပ်', 9, '2020-10-04 18:57:55', '2020-10-04 18:57:55'),
(13, 'Standard (Male) (13 - 35 years)', '/image/1601816342.well_man.png', 'အသက် ၁၃နှစ် မှ ၃၅နှစ် ရှိသော အမျိုးသားများအတွက်', '၁၂၀,၀၀၀ ကျပ်', '၁၀၅,၅၀၀ ကျပ်', 9, '2020-10-04 18:59:02', '2020-10-04 18:59:02'),
(14, 'Standard (Female) (13 - 35 years)', '/image/1601816385.well_woman.png', 'အသက် ၁၃နှစ် မှ ၃၅နှစ် ရှိသော အမျိုးသမီးများအတွက်', '၁၂၀,၀၀၀ ကျပ်', '၁၀၅,၅၀၀ ကျပ်', 9, '2020-10-04 18:59:45', '2020-10-04 18:59:45'),
(15, 'General Package', '/image/1601896666.general_checkup.JPG', 'အထွေထွေကျန်းမာရေးစစ်ဆေးခြင်း', '၇၂,၅၀၀  ကျပ်', '၆၀,၀၀၀ ကျပ်', 4, '2020-10-05 17:17:46', '2020-10-05 17:17:46'),
(16, 'Diabetes Care Package', '/image/1601896704.diabetes_test.png', 'ဆီးချိုကျန်းမာရေးစစ်ဆေးခြင်း', '၈၈,၅၀၀ ကျပ်', '၇၅,၀၀၀ ကျပ်', 4, '2020-10-05 17:18:24', '2020-10-05 17:18:24'),
(17, 'Bone Weight Package', '/image/1601896831.x_ray.png', 'အရိုးကျန်းမာရေးစစ်ဆေးခြင်း', '၁၁၈,၅၀၀ ကျပ်', '၁၀၀,၀၀၀ ကျပ်', 4, '2020-10-05 17:20:31', '2020-10-05 17:20:31'),
(18, 'Healthy Weight Package', '/image/1601896915.diet.png', 'ကျန်းမာသောကိုယ်အလေးချိန်စစ်ဆေးခြင်း', '၉၃,၅၀၀ ကျပ်', '၇၉,၀၀၀ ကျပ်', 4, '2020-10-05 17:21:55', '2020-10-05 17:21:55'),
(19, 'Advances (Male) (35 - 60 years)', '/image/1602061238.general_checkup.JPG', 'အသက် ၃၅နှစ် မှ ၆၀နှစ် ရှိသော အမျိုးသားများအတွက်', '၂၆၈,၅၀၀ ကျပ်', '၂၃၀,၅၅၀ ကျပ်', 9, '2020-10-07 15:00:38', '2020-10-07 15:00:38'),
(20, 'Advances (Female) (35 - 60 years)', '/image/1602061284.general_checkup.JPG', 'အသက် ၃၅နှစ် မှ ၆၀နှစ် ရှိသော အမျိုးသမီးများအတွက်', '၂၆၇,၅၀၀ ကျပ်', '၂၃၀,၀၀၀ ကျပ်', 9, '2020-10-07 15:01:24', '2020-10-07 15:01:24'),
(21, 'Premium (Male) (over 60 years)', '/image/1602061320.general_checkup.JPG', 'အသက် ၆၀နှစ်ကျော် အမျိုးသားများအတွက်', '၂၉၈,၅၀၀ ကျပ်', '၂၅၀,၅၀၀ ကျပ်', 9, '2020-10-07 15:02:00', '2020-10-07 15:02:00'),
(22, 'Premium (Female) (over 60 years)', '/image/1602061348.general_checkup.JPG', 'အသက် ၆၀နှစ်ကျော် အမျိုးသမီးများအတွက်', '၂၉၇,၅၀၀ ကျပ်', '၂၄၉,၅၀၀ ကျပ်', 9, '2020-10-07 15:02:28', '2020-10-07 15:02:28'),
(23, 'Healthy Heart Package', '/image/1602062455.heart.png', 'နှလုံးကျန်းမာရေးစစ်ဆေးခြင်း', '၉၆,၀၀၀ ကျပ်', '၈၀,၀၀၀ ကျပ်', 4, '2020-10-07 15:20:55', '2020-10-07 15:20:55'),
(24, 'Healthy Kidney Package', '/image/1602062489.kidney.png', 'ကျောက်ကပ်ကျန်းမာရေးစစ်ဆေးခြင်း', '၅၃,၅၀၀ ကျပ်', '၄၅,၀၀၀ ကျပ်', 4, '2020-10-07 15:21:29', '2020-10-07 15:21:29'),
(25, 'Kid\'s Wellness Package', '/image/1602062522.kid_wellness.png', 'ကလေးကျန်းမာရေးစစ်ဆေးခြင်း', '၅၉,၅၀၀ ကျပ်', '၅၀,၀၀၀ ကျပ်', 4, '2020-10-07 15:22:02', '2020-10-07 15:22:02'),
(26, 'Chronic Weakness Package', '/image/1602062558.weakness.png', 'နာတာရှည်အားနည်းခြင်းအတွက်စစ်ဆေးခြင်း', '၁၁၆,၅၀၀ ကျပ်', '၉၉,၀၀၀ ကျပ်', 4, '2020-10-07 15:22:38', '2020-10-07 15:22:38'),
(27, 'Sleep Disorder Package', '/image/1602062594.sleep_disorder.png', 'အိပ်မပျော်ခြင်းနှင့်ကျန်းမာရေးစစ်ဆေးခြင်း', '၇၃,၀၀၀ ကျပ်', '၆၀,၀၀၀ ကျပ်', 4, '2020-10-07 15:23:14', '2020-10-07 15:23:14'),
(28, 'Chronic Pain Package', '/image/1602062637.pain.png', 'နာတာရှည်နာကျင်မှုအတွက်ကျန်းမာရေးစစ်ဆေးခြင်း', '၁၀၃,၀၀၀ ကျပ်', '၈၅,၀၀၀ ကျပ်', 4, '2020-10-07 15:23:57', '2020-10-07 15:23:57'),
(29, 'Smoker Health Package', '/image/1602062673.smoker.png', 'ဆေးလိပ်သောက်သူကျန်းမာရေးစစ်ဆေးခြင်း', '၅၂,၀၀၀ ကျပ်', '၄၀,၀၀၀ ကျပ်', 4, '2020-10-07 15:24:33', '2020-10-07 15:24:33'),
(30, 'Pre-pregnancy Package', '/image/1602062701.pre_materity.png', 'ကိုယ်ဝန်မဆောင်ခင်ကျန်းမာရေးစစ်ဆေးခြင်း', '၁၀၉,၀၀၀ ကျပ်', '၉၀,၀၀၀ ကျပ်', 4, '2020-10-07 15:25:01', '2020-10-07 15:25:01'),
(31, 'Pre-wedding  Package', '/image/1602062727.pre_wedding.png', 'အိမ်ထောင်မပြုခင်ကျန်းမာရေးစစ်ဆေးခြင်း', '-', '-', 4, '2020-10-07 15:25:27', '2020-10-07 15:25:27'),
(32, 'Viral Screening Package', '/image/1602062897.screening.png', 'ရောဂါပိုး ရှိ၊ မရှိ စစ်ဆေးခြင်း', '-', '-', 4, '2020-10-07 15:28:17', '2020-10-07 15:50:41'),
(33, 'Pre-employment Package-A', '/image/1602063027.pre_employment.png', 'လုပ်ငန်းခွင်မဝင်ခင်ကျန်းမာရေးစစ်ဆေးခြင်း', '-', '-', 4, '2020-10-07 15:30:27', '2020-10-07 15:30:27'),
(34, 'Pre-employment Package-B', '/image/1602063052.pre_employment.png', 'လုပ်ငန်းခွင်မဝင်ခင်ကျန်းမာရေးစစ်ဆေးခြင်း', '-', '-', 4, '2020-10-07 15:30:52', '2020-10-07 15:30:52'),
(35, 'Cancer Screening (Male)', '/image/1602063172.cancer_screening.png', 'ကင်ဆာရောဂါစစ်ဆေးခြင်း (အမျိုးသား)', '-', '-', 4, '2020-10-07 15:32:52', '2020-10-07 15:32:52'),
(36, 'Cancer Screening (Female)', '/image/1602063194.cancer_screening.png', 'ကင်ဆာရောဂါစစ်ဆေးခြင်း (အမျိုးသမီး)', '-', '-', 4, '2020-10-07 15:33:14', '2020-10-07 15:33:14'),
(37, 'Silver Package (14 - 30 years)', '/image/1602063484.medical_checkup_1.png', 'အသက် ၁၄နှစ် မှ ၃၀နှစ် ရှိသောသူများအတွက်', '-', '-', 4, '2020-10-07 15:38:04', '2020-10-07 15:38:04'),
(38, 'Gold Package (30 - 45 years)', '/image/1602063519.medical_checkup_1.png', 'အသက် ၃၀နှစ် မှ ၄၅နှစ် ရှိသောသူများအတွက်', '-', '-', 4, '2020-10-07 15:38:39', '2020-10-07 15:38:39'),
(39, 'Diamond Package (Male) (over 45 years)', '/image/1602063545.diamond.png', 'အသက် ၄၅နှစ်ကျော် အမျိုးသားများအတွက်', '-', '-', 4, '2020-10-07 15:39:06', '2020-10-07 15:39:06'),
(40, 'Diamond Package (Female) (over 45 years)', '/image/1602063567.diamond.png', 'အသက် ၄၅နှစ်ကျော် အမျိုးသမီးများအတွက်', '-', '-', 4, '2020-10-07 15:39:27', '2020-10-07 15:39:27'),
(41, 'Premium Package (under 40 years)', '/image/1602064559.medical_checkup_1.png', 'အသက် ၄၀နှစ်အောက်များအတွက်', '-', '၆၁,၅၀၀ ကျပ်', 8, '2020-10-07 15:55:59', '2020-10-07 15:55:59'),
(42, 'Exclusive Package (under 40 years)', '/image/1602064591.medical_checkup_1.png', 'အသက် ၄၀နှစ်အောက်များအတွက်', '-', '၁၁၉,၀၀၀ ကျပ်', 8, '2020-10-07 15:56:31', '2020-10-07 15:56:31'),
(43, 'Premium Package (over 40 years)', '/image/1602064852.medical_checkup_1.png', 'အသက် ၄၀နှစ်ကျော်အတွက်', '-', '၉၉,၀၀၀ ကျပ်', 8, '2020-10-07 16:00:52', '2020-10-07 16:00:52'),
(44, 'Exclusive Package (over 40 years)', '/image/1602064880.medical_checkup_1.png', 'အသက် ၄၀နှစ်ကျော်အတွက်', '-', '၁၆၂,၀၀၀ ကျပ်', 8, '2020-10-07 16:01:20', '2020-10-07 16:01:20'),
(45, 'Cardiac Screening', '/image/1602064914.heart.png', 'နှလုံးနှင့်ပတ်သတ်၍ ပုံမှန်ဆေးစစ်ခြင်း', '-', '၅၇,၀၀၀ ကျပ်', 8, '2020-10-07 16:01:54', '2020-10-07 16:01:54'),
(46, 'Exclusive Cardiac Screening', '/image/1602064971.heart.png', 'နှလုံးနှင့်ပတ်သတ်၍ အထူးဆေးစစ်ခြင်း', '-', '၁၃၉,၀၀၀ ကျပ်', 8, '2020-10-07 16:02:51', '2020-10-07 16:02:51'),
(47, 'Pre-marital Package', '/image/1602065008.pre_materity.png', 'အိမ်ထောင်မပြုမီကျန်းမာရေးစစ်ဆေးခြင်း', '-', '၆၁,၀၀၀ ကျပ်', 8, '2020-10-07 16:03:28', '2020-10-07 16:03:28'),
(48, 'Pre-employment Package', '/image/1602065038.pre_employment.png', 'လုပ်ငန်းခွင်မဝင်မီကြိုတင်ဆေးစစ်ခြင်း', '-', '၃၁,၀၀၀ ကျပ်', 8, '2020-10-07 16:03:58', '2020-10-07 16:03:58'),
(49, 'Men Cancer Screening Package', '/image/1602065062.cancer_screening.png', 'အမျိုးသားကင်ဆာရောဂါနှင့်ပတ်သတ်၍ဆေးစစ်ခြင်း', '-', '၆၀,၀၀၀ ကျပ်', 8, '2020-10-07 16:04:22', '2020-10-07 16:04:22'),
(50, 'Women Cancer Screening Package', '/image/1602065090.cancer_screening.png', 'အမျိုးသမီးကင်ဆာရောဂါနှင့်ပတ်သတ်၍ဆေးစစ်ခြင်း', '-', '၉၉,၀၀၀ ကျပ်', 8, '2020-10-07 16:04:50', '2020-10-07 16:04:50'),
(51, 'Renal Screening Package', '/image/1602065149.screening.png', '-', '-', '၄၀,၅၀၀ ကျပ်', 8, '2020-10-07 16:05:49', '2020-10-07 16:05:49'),
(52, 'Liver Screening Package', '/image/1602065174.screening.png', 'အသည်းနှင့်ပတ်သတ်၍ဆေးစစ်ခြင်း', '-', '၂၉,၇၀၀ ကျပ်', 8, '2020-10-07 16:06:14', '2020-10-07 16:06:14'),
(53, 'Maternity Package- Diamond', '/image/1602065229.diamond.png', 'Executive Suite (၄ ညအိပ် / ၅ ရက်)', '-', '၁,၁၈၀,၀၀၀ ကျပ်', 12, '2020-10-07 16:07:09', '2020-10-07 16:07:09'),
(54, 'Maternity Package- Ruby', '/image/1602065648.ruby.png', 'Deluxe Room (၄ ညအိပ် / ၅ ရက်)', '-', '၁,၀၈၀,၀၀၀ ကျပ်', 12, '2020-10-07 16:14:08', '2020-10-07 16:14:08'),
(55, 'Maternity Package- Sapphire', '/image/1602065688.sapphire.png', 'Ordinary Room (၄ ညအိပ် / ၅ ရက်)', '-', '၉၈၀,၀၀၀ ကျပ်', 12, '2020-10-07 16:14:48', '2020-10-07 16:14:48'),
(56, 'Maternity Package- Jade', '/image/1602065722.jade.png', 'Executive Suite (၃ ညအိပ် / ၄ ရက်)', '-', '၆၇၀,၀၀၀ ကျပ်', 12, '2020-10-07 16:15:22', '2020-10-07 16:15:22'),
(57, 'Maternity Package- Pearl', '/image/1602065787.pearl.png', 'Deluxe Room (၃ ညအိပ် / ၄ ရက်)', '-', '၅၇၀,၀၀၀ ကျပ်', 12, '2020-10-07 16:16:27', '2020-10-07 16:16:27'),
(58, 'Liver Checkup Package- Basic', '/image/1602065880.medical_checkup_1.png', 'အသည်းနှင့်ပတ်သတ်၍ဆေးစစ်ခြင်း', '-', '၅၆,၀၀၀ ကျပ်', 12, '2020-10-07 16:18:00', '2020-10-07 16:18:00'),
(59, 'Liver Checkup Package- Standard', '/image/1602065904.medical_checkup_1.png', 'အသည်းနှင့်ပတ်သတ်၍ဆေးစစ်ခြင်း', '-', '၇၀,၀၀၀ ကျပ်', 12, '2020-10-07 16:18:24', '2020-10-07 16:18:24'),
(60, 'Liver Checkup Package- Executive', '/image/1602065929.medical_checkup_1.png', 'အသည်းနှင့်ပတ်သတ်၍ဆေးစစ်ခြင်း', '-', '၁၃၄,၀၀၀ ကျပ်', 12, '2020-10-07 16:18:49', '2020-10-07 16:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `physicians`
--

CREATE TABLE `physicians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `physicians`
--

INSERT INTO `physicians` (`id`, `name`, `degree`, `speciality_id`, `created_at`, `updated_at`) VALUES
(2, 'ပါမောက္ခ တင်မောင်အေး', 'M.B.,B.S, M.Med.Sc (Surgery), FRCSed (Edin), FASCC', 62, '2020-09-25 12:35:53', '2020-09-25 12:35:53'),
(3, 'ဒေါက်တာ မောင်မောင်', 'M.B.,B.S, M.Med.Sc (Surgery), MRCSed (UK), Dr MedSc (Cardiac Surgery), FASCC, Fellowship in Paediatric Cardiac Surgery (CIMS,India)', 62, '2020-09-25 12:39:20', '2020-09-25 12:39:20'),
(4, 'ဒေါက်တာ ရဲထွန်းနောင်', 'M.B.,B.S, M.Med.Sc (Int. Medicine), MRCP (UK), F.As.C.C, Fellowship in Interventional Cardiology (CIMS, India)', 64, '2020-09-25 12:39:39', '2020-09-25 12:39:39'),
(5, 'ဒေါက်တာ ကောင်းထူးလွင်', 'M.B.,B.S, M.Med.Sc (Int. Medicine), MRCP (UK), MPCP (London), Fellowship in Cardiac Electrophysiology & Pacing(CIMS, India & Singapore)', 64, '2020-09-25 12:39:55', '2020-09-25 12:39:55'),
(6, 'ဒေါက်တာ ​ငွေဇင်သူ', 'M.B.,B.S, M.Med.Sc (Int. Med), Post Graduate Training in Cardiology, Fellowship in Cardiac Electrophysiology and Pacing', 64, '2020-09-25 12:40:30', '2020-09-25 12:40:30'),
(7, 'ဒေါက်တာ အာကာမိုး', 'M.B.,B.S, M.Med.Sc (Int. Medicine), MRCP (UK), MPCP (London) Fellowship in Interventional Cardiology (CIMS, India), Dr.Med.Sc (Cardiology)', 64, '2020-09-25 12:41:02', '2020-09-25 12:41:02'),
(8, 'ဒေါက်တာ တိုးစည်သူဝင်း', 'M.B.,B.S, M.Med.Sc (Paediatric), Fellowship in Paediatric Cardiology, Fellowship in Interventional Paediatric Cardiology (CIMS, India)', 54, '2020-09-25 12:41:54', '2020-09-25 12:41:54'),
(9, 'ဒေါက်တာ အောင်ချမ်းငြိမ်း', 'M.B.,B.S, M.Med.Sc (Int. Med), MRCP (UK), Dr.Med.Sc (Nephrology), Fellowship in Nephrology (Singapore)', 52, '2020-09-25 12:42:41', '2020-09-25 12:42:41'),
(10, 'ဒေါက်တာ ရဲလင်းထွန်း', 'M.B.,B.S, M.Med.Sc (Surgery), MRCSEd (UK), Dr.Med.Sc (Urology), Fellowship in Urology (Singapore), Dip.Med.Ed', 51, '2020-09-25 12:43:27', '2020-09-25 12:43:27'),
(11, 'ဒေါက်တာ ဝေဖြိုးအေး', 'M.B.,B.S, M.Med.Sc (Surgery), MRCSEd (UK), Dr.Med.Sc (Urology)', 51, '2020-09-25 12:43:52', '2020-09-25 12:43:52'),
(12, 'ဒေါက်တာ ကျော်မြင့်ဦး', 'M.B.,B.S, M.Med.Sc (Int. Med), MRCP (UK), Dr.Med.Sc (Endocrinology & Metabolic Diseases)', 78, '2020-09-25 12:44:29', '2020-09-25 12:44:29'),
(13, 'ဒေါက်တာ ကျော်အောင်ဆန်း', 'M.B.,B.S, M.Med.Sc (Surgery), MRCSEd (UK), Dr.Med.Sc (General Surgery), Fellowship in Gastrointestinal Surgery (UMC, HCMC)', 82, '2020-09-25 12:45:02', '2020-09-25 12:45:02'),
(14, 'ဒေါက်တာ ကောင်းမြတ်', 'M.B.,B.S, M.Med.Sc (Surgery), MRCSEd (UK), Advanced Clinical Training in GI & Laparoscopic Surgery (NMS, Tokyo)', 82, '2020-09-25 12:45:25', '2020-09-25 12:45:25'),
(15, 'ဒေါက်တာ စွမ်းသန့်လွင်', 'M.B.,B.S, M.Med.Sc (Int. Med), MRCP (UK), Fellowship in Clinical Neurology (UMMC), Dr.Med.Sc (Neurology)', 110, '2020-09-25 12:45:45', '2020-09-25 12:45:45'),
(16, 'ဒေါက်တာ ရဲဝေကျော်', 'M.B.,B.S, M.Med.Sc (Rehabilitation Medicine), Dip.Med.Ed', 81, '2020-09-25 12:46:12', '2020-09-25 12:46:12'),
(17, 'ပါမောက္ခ စန်းစန်းမြင့်', 'M.B.,B.S, M.Med.Sc (OG), F.R.C.OG (UK), M.R.C.OG (UK), Dr.Med.Sc (OG), Dip.Med.Edu', 80, '2020-09-25 12:46:36', '2020-09-25 12:46:36'),
(18, 'ပါမောက္ခ ဒါလီအောင်', 'M.B.,B.S (Ygn), M.Med.Sc (OG), M.R.C.OG (UK),F.R.C.OG (UK), Clinical Fellowship in OBST & GYN (Singapore)', 80, '2020-09-25 12:46:56', '2020-09-25 12:46:56'),
(19, 'ဒေါက်တာ ဥမ္မာကျော်ဦး', 'M.B.,B.S, M.Med.Sc (Paed), Dr.Med.Sc (Paed), Dip.Med.Ed', 55, '2020-09-25 12:47:17', '2020-09-25 12:47:17'),
(20, 'ဒေါက်တာ ရဲမျိုးသိန်း', 'M.B.,B.S, M.Med.Sc (Paed), Dip.Med.Ed', 55, '2020-09-25 12:47:34', '2020-09-25 12:47:34'),
(21, 'ဒေါက်တာ သက်တင်ငြိမ်း', 'MRCPCH (UK), Fellowship in Paediatric Cardiology (India)', 55, '2020-09-25 12:47:50', '2020-09-25 12:47:50'),
(22, 'ဒေါက်တာ ထွန်းအောင်ကျော်', 'M.B.,B.S, M.Med.Sc (Int. Med), Diploma in Clinical Cardiology, Fellowship in Cardiac Electrophysiology and Pacing(Japan)', 64, '2020-09-25 14:36:49', '2020-09-25 14:36:49'),
(23, 'ပါမောက္ခ ခင်မောင်အေး', 'M.B.,B.S, M.Med.Sc, F.A.C.S (Edin), FAHA (USA), FACC (USA), FAsCc, Dr. Med.Sc (CVS) (Hon)', 62, '2020-10-05 13:33:42', '2020-10-05 13:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `recommendation_and_suggestions`
--

CREATE TABLE `recommendation_and_suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_mobile_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_id` bigint(20) UNSIGNED NOT NULL,
  `physician_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `date_time`, `hospital_id`, `physician_id`, `created_at`, `updated_at`) VALUES
(2, 'တနင်္လာ၊ အင်္ဂါ၊ စနေ  - မနက် (၉)နာရီ', 1, 2, '2020-09-25 12:37:48', '2020-09-25 12:37:48'),
(3, 'တနင်္လာ၊ အင်္ဂါ၊ စနေ  - မနက် (၉)နာရီ', 1, 3, '2020-09-25 12:50:38', '2020-09-25 12:50:38'),
(4, 'တနင်္လာ၊ အင်္ဂါ၊ ဗုဒ္ဓဟူး၊ ကြာသပတေး  - မနက် (၁၁)နာရီ', 1, 4, '2020-09-25 13:10:48', '2020-09-25 13:10:48'),
(5, 'တနင်္လာ - နေ့လည် (၁)နာရီ\r\nဗုဒ္ဓဟူး၊ ကြာသပတေး ၊ သောကြာ  - မနက် (၁၁)နာရီ', 1, 5, '2020-09-25 13:11:23', '2020-09-25 14:47:16'),
(6, 'အင်္ဂါ၊ စနေ  - ညနေ (၅)နာရီ\r\nဗုဒ္ဓဟူး - နေ့လည် (၁)နာရီ\r\nတနင်္ဂနွေ  - မနက် (၉)နာရီ', 1, 22, '2020-09-25 14:38:26', '2020-09-25 14:38:26'),
(7, 'အင်္ဂါ၊ စနေ  - မနက် (၉)နာရီ\r\nဗုဒ္ဓဟူး - နေ့လည် (၁)နာရီ', 1, 6, '2020-09-25 16:32:37', '2020-09-25 16:32:37'),
(8, 'အင်္ဂါ၊ ကြာသပတေး - နေ့လည် (၁)နာရီ\r\nတနင်္ဂနွေ  - မနက် (၁၁)နာရီ', 1, 7, '2020-09-25 16:35:06', '2020-09-25 16:35:06'),
(9, 'အင်္ဂါ၊ ကြာသပတေး - နေ့လည် (၁)နာရီ', 1, 8, '2020-09-25 16:36:11', '2020-09-25 16:36:11'),
(10, 'အင်္ဂါ၊ ကြာသပတေး ၊ စနေ  - မနက် (၉)နာရီ', 1, 9, '2020-09-25 16:36:25', '2020-09-25 16:36:25'),
(11, 'တနင်္လာ၊ ဗုဒ္ဓဟူး၊ သောကြာ  - မနက် (၉)နာရီ', 1, 10, '2020-09-25 16:36:58', '2020-09-25 16:36:58'),
(12, 'အင်္ဂါ၊ တနင်္ဂနွေ  - မနက် (၁၁)နာရီ\r\nကြာသပတေး  - မနက် (၉)နာရီ', 1, 11, '2020-09-25 16:37:21', '2020-09-25 16:37:21'),
(13, 'တနင်္လာ၊ ဗုဒ္ဓဟူး၊ သောကြာ  - မနက် (၉)နာရီ', 1, 12, '2020-09-25 16:37:44', '2020-09-25 16:37:44'),
(14, 'တနင်္လာ၊ ဗုဒ္ဓဟူး၊ သောကြာ  - မနက် (၁၁)နာရီ', 1, 13, '2020-09-25 16:38:17', '2020-09-25 16:38:17'),
(15, 'အင်္ဂါ - မနက် (၁၁)နာရီ\r\nကြာသပတေး ၊ တနင်္ဂနွေ  - မနက် (၉)နာရီ', 1, 14, '2020-09-25 16:38:29', '2020-09-25 16:38:29'),
(16, 'တနင်္လာ - မနက် (၁၁)နာရီ\r\nဗုဒ္ဓဟူး၊ သောကြာ  - မနက် (၉)နာရီ', 1, 15, '2020-09-25 16:39:00', '2020-09-25 16:39:00'),
(17, 'တနင်္လာ၊ ဗုဒ္ဓဟူး - နေ့လည် (၁)နာရီ', 1, 16, '2020-09-25 16:39:23', '2020-09-25 16:39:23'),
(18, 'ကြာသပတေး  - ညနေ (၅)နာရီ', 1, 17, '2020-09-25 16:39:37', '2020-09-25 16:39:37'),
(19, 'တနင်္လာ - ညနေ (၃)နာရီ', 1, 18, '2020-09-25 16:39:46', '2020-09-25 16:39:46'),
(20, 'တနင်္လာ၊ သောကြာ  - နေ့လည် (၁)နာရီ', 1, 19, '2020-09-25 16:39:58', '2020-09-25 16:39:58'),
(21, 'အင်္ဂါ၊ တနင်္ဂနွေ  - နေ့လည် (၁)နာရီ', 1, 20, '2020-09-25 16:40:14', '2020-09-25 16:40:14'),
(22, 'ကြာသပတေး ၊ စနေ  - နေ့လည် (၁)နာရီ', 1, 21, '2020-09-25 16:40:30', '2020-09-25 16:40:30'),
(23, 'အင်္ဂါ၊ စနေ - ညနေ (၅)နာရီ\r\nဗုဒ္ဓဟူး - နေ့လည် (၁)နာရီ\r\nတနင်္ဂနွေ - မနက် (၉)နာရီ', 6, 2, '2020-09-30 20:17:56', '2020-09-30 20:17:56'),
(25, 'အင်္ဂါ၊ ကြာသပတေး - မနက် (၁၀)နာရီခ', 9, 23, '2020-10-05 13:35:43', '2020-10-05 13:35:43'),
(27, 'အင်္ဂါ၊ စနေ - မနက် (၁၀)နာရီ', 11, 23, '2020-10-05 13:36:11', '2020-10-05 13:36:11'),
(29, 'ဗုဒ္ဓဟူး၊ သောကြာ - နေ့လည် (၂)နာရီ', 4, 23, '2020-10-05 14:03:46', '2020-10-05 14:03:46'),
(30, 'တနင်္လာ၊ ဗုဒ္ဓဟူး၊ သောကြာ - မနက် (၁၀)နာရီခွဲ\r\nအင်္ဂါ၊ စနေ - ညနေ (၆)နာရီ', 12, 23, '2020-10-05 14:05:36', '2020-10-05 14:05:36'),
(31, 'တနင်္လာ၊ သောကြာ -ညနေ (၆)နာရီ', 8, 23, '2020-10-05 14:34:40', '2020-10-05 14:34:40');

-- --------------------------------------------------------

--
-- Table structure for table `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `speciality_ename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `speciality_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specialities`
--

INSERT INTO `specialities` (`id`, `speciality_ename`, `speciality_mname`, `speciality_image`, `created_at`, `updated_at`) VALUES
(47, 'Radiation Oncologists (Cancer)', 'ကင်ဆာရောဂါဓါတ်ရောင်ခြည်အထူးကုဆရာဝန်ကြီးများ', '/image/1600878269.cancer_radiation.png', '2020-09-23 22:24:29', '2020-09-23 22:24:29'),
(48, 'Medical Oncologists (Cancer)', 'ကင်ဆာရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600878316.cancer_medical.png', '2020-09-23 22:25:16', '2020-09-23 22:25:16'),
(49, 'Consultant Physicians', 'ကျန်းမာရေးအကြံပေးဆရာဝန်ကြီးများ', '/image/1600878362.consultant.png', '2020-09-23 22:26:02', '2020-09-23 22:26:02'),
(50, 'Urosurgeons', 'ကျောက်ကပ်နှင့်ဆီးလမ်းကြောင်းရောဂါခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600878996.uro_surgery.png', '2020-09-23 22:36:36', '2020-09-23 22:36:36'),
(51, 'Urologists (Genitourinary System)', 'ကျောက်ကပ်နှင့်ဆီးလမ်းကြောင်းရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600879027.urology.png', '2020-09-23 22:37:07', '2020-09-23 22:37:07'),
(52, 'Nephrologists (Kidney)', 'ကျောက်ကပ်ရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600879057.kidney.png', '2020-09-23 22:37:37', '2020-09-23 22:37:37'),
(53, 'Paediatric Surgeons', 'ကလေးခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600879087.child_surgery.png', '2020-09-23 22:38:07', '2020-09-23 22:38:07'),
(54, 'Paediatric Cardiologists', 'ကလေးနှလုံးအထူးကုဆရာဝန်ကြီးများ', '/image/1600879111.child_heart.png', '2020-09-23 22:38:31', '2020-09-23 22:38:31'),
(55, 'Paediatricians', 'ကလေးအထူးကုဆရာဝန်ကြီးများ', '/image/1600879132.child.png', '2020-09-23 22:38:52', '2020-09-23 22:38:52'),
(56, 'Paediatric Neurologists', 'ကလေးဦးနှောက်နှင့်အာရုံကြောအထူးကုဆရာဝန်ကြီးများ', '/image/1600879155.child_brain.png', '2020-09-23 22:39:15', '2020-09-23 22:39:15'),
(57, 'Rehabilitation Medicine Physicians', 'ကိုယ်ခန္ဓာပြန်လည်သန်စွမ်းရေးအထူးကုဆရာဝန်ကြီးများ', '/image/1600879186.rehabilitation.png', '2020-09-23 22:39:46', '2020-09-23 22:39:46'),
(58, 'Tropical and Infectious Diseases Physicians', 'ကူးစက်ရောဂါဆိုင်ရာအထူးကုဆရာဝန်ကြီးများ', '/image/1600879340.infection.png', '2020-09-23 22:42:20', '2020-09-23 22:42:20'),
(59, 'Psychiatrists', 'စိတ်ကျမ်းမာရေးအထူးကုဆရာဝန်ကြီးများ', '/image/1600879372.psychology.png', '2020-09-23 22:42:52', '2020-09-23 22:42:52'),
(60, 'CT, Ultrasound, X-Ray Physicians', 'တီဗွီဓါတ်မှန်ဆရာဝန်ကြီးများ', '/image/1600879396.ultrasound.png', '2020-09-23 22:43:16', '2020-09-23 22:43:16'),
(61, 'Radiologists', 'ဓါတ်မှန်ဆရာဝန်ကြီးများ', '/image/1600879426.radiology.png', '2020-09-23 22:43:46', '2020-09-23 22:43:46'),
(62, 'Cardiac Surgeons', 'နှလုံးခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600879458.heart_surgery.png', '2020-09-23 22:44:18', '2020-09-23 22:44:18'),
(63, 'Echocardiogram Physicians', 'နှလုံးဓါတ်မှန်ဆရာဝန်ကြီးများ', '/image/1600879486.echo.png', '2020-09-23 22:44:46', '2020-09-23 22:44:46'),
(64, 'Cardiologists', 'နှလုံးအထူးကုဆရာဝန်ကြီးများ', '/image/1600879517.heart.png', '2020-09-23 22:45:17', '2020-09-23 22:45:17'),
(65, 'Otorhinolaryngologists (Ear, Nose, Throat), Head & Neck Surgeons', 'နား၊ နှာခေါင်း၊ လည်ချောင်း၊ ဦးခေါင်းနှင့်လည်ပင်း ခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600879547.ear_nose_throat.png', '2020-09-23 22:45:47', '2020-09-23 22:45:47'),
(66, 'Public Health Speialists', 'ပြည်သူ့ကျန်းမာရေးအထူးကုဆရာဝန်ကြီးများ', '/image/1600879571.public_health.png', '2020-09-23 22:46:11', '2020-09-23 22:46:11'),
(67, 'Ophthalmologists (Eye)', 'မျက်စိအထူးကုဆရာဝန်ကြီးများ', '/image/1600879597.eye.png', '2020-09-23 22:46:37', '2020-09-23 22:46:37'),
(68, 'Maxillofacial Surgeons', 'မျက်နှာနှင့်မေးရိုးဆိုင်ရာအထူးကုဆရာဝန်ကြီးများ', '/image/1600879617.face_jaw.png', '2020-09-23 22:46:57', '2020-09-23 22:46:57'),
(69, 'Lactation Consultant', 'မိခင်နို့ရည်တိုက်ကျွေးခြင်းအကြံပေးဆရာဝန်ကြီးများ', '/image/1600879647.lactation.png', '2020-09-23 22:47:27', '2020-09-23 22:47:27'),
(70, 'Anesthesiologists', 'မေ့ဆေးဆရာဝန်ကြီးများ', '/image/1600879667.anesthesiologist.png', '2020-09-23 22:47:47', '2020-09-23 22:47:47'),
(71, 'Thoracic Surgeons', 'ရင်ခေါင်းခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600879822.chest.png', '2020-09-23 22:50:22', '2020-09-23 22:50:22'),
(72, 'Breast Imaging Physicians', 'ရင်သားဓါတ်မှန်အထူးကုဆရာဝန်ကြီးများ', '/image/1600879852.breast.png', '2020-09-23 22:50:52', '2020-09-23 22:50:52'),
(73, 'Pathologists', 'ရောဂါဗေဒအထူးပြုဆရာဝန်ကြီးများ', '/image/1600879877.pathology.png', '2020-09-23 22:51:17', '2020-09-23 22:51:17'),
(74, 'Hand Surgeons', 'လက်ပိုင်းဆိုင်ရာခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600879899.hand.png', '2020-09-23 22:51:39', '2020-09-23 22:51:39'),
(75, 'Thyroid Endocrinologists', 'လည်ပင်းကြီးရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600879923.thyroid.png', '2020-09-23 22:52:03', '2020-09-23 22:52:03'),
(76, 'Dental Surgeons', 'သွားနှင့်ခံတွင်းခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600879944.dental_surgeon.png', '2020-09-23 22:52:24', '2020-09-23 22:52:24'),
(77, 'Dentists', 'သွားနှင့်ခံတွင်းဆိုင်ရာအထူးကုဆရာဝန်ကြီးများ', '/image/1600879963.dental.png', '2020-09-23 22:52:43', '2020-09-23 22:52:43'),
(78, 'Endocrinologists (Diabetes, Thyroid & Hormones)', 'သွေးချို၊ ဆီးချိုနှင့် ဟော်မုန်းရောဂါ ဆေးပညာ အထူးကုဆရာဝန်ကြီးများ', '/image/1600879997.diabetes.png', '2020-09-23 22:53:17', '2020-09-23 22:53:17'),
(79, 'Haemotologists', 'သွေးရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600880024.blood.png', '2020-09-23 22:53:44', '2020-09-23 22:53:44'),
(80, 'Obstetricians & Gynaecologists (OG)', 'သားဖွားနှင့်မီးယပ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600880052.pregnant.png', '2020-09-23 22:54:12', '2020-09-23 22:54:12'),
(81, 'Physiatrists', 'အ‌ကြောအဆစ်နှင့်ကိုယ်လက်အင်္ဂါပြန်လည်သန်စွမ်းရေးအထူးကုဆရာဝန်ကြီးများ', '/image/1600880085.physiatrist.png', '2020-09-23 22:54:45', '2020-09-23 22:54:45'),
(82, 'Gastro Surgeons', 'အစာအိမ်နှင့်အူလမ်းကြောင်းခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600880118.gastro_surgery.png', '2020-09-23 22:55:18', '2020-09-23 22:55:18'),
(83, 'Gastroenterologists (Stomach & Intestines)', 'အစာအိမ်နှင့်အူလမ်းကြောင်းအထူးကုဆရာဝန်ကြီးများ', '/image/1600880143.gastro.png', '2020-09-23 22:55:43', '2020-09-23 22:55:43'),
(84, 'Chest Surgeons', 'အဆုတ်ရောဂါခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600880165.lungs.png', '2020-09-23 22:56:05', '2020-09-23 22:56:05'),
(85, 'Chest Physicians', 'အဆုတ်ရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600880183.lungs_surgery.png', '2020-09-23 22:56:23', '2020-09-23 22:56:23'),
(86, 'Microbiologists', 'အဏုဇီဝ‌ဗေဒအထူးပြုဆရာဝန်ကြီးများ', '/image/1600880211.microbiology.png', '2020-09-23 22:56:51', '2020-09-23 22:56:51'),
(87, 'Nuclear Medicine Physicians', 'အဏုမြူရောင်ခြည်ဆိုင်ရာအထူးကုဆရာဝန်ကြီးများ', '/image/1600880234.nuclear.png', '2020-09-23 22:57:14', '2020-09-23 22:57:14'),
(88, 'General Surgeons', 'အထွေထွေရောဂါခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600880257.surgeon.png', '2020-09-23 22:57:37', '2020-09-23 22:57:37'),
(89, 'General Physicians', 'အထွေထွေရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600880279.general.png', '2020-09-23 22:57:59', '2020-09-23 22:57:59'),
(90, 'Resident ICU Anesthesiologists', 'အထူးကြပ်မတ်ကုသဆောင်အတိုင်ပင်ခံဆရာဝန်ကြီးများ', '/image/1600880316.icu.png', '2020-09-23 22:58:36', '2020-09-23 22:58:36'),
(91, 'Rheumatologists', 'အရိုး၊ အကြော၊ အဆစ်၊ ကြွက်သားအထူးကုဆရာဝန်ကြီးများ', '/image/1600880360.muscle.png', '2020-09-23 22:59:20', '2020-09-23 22:59:20'),
(92, 'Orthopaedic Surgeons', 'အရိုးခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600880381.ortho_surgery.png', '2020-09-23 22:59:41', '2020-09-23 22:59:41'),
(93, 'Orthopedicians', 'အရိုးရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600880403.ortho.png', '2020-09-23 23:00:03', '2020-09-23 23:00:03'),
(94, 'Dermatologists (Skin)', 'အရေပြားရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600880433.skin.png', '2020-09-23 23:00:33', '2020-09-23 23:00:33'),
(95, 'Plastic Surgeons', 'အလှအပနှင့် အရေပြားခွဲစိတ်ပြုပြင်ခွဲစိတ်ဆရာဝန်ကြီး', '/image/1600880458.plastic_surgery.png', '2020-09-23 23:00:58', '2020-09-23 23:00:58'),
(96, 'Respiratory Medicine Physicians', 'အသက်ရှူလမ်းကြောင်းဆိုင်ရာအထူးကုဆရာဝန်ကြီးများ', '/image/1600880533.respiratory.png', '2020-09-23 23:02:13', '2020-09-23 23:02:13'),
(97, 'Hepatologists & Gastroenterologists', 'အသည်း၊ အစာအိမ်နှင့်အူလမ်းကြောင်းအထူးကုဆရာဝန်ကြီးများ', '/image/1600880600.hepa_gastro.png', '2020-09-23 23:03:20', '2020-09-23 23:03:20'),
(98, 'Hepatobiliary & Pancreatic Surgeons', 'အသည်းနှင့်ပန်ကရိယရောဂါခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600880629.pancreas.png', '2020-09-23 23:03:49', '2020-09-23 23:03:49'),
(105, 'Hepatobiliary Surgeons', 'အသည်းရောဂါခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600881759.liver_surgeon.png', '2020-09-23 23:22:39', '2020-09-23 23:22:39'),
(106, 'Hepatologists', 'အသည်းရောဂါအထူးကုဆရာဝန်ကြီးများ', '/image/1600881778.liver.png', '2020-09-23 23:22:58', '2020-09-23 23:22:58'),
(107, 'Nutritionists', 'အာဟာရဆိုင်ရာဆရာဝန်ကြီးများ', '/image/1600881794.nutrition.png', '2020-09-23 23:23:14', '2020-09-23 23:23:14'),
(108, 'Sleep Lab & Sleep Disorder Physicians', 'အိပ်စက်ခြင်းဆိုင်ရာအထူးကုဆရာဝန်ကြီးများ', '/image/1600881814.sleep_disorder.png', '2020-09-23 23:23:34', '2020-09-23 23:23:34'),
(109, 'Neurosurgeons', 'ဦးနှောက်နှင့်အာရုံကြောခွဲစိတ်အထူးကုဆရာဝန်ကြီးများ', '/image/1600881838.brain_surgeon.png', '2020-09-23 23:23:58', '2020-09-23 23:23:58'),
(110, 'Neurologists', 'ဦးနှောက်နှင့်အာရုံကြောအထူးကုဆရာဝန်ကြီးများ', '/image/1600881857.brain.png', '2020-09-23 23:24:17', '2020-09-23 23:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital_speciality`
--
ALTER TABLE `hospital_speciality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_speciality_hospital_id_foreign` (`hospital_id`),
  ADD KEY `hospital_speciality_speciality_id_foreign` (`speciality_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `physicians`
--
ALTER TABLE `physicians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommendation_and_suggestions`
--
ALTER TABLE `recommendation_and_suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hospital_speciality`
--
ALTER TABLE `hospital_speciality`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `physicians`
--
ALTER TABLE `physicians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `recommendation_and_suggestions`
--
ALTER TABLE `recommendation_and_suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hospital_speciality`
--
ALTER TABLE `hospital_speciality`
  ADD CONSTRAINT `hospital_speciality_hospital_id_foreign` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hospital_speciality_speciality_id_foreign` FOREIGN KEY (`speciality_id`) REFERENCES `specialities` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
