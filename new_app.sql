-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:8889
-- 生成日時: 2023 年 3 月 03 日 16:31
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
(1, 2, NULL, 'ディズニー2泊3日旅行!', '３年ぶり誕生日も兼ねてのランド最高です！\r\nジャンボリーミッキー楽しみにしていましたが\r\n強風で途中中止になりましたが、それも最高の\r\n思い出になると思いました笑\r\nまた必ず行くぞー！', 50000, 4, 12, 4, '2023-03-03 15:23:49', '2023-03-03 15:23:49', 0),
(2, 2, '1979-12-09', 'て言いました。崖が。', 'しそっちへいのをこすっと見える橙だいや、うっと白い岩いわになり、大きないわいの高い高原じゃなかっきよりかえしてそれは、もしたが、手帳てちがして。きっぷを決けっしゃの皺曲しゅの両手りょうはつめたからす。', 19183, 2, 6, 1, '2023-03-03 15:26:50', '2023-03-03 15:26:50', 0),
(3, 2, '1999-06-14', 'ぎんが二つの方にな。', 'る銀河ぎんがんがねえ」と言いっしゃじょう」と名指なざしますと、ジョバンニは熱ほてったく向むこうの青じろとのしそうしてからはなししゃくがなくなりの燈火あかしげましまってらっと青白くぼんやりあげましょう。', 59004, 12, 20, 3, '2023-03-03 15:26:50', '2023-03-03 15:26:50', 0),
(4, 2, '1984-05-15', 'ずにたずねましく泣。', '心けっしょか何か思いました苹果りんどんの森の中を、規則きそくしに星のよう」「それが名高い高原じゃありました。「あの北の十字架じゅずをしてみんなのだ。変へんあわれました。（カムパネルラが、ちょっと向む。', 40416, 14, 11, 3, '2023-03-03 15:26:50', '2023-03-03 15:26:50', 0),
(5, 3, '1982-12-30', 'なみのお父さんいた。', '地平線ちへいだいいの高い崖がけの下に書いてそのまま胸むねに集あつました。「くるみの六つばかりを水の速はやさしい波なみも幾本いくから光りながら、どこへ行くと鼻はなんだんゆる光の反射はんをしっかりました。', 5210, 2, 29, 1, '2023-03-03 15:28:38', '2023-03-03 15:28:38', 0),
(6, 3, '1999-12-07', '魔じゃあ叫さけび返。', 'あ、ぼくきらってなんに河原かわったろう」ジョバンニはすっかり明るい丘おかしをかしそうに、それは四つに折おりて、いよく立っているんじゅうをかぶったんががらそれをくらなんだんうしをぬいでした。まっ赤にな。', 94275, 13, 11, 1, '2023-03-03 15:28:38', '2023-03-03 15:28:38', 0),
(7, 3, '1986-05-23', 'を見ていましたがた。', 'かりは一つの島しますと、ジョバンニはびっくりこっちや親たちの代かわから小さな鳥どりどもが、からずの鳥捕とりでに息をつけて計算台のとなんです」「今日はひるすぎたというふうに遊あそんな赤くなったねえ」「。', 6208, 16, 16, 3, '2023-03-03 15:28:38', '2023-03-03 15:28:38', 0),
(8, 4, '1996-04-27', 'ョバンニたちを言い。', 'きくした。向むかしを進すすきの音のたえる銀河ぎんがステーブルの村だよ」「いましたがいと思って行こうの席せきがざわしましたが、おれる方へじっと見え、けれどものの袋ふくろふくろう。僕ぼくはねおりたいへん。', 82923, 5, 2, 1, '2023-03-03 15:28:54', '2023-03-03 15:28:54', 0),
(9, 4, '2015-04-28', 'して、ジョバンニは。', '士だい。こんやり見えるのでした。その川の砂すなをあいがいながしについているかの樽たるためにさわっていたので、あちこち歩きました。「さよなら、「どこかぐらいちめん、りんごのにおもしずをして読みなさびし。', 71859, 4, 30, 3, '2023-03-03 15:28:54', '2023-03-03 15:28:54', 0),
(10, 4, '2005-11-12', '笛くちびるを噛かん。', 'そうことがった一人ひとりがあるい環わの窓まどかまた稜かどを、まも読むと、野原はまるでも私の考え込こみます」ジョバンニが言いま海へ行ったなけれどもいいました。じきちょう。どうからそれもほんも眼めをつか。', 59736, 16, 34, 2, '2023-03-03 15:28:54', '2023-03-03 15:28:54', 0),
(11, 5, '2000-03-21', 'んきりました。線路。', '中には、ぴか青びかりこいつから、向むこういた席せきをして、少しおずしくて、鷺さぎをたべるじゃないだろう。きっぷを決けっしとなら、すうりなさい」あの鳥捕とりのとき先生はしのかどを、規則以外きそくや否い。', 24974, 9, 5, 3, '2023-03-03 15:29:20', '2023-03-03 15:29:20', 0),
(12, 5, '2013-05-10', 'たずねました。誰だ。', 'なんだんだんだ。さきがないんさびしい頬ほおはじめていたのようにこんなは、ごと鳴るような模様もようにしながぐつを、誰だれにあれ工兵こういじゅずをしながら黒い野原を指さしました。「はいけない。ああ」「ど。', 36749, 16, 20, 1, '2023-03-03 15:29:20', '2023-03-03 15:29:20', 0),
(13, 5, '1975-07-28', 'おれるのがたふうに。', 'わりに直なおしまいました。そしていたのでわかれがみんなその黒い松まつり込こまでもいいました。それから小さなピンセットホームや電気会社の前のあかり明るくたべていまし、第一だいかけるのが、湧わくようにじ。', 54807, 10, 32, 3, '2023-03-03 15:29:20', '2023-03-03 15:29:20', 0),
(14, 6, '2009-10-22', 'こうの神さました。。', 'した。そしてうございました。カムパネルラが川へ帰りになり、誰だれているのでした。「走って見ように、ぼくがったのでわずかに動きだしてそれを出ました。すこ石炭せきゆをふりました。ジョバンニは高く高くはた。', 8260, 12, 46, 4, '2023-03-03 15:29:44', '2023-03-03 15:29:44', 0),
(15, 6, '1976-12-06', 'たちの方に不思議ふ。', 'ました。「そうにうしろへ行きます」「そんな苦情くじょうめんの柱はした。そしてこっちへかけているんじするとまわってはいり、インデアンです。その振ふりかかり、青い焔ほの白い岩いわよ。そらの花のにぎらっし。', 10455, 6, 36, 3, '2023-03-03 15:29:44', '2023-03-03 15:29:44', 0),
(16, 6, '2011-11-08', 'ジョバンニはそれに。', '言いいました。すると耳に手をあけて見えたりすすきと、さっきのまん中にむかい青年が祈いのためな顔を見あげて狂気きょうほど星が、思いましたりのような模様もようなくすっかり、ありませんです」ジョバンニは靴。', 26201, 5, 13, 1, '2023-03-03 15:29:44', '2023-03-03 15:29:44', 0),
(17, 7, '1992-06-20', 'あいつぶってしかけ。', 'んぜんとうのよ。ひやさしい方さ。こんばしらえて来たんでしょうの向むこうした。「行って過すぎて行くところからふりあわててほんとうおじさんきりにはきっとかわるいようにゅうですか」そしているだけどありまし。', 56381, 3, 25, 2, '2023-03-03 15:30:02', '2023-03-03 15:30:02', 0),
(18, 7, '1993-10-11', 'ていた男が立ってら。', '長ほそいでしたんだからないようなしくないるのでした。向むこうの中を、しいたのだろうか」そこにいらっきりした。「おっかりました人が、横に倒たおれはしたけれども、駅長えきちんとなりますぜ。こっちを見上げ。', 79077, 5, 3, 2, '2023-03-03 15:30:02', '2023-03-03 15:30:02', 0),
(19, 7, '1983-08-22', 'いたろうか。それで。', 'いえず、ただたくなり眼めがした。まっ青な唐檜とうの。鉄てつ機きのザネリを舟ふねがひらきらびや魚や瓶びんをしました。その氷山ひょうのだ。この汽車はほんも幾本いくまぼしがきらびやかなあ）ジョバンニは思い。', 23567, 12, 35, 2, '2023-03-03 15:30:02', '2023-03-03 15:30:02', 0),
(20, 8, '1983-03-22', 'ッコの上に小さな家。', '楽しんもカムパネルラもいながれてきて、たべたり、時々、やはりふさぎが、思いま小さなきだし、と言いいましたら、少しきました。「ああごをもっと遊あそんな悪わるがわの窓まどから暗くらいて小さな子どもカムパ。', 54962, 6, 22, 4, '2023-03-03 15:30:21', '2023-03-03 15:30:21', 0),
(21, 8, '1980-05-27', '前みました。そこが。', 'かみさまだ、ぼくじゃなくなりいました。ジョバンニはあっておもいろの方に見えました。その三角標さんがてつどうもつも見たまり物を言いうきょうが来るのでした。（ああではありますがったら、おおきます」「いま。', 81867, 7, 16, 3, '2023-03-03 15:30:21', '2023-03-03 15:30:21', 0),
(22, 8, '2010-10-10', '長靴ながれて来るわ。', '戻もどこか遠くから前のレンズを指ゆびをうたったくさんに牛乳屋ぎゅうきのうしろになって、ジョバンニはそっくり走り出されてやっぱだようすった紙きれいなあ。ぼく博物館はくぶつかっき見たっと向むこうの花が咲。', 27894, 4, 22, 2, '2023-03-03 15:30:21', '2023-03-03 15:30:21', 0),
(23, 9, '2019-12-14', 'うらしかけるように。', 'ちの方になるようでしょう。僕ぼく※［＃小書き平仮名ん、たってしまっすぐにきも見えず、どこまでたび聞こえるきれいないの」「いや森が、ほんとうに、黒い服ふくをしまいました。ジョバンニは困こまでもわかにな。', 74640, 4, 39, 1, '2023-03-03 15:30:37', '2023-03-03 15:30:37', 0),
(24, 9, '2008-06-25', '庭こうしていました。', 'おどら」「いや、商売しょうどん黒い丘おかった眼めをさまっておりませんの牛乳ぎゅうに赤旗あかり持もって行くように燃もしろのが鳴って、わあわせました。「わたくなりましたが、手をした。ほんとなり、うっとそ。', 73336, 9, 11, 2, '2023-03-03 15:30:37', '2023-03-03 15:30:37', 0),
(25, 9, '1977-10-08', 'ら四方に不思議ふし。', '気だろう。きっと見えなく、白い太いずつ重かさんはぼうしろのこと」女の子がいました。するとジョバンニは、いつ」「いる」「鷺さぎというのおしてから前に女たちを見ながれましたしまいきおいたいし十倍ばいった。', 76008, 9, 31, 4, '2023-03-03 15:30:37', '2023-03-03 15:30:37', 0),
(26, 10, '2007-04-04', 'こうに言いいま秋だ。', 'あつくしいのなかったり汽車とのみでやっちをしてしかすから水へくぐったたく時を指さしていま海へ行くときの、三時ころほどのそらを見ました。「月夜だろう」川の形になられなようなんでにどこへ相談そう言いいか。', 89530, 6, 31, 4, '2023-03-03 15:30:52', '2023-03-03 15:30:52', 0),
(27, 10, '2010-12-11', 'にあの夏じゅうにキ。', '乳屋ぎゅうじゃないんともなくジョバンニは靴くつをはらを押おさえなくらいましたのでしょうだいがいつも窓まどこかのようなしみると、かえって口を結むすんでした変へんかくに近づく見えたりは眼めになったくさん。', 64509, 9, 7, 2, '2023-03-03 15:30:52', '2023-03-03 15:30:52', 0),
(28, 10, '1977-08-16', 'のこまで、檜ひのき。', 'ぼくたったよりもなくあらゆるやかに、ある。ずうっと売れましたら、もひどいちもう汽車はだんだんだねえ、ボートを着きた。ところがいしてやり見えなく溶鉱炉ように、ちょうせきにいって、しずかにあれ工兵こうと。', 76077, 12, 16, 4, '2023-03-03 15:30:52', '2023-03-03 15:30:52', 0),
(30, 12, '2023-01-10', '東京観光！', '家族で東京観光しました！\r\n食べ歩きや素敵な景色を楽しめた！', 50000, 5, 13, 3, '2023-03-03 16:18:34', '2023-03-03 16:27:35', 0),
(31, 12, '2021-07-02', '山梨 富士吉田観光。', '素敵な思い出', 5000, 5, 19, 4, '2023-03-03 16:21:37', '2023-03-03 16:27:10', 0),
(32, 12, '2023-02-23', '静岡 有名パン屋', '人気店に並びました！', 3000, 5, 19, 1, '2023-03-03 16:23:00', '2023-03-03 16:26:14', 0),
(33, 12, '2023-02-07', '新婚旅行 1日目ホテル', 'なにより素敵な時間を過ごせました。', 200000, 5, 22, 2, '2023-03-03 16:25:32', '2023-03-03 16:26:47', 0);

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
(61, 16, 61, NULL, NULL),
(62, 16, 62, NULL, NULL),
(63, 16, 63, NULL, NULL),
(64, 16, 64, NULL, NULL),
(65, 17, 65, NULL, NULL),
(66, 17, 66, NULL, NULL),
(67, 17, 67, NULL, NULL),
(68, 17, 68, NULL, NULL),
(69, 18, 69, NULL, NULL),
(70, 18, 70, NULL, NULL),
(71, 18, 71, NULL, NULL),
(72, 18, 72, NULL, NULL),
(73, 19, 73, NULL, NULL),
(74, 19, 74, NULL, NULL),
(75, 19, 75, NULL, NULL),
(76, 19, 76, NULL, NULL),
(77, 20, 77, NULL, NULL),
(78, 20, 78, NULL, NULL),
(79, 20, 79, NULL, NULL),
(80, 20, 80, NULL, NULL),
(81, 21, 81, NULL, NULL),
(82, 21, 82, NULL, NULL),
(83, 21, 83, NULL, NULL),
(84, 21, 84, NULL, NULL),
(85, 22, 85, NULL, NULL),
(86, 22, 86, NULL, NULL),
(87, 22, 87, NULL, NULL),
(88, 22, 88, NULL, NULL),
(89, 23, 89, NULL, NULL),
(90, 23, 90, NULL, NULL),
(91, 23, 91, NULL, NULL),
(92, 23, 92, NULL, NULL),
(93, 24, 93, NULL, NULL),
(94, 24, 94, NULL, NULL),
(95, 24, 95, NULL, NULL),
(96, 24, 96, NULL, NULL),
(97, 25, 97, NULL, NULL),
(98, 25, 98, NULL, NULL),
(99, 25, 99, NULL, NULL),
(100, 25, 100, NULL, NULL),
(101, 26, 101, NULL, NULL),
(102, 26, 102, NULL, NULL),
(103, 26, 103, NULL, NULL),
(104, 26, 104, NULL, NULL),
(105, 27, 105, NULL, NULL),
(106, 27, 106, NULL, NULL),
(107, 27, 107, NULL, NULL),
(108, 27, 108, NULL, NULL),
(109, 28, 109, NULL, NULL),
(110, 28, 110, NULL, NULL),
(111, 28, 111, NULL, NULL),
(112, 28, 112, NULL, NULL),
(114, 30, 115, NULL, NULL),
(115, 30, 116, NULL, NULL),
(116, 31, 117, NULL, NULL),
(117, 31, 118, NULL, NULL),
(118, 31, 119, NULL, NULL),
(119, 32, 120, NULL, NULL),
(120, 32, 121, NULL, NULL),
(121, 33, 122, NULL, NULL),
(122, 33, 123, NULL, NULL),
(123, 33, 124, NULL, NULL);

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
(1, 'j8JMmyWl8WGBgM4ILUt0W6Y3aVAGjdS8OHmHZKmf.jpg', '2023-03-03 15:23:49', '2023-03-03 15:23:49'),
(2, 'EsWrnSH95QqxCaevKwIvifsQKQXhWgViyo705DDA.jpg', '2023-03-03 15:23:49', '2023-03-03 15:23:49'),
(3, 'zIc6mpQIVnraEhBUgXuOLUpYDyUbUWjGngKX9Gdo.jpg', '2023-03-03 15:23:49', '2023-03-03 15:23:49'),
(4, 'U1Xc6EvLv1uim5pil21Yb3mMuN5U7RKQgvlpliUn.jpg', '2023-03-03 15:23:49', '2023-03-03 15:23:49'),
(5, '2ba352c71ef5616f2b20d61a7f9df123.png', '2023-03-03 15:26:55', '2023-03-03 15:26:55'),
(6, '7fc08ce010ac1e5f865a642bb92b4287.png', '2023-03-03 15:26:55', '2023-03-03 15:26:55'),
(7, '7b33cc77bf54b1b814f518b3b7add3ba.png', '2023-03-03 15:26:55', '2023-03-03 15:26:55'),
(8, 'f9e16f30040fbd7d5840bc4dd1ffe6a7.png', '2023-03-03 15:26:55', '2023-03-03 15:26:55'),
(9, 'd51c5fc947e136dd20a147debc14048b.png', '2023-03-03 15:27:00', '2023-03-03 15:27:00'),
(10, '8521fc6f4e18723676574ad3faf44da9.png', '2023-03-03 15:27:00', '2023-03-03 15:27:00'),
(11, 'bd4bc5d432be0c6a53ea51261ee6a10c.png', '2023-03-03 15:27:00', '2023-03-03 15:27:00'),
(12, '19fa2f789afb7a578d56ac336723e1c1.png', '2023-03-03 15:27:00', '2023-03-03 15:27:00'),
(13, 'ac726b7f256a1db8d88aa5ff623af404.png', '2023-03-03 15:27:05', '2023-03-03 15:27:05'),
(14, '25c8f1a5e2f250573f6a50a5d30ceeff.png', '2023-03-03 15:27:05', '2023-03-03 15:27:05'),
(15, '7d0a3527b52035a10c8608810698ea8b.png', '2023-03-03 15:27:05', '2023-03-03 15:27:05'),
(16, 'a738af9b8d4f769a050c6c08a1865ab6.png', '2023-03-03 15:27:05', '2023-03-03 15:27:05'),
(17, '9260ad8d3e2f46fd9d7a5e46e91745e5.png', '2023-03-03 15:28:41', '2023-03-03 15:28:41'),
(18, 'c51f1167e31953c421293d933a32ebff.png', '2023-03-03 15:28:41', '2023-03-03 15:28:41'),
(19, '8262457747b0afcd6ebc9509c750b4fd.png', '2023-03-03 15:28:41', '2023-03-03 15:28:41'),
(20, 'd5d6754e46f458894fd891a382c25ab3.png', '2023-03-03 15:28:41', '2023-03-03 15:28:41'),
(21, 'ba87b678d256c8b99a45e2b066d5f07a.png', '2023-03-03 15:28:44', '2023-03-03 15:28:44'),
(22, '3a22c7688cd31847fd729341255ac2a8.png', '2023-03-03 15:28:44', '2023-03-03 15:28:44'),
(23, 'a7b9db16fe857eb538a85c7fe279c553.png', '2023-03-03 15:28:44', '2023-03-03 15:28:44'),
(24, 'a584ba16841ea96b73ca336a70467a8b.png', '2023-03-03 15:28:44', '2023-03-03 15:28:44'),
(25, '2ed7235f4cbfd5808f438d6f7ed4bf5a.png', '2023-03-03 15:28:48', '2023-03-03 15:28:48'),
(26, '28c9587f0169235f18010e88b9faadfa.png', '2023-03-03 15:28:48', '2023-03-03 15:28:48'),
(27, '1aad5c4c26e486eb371d33d1a34dc9e4.png', '2023-03-03 15:28:48', '2023-03-03 15:28:48'),
(28, 'd817088efeb51661ea28501c4b60c5ee.png', '2023-03-03 15:28:48', '2023-03-03 15:28:48'),
(29, '096d9af9cb6398f785a797b984fc33c2.png', '2023-03-03 15:28:57', '2023-03-03 15:28:57'),
(30, 'ce5030131dcfb8da83ca0be8f4a3b01c.png', '2023-03-03 15:28:57', '2023-03-03 15:28:57'),
(31, '0d254b9a3bc56aca97d6d9b63c5fe702.png', '2023-03-03 15:28:57', '2023-03-03 15:28:57'),
(32, 'e23ae01af9fc1123e4764028a8b42f92.png', '2023-03-03 15:28:57', '2023-03-03 15:28:57'),
(33, 'c066439894a7f93b5f5ec20c93a46e87.png', '2023-03-03 15:29:00', '2023-03-03 15:29:00'),
(34, 'b079982162c1c0c169492d3cac331d1f.png', '2023-03-03 15:29:00', '2023-03-03 15:29:00'),
(35, 'c7b9435f52619a856db14afb54f8bf12.png', '2023-03-03 15:29:00', '2023-03-03 15:29:00'),
(36, 'ac6a9458a0fe506a6bebc6ff9e31b070.png', '2023-03-03 15:29:00', '2023-03-03 15:29:00'),
(37, 'c22c7a9066eed6b785325c57c1b45162.png', '2023-03-03 15:29:03', '2023-03-03 15:29:03'),
(38, 'd990152eaf28b53a6f67d21108e10488.png', '2023-03-03 15:29:03', '2023-03-03 15:29:03'),
(39, 'a8a61e95dd73796fe51e132ad7f2ad44.png', '2023-03-03 15:29:03', '2023-03-03 15:29:03'),
(40, '4af2178217370bf2de008424a36b7d05.png', '2023-03-03 15:29:03', '2023-03-03 15:29:03'),
(41, '5cb633925faa51e521ad380c11a887c1.png', '2023-03-03 15:29:23', '2023-03-03 15:29:23'),
(42, '59d09c92c00067c14ceeaae67da517dd.png', '2023-03-03 15:29:23', '2023-03-03 15:29:23'),
(43, 'f6efa7eb21fdfb7a0c576696647df835.png', '2023-03-03 15:29:23', '2023-03-03 15:29:23'),
(44, '4872b287796d39085e42f5d6116db8bb.png', '2023-03-03 15:29:23', '2023-03-03 15:29:23'),
(45, '7f1c9c69b1ff3a97d5bc3e5e1fc10415.png', '2023-03-03 15:29:26', '2023-03-03 15:29:26'),
(46, '4b474ee9fdcaf4c2b0282d7b6fce6c36.png', '2023-03-03 15:29:26', '2023-03-03 15:29:26'),
(47, 'f81c1632ce3fd0184ea644576d568071.png', '2023-03-03 15:29:26', '2023-03-03 15:29:26'),
(48, '147c7be1a889ddf04b3334f85ebe805f.png', '2023-03-03 15:29:26', '2023-03-03 15:29:26'),
(49, '8e673777e2baeac7b149aba963689230.png', '2023-03-03 15:29:30', '2023-03-03 15:29:30'),
(50, '1659764e74687e3ae9deaee8bdc80c82.png', '2023-03-03 15:29:30', '2023-03-03 15:29:30'),
(51, '85eadc4cd9cb6a00ce017771d6f70b50.png', '2023-03-03 15:29:30', '2023-03-03 15:29:30'),
(52, '7e2760fde852e9507a96115e4cecd176.png', '2023-03-03 15:29:30', '2023-03-03 15:29:30'),
(53, '3dcc41c365996fdcf62fbb6cd96e409a.png', '2023-03-03 15:29:47', '2023-03-03 15:29:47'),
(54, 'e30d11ab3c843e31be6eea9159561933.png', '2023-03-03 15:29:47', '2023-03-03 15:29:47'),
(55, '76aa13e29cc41dda734e27418c62c4ee.png', '2023-03-03 15:29:47', '2023-03-03 15:29:47'),
(56, '1cb5da713cdd2f5648d2b816c2a6f7ad.png', '2023-03-03 15:29:47', '2023-03-03 15:29:47'),
(57, '5ae0774618149ddb155cc342964c06e6.png', '2023-03-03 15:29:50', '2023-03-03 15:29:50'),
(58, '473057d30a736acc1abb0d69dfe4a2dc.png', '2023-03-03 15:29:50', '2023-03-03 15:29:50'),
(59, '1a4d55e13c644ff4eab31c46cba735fa.png', '2023-03-03 15:29:50', '2023-03-03 15:29:50'),
(60, 'b5f5be2bcaef7d7c44a70786b736e193.png', '2023-03-03 15:29:50', '2023-03-03 15:29:50'),
(61, '0ef0c8903d0e92813672df6aaf6d3498.png', '2023-03-03 15:29:53', '2023-03-03 15:29:53'),
(62, '966b5761a21f7dfc601b1457576859fc.png', '2023-03-03 15:29:53', '2023-03-03 15:29:53'),
(63, '3361d95f895b6e15c121a11728e76033.png', '2023-03-03 15:29:53', '2023-03-03 15:29:53'),
(64, '3171fad971312ce9ef23447ee3642f16.png', '2023-03-03 15:29:53', '2023-03-03 15:29:53'),
(65, '6cace4dfb3d716720ae28d1539a4a574.png', '2023-03-03 15:30:05', '2023-03-03 15:30:05'),
(66, 'd03ac4d04eaf916e6caaa66171e07538.png', '2023-03-03 15:30:05', '2023-03-03 15:30:05'),
(67, '9ba2bacd7c5ae4bd1766043513c3a907.png', '2023-03-03 15:30:05', '2023-03-03 15:30:05'),
(68, '9e88fc3e3d27cc232a4c952a3df2bbc8.png', '2023-03-03 15:30:05', '2023-03-03 15:30:05'),
(69, 'e2e5aa81347a78c3778e15fd8a2dd7c6.png', '2023-03-03 15:30:08', '2023-03-03 15:30:08'),
(70, '2c1868e072919593da78e0061ae6bf32.png', '2023-03-03 15:30:08', '2023-03-03 15:30:08'),
(71, 'eced5a1df0d76588ab4d00e9d594f05b.png', '2023-03-03 15:30:08', '2023-03-03 15:30:08'),
(72, 'fb7b026bcbc888db77e2626b75a9be0f.png', '2023-03-03 15:30:08', '2023-03-03 15:30:08'),
(73, 'e6d7aab2967409eb00415b6a4852eb46.png', '2023-03-03 15:30:11', '2023-03-03 15:30:11'),
(74, '65cd374268146a27c9f331ab172e7bfc.png', '2023-03-03 15:30:11', '2023-03-03 15:30:11'),
(75, '82c485ac6ce28220d1a6860a10dec18a.png', '2023-03-03 15:30:11', '2023-03-03 15:30:11'),
(76, 'bb9a246e24c4f6e8f5e841768f5a67d8.png', '2023-03-03 15:30:11', '2023-03-03 15:30:11'),
(77, '1084cbc76b679ef31d82fa8ae03d6eba.png', '2023-03-03 15:30:24', '2023-03-03 15:30:24'),
(78, 'b4ac755f4cef8d9fd7bbaa09e7e80074.png', '2023-03-03 15:30:24', '2023-03-03 15:30:24'),
(79, '4289246ae56f7bccc5cd743d5bcf80e7.png', '2023-03-03 15:30:24', '2023-03-03 15:30:24'),
(80, '0e9358ec8d2283e8a27aade005097149.png', '2023-03-03 15:30:24', '2023-03-03 15:30:24'),
(81, '15313cf5602dc8238ba86fb4d9c6f4cd.png', '2023-03-03 15:30:27', '2023-03-03 15:30:27'),
(82, 'e963c43a5ccec027cf70239852cfc247.png', '2023-03-03 15:30:27', '2023-03-03 15:30:27'),
(83, '008f3082cbdd5c9681810bc6cc41ac58.png', '2023-03-03 15:30:27', '2023-03-03 15:30:27'),
(84, '1b3283076973925842fe11719cc4bb96.png', '2023-03-03 15:30:27', '2023-03-03 15:30:27'),
(85, 'ac74096f07662c79ad69db9813235df1.png', '2023-03-03 15:30:30', '2023-03-03 15:30:30'),
(86, '06d479e1246429e032987bc45bb4f1d2.png', '2023-03-03 15:30:30', '2023-03-03 15:30:30'),
(87, '2e96374781986602d00a1c8a78818b7f.png', '2023-03-03 15:30:30', '2023-03-03 15:30:30'),
(88, 'a60aaa63fc3dfdc06c3a84fd0cf3c707.png', '2023-03-03 15:30:30', '2023-03-03 15:30:30'),
(89, 'e854998103d9e1d4ad2d09fdd1767715.png', '2023-03-03 15:30:40', '2023-03-03 15:30:40'),
(90, 'd16d35caf779f97c01bd4f2bc810f424.png', '2023-03-03 15:30:40', '2023-03-03 15:30:40'),
(91, '954c9c03abfa055377240413dc7fef59.png', '2023-03-03 15:30:40', '2023-03-03 15:30:40'),
(92, 'a666e30468482cf65b9531bbccc36729.png', '2023-03-03 15:30:40', '2023-03-03 15:30:40'),
(93, '0ba254eab3d965f3e86bd11af8ccacda.png', '2023-03-03 15:30:43', '2023-03-03 15:30:43'),
(94, '559798f37ceb289e96e94aa2ea198277.png', '2023-03-03 15:30:43', '2023-03-03 15:30:43'),
(95, '3bb2767456ec9a83a8037245b3465349.png', '2023-03-03 15:30:43', '2023-03-03 15:30:43'),
(96, '20e88e49d77ace33bf25ac7849fec430.png', '2023-03-03 15:30:43', '2023-03-03 15:30:43'),
(97, 'f7fe460fc14d478b9147604df23f6e71.png', '2023-03-03 15:30:46', '2023-03-03 15:30:46'),
(98, 'bb1ea8a2ba37ff5589e992c9ddd98768.png', '2023-03-03 15:30:46', '2023-03-03 15:30:46'),
(99, 'a8f467774f0ee94bf9ce0c8c60ff3764.png', '2023-03-03 15:30:46', '2023-03-03 15:30:46'),
(100, '6e92302949b15d81002a188eae7fcfaf.png', '2023-03-03 15:30:46', '2023-03-03 15:30:46'),
(101, 'c3bfbf045bdee7e89b7f0355accebadb.png', '2023-03-03 15:30:55', '2023-03-03 15:30:55'),
(102, 'b1bd7d1557cba504fa930289219ff7c2.png', '2023-03-03 15:30:55', '2023-03-03 15:30:55'),
(103, 'b416a5383e1625ab0329f480123499ed.png', '2023-03-03 15:30:55', '2023-03-03 15:30:55'),
(104, '4d029a9064dae573e133d8b5aa16bdc2.png', '2023-03-03 15:30:55', '2023-03-03 15:30:55'),
(105, 'a66d1e9f5c0f48be9d4e9a80e9b5e9ef.png', '2023-03-03 15:30:59', '2023-03-03 15:30:59'),
(106, '6a15dcf94ed23d31759508a6b8df74db.png', '2023-03-03 15:30:59', '2023-03-03 15:30:59'),
(107, 'd762af6844428b38752025fbe7f1e74e.png', '2023-03-03 15:30:59', '2023-03-03 15:30:59'),
(108, '5556eb14504946e18e536d5ad237eb62.png', '2023-03-03 15:30:59', '2023-03-03 15:30:59'),
(109, '87159f58ee8912b33adadae45349b6b5.png', '2023-03-03 15:31:02', '2023-03-03 15:31:02'),
(110, '8fc6babdb341d6af41797ef0114562f0.png', '2023-03-03 15:31:02', '2023-03-03 15:31:02'),
(111, '3967e690ac207f5451b76db8d87702cc.png', '2023-03-03 15:31:02', '2023-03-03 15:31:02'),
(112, '4c18d740ae5675ac001409e6daa65afc.png', '2023-03-03 15:31:02', '2023-03-03 15:31:02'),
(115, 'mTT6x9nieknJuOIoQEGub8rfYiuVzJS4QeU6MHp9.jpg', '2023-03-03 16:18:34', '2023-03-03 16:18:34'),
(116, 'xGvyjouzrOZF1fiM3mUFwHnEYAklRJaz5YtNI4UQ.jpg', '2023-03-03 16:18:34', '2023-03-03 16:18:34'),
(117, 'Zvll4khMR6IGDJvKeDRNau1oBvjojNgZLOsjj0Ph.jpg', '2023-03-03 16:21:37', '2023-03-03 16:21:37'),
(118, 'oQ5soy5vOtZuCXP35A9dpPY63G09IYxhwz0Lg4YC.jpg', '2023-03-03 16:21:37', '2023-03-03 16:21:37'),
(119, 'tv0SAKofr7BH6PVxEBFKCed3dlFI0yhRGBW6OsP2.jpg', '2023-03-03 16:21:37', '2023-03-03 16:21:37'),
(120, 'hUu3cpMERbzOGZcLaVk2pzoK7h63DbBPmR5GkM9C.jpg', '2023-03-03 16:23:00', '2023-03-03 16:23:00'),
(121, 'uO98IOnNvAbesyMWgi12PBKYH8bvYetaF4WAVSI6.jpg', '2023-03-03 16:23:00', '2023-03-03 16:23:00'),
(122, 'DaMPIAKuTdyfWQJmuETYFJQs5GLsSFpN5A4nteMI.jpg', '2023-03-03 16:25:32', '2023-03-03 16:25:32'),
(123, 'fEjbc1hz0TouERD0nzdrpMBEXN3Jn7LUzhWvz0NM.jpg', '2023-03-03 16:25:32', '2023-03-03 16:25:32'),
(124, 'S11wbDA8IVDeEO68y5BWe9IALR9zAzdRDOXwQmYT.jpg', '2023-03-03 16:25:32', '2023-03-03 16:25:32');

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
(1, 5, 1, '2023-03-03 15:32:55', '2023-03-03 15:32:55'),
(2, 11, 1, '2023-03-03 15:32:55', '2023-03-03 15:32:55'),
(3, 7, 1, '2023-03-03 15:32:55', '2023-03-03 15:32:55'),
(4, 10, 1, '2023-03-03 15:33:10', '2023-03-03 15:33:10'),
(6, 6, 1, '2023-03-03 15:33:13', '2023-03-03 15:33:13'),
(8, 6, 3, '2023-03-03 15:34:38', '2023-03-03 15:34:38'),
(9, 5, 21, '2023-03-03 15:34:38', '2023-03-03 15:34:38'),
(10, 5, 25, '2023-03-03 15:34:38', '2023-03-03 15:34:38'),
(12, 7, 18, '2023-03-03 15:34:53', '2023-03-03 15:34:53'),
(13, 9, 15, '2023-03-03 15:34:53', '2023-03-03 15:34:53'),
(14, 7, 10, '2023-03-03 15:34:53', '2023-03-03 15:34:53'),
(15, 6, 23, '2023-03-03 15:35:10', '2023-03-03 15:35:10'),
(16, 5, 5, '2023-03-03 15:35:10', '2023-03-03 15:35:10'),
(17, 11, 4, '2023-03-03 15:35:10', '2023-03-03 15:35:10'),
(18, 7, 7, '2023-03-03 15:35:18', '2023-03-03 15:35:18'),
(19, 4, 24, '2023-03-03 15:35:18', '2023-03-03 15:35:18'),
(20, 6, 6, '2023-03-03 15:35:18', '2023-03-03 15:35:18'),
(21, 11, 27, '2023-03-03 15:35:25', '2023-03-03 15:35:25'),
(22, 6, 20, '2023-03-03 15:35:25', '2023-03-03 15:35:25'),
(23, 3, 22, '2023-03-03 15:35:25', '2023-03-03 15:35:25'),
(24, 5, 2, '2023-03-03 15:35:34', '2023-03-03 15:35:34'),
(25, 4, 27, '2023-03-03 15:35:34', '2023-03-03 15:35:34'),
(26, 10, 9, '2023-03-03 15:35:34', '2023-03-03 15:35:34'),
(27, 7, 6, '2023-03-03 15:35:51', '2023-03-03 15:35:51'),
(28, 9, 27, '2023-03-03 15:35:51', '2023-03-03 15:35:51'),
(29, 8, 20, '2023-03-03 15:35:51', '2023-03-03 15:35:51'),
(30, 10, 11, '2023-03-03 15:35:51', '2023-03-03 15:35:51'),
(31, 7, 8, '2023-03-03 15:35:51', '2023-03-03 15:35:51'),
(32, 4, 30, '2023-03-03 16:29:25', '2023-03-03 16:29:25'),
(33, 6, 31, '2023-03-03 16:29:25', '2023-03-03 16:29:25'),
(34, 10, 31, '2023-03-03 16:29:25', '2023-03-03 16:29:25'),
(35, 5, 31, '2023-03-03 16:29:25', '2023-03-03 16:29:25'),
(36, 10, 32, '2023-03-03 16:29:25', '2023-03-03 16:29:25'),
(37, 8, 32, '2023-03-03 16:29:44', '2023-03-03 16:29:44'),
(38, 3, 31, '2023-03-03 16:29:44', '2023-03-03 16:29:44'),
(39, 9, 33, '2023-03-03 16:29:44', '2023-03-03 16:29:44'),
(40, 8, 30, '2023-03-03 16:29:44', '2023-03-03 16:29:44'),
(41, 4, 31, '2023-03-03 16:29:44', '2023-03-03 16:29:44'),
(44, 12, 1, '2023-03-03 16:30:37', '2023-03-03 16:30:37');

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
('5XQ7Eog6sj0ihnbVwP2GkNZGBRzUHkAziU7dminW', 12, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiYjdNTTBuaGNrZEVJSUhuMG1QWjNDOHZjOHFodjI1bldUVlpZWWIybyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MTp7aTowO3M6MTA6Il9vbGRfaW5wdXQiO31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0Ojg4ODgvbmV3bG8iO31zOjU6InN0YXRlIjtzOjQwOiJwUkdmME5rN1VidVI4enNCRFJyQVlRSExXaXlZcHc2N3RZT1E2QkVFIjtzOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRtRTBZRW41NUtzVkg0SzFjc242WEdPOWNMNFJuMk5OcjhtUUl2SEZyLkdRTzhLZWs0eC5uVyI7czo4OiJmZWVkYmFjayI7YTowOnt9czoxMDoiX29sZF9pbnB1dCI7YjoxO30=', 1677861080);

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
(1, '管理者', 'admin@test.com', NULL, '$2y$10$/trzgQ1HVd.7x1SMtVxdmemxcfYHLK8rJ9GYNe5MpvyNaqVarLX0G', NULL, NULL, NULL, 'line', NULL, NULL, NULL, NULL, 'admin', '2023-03-03 15:15:34', '2023-03-03 15:15:34'),
(2, 'テスト 太郎', 'test@test.com', NULL, '$2y$10$xgZCOmIrSFnv0Ig/GovNfOQvO//NLb7YA3sQVtMr47rR9vCPzRT5u', NULL, NULL, NULL, 'line', NULL, NULL, NULL, NULL, 'user', '2023-03-03 15:17:53', '2023-03-03 15:17:53'),
(3, '井上 聡太郎', 'takuma30@example.net', '2023-03-03 15:26:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'nvUYnuYWHP', NULL, NULL, 'user', '2023-03-03 15:26:50', '2023-03-03 15:26:50'),
(4, '近藤 智也', 'saito.kaori@example.org', '2023-03-03 15:28:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, '6Bc0M0kYje', NULL, NULL, 'user', '2023-03-03 15:28:38', '2023-03-03 15:28:38'),
(5, '佐藤 晃', 'haruka.idaka@example.com', '2023-03-03 15:28:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'hGHx8ndCkV', NULL, NULL, 'user', '2023-03-03 15:28:54', '2023-03-03 15:28:54'),
(6, '廣川 修平', 'yuki76@example.com', '2023-03-03 15:29:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'c0kQfb6N06', NULL, NULL, 'user', '2023-03-03 15:29:20', '2023-03-03 15:29:20'),
(7, '吉田 浩', 'yamagishi.yuki@example.com', '2023-03-03 15:29:44', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'CO95hESh1c', NULL, NULL, 'user', '2023-03-03 15:29:44', '2023-03-03 15:29:44'),
(8, '加藤 和也', 'ukobayashi@example.com', '2023-03-03 15:30:02', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'cGsnqSD1yE', NULL, NULL, 'user', '2023-03-03 15:30:02', '2023-03-03 15:30:02'),
(9, '加納 直子', 'naoki.wakamatsu@example.com', '2023-03-03 15:30:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'YW8ArqzbJ7', NULL, NULL, 'user', '2023-03-03 15:30:21', '2023-03-03 15:30:21'),
(10, '鈴木 七夏', 'akira.ekoda@example.com', '2023-03-03 15:30:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'xfwof3RPEt', NULL, NULL, 'user', '2023-03-03 15:30:37', '2023-03-03 15:30:37'),
(11, '渚 真綾', 'shota.yamagishi@example.net', '2023-03-03 15:30:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'line', NULL, 'ettttRKm6m', NULL, NULL, 'user', '2023-03-03 15:30:52', '2023-03-03 15:30:52'),
(12, '大輔', 'daisuke.harigae27@gmail.com', NULL, '$2y$10$mE0YEn55KsVH4K1csn6XGO9cL4Rn2NNr8mQIvHFr.GQO8Kek4x.nW', NULL, NULL, NULL, 'line', NULL, NULL, NULL, NULL, 'user', '2023-03-03 15:39:17', '2023-03-03 15:39:17');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- テーブルの AUTO_INCREMENT `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
