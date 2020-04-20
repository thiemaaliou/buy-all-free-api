-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 20 avr. 2020 à 12:51
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boustanoula_anrifina`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED NOT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `categories_id` int(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `created_at`, `updated_at`, `title`, `deleted_at`, `contenu`, `created_by`, `approved_by`, `categories_id`) VALUES
(1, '2020-04-10 22:04:21', '2020-04-10 23:50:38', 'Soyez pour Allah', NULL, 'Soyez endurant et perseverer dans le chemin de la verite', 2, NULL, 1),
(2, '2020-04-10 22:07:48', '2020-04-10 23:53:00', '', '2020-04-10 23:53:00', 'Je teste ajout article', 2, NULL, 1),
(3, '2020-04-10 22:29:23', '2020-04-10 23:53:53', '', '2020-04-10 23:53:53', '#BayeInternational\n\n\n‎يَا أَيُّهَا الَّذِينَ آمَنُوا كُتِبَ عَلَيْكُمُ الصِّيَامُ كَمَا كُتِبَ عَلَى الَّذِينَ مِنْ قَبْلِكُمْ لَعَلَّكُمْ تَتَّقُونَ\n\nNous parlons peu, nous ne parlons pas souvent car l’insignifiance de notre être nous impose l’obscurité de l’ascétisme. \nNous glorifions le Seigneur Très-Haut et nous vivons de la Prière sur Son Prophète Bien-Aimé SallaLahou Alayhi wa Sallam. \nMais l’heure est grave et nous impose la parole. \n\n‎يأتي على الناس زمانٌ القابضُ على دينه كالقابضِ على الجمر\n \n« Viendra une époque durant laquelle celui qui tiendra véritablement à sa religion (par sa langue, son coeur et ses actes) sera semblable à une personne tenant une braise de feu dans sa main. »\n\nVoici ce que disait le Prophète et cette époque, nous la vivons. \n\nDu fin fond des ténèbres de l’obscurantisme, leur offensive envers l’Islam est en marche. \n\nIls ont commencé par déprécier notre enseignement, faisant du Coran un livre accessoire, accessible à tous mais lu par peu, mémorable par beaucoup mais suivi parcimonieusement par le peu de Croyants qui en font leur référence. \n\nIls ont traité notre Prophète de tous les noms, de pédophile à sanguinaire, en passant par des caricatures dégradantes. \n\nIls ont banalisé la débauche, traitant la culture islamique d’arriérée et de rétrograde. \nIls ont pervertis les hommes et dénudées les femmes, promu les plus grandes bassesses au rang de valeurs élevées. \n\nIls ont imposé leur laïcité, une soit disant « liberté de culte » qui n’est liberté que si on n’est pas musulman. \n\nIls ont détruit les minarets de Suisse, promu des Imams gays et femmes, traînés dans la boue nos dogmes et nos valeurs les plus sacrées. \n\nComme le disait Sarkozy : «  nous ne voulons pas de l’Islam en France, nous voulons UN ISLAM DE FRANCE ».\n\nUn Islam façonné à leur guise, obéissant à leurs règles. \n\nIls y sont parvenus. \n\nEn distillant la peur dans les cœurs de ceux qui se disent musulmans, en instillant un amour effréné de ce monde en eux, jusqu’à ce qu’ils préfèrent ce bas monde à l’au-delà. \n\nIls nous ont fait croire que seuls la science humaine, les moyens matériels et leurs plans sont capables de nous sauver, nous enjoignant de les prendre pour dieux à la place d’Allah. \n\nOù est Nietzsche qui déclarait la mort de Dieu ? Où sont Hegel et Marx qui faisaient de la religion l’opium du peuple ? Où est Hitler qui se terrait dans ses bunkers et se glorifiait de sa race ? \n\nMorts. Tous morts et enterrés malgré leurs moyens, malgré leur science, malgré leurs plans. \n\nNous avons accepté que nos mosquées soient fermées, accepté que nos veillées de prières soient réduites, que nos gamous et ziarras soient repoussés, nous avons accepté tout cela; sans tambours ni trompettes, à contrecœur mais avec soumission envers le Prophète qui nous disait de suivre notre dirigeant même quand ses décisions ne nous agréent pas. \n\nMais la limite à cette soumission, c’est quand ce dirigeant se met à la place d’Allah. \n\nLes 5 piliers de l’Islam sont intouchables et nul être vivant n’y touchera impunément.\n\nLe Hadj, nous le ferons avec le cœur, car les dirigeants corrompus auxquels Allah à accordé la royauté sur l’Arabie Saoudite sont à votre botte. \n\nNous prierons dans nos maisons car, Allah dans sa grande mansuétude, a fait de toute la Terre un lieu de prière pour nous. \n\nNous jeûnerons tant que le Soleil et la Lune se lèveront. \n\nCertains « savants » corrompus osent émettre l’idée d’un report du Ramadan. \n\nIls n’ont qu’à reporter leur propre Ramadan, ils n’ont qu’à empêcher leur lune et leur soleil de se lever, ils n’ont qu’à suivre leur propre foi, ceci les engage.\n\nMais tant que Le Soleil et La Lune d’Allah brilleront dans le Ciel, tant que les jours se succèderont et les mois arriveront, nous jeûnerons, qu’il pleuve, tonne ou vente. \n\nNous ne polémiquerons point en ayats et ahadiths car le Commandement Divin ne souffre point d’ambiguïté. \n\nReportez votre ramadan de mounafiqouns, nous jeûnerons le Ramadan d’Allah. \n\nTant que Le Soleil et La Lune marcheront selon la course qu’Allah leur a imposé, nous jeûnerons messieurs. \n\nFaites venir le Soleil d’occident et empêchez La Lune de se lever, là nous saurons que vous êtes à la place du Tout-Puissant. \n\nNous jeûnerons et nulle peur ne nous en empêchera car la mort n’est qu’une créature et nous n’avons peur que du Créateur. \nNous mourrons tous messieurs. \nAlors, je vous le dis : \nÀ vous votre ramadan et à nous le nôtre.\n\nNous jeûnerons si Allah lève la Lune du Ramadan.\n\nEmpêchez la de se lever.', 2, NULL, 1),
(4, '2020-04-10 22:57:25', '2020-04-10 22:57:25', 'Report du mois de ramadan', NULL, '#BayeInternational\n\n\n‎يَا أَيُّهَا الَّذِينَ آمَنُوا كُتِبَ عَلَيْكُمُ الصِّيَامُ كَمَا كُتِبَ عَلَى الَّذِينَ مِنْ قَبْلِكُمْ لَعَلَّكُمْ تَتَّقُونَ\n\nNous parlons peu, nous ne parlons pas souvent car l’insignifiance de notre être nous impose l’obscurité de l’ascétisme. \nNous glorifions le Seigneur Très-Haut et nous vivons de la Prière sur Son Prophète Bien-Aimé SallaLahou Alayhi wa Sallam. \nMais l’heure est grave et nous impose la parole. \n\n‎يأتي على الناس زمانٌ القابضُ على دينه كالقابضِ على الجمر\n \n« Viendra une époque durant laquelle celui qui tiendra véritablement à sa religion (par sa langue, son coeur et ses actes) sera semblable à une personne tenant une braise de feu dans sa main. »\n\nVoici ce que disait le Prophète et cette époque, nous la vivons. \n\nDu fin fond des ténèbres de l’obscurantisme, leur offensive envers l’Islam est en marche. \n\nIls ont commencé par déprécier notre enseignement, faisant du Coran un livre accessoire, accessible à tous mais lu par peu, mémorable par beaucoup mais suivi parcimonieusement par le peu de Croyants qui en font leur référence. \n\nIls ont traité notre Prophète de tous les noms, de pédophile à sanguinaire, en passant par des caricatures dégradantes. \n\nIls ont banalisé la débauche, traitant la culture islamique d’arriérée et de rétrograde. \nIls ont pervertis les hommes et dénudées les femmes, promu les plus grandes bassesses au rang de valeurs élevées. \n\nIls ont imposé leur laïcité, une soit disant « liberté de culte » qui n’est liberté que si on n’est pas musulman. \n\nIls ont détruit les minarets de Suisse, promu des Imams gays et femmes, traînés dans la boue nos dogmes et nos valeurs les plus sacrées. \n\nComme le disait Sarkozy : «  nous ne voulons pas de l’Islam en France, nous voulons UN ISLAM DE FRANCE ».\n\nUn Islam façonné à leur guise, obéissant à leurs règles. \n\nIls y sont parvenus. \n\nEn distillant la peur dans les cœurs de ceux qui se disent musulmans, en instillant un amour effréné de ce monde en eux, jusqu’à ce qu’ils préfèrent ce bas monde à l’au-delà. \n\nIls nous ont fait croire que seuls la science humaine, les moyens matériels et leurs plans sont capables de nous sauver, nous enjoignant de les prendre pour dieux à la place d’Allah. \n\nOù est Nietzsche qui déclarait la mort de Dieu ? Où sont Hegel et Marx qui faisaient de la religion l’opium du peuple ? Où est Hitler qui se terrait dans ses bunkers et se glorifiait de sa race ? \n\nMorts. Tous morts et enterrés malgré leurs moyens, malgré leur science, malgré leurs plans. \n\nNous avons accepté que nos mosquées soient fermées, accepté que nos veillées de prières soient réduites, que nos gamous et ziarras soient repoussés, nous avons accepté tout cela; sans tambours ni trompettes, à contrecœur mais avec soumission envers le Prophète qui nous disait de suivre notre dirigeant même quand ses décisions ne nous agréent pas. \n\nMais la limite à cette soumission, c’est quand ce dirigeant se met à la place d’Allah. \n\nLes 5 piliers de l’Islam sont intouchables et nul être vivant n’y touchera impunément.\n\nLe Hadj, nous le ferons avec le cœur, car les dirigeants corrompus auxquels Allah à accordé la royauté sur l’Arabie Saoudite sont à votre botte. \n\nNous prierons dans nos maisons car, Allah dans sa grande mansuétude, a fait de toute la Terre un lieu de prière pour nous. \n\nNous jeûnerons tant que le Soleil et la Lune se lèveront. \n\nCertains « savants » corrompus osent émettre l’idée d’un report du Ramadan. \n\nIls n’ont qu’à reporter leur propre Ramadan, ils n’ont qu’à empêcher leur lune et leur soleil de se lever, ils n’ont qu’à suivre leur propre foi, ceci les engage.\n\nMais tant que Le Soleil et La Lune d’Allah brilleront dans le Ciel, tant que les jours se succèderont et les mois arriveront, nous jeûnerons, qu’il pleuve, tonne ou vente. \n\nNous ne polémiquerons point en ayats et ahadiths car le Commandement Divin ne souffre point d’ambiguïté. \n\nReportez votre ramadan de mounafiqouns, nous jeûnerons le Ramadan d’Allah. \n\nTant que Le Soleil et La Lune marcheront selon la course qu’Allah leur a imposé, nous jeûnerons messieurs. \n\nFaites venir le Soleil d’occident et empêchez La Lune de se lever, là nous saurons que vous êtes à la place du Tout-Puissant. \n\nNous jeûnerons et nulle peur ne nous en empêchera car la mort n’est qu’une créature et nous n’avons peur que du Créateur. \nNous mourrons tous messieurs. \nAlors, je vous le dis : \nÀ vous votre ramadan et à nous le nôtre.\n\nNous jeûnerons si Allah lève la Lune du Ramadan.\n\nEmpêchez la de se lever.', 2, NULL, 1),
(5, '2020-04-10 22:59:18', '2020-04-10 22:59:18', 'Concernant Report du mois de ramadan', NULL, '#BayeInternational\n\n\n‎يَا أَيُّهَا الَّذِينَ آمَنُوا كُتِبَ عَلَيْكُمُ الصِّيَامُ كَمَا كُتِبَ عَلَى الَّذِينَ مِنْ قَبْلِكُمْ لَعَلَّكُمْ تَتَّقُونَ\n\nNous parlons peu, nous ne parlons pas souvent car l’insignifiance de notre être nous impose l’obscurité de l’ascétisme. \nNous glorifions le Seigneur Très-Haut et nous vivons de la Prière sur Son Prophète Bien-Aimé SallaLahou Alayhi wa Sallam. \nMais l’heure est grave et nous impose la parole. \n\n‎يأتي على الناس زمانٌ القابضُ على دينه كالقابضِ على الجمر\n \n« Viendra une époque durant laquelle celui qui tiendra véritablement à sa religion (par sa langue, son coeur et ses actes) sera semblable à une personne tenant une braise de feu dans sa main. »\n\nVoici ce que disait le Prophète et cette époque, nous la vivons. \n\nDu fin fond des ténèbres de l’obscurantisme, leur offensive envers l’Islam est en marche. \n\nIls ont commencé par déprécier notre enseignement, faisant du Coran un livre accessoire, accessible à tous mais lu par peu, mémorable par beaucoup mais suivi parcimonieusement par le peu de Croyants qui en font leur référence. \n\nIls ont traité notre Prophète de tous les noms, de pédophile à sanguinaire, en passant par des caricatures dégradantes. \n\nIls ont banalisé la débauche, traitant la culture islamique d’arriérée et de rétrograde. \nIls ont pervertis les hommes et dénudées les femmes, promu les plus grandes bassesses au rang de valeurs élevées. \n\nIls ont imposé leur laïcité, une soit disant « liberté de culte » qui n’est liberté que si on n’est pas musulman. \n\nIls ont détruit les minarets de Suisse, promu des Imams gays et femmes, traînés dans la boue nos dogmes et nos valeurs les plus sacrées. \n\nComme le disait Sarkozy : «  nous ne voulons pas de l’Islam en France, nous voulons UN ISLAM DE FRANCE ».\n\nUn Islam façonné à leur guise, obéissant à leurs règles. \n\nIls y sont parvenus. \n\nEn distillant la peur dans les cœurs de ceux qui se disent musulmans, en instillant un amour effréné de ce monde en eux, jusqu’à ce qu’ils préfèrent ce bas monde à l’au-delà. \n\nIls nous ont fait croire que seuls la science humaine, les moyens matériels et leurs plans sont capables de nous sauver, nous enjoignant de les prendre pour dieux à la place d’Allah. \n\nOù est Nietzsche qui déclarait la mort de Dieu ? Où sont Hegel et Marx qui faisaient de la religion l’opium du peuple ? Où est Hitler qui se terrait dans ses bunkers et se glorifiait de sa race ? \n\nMorts. Tous morts et enterrés malgré leurs moyens, malgré leur science, malgré leurs plans. \n\nNous avons accepté que nos mosquées soient fermées, accepté que nos veillées de prières soient réduites, que nos gamous et ziarras soient repoussés, nous avons accepté tout cela; sans tambours ni trompettes, à contrecœur mais avec soumission envers le Prophète qui nous disait de suivre notre dirigeant même quand ses décisions ne nous agréent pas. \n\nMais la limite à cette soumission, c’est quand ce dirigeant se met à la place d’Allah. \n\nLes 5 piliers de l’Islam sont intouchables et nul être vivant n’y touchera impunément.\n\nLe Hadj, nous le ferons avec le cœur, car les dirigeants corrompus auxquels Allah à accordé la royauté sur l’Arabie Saoudite sont à votre botte. \n\nNous prierons dans nos maisons car, Allah dans sa grande mansuétude, a fait de toute la Terre un lieu de prière pour nous. \n\nNous jeûnerons tant que le Soleil et la Lune se lèveront. \n\nCertains « savants » corrompus osent émettre l’idée d’un report du Ramadan. \n\nIls n’ont qu’à reporter leur propre Ramadan, ils n’ont qu’à empêcher leur lune et leur soleil de se lever, ils n’ont qu’à suivre leur propre foi, ceci les engage.\n\nMais tant que Le Soleil et La Lune d’Allah brilleront dans le Ciel, tant que les jours se succèderont et les mois arriveront, nous jeûnerons, qu’il pleuve, tonne ou vente. \n\nNous ne polémiquerons point en ayats et ahadiths car le Commandement Divin ne souffre point d’ambiguïté. \n\nReportez votre ramadan de mounafiqouns, nous jeûnerons le Ramadan d’Allah. \n\nTant que Le Soleil et La Lune marcheront selon la course qu’Allah leur a imposé, nous jeûnerons messieurs. \n\nFaites venir le Soleil d’occident et empêchez La Lune de se lever, là nous saurons que vous êtes à la place du Tout-Puissant. \n\nNous jeûnerons et nulle peur ne nous en empêchera car la mort n’est qu’une créature et nous n’avons peur que du Créateur. \nNous mourrons tous messieurs. \nAlors, je vous le dis : \nÀ vous votre ramadan et à nous le nôtre.\n\nNous jeûnerons si Allah lève la Lune du Ramadan.\n\nEmpêchez la de se lever.', 2, NULL, 1),
(6, '2020-04-15 01:44:06', '2020-04-15 01:44:06', 'sdsd', NULL, 'sdds', 2, NULL, 1),
(7, '2020-04-15 01:48:53', '2020-04-15 01:48:53', 'MA BAALOU', NULL, 'undefined', 2, NULL, 1),
(8, '2020-04-15 17:52:45', '2020-04-15 17:52:45', 'Ma Baalou Cheikh Ould Khayri', NULL, NULL, 2, NULL, 1),
(9, '2020-04-15 19:15:50', '2020-04-15 19:15:50', 'Medina Baye Cite du savoir', NULL, NULL, 2, NULL, 1),
(10, '2020-04-15 19:21:35', '2020-04-15 19:21:35', 'la faydha', NULL, NULL, 2, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `cni` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sayroul Qalb', '2020-04-12 19:16:17', '2020-04-12 19:16:17', NULL),
(2, 'Taysiroul Wouçoul', '2020-04-12 19:23:49', '2020-04-12 19:23:49', NULL),
(3, 'Chifaoul Asqam', '2020-04-12 19:24:19', '2020-04-12 19:24:19', NULL),
(4, 'Nouroul Haqq', '2020-04-12 19:27:08', '2020-04-12 19:27:08', NULL),
(5, 'Nouroul Bassar', '2020-04-12 19:27:33', '2020-04-12 19:27:33', NULL),
(6, 'Jabroul Kasri', '2020-04-12 19:27:49', '2020-04-12 19:27:49', NULL),
(7, 'Nawâdirul Hiqam', '2020-04-12 19:28:14', '2020-04-12 19:28:14', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `articles_id` int(10) NOT NULL,
  `contenu` longtext,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `approved` tinyint(1) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `articles_id`, `contenu`, `created_by`, `created_at`, `updated_at`, `deleted_at`, `approved`, `parent_id`) VALUES
(1, 4, 'Baye moy deug', 2, '2020-04-11 00:00:52', '2020-04-11 00:24:31', NULL, 1, NULL),
(2, 4, 'Je suis fier de ce que je suis Masha ALLAH', 2, '2020-04-11 00:25:42', '2020-04-11 00:25:42', NULL, 1, NULL),
(3, 4, 'Masha ALLAH', 2, '2020-04-11 00:26:06', '2020-04-11 00:29:33', '2020-04-11 00:29:33', 1, NULL),
(4, 4, 'Masha ALLAH', 2, '2020-04-11 01:12:41', '2020-04-11 01:12:41', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `authors_id` int(10) UNSIGNED NOT NULL,
  `articles_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `articles_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `articles_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `files`
