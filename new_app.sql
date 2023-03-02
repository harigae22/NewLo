-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2023 年 3 月 01 日 22:03
-- サーバのバージョン： 5.7.39
-- PHP のバージョン: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `new_app`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `ages`
--

CREATE TABLE `ages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `ages`
--

INSERT INTO `ages` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '10才未満', NULL, NULL),
(2, '10～14才', NULL, NULL),
(3, '15～19才', NULL, NULL),
(4, '20～24才', NULL, NULL),
(5, '25～29才', NULL, NULL),
(6, '30～34才', NULL, NULL),
(7, '35～49才', NULL, NULL),
(8, '40～44才', NULL, NULL),
(9, '45～49才', NULL, NULL),
(10, '50～54才', NULL, NULL),
(11, '55～59才', NULL, NULL),
(12, '60～64才', NULL, NULL),
(13, '65～69才', NULL, NULL),
(14, '70～74才', NULL, NULL),
(15, '75～79才', NULL, NULL),
(16, '80～84才', NULL, NULL),
(17, '85才以上', NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'グルメ', NULL, NULL),
(2, 'ホテル', NULL, NULL),
(3, 'ショッピング', NULL, NULL),
(4, 'レジャー', NULL, NULL),
(5, 'その他', NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `event`
--

CREATE TABLE `event` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` int(11) DEFAULT '0',
  `age_id` bigint(20) UNSIGNED NOT NULL,
  `prefecture_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `event`
--

INSERT INTO `event` (`id`, `user_id`, `day`, `title`, `content`, `cost`, `age_id`, `prefecture_id`, `category_id`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 2, '2011-10-02', 'んきりになってこっ。', 'だまにそうに思わず笑わらい前にし、私たちは、いちは天上よりはこうへめぐり、うっとたべてごらんだんだから発たっぱなちぢめておじぎをするとあのやされていま苹果りんこうきっぷです。それでもいいました。新世。', 64161, 14, 6, 1, '2023-02-26 06:44:01', '2023-02-26 06:44:01', 0),
(2, 2, '2006-05-18', 'ょうに川の水を、き。', 'のとなりました。「わたくて、こんなにせようにどこまで忘わすれるよ」「あらわしく流ながぐつをおろして燈台とうも空すいぎんいろい微光びこういうと、もう一つの三角標さんがする。ぼくずいぶんは」すすけれども。', 4396, 12, 38, 3, '2023-02-26 06:44:01', '2023-02-26 06:44:01', 0),
(3, 2, '1995-01-27', 'あせいにげて、うつ。', '母さんにしました。「じゃないだろう」ジョバンニは、よし」とジョバンニは、みんなはまってそれはねおりて、また思わずかにそろそういじなタダシはいたのでも、もう咽喉のどくがいってなんかくになってそのすすき。', 53622, 6, 22, 3, '2023-02-26 06:44:01', '2023-02-26 06:44:01', 0),
(4, 2, '1983-12-23', 'ずうっとカムパネル。', 'の大きな蟹かに微笑わらっしょうきっと天の切符きっとのためにいたでした。網棚あみだが。船ふねの方へ飛とびついたことを考えを吹ふいているんですっかりした。「じゃりの苹果りんてんの森が、外はいっぱです」に。', 41829, 10, 24, 2, '2023-02-26 06:44:01', '2023-02-26 06:44:01', 0),
(5, 2, '2004-12-06', 'こがどこで天上より。', 'いろい雲がまたさっきの女の子はそわたるい実験じっけん命めいめいじゃないで、小さな五、六人の席せきの前を通って、とけいは四つになりに白に点々をうたいませんで立ちあげて、白いつは鳥の停車場ていました。「。', 82074, 7, 47, 4, '2023-02-26 06:44:01', '2023-02-26 06:44:01', 0),
(6, 3, '1989-01-08', 'て叫さけんでおりだ。', 'い大きく振ふりかの草もしずかし雁がんでしたら、それはべつの林になってながらパンの袋ふくをききますか埋うめんのからすでなしてちょうだ。さがし、カムパネルラとわれました。「ええ、どおまえはほんとしばらま。', 61677, 3, 5, 4, '2023-02-26 06:45:18', '2023-02-26 06:45:18', 0),
(7, 3, '2008-05-06', 'にうたっとぐあいて。', 'だれだっていますなんの流ながしてその切符きっぷの中に、カムパネルラ、この傾斜けいべんも眼めをあげて狂気きょうだ。お前は夢ゆめの前を通って口笛くちびるを噛かんでそっちゃん。たあちこちらちらこれをかぶっ。', 51428, 2, 26, 3, '2023-02-26 06:45:18', '2023-02-26 06:45:18', 0),
(8, 3, '2017-12-21', 'ているんだん数を増。', 'つかった緑みどりいろい微光びこうじゃあ叫さけびました。「降おりるもんでした。新世界せかいがおりて行かなししてしました。「今晩こんやり立って叫さけびました。ジョバンニはまだねえ」「ああだか苹果りんごは。', 41363, 17, 43, 4, '2023-02-26 06:45:18', '2023-02-26 06:45:18', 0),
(9, 3, '1990-01-08', 'な黒いけないほど稼。', 'が沈しずかにして問といわよ。そして叫さけん命めいきな望遠鏡ぼうでした。青年は北の十字になってらしいんだから野茨のいちばんに走りつがえるもんでいろがった腰掛こしかけました桔梗ききおいようにしてジョバン。', 73075, 2, 12, 2, '2023-02-26 06:45:18', '2023-02-26 06:45:18', 0),
(10, 3, '1982-04-28', 'ちょう」ジョバンニ。', 'っとりと歴史れきしに行くひっぱな眼めをひき姉あねは前からしい気がしていたのでしたと思うように何か忘わすれてカムパネルラはこのぼたんの方たちはこのままでおりように幾本いくく、さっきりが非常ひじょうはす。', 94498, 4, 24, 3, '2023-02-26 06:45:18', '2023-02-26 06:45:18', 0),
(11, 4, '2017-10-15', 'して、そこに、早く。', '疋ぴきしの林を越こえていた、と深ふかくひょうの射さしまいました。「ああ、おりになってそんなことないんとうにこわい顔を赤くしい気がすると包つつまりませんろと青じろい環わの窓まどはぼうに、すうりに笑わら。', 26372, 2, 22, 4, '2023-02-26 06:45:49', '2023-02-26 06:45:49', 0),
(12, 4, '1998-03-02', 'それに、ちょうてに。', 'ているようふうで、あすこへすわってなんとくをなで、太陽たいます。なんかくひろっこった。すると耳に手をした。町の家々ではもうするというふくろをひろったろう。けれどもそれに神かみのようで二か月前、一枚の。', 47253, 11, 33, 3, '2023-02-26 06:45:49', '2023-02-26 06:45:49', 0),
(13, 4, '2007-11-23', 'またせいをすぼめて。', 'した。けれどもなくなんまりは、だん向むこうけ取とりは、つめたいとうは何べんきり強くなったろうとしたの神かみに矢やをつかいくのです。まって見ましたもんでいたジョバンニはまるでありましていし、とうげの上。', 22907, 3, 18, 4, '2023-02-26 06:45:49', '2023-02-26 06:45:49', 0),
(14, 4, '1984-12-30', 'なみがいくつのだろ。', 'に祈いの前に来ました。向むこうけ取とったら、ずうっととこじゃくしい白いきなどはぼくたちとおりませんです。本やノートで何かせわしくなりジョバンニは思わず叫さけんして、白鳥の群むれはもうごいていたしかに。', 26230, 2, 38, 1, '2023-02-26 06:45:49', '2023-02-26 06:45:49', 0),
(15, 4, '2011-11-02', 'しそうようになって。', '河ぎんが飛とんで、またたんやり見えずかにくっきりするんでした。燈台とうだんだり、いけんかく遠くへははこんばん幸福こうな小さな子どもいましたときました。その通り越こすっかさんは、います」「いるようにた。', 89408, 7, 1, 4, '2023-02-26 06:45:49', '2023-02-26 06:45:49', 0),
(29, 5, NULL, 'ディズニー旅行!!', 'サンプル投稿\r\n2泊3日、ディズニー旅行にいきました！！\r\n楽しかった。', 500000, 5, 12, 4, '2023-02-26 14:37:35', '2023-02-26 14:37:35', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `event_images`
--

CREATE TABLE `event_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `event_images`
--