--

INSERT INTO `files` (`id`, `created_at`, `updated_at`, `deleted_at`, `articles_id`, `name`) VALUES
(2, '2020-04-10 22:04:21', '2020-04-10 22:04:21', NULL, 1, '_1586556261.jpeg'),
(3, '2020-04-10 22:07:48', '2020-04-10 22:07:48', NULL, 2, '2_1586556468.jpeg'),
(4, '2020-04-10 22:29:23', '2020-04-10 22:29:23', NULL, 3, '3_1586557763.jpeg'),
(5, '2020-04-10 22:59:18', '2020-04-10 22:59:18', NULL, 5, '5_1586559558.jpg'),
(6, '2020-04-15 01:44:06', '2020-04-15 01:44:06', NULL, 6, '6_1586915046.jpg'),
(7, '2020-04-15 01:44:06', '2020-04-15 01:44:06', NULL, 6, '6_1586915046.jpg'),
(8, '2020-04-15 01:48:53', '2020-04-15 01:48:53', NULL, 7, '7_1586915333.pdf'),
(9, '2020-04-15 17:52:45', '2020-04-15 17:52:45', NULL, 8, '8_1586973165.jpg'),
(10, '2020-04-15 17:52:45', '2020-04-15 17:52:45', NULL, 8, '8_1586973165.jpg'),
(11, '2020-04-15 19:15:50', '2020-04-15 19:15:50', NULL, 9, '9_1586978150.jpg'),
(12, '2020-04-15 19:15:50', '2020-04-15 19:15:50', NULL, 9, '9_1586978150.jpg'),
(13, '2020-04-15 19:15:50', '2020-04-15 19:15:50', NULL, 9, '9_1586978150.jpg'),
(14, '2020-04-15 19:15:50', '2020-04-15 19:15:50', NULL, 9, '9_1586978150.jpg'),
(15, '2020-04-15 19:15:50', '2020-04-15 19:15:50', NULL, 9, '9_1586978150.jpg'),
(16, '2020-04-15 19:15:50', '2020-04-15 19:15:50', NULL, 9, '9_1586978150.jpg'),
(17, '2020-04-15 19:21:35', '2020-04-15 19:21:35', NULL, 10, '10_1586978495.jpg'),
(18, '2020-04-15 19:21:35', '2020-04-15 19:21:35', NULL, 10, '10_1586978495.jpg'),
(19, '2020-04-15 19:21:35', '2020-04-15 19:21:35', NULL, 10, '10_1586978495.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `articles_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, '2020-04-11 01:20:16', '2020-04-11 01:21:24', '2020-04-11 01:21:24'),
(2, 2, 1, '2020-04-11 01:20:20', '2020-04-11 01:20:20', NULL),
(3, 2, 1, '2020-04-11 01:20:22', '2020-04-11 01:20:22', NULL),
(4, 2, 4, '2020-04-11 01:20:36', '2020-04-11 01:20:36', NULL),
(5, 2, 4, '2020-04-11 01:20:38', '2020-04-11 01:20:38', NULL),
(6, 2, 4, '2020-04-11 01:20:39', '2020-04-11 01:20:39', NULL),
(7, 2, 4, '2020-04-11 01:20:40', '2020-04-11 01:20:40', NULL),
(8, 2, 4, '2020-04-11 01:20:41', '2020-04-11 01:20:41', NULL),
(9, 2, 4, '2020-04-11 01:20:42', '2020-04-11 01:20:42', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_04_205758_create_articles_table', 1),
(4, '2020_04_04_205758_create_authors_table', 1),
(5, '2020_04_04_205758_create_courses_table', 1),
(6, '2020_04_04_205758_create_downloads_table', 1),
(7, '2020_04_04_205758_create_files_table', 1),
(8, '2020_04_04_205758_create_modules_table', 1),
(9, '2020_04_04_205758_create_reads_table', 1),
(10, '2020_04_04_205758_create_subscriptions_table', 1),
(11, '2020_04_04_205808_create_foreign_keys', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(15, '2016_06_01_000004_create_oauth_clients_table', 2),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4d4d2629707a36ab42c117d318601d785508b2a400473844d366d34bc4616da078747d66c6d6cb42', 2, 1, 'Personal Access Token', '[]', 0, '2020-04-12 21:31:28', '2020-04-12 21:31:28', '2021-04-12 21:31:28'),
('f50bd9477fe568601abc51c77371e7c9e050e5179e366efbbb85df7d0d8a3066c8eeedd87f0b060a', 2, 1, 'Personal Access Token', '[]', 0, '2020-04-05 14:34:29', '2020-04-05 14:34:29', '2021-04-05 14:34:29');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'cZCfqbZpadDI0uSTjpBqxeFFKjE0Ub484Nl8I8U0', 'http://localhost', 1, 0, 0, '2020-04-05 12:57:04', '2020-04-05 12:57:04'),
(2, NULL, 'Laravel Password Grant Client', 'CO8PfQBis3cy5t7T5aBBAdwIUSJsUSUdZEOtY74z', 'http://localhost', 0, 1, 0, '2020-04-05 12:57:04', '2020-04-05 12:57:04');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-04-05 12:57:04', '2020-04-05 12:57:04');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reads`
--

CREATE TABLE `reads` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `artciles_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profil` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `firstname`, `lastname`, `phone`, `address`, `profil`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aliou', 'test2@faydha-eds.com', NULL, '$2y$10$OtHnFiIjLp4W.Ff2WMXxY.5mIeZgf/Lnw7oULzYXQN4V3GW8UiOnG', 'Aliou', 'Thiema', '771000001', 'Kaolack', 'admin', NULL, '2020-04-05 14:29:00', '2020-04-05 14:29:00', NULL),
(2, 'Aliou', 'admin@faydha-eds.com', NULL, '$2y$10$gEC88cVRTc4sAB0VdX.diei3WQ1BrsgVItMknGTBEZoXmsiGGkVQi', 'Aliou', 'Thiema', '764887200', 'Kaolack', 'admin', NULL, '2020-04-05 14:29:28', '2020-04-05 14:29:28', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_created_by_foreign` (`created_by`);

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_users_id_foreign` (`users_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_authors_id_foreign` (`authors_id`),
  ADD KEY `courses_articles_id_foreign` (`articles_id`);

--
-- Index pour la table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloads_users_id_foreign` (`users_id`),
  ADD KEY `downloads_articles_id_foreign` (`articles_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_articles_id_foreign` (`articles_id`);

--
-- Index pour la table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reads`
--
ALTER TABLE `reads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reads_users_id_foreign` (`users_id`),
  ADD KEY `reads_artciles_id_foreign` (`artciles_id`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `reads`
--
ALTER TABLE `reads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `courses_authors_id_foreign` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `downloads`
--
ALTER TABLE `downloads`
  ADD CONSTRAINT `downloads_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `downloads_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_articles_id_foreign` FOREIGN KEY (`articles_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `reads`
--
ALTER TABLE `reads`
  ADD CONSTRAINT `reads_artciles_id_foreign` FOREIGN KEY (`artciles_id`) REFERENCES `articles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `reads_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