INSERT INTO `event_images` (`id`, `event_id`, `image_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 2, 6, NULL, NULL),
(7, 2, 7, NULL, NULL),
(8, 2, 8, NULL, NULL),
(9, 3, 9, NULL, NULL),
(10, 3, 10, NULL, NULL),
(11, 3, 11, NULL, NULL),
(12, 3, 12, NULL, NULL),
(13, 4, 13, NULL, NULL),
(14, 4, 14, NULL, NULL),
(15, 4, 15, NULL, NULL),
(16, 4, 16, NULL, NULL),
(17, 5, 17, NULL, NULL),
(18, 5, 18, NULL, NULL),
(19, 5, 19, NULL, NULL),
(20, 5, 20, NULL, NULL),
(21, 6, 21, NULL, NULL),
(22, 6, 22, NULL, NULL),
(23, 6, 23, NULL, NULL),
(24, 6, 24, NULL, NULL),
(25, 7, 25, NULL, NULL),
(26, 7, 26, NULL, NULL),
(27, 7, 27, NULL, NULL),
(28, 7, 28, NULL, NULL),
(29, 8, 29, NULL, NULL),
(30, 8, 30, NULL, NULL),
(31, 8, 31, NULL, NULL),
(32, 8, 32, NULL, NULL),
(33, 9, 33, NULL, NULL),
(34, 9, 34, NULL, NULL),
(35, 9, 35, NULL, NULL),
(36, 9, 36, NULL, NULL),
(37, 10, 37, NULL, NULL),
(38, 10, 38, NULL, NULL),
(39, 10, 39, NULL, NULL),
(40, 10, 40, NULL, NULL),
(41, 11, 41, NULL, NULL),
(42, 11, 42, NULL, NULL),
(43, 11, 43, NULL, NULL),
(44, 11, 44, NULL, NULL),
(45, 12, 45, NULL, NULL),
(46, 12, 46, NULL, NULL),
(47, 12, 47, NULL, NULL),
(48, 12, 48, NULL, NULL),
(49, 13, 49, NULL, NULL),
(50, 13, 50, NULL, NULL),
(51, 13, 51, NULL, NULL),
(52, 13, 52, NULL, NULL),
(53, 14, 53, NULL, NULL),
(54, 14, 54, NULL, NULL),
(55, 14, 55, NULL, NULL),
(56, 14, 56, NULL, NULL),
(57, 15, 57, NULL, NULL),
(58, 15, 58, NULL, NULL),
(59, 15, 59, NULL, NULL),
(60, 15, 60, NULL, NULL),
(69, 29, 69, NULL, NULL),
(70, 29, 70, NULL, NULL),
(71, 29, 71, NULL, NULL),
(72, 29, 72, NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `images`
--

INSERT INTO `images` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'b4b257937ace8863a63da792964f8535.png', '2023-02-26 06:44:04', '2023-02-26 06:44:04'),
(2, '573353afbaf2df9ef1d15afacafa38cf.png', '2023-02-26 06:44:04', '2023-02-26 06:44:04'),
(3, '02aea6f8a488175771ece00ef2c51b5c.png', '2023-02-26 06:44:04', '2023-02-26 06:44:04'),
(4, 'a081e519a0bf76f4a17fcc02b2aaa332.png', '2023-02-26 06:44:04', '2023-02-26 06:44:04'),
(5, '422e9a7ee807e8d10e2592e9b3ad2278.png', '2023-02-26 06:44:07', '2023-02-26 06:44:07'),
(6, 'eaa0a06c810d9205e3a8c6f407f003b1.png', '2023-02-26 06:44:07', '2023-02-26 06:44:07'),
(7, '327d284399f2e4ccd202c02d8a2df37b.png', '2023-02-26 06:44:07', '2023-02-26 06:44:07'),
(8, '84d764220edd95ff8375c88d6117dd38.png', '2023-02-26 06:44:07', '2023-02-26 06:44:07'),
(9, '373c5ef05dbd3426712f174fbad1c939.png', '2023-02-26 06:44:10', '2023-02-26 06:44:10'),
(10, 'ba0d3a1a6b0e045a787ae3d8857ca333.png', '2023-02-26 06:44:10', '2023-02-26 06:44:10'),
(11, 'a7abc3d15a64c8bf51fa92c692e62976.png', '2023-02-26 06:44:10', '2023-02-26 06:44:10'),
(12, '0eea8e6805de237faf7c564eb6774134.png', '2023-02-26 06:44:10', '2023-02-26 06:44:10'),
(13, 'c68cef6fafec9118321ddecc68956d97.png', '2023-02-26 06:44:14', '2023-02-26 06:44:14'),
(14, 'cd2d6d71239c244073c03a8027915607.png', '2023-02-26 06:44:14', '2023-02-26 06:44:14'),
(15, 'ddfa6e8198f22c761a287e1fe489f3d6.png', '2023-02-26 06:44:14', '2023-02-26 06:44:14'),
(16, '3536b884f72017adc375d9ef08078823.png', '2023-02-26 06:44:14', '2023-02-26 06:44:14'),
(17, '70f9e64a9438301244a04468846e2f90.png', '2023-02-26 06:44:17', '2023-02-26 06:44:17'),
(18, '1aaea0f7bb80eaf404c7f7135830bb80.png', '2023-02-26 06:44:17', '2023-02-26 06:44:17'),
(19, '3f2b95b7a95ed919eea642d3884886b4.png', '2023-02-26 06:44:17', '2023-02-26 06:44:17'),
(20, 'fc9ab49258a52ee16147a19ac74c4c79.png', '2023-02-26 06:44:17', '2023-02-26 06:44:17'),
(21, 'e726daa9062380a55c9ea83a8346d402.png', '2023-02-26 06:45:24', '2023-02-26 06:45:24'),
(22, '4c8a42ca848ecf991ac0455aff90efb2.png', '2023-02-26 06:45:24', '2023-02-26 06:45:24'),
(23, '4f3b2a1fa946baf0a0fe5fe6dab915a8.png', '2023-02-26 06:45:24', '2023-02-26 06:45:24'),
(24, '9a344d52dbc71cfabc8701bd8a6c6f7c.png', '2023-02-26 06:45:24', '2023-02-26 06:45:24'),
(25, 'e7fbdde163a2256292162808465426f1.png', '2023-02-26 06:45:28', '2023-02-26 06:45:28'),
(26, '946c3c484fb250180e268c69567f3306.png', '2023-02-26 06:45:28', '2023-02-26 06:45:28'),
(27, '7eb27be2a6fbcb42134cefbe4c792dbb.png', '2023-02-26 06:45:28', '2023-02-26 06:45:28'),
(28, '4cc573d6c9de8780ea589909a1a46d3b.png', '2023-02-26 06:45:28', '2023-02-26 06:45:28'),
(29, 'a66d5fa2be1b55bf65c2521fa603edb8.png', '2023-02-26 06:45:31', '2023-02-26 06:45:31'),
(30, '1d09d3befb709273655741dc89636b68.png', '2023-02-26 06:45:31', '2023-02-26 06:45:31'),
(31, 'd5faf429fa8ae9880440a8235a0bcf4c.png', '2023-02-26 06:45:31', '2023-02-26 06:45:31'),
(32, '3c39503bf04138a6adea9c236d620e3f.png', '2023-02-26 06:45:31', '2023-02-26 06:45:31'),
(33, 'f556b2d0f93132468178e0bb7ac175bc.png', '2023-02-26 06:45:34', '2023-02-26 06:45:34'),
(34, 'ce4bfc39ff7aa5a2a236223184a748ee.png', '2023-02-26 06:45:34', '2023-02-26 06:45:34'),
(35, '9d67d581324a10f91bc5cd9666d16f4c.png', '2023-02-26 06:45:34', '2023-02-26 06:45:34'),
(36, 'db886bbd041e45a97ebcdfa14066bbbd.png', '2023-02-26 06:45:34', '2023-02-26 06:45:34'),
(37, 'd87778e488b6e79a77a98973ed52bf57.png', '2023-02-26 06:45:37', '2023-02-26 06:45:37'),
(38, '1df2a11a5a85e35c976844f29ce281cb.png', '2023-02-26 06:45:37', '2023-02-26 06:45:37'),
(39, 'd3a4e39eb8ab4eada9d24c4aed6fbded.png', '2023-02-26 06:45:37', '2023-02-26 06:45:37'),
(40, 'e9c41462c29a7eb66a9a1e64ac900f73.png', '2023-02-26 06:45:37', '2023-02-26 06:45:37'),
(41, 'caa4a4bea17da9201339bde6a59aff40.png', '2023-02-26 06:45:52', '2023-02-26 06:45:52'),
(42, '62a98d67e692e3863894773e7705774c.png', '2023-02-26 06:45:52', '2023-02-26 06:45:52'),
(43, 'f49338545e859eb8d236611545aab2f3.png', '2023-02-26 06:45:52', '2023-02-26 06:45:52'),
(44, 'e5baaef494a1075c383f40b4e68435aa.png', '2023-02-26 06:45:52', '2023-02-26 06:45:52'),
(45, '334a45d2c3e2ad89d2b23fc16d97dfc2.png', '2023-02-26 06:45:55', '2023-02-26 06:45:55'),
(46, 'fd02deace5155deaf93643b8e5cc2156.png', '2023-02-26 06:45:55', '2023-02-26 06:45:55'),
(47, '70141214e76c7217daa06f0f71ec0d94.png', '2023-02-26 06:45:55', '2023-02-26 06:45:55'),
(48, '34af9c23a16a6cb4743d7bac8c596790.png', '2023-02-26 06:45:55', '2023-02-26 06:45:55'),
(49, 'b5d999fc2b5c9032d149c8aca9a9b36a.png', '2023-02-26 06:45:59', '2023-02-26 06:45:59'),
(50, '2ebe80bcc58021858e730d1aadf10bfa.png', '2023-02-26 06:45:59', '2023-02-26 06:45:59'),
(51, 'c81bc71b728361a07adfe41b5df062c0.png', '2023-02-26 06:45:59', '2023-02-26 06:45:59'),
(52, '0e75f351288f8e777dbad6f43d41c5c6.png', '2023-02-26 06:45:59', '2023-02-26 06:45:59'),
(53, 'b49bb94e163156d9526e2b05d231c062.png', '2023-02-26 06:46:02', '2023-02-26 06:46:02'),
(54, '874cb7db2abb436084a8e600fb6cf887.png', '2023-02-26 06:46:02', '2023-02-26 06:46:02'),
(55, '42846a51565191aa97a00557ac53c1d7.png', '2023-02-26 06:46:02', '2023-02-26 06:46:02'),
(56, 'fee5429f2f883ced1e37782b14ddc4d8.png', '2023-02-26 06:46:02', '2023-02-26 06:46:02'),
(57, 'a4c0d99df0d318fbcf059fc5406aee87.png', '2023-02-26 06:46:05', '2023-02-26 06:46:05'),
(58, '3617f57213aa002dd181d408c65b7005.png', '2023-02-26 06:46:05', '2023-02-26 06:46:05'),
(59, '2e23da0ad6d3a7fb020fd5e7a95f5128.png', '2023-02-26 06:46:05', '2023-02-26 06:46:05'),
(60, 'd15eae2a8db71e40658c8ecd850826a2.png', '2023-02-26 06:46:05', '2023-02-26 06:46:05'),
(61, '5kZPAezwoWNalcO8zc1GUyPpBujI9tQDPWzsZVbV.jpg', '2023-02-26 08:23:54', '2023-02-26 08:23:54'),
(62, 'TGTbXtfVeWZa6xTJ6KHhQVngs5nsSxQjNmI5M87d.jpg', '2023-02-26 08:32:37', '2023-02-26 08:32:37'),
(63, '4uy6V4oRp51wwFtzF5oSZ5TpIfhmC1ONqOYeGsYC.jpg', '2023-02-26 11:28:42', '2023-02-26 11:28:42'),
(64, 'iGOAcuWvRcZfj4P47rUPdt1VsVGONYIPz6S9Njb2.jpg', '2023-02-26 11:28:42', '2023-02-26 11:28:42'),
(65, '4LQKU4wlNvOQx15FoHDqLdIvCkQIe5FfK3OGw23r.jpg', '2023-02-26 11:28:42', '2023-02-26 11:28:42'),
(66, 'QqnnuG1mGqMuSBFlM1xZMfPVkf8LtNlgqUYFIo30.jpg', '2023-02-26 11:28:42', '2023-02-26 11:28:42'),
(67, '8Nkz2uRue0Gva4wUhV568HUyDyOwNXBYaWa9Gsve.jpg', '2023-02-26 11:30:13', '2023-02-26 11:30:13'),
(68, 'mYTfvXOTWFDf9OCsTICWpinhrlfVyxtk2dmn8D6R.jpg', '2023-02-26 11:35:31', '2023-02-26 11:35:31'),
(69, 'Ab9xGFpIEF4wxGd0GyMfEpQsFoN7ITNzuP2j8Bje.jpg', '2023-02-26 14:37:35', '2023-02-26 14:37:35'),
(70, 'uZ1dcXZciWu9g3XYnoc2P3zEzGDgtmfdsJoIzMwT.jpg', '2023-02-26 14:37:35', '2023-02-26 14:37:35'),
(71, 'mvc7hOGqtpABOWYGyiV8QDhQa5XEDBl7avHLHrwg.jpg', '2023-02-26 14:37:35', '2023-02-26 14:37:35'),
(72, '0d1CNxC6iotrbaTQl0XMqezrXvTDSzVURJhqyZp6.jpg', '2023-02-26 14:37:35', '2023-02-26 14:37:35'),
(73, 'G6Q6Yg27RoRCO9SOjkOhw53VBwchd6aUwtYOppNE.jpg', '2023-02-26 21:37:47', '2023-02-26 21:37:47'),
(74, 'ZPPTUDVJ7iKSHkUkQEXN8hN8fEfLOPyIbxTnK9uh.jpg', '2023-02-26 21:37:47', '2023-02-26 21:37:47'),
(75, 'j3g17JZ0pEEtyQ2R8TMpxmC4JQhES84JTUReeu5M.jpg', '2023-02-27 11:13:34', '2023-02-27 11:13:34'),
(76, 'cgjhpI4GWrJmtagvAD71jQQKeN5wX1QWQSqeuuX0.jpg', '2023-02-27 11:13:34', '2023-02-27 11:13:34'),
(77, 'v6oUqxHDo7NPKbxIM77OXJac1dcccm8QV6VRcxC4.jpg', '2023-02-27 11:26:24', '2023-02-27 11:26:24'),
(78, 'g73H5fTBNYuHSt5zalSOj3fNIPKjunsAvJaOdp9p.jpg', '2023-02-27 11:26:24', '2023-02-27 11:26:24');

-- --------------------------------------------------------

--
-- テーブルの構造 `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `event_id`, `created_at`, `updated_at`) VALUES
(2, 4, 4, '2023-02-26 07:58:00', '2023-02-26 07:58:00'),
(3, 4, 2, '2023-02-26 07:58:00', '2023-02-26 07:58:00'),
(4, 3, 2, '2023-02-26 07:58:00', '2023-02-26 07:58:00'),
(6, 3, 4, '2023-02-26 07:58:00', '2023-02-26 07:58:00'),
(7, 2, 1, '2023-02-26 07:58:59', '2023-02-26 07:58:59'),
(10, 3, 12, '2023-02-26 08:00:45', '2023-02-26 08:00:45'),
(11, 2, 15, '2023-02-26 08:00:45', '2023-02-26 08:00:45'),
(12, 3, 14, '2023-02-26 08:00:45', '2023-02-26 08:00:45'),
(14, 4, 9, '2023-02-26 08:01:40', '2023-02-26 08:01:40'),
(15, 3, 1, '2023-02-26 08:01:40', '2023-02-26 08:01:40'),
(17, 2, 11, '2023-02-26 08:01:41', '2023-02-26 08:01:41'),
(18, 4, 8, '2023-02-26 08:01:41', '2023-02-26 08:01:41'),
(26, 2, 14, '2023-02-26 08:06:49', '2023-02-26 08:06:49'),
(27, 4, 13, '2023-02-26 08:06:49', '2023-02-26 08:06:49'),
(30, 3, 7, '2023-02-26 08:06:50', '2023-02-26 08:06:50'),
(32, 4, 6, '2023-02-26 08:06:50', '2023-02-26 08:06:50'),
(33, 4, 5, '2023-02-26 08:06:50', '2023-02-26 08:06:50'),
(35, 4, 14, '2023-02-26 08:06:51', '2023-02-26 08:06:51'),
(45, 4, 29, '2023-02-26 14:41:23', '2023-02-26 14:41:23'),
(46, 3, 29, '2023-02-26 14:41:23', '2023-02-26 14:41:23'),
(48, 14, 29, '2023-02-26 14:42:07', '2023-02-26 14:42:07'),
(50, 16, 29, '2023-02-26 14:42:18', '2023-02-26 14:42:18'),
(51, 13, 29, '2023-02-26 14:42:18', '2023-02-26 14:42:18'),
(55, 5, 29, '2023-02-26 21:35:48', '2023-02-26 21:35:48');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_02_03_091859_create_sessions_table', 1),
(7, '2023_02_05_101736_images_table', 1),
(8, '2023_02_07_223558_create_prefecture_table', 1),
(9, '2023_02_07_223709_create_ages_table', 1),
(10, '2023_02_07_223725_create_category_table', 1),
(11, '2023_02_07_223857_create_images_table', 1),
(12, '2023_02_07_224157_create_event_table', 1),
(13, '2023_02_07_225601_create_event_images_table', 1),
(14, '2023_02_07_232351_add_user_id_event', 1),
(15, '2023_02_08_105523_create_likes_table', 1),
(16, '2014_10_12_100000_create_password_reset_tokens_table', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('test2@test.com', '$2y$10$uFpnG3XaIr6uQjBqvnHmLee3iwrtrkd8Pk9Hun7vGsjMORbgrtgpO', '2023-02-26 12:57:02'),
('weddingsong.1338@icloud.com', '$2y$10$LL1xLWXZvXHeIZRjDji6xeu67np9vEBxhF5dqNrBk/0Lj7bToN0nG', '2023-02-26 12:45:04');

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `prefectures`
--

CREATE TABLE `prefectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `prefectures`
--

INSERT INTO `prefectures` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '北海道', NULL, NULL),
(2, '青森県', NULL, NULL),
(3, '岩手県', NULL, NULL),
(4, '宮城県', NULL, NULL),
(5, '秋田県', NULL, NULL),
(6, '山形県', NULL, NULL),
(7, '福島県', NULL, NULL),
(8, '茨城県', NULL, NULL),
(9, '栃木県', NULL, NULL),
(10, '群馬県', NULL, NULL),
(11, '埼玉県', NULL, NULL),
(12, '千葉県', NULL, NULL),
(13, '東京都', NULL, NULL),
(14, '神奈川県', NULL, NULL),
(15, '新潟県', NULL, NULL),
(16, '富山県', NULL, NULL),
(17, '石川県', NULL, NULL),
(18, '福井県', NULL, NULL),
(19, '山梨県', NULL, NULL),
(20, '長野県', NULL, NULL),
(21, '岐阜県', NULL, NULL),
(22, '静岡県', NULL, NULL),
(23, '愛知県', NULL, NULL),
(24, '三重県', NULL, NULL),
(25, '滋賀県', NULL, NULL),
(26, '京都府', NULL, NULL),
(27, '大阪府', NULL, NULL),
(28, '兵庫県', NULL, NULL),
(29, '奈良県', NULL, NULL),
(30, '和歌山県', NULL, NULL),
(31, '鳥取県', NULL, NULL),
(32, '島根県', NULL, NULL),
(33, '岡山県', NULL, NULL),
(34, '広島県', NULL, NULL),
(35, '山口県', NULL, NULL),
(36, '徳島県', NULL, NULL),
(37, '香川県', NULL, NULL),
(38, '愛媛県', NULL, NULL),
(39, '高知県', NULL, NULL),
(40, '福岡県', NULL, NULL),
(41, '佐賀県', NULL, NULL),
(42, '長崎県', NULL, NULL),
(43, '熊本県', NULL, NULL),
(44, '大分県', NULL, NULL),
(45, '宮崎県', NULL, NULL),
(46, '鹿児島県', NULL, NULL),
(47, '沖縄県', NULL, NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2NMWXiEE26VFMW9Ol0f56dqhCr7FdMZIG3AjeZde', 5, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOXB4T011TEJnRE1tVUFPZUoySmFUT2NJWnpPbWtBSEJVNlNEa2l6eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MTp7aTowO3M6MTA6Il9vbGRfaW5wdXQiO31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0Ojg4ODgvbmV3bG8vZXZlbnQvbGlzdCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7czoxMDoiX29sZF9pbnB1dCI7YjoxO30=', 1677684095);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `provider` enum('line') COLLATE utf8mb4_unicode_ci NOT NULL,
  `provided_user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `provider`, `provided_user_id`, `remember_token`, `current_team_id`, `profile_photo_path`, `role`, `created_at`, `updated_at`) VALUES
(2, '西之園 翼', 'dmatsumoto@example.com', '2023-02-26 06:44:01', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, '1aW7lLQIN4', NULL, NULL, 'user', '2023-02-26 06:44:01', '2023-02-26 06:44:01'),
(3, '中津川 幹', 'kato.yasuhiro@example.net', '2023-02-26 06:45:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'H0BY5gMAo8', NULL, NULL, 'user', '2023-02-26 06:45:18', '2023-02-26 06:45:18'),
(4, '笹田 七夏', 'gyamagishi@example.org', '2023-02-26 06:45:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'AmCK1ndUlZ', NULL, NULL, 'user', '2023-02-26 06:45:49', '2023-02-26 06:45:49'),
(5, '一般ユーザー', 'test@test.com', NULL, '$2y$10$bcELVoRIwZ0rJ5yA0Zx0j.afkPvVVSo2daSVLAEU60aThoKfk5GHe', NULL, NULL, NULL, 'line', NULL, 'TBFHyHZqaBnjwyF7XY01OVzdu5lFPL4Hf4kC0lE2uplqH6UKLVQAYPGxrcFb', NULL, NULL, 'user', '2023-02-26 12:30:00', '2023-02-27 11:06:29'),
(13, '村山 さゆり', 'rika24@example.org', '2023-02-26 14:39:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'cR9k2onVvt', NULL, NULL, 'user', '2023-02-26 14:39:47', '2023-02-26 14:39:47'),
(14, '佐々木 晃', 'kobayashi.tomoya@example.com', '2023-02-26 14:39:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, '8Dv4jdyGqa', NULL, NULL, 'user', '2023-02-26 14:39:49', '2023-02-26 14:39:49'),
(15, '青田 結衣', 'skato@example.net', '2023-02-26 14:39:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, '880dqFRenw', NULL, NULL, 'user', '2023-02-26 14:39:50', '2023-02-26 14:39:50'),
(16, '木村 舞', 'mai40@example.net', '2023-02-26 14:39:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'J52Xh2Bk04', NULL, NULL, 'user', '2023-02-26 14:39:51', '2023-02-26 14:39:51'),
(17, '管理者', 'admin@test.com', NULL, '$2y$10$99epPJORQIKkr0tP34FNFO1/CFMZ1zJj3gFEFRDrBNAqNAwkqu5Vy', NULL, NULL, NULL, 'line', NULL, NULL, NULL, NULL, 'admin', '2023-02-27 10:59:18', '2023-02-27 10:59:18');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `ages`
--
ALTER TABLE `ages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ages_name_unique` (`name`);

--
-- テーブルのインデックス `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- テーブルのインデックス `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_user_id_foreign` (`user_id`),
  ADD KEY `event_age_id_foreign` (`age_id`),
  ADD KEY `event_prefecture_id_foreign` (`prefecture_id`),
  ADD KEY `event_category_id_foreign` (`category_id`);

--
-- テーブルのインデックス `event_images`
--
ALTER TABLE `event_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_images_event_id_foreign` (`event_id`),
  ADD KEY `event_images_image_id_foreign` (`image_id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `likes_user_id_event_id_unique` (`user_id`,`event_id`),
  ADD KEY `likes_user_id_index` (`user_id`),
  ADD KEY `likes_event_id_index` (`event_id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- テーブルのインデックス `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `prefectures`
--
ALTER TABLE `prefectures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prefectures_name_unique` (`name`);

--
-- テーブルのインデックス `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `ages`
--
ALTER TABLE `ages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルの AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `event`
--
ALTER TABLE `event`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- テーブルの AUTO_INCREMENT `event_images`
--
ALTER TABLE `event_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- テーブルの AUTO_INCREMENT `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `prefectures`
--
ALTER TABLE `prefectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_age_id_foreign` FOREIGN KEY (`age_id`) REFERENCES `ages` (`id`),
  ADD CONSTRAINT `event_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `event_prefecture_id_foreign` FOREIGN KEY (`prefecture_id`) REFERENCES `prefectures` (`id`),
  ADD CONSTRAINT `event_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- テーブルの制約 `event_images`
--
ALTER TABLE `event_images`
  ADD CONSTRAINT `event_images_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `event_images_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE;

--
-- テーブルの制約 `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
