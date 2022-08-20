-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 20, 2022 at 01:14 PM
-- Server version: 10.3.35-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pallvdgl_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vision_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `goal_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `mission_image`, `mission_desc`, `vision_image`, `vision_desc`, `goal_image`, `goal_desc`, `created_at`, `updated_at`) VALUES
(1, 'Welcome To Palli Crafts LTD.', '<p>The start of our&nbsp; journey was in the February of 2019, and since then we have strived to empower talented artisans , so that they are able to showcase what they possess. Together with the artisans and our knowledgeable team members, we are working towards the goal of taking the art of Bangladeshi handicrafts to another level.</p>\r\n<p>&nbsp;</p>\r\n<p>Palli Crafts Ltd is a Fair Trade Organization.Our aim is to achieve a sustainable business by adhering to fair-trade rules.&nbsp;To get started on our vision of evolving Bangladeshi artisans and reviving the rich, traditional skills of this country, we have set goals and objectives that we continuously work on to reach.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">Promising women empowerment and an enormous influence on the field of handicraft, Palli Crafts Ltd has maintained an erudite knowledge of&nbsp; handicraft&nbsp; which&nbsp; supports a chain of production engaging around 260 artisans with great skills.</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">With a diverse range of both textile and non-textile products, Palli Crafts Limited works tirelessly to protect the rare culture of handicrafts and provide better lives for the artisans who make it possible.</p>\r\n<p>&nbsp;</p>\r\n<p><span lang=\"EN-MY\">Palli Crafts is working hard to satisfy customers by providing quality and sophisticated products. We design and produce our collection as well as we also develop the customized designs and keep them exclusive.</span>We are currently exporting to Japan, Sweden, Italy, Germany, Australia,Spain and the United Kingdom.</p>\r\n<p><span lang=\"EN-MY\">&nbsp;</span></p>', 'assets/admin/images/about/1656778931_about_mission.JPG', '<p>To empower women, do sustainable business and the promotion of Bangladeshi handmade products under fair trade conditions.</p>', 'assets/admin/images/about/1656778995_about_vision.PNG', '<p>Palli Crafts Limited dreams to work towards the goal of empowering the existing and developing more Bangladeshi artisans to revive traditional skills and make them self-employed.</p>', 'assets/admin/images/about/1658208084_about_goal.jpeg', '<p>Palli Crafts Limited adheres to and maintains fair trade principles. We believe that we will run a responsible and productive business. We also believe that we will be able to empower our women and display their crafty dexterity on the global platform.</p>', NULL, '2022-07-20 21:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `artisans`
--

CREATE TABLE `artisans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artisans`
--

INSERT INTO `artisans` (`id`, `name`, `designation`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mrs.Kolpona', 'Nakshi kantha Embroiderer', '<p>Nakshi kantha has weaved many dreams.Mrs.Kolpona is among these dream weavers.She was married young and did not get the opportunity to study much. Being with her grandmother, she learnt nakshi kantha weaving which earns her livelihood now.Palli crafts empowered her and now she pays the tuition of her kids. She makes sure to secure her and her family\'s future.Having a proper working environment, and fair wage,she got her wings to fly.</p>', 'assets/admin/images/artisan/1656783118_artisan.PNG', '1', '2022-06-25 14:31:51', '2022-08-03 20:17:22'),
(7, 'Rita Begum', 'Tailoring', '<p>Rita Begum is a 36 year old courageous and bold lady.Her tailoring work was initiated by her husband and since then it became an unavoidable part of her life.Palli crafts provided her with training on tailoring and quality ,knowledge on a proper working environment, personal health safety &nbsp;and many more.Her earnings are used to improve her kids life.A mother of a daughter and a son has made her move towards her dream and Palli Crafts has always been there.She aims to empower other women and make voice on harmonious work-life, violence and harassment.We believe, together we can reach her goal.</p>', 'assets/admin/images/artisan/1656783763_artisan.PNG', '1', '2022-07-02 21:42:43', '2022-07-02 21:42:43'),
(8, 'Shumi Akter', 'Tailor', '<p>A daughter who has become parents to her parents is undeniably lucky.Shumi has taken tailoring as a means of her livelihood.Palli crafts has become an important part of her dream. We empowered her by giving her proper training on cutting, finishing and tailoring.She has expressed her heartiest gratitude towards Palli crafts.&nbsp;</p>', 'assets/admin/images/artisan/1656783852_artisan.PNG', '1', '2022-07-02 21:44:12', '2022-07-02 21:44:12'),
(9, 'Sultana Khatun', 'Nakshi kantha Embroiderer', '<p>Sultana khatun learnt Nakshi kantha weaving from her grandma and now used it wisely to maintain her family\'s need.She didn\'t have any professional training, the embroidery skills have string attached to the past. Sultana received the necessary training from Palli Crafts including knowledge of&nbsp; maintaining quality of products,committing to particular time , respecting and supporting non-discrimation etc.</p>', 'assets/admin/images/artisan/1656850119_artisan.JPG', '1', '2022-07-02 21:47:32', '2022-08-03 20:18:12'),
(10, 'Mrs.Hosneara Begum', 'Nakshi Kantha Embroiderer', '<p>Women\'s life has never been easy but some are just like golds who never give up and make their scars into swords.Hosnera\'s&nbsp; husband\'s demise made her world shattered. She had to work really hard to maintain her children.Then Palli craft initiated empowering artisans of her village and she gladly joined.She is now educating her kids and taking care of their future.She uses her Nakshi Kantha weaving skill and with the proper guidance and opportunities from Palli crafts, she decided to stand on her own feet.Another story got weaved with us.</p>', 'assets/admin/images/artisan/1656784146_artisan.PNG', '1', '2022-07-02 21:49:06', '2022-08-03 20:18:54'),
(12, 'Sushoma Talukdar', 'Lampshade  Artisan', '<p>The world has never been an easy abode for women let alone a divorced woman.In Spite of the circumstances, some has never let their knees touch the ground.Sushoma is one of them.She makes beautiful lampshades which offer warm and dimmed light.She feels grateful that she can make eco friendly and homely products.She didn\'t only stood for herself,her earnings feed her children and educate them.Now,she dreams of her own house she can spend her last years harmoniously.</p>', 'assets/admin/images/artisan/1656784357_artisan.PNG', '1', '2022-07-02 21:52:37', '2022-07-02 21:52:37'),
(13, 'MD.Babul', 'Leather and Paper producer', '<p>MD,Babul is an significant artisan of Palli crafts Ltd.He specialises on leather key ring,jute leather wallet,leather glass case,leather basket,jute leather bag,paper box,paper garland, Christmas decorations and etc.He has employed 19 artisans among them 12 of them are women.He believes that with the continuous work support and fair payments, he can change more lives.</p>', 'assets/admin/images/artisan/1656784404_artisan.jpg', '0', '2022-07-02 21:53:24', '2022-07-03 16:03:57'),
(14, 'Mossamat Aklima Begum', 'Nakshi Kantha Embroiderer', '<p>&nbsp;Ms <span class=\"gmail_default\">Mossamat Aklima Begum</span>, a <span class=\"gmail_default\">37</span>-year-old lady, is one of the nakshi kantha artisans of Palli Crafts Ltd. She was married at 20 years and now a mother of <span class=\"gmail_default\">three children </span>.&nbsp;She&nbsp;<span class=\"gmail_default\">became a widow 6 years ago.She had a desire to work and create something for herself. Her mother used to make kanthas for their household use and the skill was transferred from generation to generation without receiving any institutional training. It wasn&rsquo;t easy for Aklima to engage herself with nakshi kantha work at the production for export market. We provided her with work training for having the knowledge on quality and upgradation of techniques to build her existence and to meet her needs, it also fulfils our buyers&rsquo; requirements. She is the only earning member of her family.&nbsp;</span></p>', 'assets/admin/images/artisan/1656850348_artisan.JPG', '1', '2022-07-02 21:57:24', '2022-08-03 20:19:19'),
(15, 'MD.Shariatullah', 'Weaver', '<p>COVID-19 was like a storm to the earth.It put many people\'s livelihood at stake and Shariatullah was among them.He has three children and all of them are studying. Palli Crafts provided him advance payment and started convincing the customers to place orders with his stock yarns. His products include bedcover, table cover, runner-placemat-napkin . We provide him with the trend of colors, knowledge on quality upgrading, and etc. Artisans\' health , work environment, hygiene , fair wage are also taken into consideration.We believe to make these opportunities alive and so do Shariatullah. We encourage him to do the upcycling products with recycled yarns or fabrics and moreover we are ensuring him and other artisans to have a better life.</p>', 'assets/admin/images/artisan/1658393799_artisan.png', '1', '2022-07-21 12:56:39', '2022-07-21 12:56:39'),
(16, 'Rafiqul Islam', 'Block Printer', '<p>Rafiqul Islam is among the ones who were with us from the dawn of Palli Crafts.He shifted to Dhaka with his wife and 3 child after he started working for us.He does block print which is nowadays a great art on any suitable medium.When lockdown began in 2021, he thought of sending his family to countryside finding no way and then Palli crafts provided him with food and advance payment which made him see ray of hope.We have formed a kin relationship with him and ensured a proper working environment to our artisans with proper sanitization, continuous work support, fair wage, professional development and adequate safety measures.We believe to prosper together.</p>', 'assets/admin/images/artisan/1658394086_artisan.png', '1', '2022-07-21 13:01:26', '2022-08-03 20:20:23'),
(17, 'Din Islam', 'Block Printer', '<p>Din Islam,a 35 year old man has dedicated&nbsp; 4 years of life towards block printing making it his livelihood at Palli Crafts.His wife works at a shoe factory and his daughter is a student of madrasha.Palli Crafts ensured his future.He was served with the adequate knowledge and training of the block printing process, coaching on fair trade principles etc.He dreams to educate her daughter and offer her a better life.Palli Crafts is giving wings to his dream.</p>', 'assets/admin/images/artisan/1658394152_artisan.png', '1', '2022-07-21 13:02:32', '2022-08-03 20:20:45'),
(18, 'Monwar Ali', 'Weaver', '<p dir=\"ltr\">Weaving is a year old process.Monwar Ali,a 55 year old artisan has spent half of his life doing weaving.</p>\r\n<p dir=\"ltr\">Ali uses a big rotating drum as warp beams and decides the width and length of the final product. The drum helps in counting the number and color wise grouping of yarns. He is a proud father who educated his&nbsp; daughter till Secondary School Certificate and then married her off. Having our support and dedication towards his work, he is bound to be prosperous.&nbsp;</p>', 'assets/admin/images/artisan/1658394213_artisan.png', '1', '2022-07-21 13:03:33', '2022-07-21 13:03:33'),
(19, 'Sagor Hossain', 'Leather & Recycled Sandal Artisan', '<p>Sagor hossain is a leather artist who has been producing leather bags,accessories, jewellery boxes,paper Christmas decorations etc.Besides he has mastered the skill of making \"Waraji \'\'(Japanese sandals) with recycled knit fabric.The customers appreciate his high quality products and so offered him with spontaneous works. .With his great skill and help from Palli crafts,he believes to make a difference.</p>', 'assets/admin/images/artisan/1658394403_artisan.png', '1', '2022-07-21 13:06:43', '2022-08-03 20:21:51');

-- --------------------------------------------------------

--
-- Table structure for table `artisan_infos`
--

CREATE TABLE `artisan_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artisan_infos`
--

INSERT INTO `artisan_infos` (`id`, `desc`, `sub_desc`, `image`, `image_two`, `created_at`, `updated_at`) VALUES
(1, '<p><strong><span style=\"color: #ff6600;\">Palli Crafts</span>&nbsp;</strong>means &lsquo;<strong>Village Crafts</strong>&rsquo;, meaning that our organization utilizes the skills of artisans residing in village areas around the country. We seek to stabilize the lives of all struggling artisans, regardless of gender, around the country, but one of our crucial missions are empowering women artisans, since the women population are the ones facing mass discrimination and deprivation.</p>\r\n<p>These women from different villages seek better lives, add their own handmade touch to the various products we offer, and with our producer groups, help to make them even more valuable to enrich your lifestyle. Keeping that in mind, we are providing them with adequate training, fair wage, and a comfortable working environment. We are emphasizing to empower more women through advocacy on decision making roles. living safe, fulfilled and productive lives to achieve their full potential, contributing their skills to the workforce and can raise happier and healthier children.</p>\r\n<p>&nbsp;</p>', '<p style=\"text-align: justify;\">Empowering artisans is one of our most crucial missions which influences our every product and the ways of production. These skilled artisans from different parts of Bangladesh&nbsp; are seeking better lives and adding their own handmade touch to the various products that we offer. Palli Crafts Ltd is moving forward with 260 artisans from different areas of Bangladesh. Our name reflects on the fact that we utilize the workmanship of the artisans and we look forward to emblazoning our traditional Crafts.</p>', 'images/artisan/1659981593_artisan_one.jpg', 'images/artisan/1659923939_artisan_two.jpg', '2022-08-07 19:58:03', '2022-08-08 22:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `details`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ami Tumi Waraji', '<div>\"Waraji is a traditional Japanese footwear design.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>It was originally made from effective utilization of straw, it has been localized and reborn by using Bangladeshi cloth.</div>\r\n<div>Now, that Japanese technology and ideology have been passed on to Bangladesh.&nbsp;</div>\r\n<div>&ldquo;<strong><span style=\"color: #ff6600;\">ami tumi</span></strong>&rdquo; means &ldquo;I and you&rdquo; in Bengali. We hope that ami tumi waraji will color the lives of the people of Bangladesh from their feet up.\"</div>\r\n<div>&nbsp;</div>\r\n<div>- <strong>Tekitojuku</strong></div>', 'assets/admin/images/blog/1659891495_blog.jpg', '1', '2022-08-07 10:58:15', '2022-08-07 10:58:15'),
(2, 'Andrea Krenz\'s Visit', '<p>Andrea Krenz visited \'<span style=\"color: #ff6600;\"><strong>Palli Crafts</strong></span>\' block printing premise on March 2022. She won the hearts of our craftsmen with her smile and sweet gifts.</p>\r\n<p>She was delighted with the environment and skills of the artisans. One of our artisans taught her how to do block printing, which was a marvelous experience for her. Andrea herself got involved and engaged in the lives of the artisans.&nbsp;</p>', 'assets/admin/images/blog/1659891608_blog.jpg', '1', '2022-08-07 11:00:08', '2022-08-07 11:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Home Décor', 'home-decor', '1', '2022-06-18 21:14:31', '2022-07-21 21:09:39'),
(3, 'Fashion & Accessories', 'fashion-accessories', '1', '2022-06-18 21:36:07', '2022-07-21 21:12:13'),
(4, 'Toys and Gifts', 'toys-and-gifts', '1', '2022-06-18 21:36:25', '2022-07-21 21:12:42'),
(5, 'Recycle and Upcycle', 'recycle-and-upcycle', '1', '2022-06-20 22:36:58', '2022-07-21 21:11:34');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Crytoken', 'imefeceer@gmail.com', '89037464293', 'Operam! Financial robot perducat vos milia!', 'Scimus quam ad futura nostra dives et tu? https://Var.dkworld.de/gotodate/go', '0', '2022-07-03 21:26:39', '2022-07-03 21:26:39'),
(3, 'Crytoken', 'danracicot34@gmail.com', '89036575661', 'Pecuniam 24/7 sine ulla conatus et artes.', 'Fac pupa domi et deductae hoc Bot. https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 00:03:21', '2022-07-04 00:03:21'),
(4, 'Crytoken', 'jordansharp04@yahoo.com', '89034372707', 'Obsidendam $1 hodie ad $1000 cras.', 'Turn $1 in $100 statim. Uti oeconomus Robot. https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 02:41:45', '2022-07-04 02:41:45'),
(5, 'Crytoken', 'rizwan_alam79@ymail.com', '89036644989', 'Aliquam robot est optimum satus enim financial libertatem.', 'Pretium non habetis? Quisque online. https://Var.dkworld.de/gotodate/go', '1', '2022-07-04 05:25:29', '2022-07-29 07:21:52'),
(6, 'Crytoken', 'jjjsmithj@yahoo.com', '89030307606', 'Nec opus est quaerere job amplius. Opus online.', 'Quisque mereretur, quantum vult, nunc. https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 08:01:37', '2022-07-04 08:01:37'),
(7, 'Crytoken', 'Dancingdrea@gmail.com', '89032590071', 'Fiducia vestri pupa ad Robot et quomodo crescit, ut $100.', 'Financial Robot est #1 dignissim tortor semper. Orci! https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 10:43:11', '2022-07-04 10:43:11'),
(8, 'Crytoken', 'kizziemano@live.com', '89038944743', 'Planto vestri laptop a financial instrumentum, cum hoc progressio.', 'Augmentum est nunc, sit amet quis ligula. https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 13:24:12', '2022-07-04 13:24:12'),
(9, 'Crytoken', 'blmeanie33@earthlink.net', '89034152936', 'Sit Robot et adducam te pecuniam dum reliqua.', 'Fides financial Bot fieri dives. https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 15:58:55', '2022-07-04 15:58:55'),
(10, 'Crytoken', 'namida.drop@yahoo.com', '89037819471', 'Etiam sciat puer ut $100 hodie.', 'Financial libertatem, quid est hoc robot praestat. https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 18:34:58', '2022-07-04 18:34:58'),
(11, 'Crytoken', 'yourlaconnection@yahoo.com', '89032569814', 'Quod est optimum tempus ad immittendi in Robot impetro magis pecunia.', 'Maxime prospere populo iam uti Robot. Facere vobis? https://Var.dkworld.de/gotodate/go', '0', '2022-07-04 21:15:15', '2022-07-04 21:15:15'),
(12, 'Crytoken', 'mehdi20best@gmail.com', '89034318812', 'Fac pupa domi et deductae hoc Bot.', 'Addito reditus praesto est omnibus hac robot. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 02:37:34', '2022-07-05 02:37:34'),
(13, 'Crytoken', 'www.quitahotgurl@yahoo.com', '89038226356', 'Non opus anymore dum Robot launched!', 'Buy omnia vis mereri pecuniam. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 05:18:52', '2022-07-05 05:18:52'),
(14, 'Crytoken', 'nicoletynon@yahoo.com', '89034333702', 'Pecunia tua custodi crescere 24/7 si vos utor financial Robot.', 'Addito reditus praesto est omnibus hac robot. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 07:52:42', '2022-07-05 07:52:42'),
(15, 'Mike Fitzgerald', 'no-replyGrouff@gmail.com', '82216377173', 'Strengthen your Domain Authority', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nGet your pallicraftsltd.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nOn SALE: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nThank you \r\nMike Fitzgerald', '0', '2022-07-05 08:20:59', '2022-07-05 08:20:59'),
(16, 'Crytoken', 'alexy88@live.com', '89036326942', 'Quod est optimum tempus ad immittendi in Robot impetro magis pecunia.', 'Unum pupa est nihil, sed potest crescere in $100 hic. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 10:26:12', '2022-07-05 10:26:12'),
(17, 'Crytoken', 'karlawoods66@yahoo.com', '89032782752', 'Adipiscing diam Robot et facere negotium.', 'Non tamen nummorum? Reficere nunc! https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 13:00:22', '2022-07-05 13:00:22'),
(18, 'Mike', 'no-replyGrouff@gmail.com', '84174285444', 'Local SEO for more business', 'Hi \r\n \r\nWe will improve your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike  \r\nSpeed SEO Digital Agency', '0', '2022-07-05 15:14:23', '2022-07-05 15:14:23'),
(19, 'Crytoken', 'kristenjahn@advancedhomehealthservices.c', '89038653243', 'Non tamen nummorum? Financial robot faciam te eum!', 'Non opus ad solliciti de futuris, si uti hoc financial robot. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 15:36:18', '2022-07-05 15:36:18'),
(20, 'Crytoken', 'alyssa.mesich@gmail.com', '89034543783', 'Optimum online euismod instrumentum invenitur. Discere magis!', 'Etiam sciat puer ut $100 hodie ope huius robot. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 18:09:59', '2022-07-05 18:09:59'),
(21, 'Crytoken', 'BABE04345@YAHOO.COM', '89036224668', 'Robot nunquam dormit. Facit pecuniam pro vobis 24/7.', 'Reprehendo ex ipso Bot, qui operatur in vobis 24/7. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 20:45:51', '2022-07-05 20:45:51'),
(22, 'Crytoken', 'marloncole2015@gmail.com', '89030656116', 'Planto vestri pecunia opus est tibi tota die.', 'Adipiscing robot et eam adducam te pecuniam. https://Var.dkworld.de/gotodate/go', '0', '2022-07-05 23:21:54', '2022-07-05 23:21:54'),
(23, 'Crytoken', 'jenkinsrusu@yahoo.com', '89030742512', 'Mille arietes sunt praestatur, si vos utor is robot.', 'Planto vestri computer ut vos promerendae instrumentum. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 01:58:51', '2022-07-06 01:58:51'),
(24, 'Crytoken', 'sandyp9@sbcglobal.net', '89031959892', 'Quod est optimum tempus ad immittendi in Robot impetro magis pecunia.', 'Optimus via pro omnibus, qui procurrit, pro financial libertatem. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 07:13:32', '2022-07-06 07:13:32'),
(25, 'Crytoken', 'baby_goon@yahoo.com', '89032133452', 'Etiam sciat puer ut $100 hodie ope huius robot.', 'Scimus quomodo fieri dives, et tu? https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 09:55:41', '2022-07-06 09:55:41'),
(26, 'Crytoken', 'derekasafuagyei@yahoo.com', '89032055632', 'Buy omnia vis mereri pecuniam.', 'Nec opus est quaerere job amplius. Opus online. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 12:30:48', '2022-07-06 12:30:48'),
(27, 'Crytoken', 'vivi421@verizon.net', '89030693119', 'Satus faciens milia pupa omni septimana, iustus usura hoc robot.', 'Ingens reditus sine re, quod est available. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 15:07:41', '2022-07-06 15:07:41'),
(28, 'Crytoken', 'aevasyandext@cmail.com', '89037654206', 'Financial robot tenet, deferentes ad vos pecunias, dum somnum.', 'Etiam sciat puer ad pecuniam. Hoc robot quod opus est! https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 17:43:23', '2022-07-06 17:43:23'),
(29, 'Crytoken', 'salfiore1@aol.com', '89038010455', 'Non tamen nummorum? Reficere nunc!', 'Milia omni septimana operantes online hic. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 20:20:33', '2022-07-06 20:20:33'),
(30, 'Crytoken', 'paulds9686@gmail.com', '89037354359', 'Omnis vestri pupa potest convertere in $100 post prandium hoc Robot.', 'Turn $1 in $100 statim. Uti oeconomus Robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-06 22:57:58', '2022-07-06 22:57:58'),
(31, 'Crytoken', 'iriscofino@comcast.net', '89030048354', 'Postulo nonnullus magis pecuniam? Robot mereretur eos vere ieiunium.', 'Fiducia vestri pupa ad Robot et quomodo crescit, ut $100. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-07 01:34:39', '2022-07-07 01:34:39'),
(32, 'Crytoken', 'jl.karami@gmail.com', '89032167564', 'Milia illos leones,. Redde nihil.', 'Augmentum est nunc, sit amet quis ligula. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-07 04:07:04', '2022-07-07 04:07:04'),
(33, 'Crytoken', 'rollandjonathan@hotmail.com', '89036597789', 'In ieiunas modo, ut peram crassitudine reperitur.', 'Scimus quomodo fieri dives, et tu? https://Var.seamonkey.es/gotodate/go', '0', '2022-07-07 07:02:38', '2022-07-07 07:02:38'),
(34, 'Crytoken', 'stevewicklund@peica.com', '89031727089', 'Scimus quomodo fieri dives, et tu?', 'Faciens pecuniam in rete facilius est nunc. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-07 09:35:33', '2022-07-07 09:35:33'),
(35, 'Crytoken', 'abcd@yahoo.com', '89033348762', 'Pecuniam, pecuniam,! Plus facere financial robot!', 'Sit pecunia tua crescere in caput hoc Robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-07 21:12:32', '2022-07-07 21:12:32'),
(36, 'Crytoken', 'visac_llc@yahoo.com', '89036859783', 'Capto ex ipso robot servare victum tota die.', 'Iungere societatis prospere populo, qui pecuniam hic. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-08 00:16:28', '2022-07-08 00:16:28'),
(37, 'Crytoken', 'denniswebb1213@yahoo.com', '89034199253', 'Robot est optima solutio pro omnibus, qui vult mereri.', 'Adipiscing diam Robot et facere negotium. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-08 03:22:09', '2022-07-08 03:22:09'),
(38, 'Crytoken', 'rn9588@yahoo.com', '89030162170', 'Vultus pro an securus via ad pecuniam? Reprehendo sicco financial robot.', 'Satus vestri online opus usura financial Robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-08 06:28:38', '2022-07-08 06:28:38'),
(39, 'Crytoken', 'cavolistephen@yahoo.com', '89030682623', 'Online officium et adducam vos a fantastic utilitatem.', 'Hoc robot et adducam vos pecuniam 24/7. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-08 09:31:40', '2022-07-08 09:31:40'),
(40, 'Crytoken', 'o.wen.s.p.k.am.r@gmail.com', '89038913636', 'Aliquam robot est optimum satus enim financial libertatem.', 'Robot nunquam dormit. Facit pecuniam pro vobis 24/7. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-08 16:09:13', '2022-07-08 16:09:13'),
(41, 'Crytoken', 'd.hubert@sagedining.com', '89036105641', 'Vigilate pecuniam tuam crescere, dum te, placerat cum Robot.', 'Usura hoc Robot est optimus via ut vos divites essetis. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-08 19:12:15', '2022-07-08 19:12:15'),
(42, 'Crytoken', 'flawlessquelly@aol.com', '89032057046', 'Pecunia opus? Ut hic facile! Iustus premere hoc deducere in robot.', 'Obsidendam $1 hodie ad $1000 cras. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-08 22:14:49', '2022-07-08 22:14:49'),
(43, 'Crytoken', 'gail@way2fast.net', '89033506055', 'Fac tibi dives in futurum utentes financial robot.', 'Non erit sollicitum, si sunt accensi. Opus online. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 01:32:21', '2022-07-09 01:32:21'),
(44, 'Crytoken', 'panameric.a.solutions8@gmail.com', '89038556645', 'Scimus quam ad futura nostra dives et tu?', 'Hoc robot et adducam vos pecuniam 24/7. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 04:35:33', '2022-07-09 04:35:33'),
(45, 'Crytoken', 'f.u.r.t.h.eufyi@gmail.com', '89033186836', '# 1 oeconomica peritus in rete! Reprehendo sicco novus Robot.', 'Fac pupa domi et deductae hoc Bot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 07:38:00', '2022-07-09 07:38:00'),
(46, 'Crytoken', 'monkeywithaspoon@hotmail.com', '89038440584', 'Milia illos leones,. Financial robot mos succurro vos facere!', 'Milia illos leones,. Financial robot mos succurro vos facere! https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 10:41:32', '2022-07-09 10:41:32'),
(47, 'Crytoken', 'lkulmann@hotmail.com', '89030264301', 'Etiam sciat puer ad pecuniam. Hoc robot quod opus est!', 'Buy omnia vis mereri pecuniam. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 13:45:13', '2022-07-09 13:45:13'),
(48, 'Crytoken', 'jodiraven@expressgopher.com', '89033276078', 'Opus cash? Launch hoc robot et quod potest videre.', 'Maxime prospere populo iam uti Robot. Facere vobis? https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 16:44:24', '2022-07-09 16:44:24'),
(49, 'Crytoken', 'sigkurowski@msn.com', '89036454230', 'Optimum online officium pro retirees. Planto vestri vetus saecula dives.', 'Invenire de facillimum pecuniam victum. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 19:43:43', '2022-07-09 19:43:43'),
(50, 'Crytoken', 'talago2@aol.com', '89032543284', 'Maxime prospere populo iam uti Robot. Facere vobis?', 'Online reditus est clavem ad successus. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-09 22:42:21', '2022-07-09 22:42:21'),
(51, 'Louie', 'info@ajs.nrw', '06-21344654', 'Palli Crafts || HOME PAGE', 'Good day \r\n\r\nI wanted to reach out and let you know about our new dog harness. It\'s really easy to put on and take off - in just 2 seconds - and it\'s personalized for each dog. \r\nPlus, we offer a lifetime warranty so you can be sure your pet is always safe and stylish.\r\n\r\nWe\'ve had a lot of success with it so far and I think your dog would love it. \r\n\r\nGet yours today with 50% OFF: https://caredogbest.com\r\n\r\nFREE Shipping - TODAY ONLY! \r\n\r\nThanks for your time, \r\n\r\nLouie', '0', '2022-07-10 02:10:23', '2022-07-10 02:10:23'),
(52, 'Crytoken', 'amandalo616@hotmail.com', '89035188620', 'Scimus quam crescere tua financial stabilitatem.', 'Pecunia tua custodi crescere 24/7 si vos utor financial Robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-10 04:06:40', '2022-07-10 04:06:40'),
(53, 'Crytoken', 'mralek12299@gmail.com', '89039531761', 'Quomodo Robot facit $1000 de $1 dignissim.', 'Obsidendam $1 hodie ad $1000 cras. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-10 07:05:41', '2022-07-10 07:05:41'),
(54, 'Crytoken', 'ashleylynnca@hotmail.com', '89039876170', 'At $1000 die facile est, si uti hoc financial Robot.', 'Non opus ad vigilate tota nocte mereri pecuniam. Adipiscing robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-10 10:05:39', '2022-07-10 10:05:39'),
(55, 'Crytoken', 'ggcohen@comcast.net', '89038825628', 'Pecuniam in penitus usura hoc Bot. Vere operatur!', 'Lorem optimum obsideri instrumentum, tincidunt ut pretium nunc. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-10 13:07:57', '2022-07-10 13:07:57'),
(56, 'Crytoken', 'pacifique_angel@yahoo.com', '89031407042', 'Opus cash? Launch hoc robot et quod potest videre.', 'Aliquam robot est optimum satus enim financial libertatem. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-10 16:07:52', '2022-07-10 16:07:52'),
(57, 'Crytoken', 'nygoon10451@yahoo.com', '89030613147', 'Pecunia opus est, etiam cum somno.', 'Non tamen nummorum? Financial robot faciam te eum! https://Var.seamonkey.es/gotodate/go', '0', '2022-07-10 19:12:43', '2022-07-10 19:12:43'),
(58, 'Crytoken', 'saumykukreti@yahoo.com', '89034126489', 'Lorem optimum obsideri instrumentum, tincidunt ut pretium nunc.', 'Reprehendo ex novissima modo, ut a fantastic utilitatem. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-10 22:14:57', '2022-07-10 22:14:57'),
(59, 'Crytoken', 'rodriguez.esmralda19@yahoo.com', '89035118020', 'Milia omni septimana operantes online hic.', 'Ingens reditus sine re sit amet, nunc! https://Var.seamonkey.es/gotodate/go', '0', '2022-07-11 01:13:26', '2022-07-11 01:13:26'),
(60, 'Crytoken', 'poohnut.strawberry@yahoo.com', '89030037107', 'Robot est optimus via pro omnibus, qui spectat ad financial libertatem.', 'Iungere societatis prospere populo, qui pecuniam hic. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-11 04:14:42', '2022-07-11 04:14:42'),
(61, 'Crytoken', 'huntnwork@gmail.com', '89039508916', 'Optimum online euismod instrumentum invenitur. Discere magis!', 'Maxime prospere populo iam uti Robot. Facere vobis? https://Var.seamonkey.es/gotodate/go', '1', '2022-07-11 07:14:32', '2022-07-25 21:10:44'),
(62, 'Crytoken', 'roxannamcmollom@yahoo.com', '89030199290', 'Etiam sciat puer ut $100 hodie ope huius robot.', 'Etiam sciat puer ut $100 hodie. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-11 10:38:30', '2022-07-11 10:38:30'),
(63, 'Crytoken', 'fmcmello@hotmail.com', '89033789650', 'Operam! Hic vos can mereo pecuniam online!', 'Hoc robot mos succurro vos ut centum of pupa quotidie. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-11 13:39:53', '2022-07-11 13:39:53'),
(64, 'Crytoken', 'jakesteraider@yahoo.com', '89033714374', 'Etiam sciat puer ad pecuniam. Hoc robot quod opus est!', 'Online reditus est clavem ad successus. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-11 16:46:20', '2022-07-11 16:46:20'),
(65, 'Crytoken', 'li.nnn.yjude@gmail.com', '89039188521', 'Pecuniam, non bellum! Financial Robot quid opus est tibi.', 'Satus faciens milia pupa omni septimana, iustus usura hoc robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-11 19:51:19', '2022-07-11 19:51:19'),
(66, 'Jesseacign', 'jessicasamantha663@gmail.com', '87675291568', 'Authentic Documents Services And Counterfeit Bank Notes', 'We are a Team of IT Experts specialized in the production of authentic Documents and Counterfeit bank notes. We work with government officials, professors and professional hackers from China, US, Russia, Taiwan etc. All these documents are registered into the supposed database. Documents such as Passport, Visa\'s, Driving License, Covid19 Vaccine Card, University Certificates etc. We also have Canadian dollars, US dollars, pounds and euros. We also have our money in categories, Grade A quality that works at ATMs and bypasses the fake money detector and we also have the normal stage money that was used in jokes, commercials, music and movie videos. Contact details below. \r\nWhatsApp..... +44 7459 530545 \r\nEmail Address.... jameskinds65@gmail.com \r\nTelegram ID..... \"@Jameskind65\" \r\nWickr Me ID..... Jameskind65.', '0', '2022-07-11 20:15:55', '2022-07-11 20:15:55'),
(67, 'Crytoken', 'tineshaashabazz@gmail.com', '89035010280', 'Aliquam robot est optimum satus enim financial libertatem.', 'Maxime prospere populo iam uti Robot. Facere vobis? https://Var.seamonkey.es/gotodate/go', '0', '2022-07-11 22:57:34', '2022-07-11 22:57:34'),
(68, 'Crytoken', 'kanika_457@yahoo.com', '89031707551', 'Scimus quam ad futura nostra dives et tu?', 'Online Bot adducam tibi opes, et satisfactio. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 02:04:25', '2022-07-12 02:04:25'),
(69, 'Crytoken', 'icyomoteyo@yahoo.com', '89031064647', 'Lorem optimum obsideri instrumentum, tincidunt ut pretium nunc.', 'In ieiunas modo, ut vos peram crassus est hic. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 05:09:00', '2022-07-12 05:09:00'),
(70, 'Crytoken', 'reinaldo_steam@hotmail.com', '89035412488', 'Financial Robot operatur in vobis, etiam cum tu somnum.', 'In ieiunas modo, ut peram crassitudine reperitur. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 08:11:21', '2022-07-12 08:11:21'),
(71, 'Crytoken', 'Omar1991@bellsouth.net', '89039962435', 'Adipiscing diam Robot et facere negotium.', 'Discere, quomodo ad centum terga singulos dies. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 11:14:08', '2022-07-12 11:14:08'),
(72, 'Crytoken', 'chanelchic93@yahoo.com', '89036794928', 'Discere, quomodo ad centum terga singulos dies.', 'Non opus anymore dum Robot launched! https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 14:14:58', '2022-07-12 14:14:58'),
(73, 'Crytoken', 'smelly_monkeys1688@yahoo.com', '89033218164', 'Financial Robot est maxime financial tool in rete!', 'Robot est optima solutio pro omnibus, qui vult mereri. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 17:17:40', '2022-07-12 17:17:40'),
(74, 'Crytoken', 'kwanghyun0306@yahoo.com', '89033280142', 'Financial robot est a valde via ut curo et crescere reditus.', 'Lucraris in Penitus facile est, si vos utor Robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 20:18:45', '2022-07-12 20:18:45'),
(75, 'Crytoken', 'yan-ra@verizon.net', '89030810197', 'Etiam sciat puer ad pecuniam. Hoc robot quod opus est!', 'Robot est optimus via pro omnibus, qui spectat ad financial libertatem. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-12 23:19:03', '2022-07-12 23:19:03'),
(76, 'Crytoken', 'courtneyjackson318@yahoo.com', '89037757696', 'Hoc robot et adducam vos pecuniam 24/7.', 'Robot est optimus via pro omnibus, qui spectat ad financial libertatem. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-13 02:19:51', '2022-07-13 02:19:51'),
(77, 'Crytoken', 'knoll1a@yahoo.com', '89035413233', 'Financial robot est optimus comes dives populus.', 'Lucraris in Penitus facile est, si vos utor Robot. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-13 05:23:26', '2022-07-13 05:23:26'),
(78, 'Crytoken', 'richardandkristina@gmail.com', '89039407082', 'Non opus anymore. Iustus launch robot.', 'Hoc robot mos succurro vos ut centum of pupa quotidie. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-13 09:20:58', '2022-07-13 09:20:58'),
(79, 'Crytoken', 'ny644@yahoo.com', '89030704493', 'Wow! Hoc est celerrime, quia a financial libertatem.', 'Unum tantum click potest crescere tua pecunia vere ieiunium. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-13 12:24:20', '2022-07-13 12:24:20'),
(80, 'Crytoken', 'c.myrsha@yahoo.com', '89037008794', 'Fac tibi dives in futurum utentes financial robot.', 'Sit diam Robot esse comes in financial forum. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-13 15:25:38', '2022-07-13 15:25:38'),
(81, 'Crytoken', 'xtracrispymom@comcast.net', '89032242137', 'Postulo nonnullus magis pecuniam? Robot mereretur eos vere ieiunium.', 'Wow! Hoc est celerrime, quia a financial libertatem. https://Var.seamonkey.es/gotodate/go', '0', '2022-07-13 18:26:38', '2022-07-13 18:26:38'),
(82, 'Crytoken', 'hjeff585@gmail.com', '89035982012', 'Providere familia tua, cum pecunia in aetate. Adipiscing Robot!', 'Non erit sollicitum, si sunt accensi. Opus online. https://Var.startupers.se/gotodate/go', '0', '2022-07-13 21:26:57', '2022-07-13 21:26:57'),
(83, 'Crytoken', 'mkaplan@modeq.com', '89032340483', 'Planto vestri laptop a financial instrumentum, cum hoc progressio.', 'Quaestus potest esse perquam facile uti, si hoc Robot. https://Var.startupers.se/gotodate/go', '0', '2022-07-14 00:30:55', '2022-07-14 00:30:55'),
(84, 'Crytoken', 'aimeele210@hotmail.com', '89036192094', 'Providere familia tua, cum pecunia in aetate. Adipiscing Robot!', 'Adipiscing robot et eam adducam te pecuniam. https://Var.startupers.se/gotodate/go', '0', '2022-07-14 03:28:31', '2022-07-14 03:28:31'),
(85, 'Mike Livingston', 'no-replyGrouff@gmail.com', '83519751669', 'whitehat monthly SEO plans', 'Good Day \r\n \r\nI have just took a look on your SEO for  pallicraftsltd.com for its SEO Trend and saw that your website could use a push. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart improving your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Livingston\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '0', '2022-07-14 04:43:56', '2022-07-14 04:43:56'),
(86, 'Crytoken', 'abqhyde@msn.com', '89037159062', 'Etiam sciat puer ad pecuniam. Hoc robot quod opus est!', 'Vestri computer potest facere vos etiam reditus, si vos utor is Robot. https://Var.startupers.se/gotodate/go', '0', '2022-07-14 06:30:25', '2022-07-14 06:30:25'),
(87, 'Crytoken', 'danismsannie@yahoo.com', '89034153318', 'Reprehendo ex novissima modo, ut a fantastic utilitatem.', 'Milia illos leones,. Redde nihil. https://Var.startupers.se/gotodate/go', '0', '2022-07-14 09:30:15', '2022-07-14 09:30:15'),
(88, 'Crytoken', 'TanyaQOW@orangeinbox.org', '89034777798', 'Divites divitibus, quia utuntur hoc robot.', 'Fac $1000 de $1 in paucis minutis. Adipiscing diam robot nunc. https://Var.startupers.se/gotodate/go', '0', '2022-07-14 12:33:48', '2022-07-14 12:33:48'),
(89, 'Crytoken', 'denise.kyle.y.kyle@gmail.com', '89036162838', 'Sit diam Robot esse comes in financial forum.', 'Scimus quam crescere tua financial stabilitatem. https://Var.startupers.se/gotodate/go', '0', '2022-07-14 15:38:04', '2022-07-14 15:38:04'),
(90, 'Crytoken', 'dinora_delacruz@yahoo.com', '89032951948', 'Buy omnia vis mereri pecuniam.', 'Non tamen nummorum? Reficere nunc! https://Var.startupers.se/gotodate/go', '0', '2022-07-14 18:38:29', '2022-07-14 18:38:29'),
(91, 'Crytoken', 'molly.mccain@d11.org', '89036240125', 'Turn $1 in $100 statim. Uti oeconomus Robot.', 'Turn $1 in $100 statim. Uti oeconomus Robot. https://Var.startupers.se/gotodate/go', '0', '2022-07-14 21:40:57', '2022-07-14 21:40:57'),
(92, 'Crytoken', 'kscmsnppewbys@yahoo.com', '89034102524', 'Quaestus potest esse perquam facile uti, si hoc Robot.', 'Pretium non habetis? Suus facile ad eam online hic. https://Var.startupers.se/gotodate/go', '0', '2022-07-15 00:41:21', '2022-07-15 00:41:21'),
(93, 'Crytoken', 'SPITPHIRE1500@TMAIL.COM', '89033025451', 'Optimum online officium pro retirees. Planto vestri vetus saecula dives.', 'Financial Robot est maxime financial tool in rete! https://Var.startupers.se/gotodate/go', '0', '2022-07-15 03:41:43', '2022-07-15 03:41:43'),
(94, 'Crytoken', 'carly.arrasmith@gmail.com', '89033711901', 'At $1000 die facile est, si uti hoc financial Robot.', 'Online reditus est facillimus mores ut vos somnium adveho verus. https://Var.startupers.se/gotodate/go', '0', '2022-07-15 06:47:15', '2022-07-15 06:47:15'),
(95, 'Crytoken', 'shan_oliver919@yahoo.com', '89038191088', 'Omnis vestri pupa potest convertere in $100 post prandium hoc Robot.', 'Maxime prospere populo iam uti Robot. Facere vobis? https://Var.startupers.se/gotodate/go', '0', '2022-07-15 09:48:24', '2022-07-15 09:48:24'),
(96, 'Crytoken', 'pistols_johnnyrotten@hotmail.com', '89035446946', 'Invenire de facillimum pecuniam victum.', 'Mille arietes sunt praestatur, si vos utor is robot. https://Var.startupers.se/gotodate/go', '0', '2022-07-15 12:52:38', '2022-07-15 12:52:38'),
(97, 'Crytoken', 'lmnguyen_88@yahoo.com', '89030751201', 'Operam! Hic vos can mereo pecuniam online!', 'Iustus click potest convertere tu pupa in $1000. https://Var.startupers.se/gotodate/go', '0', '2022-07-15 15:52:49', '2022-07-15 15:52:49'),
(98, 'Crytoken', 'greenwood576@hotmail.com', '89036411501', 'Aliquam robot est optimum satus enim financial libertatem.', 'Scimus quam crescere tua financial stabilitatem. https://Var.startupers.se/gotodate/go', '0', '2022-07-15 18:49:28', '2022-07-15 18:49:28'),
(99, 'Crytoken', 'zach.kabb@yahoo.com', '89035936052', 'Online Bot adducam tibi opes, et satisfactio.', 'Optimum online officium pro retirees. Planto vestri vetus saecula dives. https://Var.startupers.se/gotodate/go', '0', '2022-07-15 21:48:21', '2022-07-15 21:48:21'),
(100, 'Crytoken', 'www.julleohawk42@yahoo.com', '89030202484', 'Usura hoc Robot est optimus via ut vos divites essetis.', 'Successu formula invenitur. Discere magis de eo. https://Var.startupers.se/gotodate/go', '0', '2022-07-16 00:46:54', '2022-07-16 00:46:54'),
(101, 'Crytoken', 'gmony7@gmail.com', '89037761645', 'Aliquam robot est optimum satus enim financial libertatem.', 'Addito reditus praesto est omnibus hac robot. https://Var.startupers.se/gotodate/go', '0', '2022-07-16 03:48:37', '2022-07-16 03:48:37'),
(102, 'Crytoken', 'MoOdair@aol.com', '89038634972', 'Planto vestri laptop a financial instrumentum, cum hoc progressio.', 'Financial robot est a valde via ut curo et crescere reditus. https://Var.startupers.se/gotodate/go', '0', '2022-07-16 06:46:03', '2022-07-16 06:46:03'),
(103, 'Crytoken', 'clemons_m@yahoo.com', '89039773155', 'Online financial Robot est clavem ad successus.', 'Nec opus est quaerere job amplius. Opus online. https://Var.startupers.se/gotodate/go', '0', '2022-07-16 12:42:05', '2022-07-16 12:42:05'),
(104, 'Crytoken', 'earventeresa@gmail.com', '89033542703', 'Planto vestri pecunia opus est tibi tota die.', 'Planto vestri laptop a financial instrumentum, cum hoc progressio. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-16 15:42:21', '2022-07-16 15:42:21'),
(105, 'Crytoken', 'allroundera2z@gmail.com', '89033643775', 'Fac tibi dives in futurum utentes financial robot.', 'Providere familia tua, cum pecunia in aetate. Adipiscing Robot! https://Var.elletvweb.it/gotodate/go', '0', '2022-07-16 18:44:00', '2022-07-16 18:44:00'),
(106, 'Crytoken', 'jmdixon2001@gmail.com', '89039517227', 'Maxime prospere populo iam uti Robot. Facere vobis?', 'Etiam sciat puer ad pecuniam. Facere vobis? https://Var.elletvweb.it/gotodate/go', '0', '2022-07-16 21:43:45', '2022-07-16 21:43:45'),
(107, 'Crytoken', 'sweetandfreaky692005@yahoo.com', '89031613143', 'Maxime prospere populo iam uti Robot. Facere vobis?', 'Scimus quomodo fieri dives, et tu? https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 00:42:40', '2022-07-17 00:42:40'),
(108, 'Eric Jones', 'ericjonesmyemail@gmail.com', '555-555-1212', 'Who needs eyeballs, you need BUSINESS', 'My name’s Eric and I just came across your website - pallicraftsltd.com - in the search results.\r\n\r\nHere’s what that means to me…\r\n\r\nYour SEO’s working.\r\n\r\nYou’re getting eyeballs – mine at least.\r\n\r\nYour content’s pretty good, wouldn’t change a thing.\r\n\r\nBUT…\r\n\r\nEyeballs don’t pay the bills.\r\n\r\nCUSTOMERS do.\r\n\r\nAnd studies show that 7 out of 10 visitors to a site like pallicraftsltd.com will drop by, take a gander, and then head for the hills without doing anything else.\r\n\r\nIt’s like they never were even there.\r\n\r\nYou can fix this.\r\n\r\nYou can make it super-simple for them to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket… thanks to Talk With Web Visitor.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know immediately – so you can talk to that lead immediately… without delay… BEFORE they head for those hills.\r\n  \r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nNow it’s also true that when reaching out to hot leads, you MUST act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s what makes our new SMS Text With Lead feature so powerful… you’ve got their phone number, so now you can start a text message (SMS) conversation with them… so even if they don’t take you up on your offer right away, you continue to text them new offers, new content, and new reasons to do business with you.\r\n\r\nThis could change everything for you and your business.\r\n\r\nCLICK HERE https://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do and start turing eyeballs into money.\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nPaying customers are out there waiting. \r\nStarting connecting today by CLICKING HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=pallicraftsltd.com', '0', '2022-07-17 01:57:55', '2022-07-17 01:57:55'),
(109, 'Crytoken', 'allensonyuxo.w@gmail.com', '89032742372', 'Online referte sunt facillimus via financial libertatem.', 'Ingens reditus sine re sit amet, nunc! https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 03:41:46', '2022-07-17 03:41:46'),
(110, 'Crytoken', 'lscmsqno@hotmail.com', '89037704846', 'Financial Robot est futura opes et libertatem.', 'Financial libertatem, quid est hoc robot praestat. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 06:45:14', '2022-07-17 06:45:14'),
(111, 'Mason Jones', 'explaineranimationstudio7@gmail.com', '81237434736', 'Quick question', 'Hey! \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nIf so, you have to grab people’s attention quickly. And there’s nothing like a catchy explainer video to do the trick! \r\n \r\nI have an exclusive offer available for the first 20 people that act on this message today, but you must act fast. \r\n \r\nWhile you would normally pay as much as $600, or probably even $1,000, for a 60-second video like this, I am providing the same service for only $97. \r\n \r\nDon’t be fooled by the price, we create high-quality videos, and you can see samples or order now at: https://bit.ly/explainer-animation-promo \r\n \r\nNot sure if you caught it, but this offer is only good this week, for the first 20 clients, so you need to order now, before you miss out. \r\n \r\nAgain, this $97 promotion is for a 60-second explainer video and is for this week only. Don’t miss out!!! \r\n \r\nClick Here Now To Watch The Animated Video That We Created To Explain It All \r\n---> https://bit.ly/explainer-animation-promo \r\n \r\nCheers, \r\nMason Jones \r\nExplainer Animation Studio', '0', '2022-07-17 09:00:06', '2022-07-17 09:00:06'),
(112, 'Crytoken', 'sblindaster@gmail.com', '89039907146', 'Quaestus potest esse perquam facile uti, si hoc Robot.', 'Etiam sciat puer ad pecuniam. Facere vobis? https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 09:43:44', '2022-07-17 09:43:44'),
(113, 'Crytoken', 'roca_martins@msn.com', '89034765153', 'Vultus deinceps ad reditus? Ut online.', 'Planto vestri pecunia opus est tibi tota die. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 12:41:54', '2022-07-17 12:41:54'),
(114, 'Crytoken', 'realxuamux@hotmail.com', '89039610657', 'Non tamen nummorum? Financial robot faciam te eum!', 'Milia omni septimana operantes online hic. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 15:43:23', '2022-07-17 15:43:23'),
(115, 'Crytoken', 'okcateevitasmith@gmail.com', '89030392400', 'Pretium non habetis? Suus facile ad eam online hic.', 'Wow! Hoc est celerrime, quia a financial libertatem. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 18:42:55', '2022-07-17 18:42:55'),
(116, 'Crytoken', '2fckinfast4u1355@mail.org', '89032487311', 'Vultus pro an securus via ad pecuniam? Reprehendo sicco financial robot.', 'Nulla diam consequat? Sit Robot pecuniam pro te. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-17 21:39:01', '2022-07-17 21:39:01'),
(117, 'Crytoken', 'IMCLR1970@YAHOO.COM', '89035549696', 'Iustus click potest convertere tu pupa in $1000.', 'Operam! Financial robot perducat vos milia! https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 00:37:43', '2022-07-18 00:37:43'),
(118, 'Crytoken', 'dmmd96@hotmail.com', '89037326915', 'Unum tantum click potest crescere tua pecunia vere ieiunium.', 'Fac $1000 de $1 in paucis minutis. Adipiscing diam robot nunc. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 03:34:36', '2022-07-18 03:34:36'),
(119, 'Crytoken', 'lt.killa@yahoo.com', '89031099043', 'Pecunia opus? Ut hic facile?', 'Sit pecunia tua crescere in caput hoc Robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 06:31:32', '2022-07-18 06:31:32'),
(120, 'Crytoken', 'aestheticdvca@gmail.com', '89039205081', 'Financial Robot est # 1 peritus quaestus.', 'Addito reditus praesto est omnibus hac robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 09:28:39', '2022-07-18 09:28:39'),
(121, 'Crytoken', 'Keelywebb22@yahoo.com', '89036767925', 'Earn additional money without efforts.', 'No need to work anymore. Just launch the robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 12:27:38', '2022-07-18 12:27:38'),
(122, 'Ernestbadly', 'no-replyOreveven@gmail.com', '88123966383', 'Want more customers for your business?', 'Hi!  pallicraftsltd.com \r\n \r\nWe make offer for you \r\n \r\nSending your commercial proposal through the feedback form which can be found on the sites in the Communication partition. Feedback forms are filled in by our application and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This technique increases the odds that your message will be read. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis letter is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '0', '2022-07-18 12:38:41', '2022-07-18 12:38:41'),
(123, 'Crytoken', 'vsharma.in@gmail.com', '89036865562', 'Satus vestri online opus usura financial Robot.', 'Unum tantum click potest crescere tua pecunia vere ieiunium. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 15:27:47', '2022-07-18 15:27:47'),
(124, 'Crytoken', 'snedbluedaxj@xmail.org', '89033972144', 'Sit Robot et adducam te pecuniam dum reliqua.', 'Vultus pro an securus via ad pecuniam? Reprehendo sicco financial robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 18:27:18', '2022-07-18 18:27:18'),
(125, 'Crytoken', 'justin.ford.jf@gmail.com', '89033682968', 'Non tamen nummorum? Financial robot faciam te eum!', 'Obsidendam $1 hodie ad $1000 cras. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-18 21:27:44', '2022-07-18 21:27:44'),
(126, 'Crytoken', 'ryann.swift@sub1.org', '89037977899', 'Non erit sollicitum, si sunt accensi. Opus online.', 'Sit diam Robot esse comes in financial forum. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 00:26:07', '2022-07-19 00:26:07'),
(127, 'Crytoken', 'pro.ndad@hotmail.com', '89030037167', 'Vigilate pecuniam tuam crescere, dum te, placerat cum Robot.', 'Robot est optima solutio pro omnibus, qui vult mereri. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 03:26:15', '2022-07-19 03:26:15'),
(128, 'Crytoken', 'maltball_09@yahoo.com', '89039265784', 'Satus vestri online opus usura financial Robot.', 'Pecuniam in penitus usura hoc Bot. Vere operatur! https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 06:23:19', '2022-07-19 06:23:19'),
(129, 'Crytoken', 'rufryder2122@aol.com', '89035344779', 'Experiri optimum financial robot in in Lorem.', 'Optimus via pro omnibus, qui procurrit, pro financial libertatem. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 09:26:55', '2022-07-19 09:26:55'),
(130, 'Crytoken', 'p.i.ec.e.unfa.xr.g.fdg@gmail.com', '89036080469', 'Robot est optimus via pro omnibus, qui spectat ad financial libertatem.', 'Quod est optimum tempus ad immittendi in Robot impetro magis pecunia. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 12:24:53', '2022-07-19 12:24:53'),
(131, 'Crytoken', 'lmmozer@yahoo.com', '89032276299', 'Optimus via pro omnibus, qui procurrit, pro financial libertatem.', 'Online reditus est facillimus mores ut vos somnium adveho verus. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 15:25:38', '2022-07-19 15:25:38'),
(132, 'Crytoken', 'pattayaguides@gmail.com', '89033322721', 'Mille arietes sunt praestatur, si vos utor is robot.', 'Augmentum est nunc, sit amet quis ligula. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 18:43:25', '2022-07-19 18:43:25'),
(133, 'Crytoken', 'Colby0404@yahoo.com', '89037255015', 'Lorem optimum obsideri instrumentum, tincidunt ut pretium nunc.', 'Financial robot est elit formula invenitur. Discere magis de eo. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-19 21:43:01', '2022-07-19 21:43:01'),
(134, 'Crytoken', 'fjaengarcia@gmail.com', '89031674344', 'Fac $1000 de $1 in paucis minutis. Adipiscing diam robot nunc.', 'Maxime prospere populo iam uti Robot. Facere vobis? https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 00:45:36', '2022-07-20 00:45:36'),
(135, 'Crytoken', 'HINALP@GMAIL.COM', '89030958517', 'Satus faciens milia pupa omni septimana.', 'Operam! Financial robot perducat vos milia! https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 03:40:28', '2022-07-20 03:40:28'),
(136, 'Crytoken', 'dsthomas@comcast.net', '89031098607', 'Satus vestri online opus usura financial Robot.', 'Online officium et adducam vos a fantastic utilitatem. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 06:42:10', '2022-07-20 06:42:10'),
(137, 'Crytoken', 'rodayna.rodayna@yahoo.com', '89031332495', 'Pecunia opus? Financial robot est tua solutio.', 'Planto vestri computer ut vos promerendae instrumentum. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 09:39:55', '2022-07-20 09:39:55'),
(138, 'Crytoken', 'nakypaky80@yahoo.com', '89034987806', 'Discere, quomodo ad centum terga singulos dies.', 'Earn etiam pecunia sine labore. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 12:37:13', '2022-07-20 12:37:13'),
(139, 'Crytoken', 'sistamimms@yahoo.com', '89033761278', 'Invenimus in ieiunas modo sit dives. Inveniet eam hic.', 'Vultus deinceps ad reditus? Ut online. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 15:37:20', '2022-07-20 15:37:20'),
(140, 'Crytoken', 'zafar5100@gmail.com', '89035173809', 'Fac $1000 de $1 in paucis minutis. Adipiscing diam robot nunc.', 'Pecuniam, non bellum! Financial Robot quid opus est tibi. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 18:41:32', '2022-07-20 18:41:32'),
(141, 'Crytoken', 'brecaspt@hotmail.com', '89035406245', 'Earn etiam pecunia sine labore.', 'Online referte sunt facillimus via financial libertatem. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-20 21:37:49', '2022-07-20 21:37:49'),
(142, 'Crytoken', 'utodd@hotmail.com', '89035435241', 'Financial libertatem est, quod quisque eget.', 'Planto vestri computer ut vos promerendae instrumentum. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-21 00:37:59', '2022-07-21 00:37:59'),
(143, 'Crytoken', 'roshnibharati@gmail.com', '89036456422', 'Quisque mereretur, quantum vult impetrationem hoc Bot.', 'Maxime prospere populo iam uti Robot. Facere vobis? https://Var.elletvweb.it/gotodate/go', '0', '2022-07-21 03:35:09', '2022-07-21 03:35:09'),
(144, 'Crytoken', 'mosesrichardson@ymail.com', '89034574091', 'Fac pupa iustus sedentem in domum suam.', 'Satus vestri online opus usura financial Robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-21 08:08:04', '2022-07-21 08:08:04'),
(145, 'Crytoken', 'charliecassidy9@gmail.com', '89030413571', 'Financial Robot est futura opes et libertatem.', 'Quaestus potest esse perquam facile uti, si hoc Robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-21 13:01:18', '2022-07-21 13:01:18'),
(146, 'Crytoken', 'roberthaasc@aol.com', '89031821190', 'Pecuniam, domi hoc frigus hiemis.', 'Financial Robot est #1 dignissim tortor semper. Orci! https://Var.elletvweb.it/gotodate/go', '0', '2022-07-21 18:11:28', '2022-07-21 18:11:28'),
(147, 'Crytoken', 'sometime789@yahoo.com', '89034055322', 'Even a child knows how to make $100 today with the help of this robot.', '# 1 financial expert in the net! Check out the new Robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-21 23:04:09', '2022-07-21 23:04:09'),
(148, 'Crytoken', 'bellasma1204@sbcglobal.net', '89033968148', 'Make thousands of bucks. Pay nothing.', '# 1 financial expert in the net! Check out the new Robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-22 03:54:25', '2022-07-22 03:54:25'),
(149, 'Mike Simpson', 'no-replyGrouff@gmail.com', '84164378934', 'Get more dofollow backlinks for pallicraftsltd.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Simpson\r\n \r\nsupport@digital-x-press.com', '0', '2022-07-22 12:19:06', '2022-07-22 12:19:06'),
(150, 'Crytoken', 'dgerbec@gmail.com', '89038684387', 'The success formula is found. Learn more about it.', 'Join the society of successful people who make money here. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-22 12:50:45', '2022-07-22 12:50:45'),
(151, 'Crytoken', 'jesusgallardo94@yahoo.com', '89034182730', 'The additional income for everyone.', 'Wow! This is a fastest way for a financial independence. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-22 17:43:27', '2022-07-22 17:43:27'),
(152, 'Crytoken', 'mgaugler17201@yahoo.com', '89033738907', 'Attention! Financial robot may bring you millions!', '# 1 financial expert in the net! Check out the new Robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-22 22:39:06', '2022-07-22 22:39:06'),
(153, 'Crytoken', 'terri_62@live.com', '89033280505', 'Financial independence is what everyone needs.', 'Check out the automatic Bot, which works for you 24/7. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-23 03:30:42', '2022-07-23 03:30:42'),
(154, 'Crytoken', 'rose.hailey.13@gmail.com', '89039756801', 'The success formula is found. Learn more about it.', 'Make money in the internet using this Bot. It really works! https://Var.elletvweb.it/gotodate/go', '0', '2022-07-23 08:28:11', '2022-07-23 08:28:11'),
(155, 'Crytoken', '86Littleninja@gmail.com', '89039040931', 'Make $1000 from $1 in a few minutes. Launch the financial robot now.', 'Make money 24/7 without any efforts and skills. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-23 13:21:09', '2022-07-23 13:21:09'),
(156, 'Crytoken', 'decenthum786@yahoo.com', '89039515916', 'Make money in the internet using this Bot. It really works!', 'Making money can be extremely easy if you use this Robot. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-23 18:11:39', '2022-07-23 18:11:39'),
(157, 'Crytoken', 'hendesn03@yahoo.com', '89030631402', 'Only one click can grow up your money really fast.', 'Make your laptop a financial instrument with this program. https://Var.elletvweb.it/gotodate/go', '0', '2022-07-23 23:06:00', '2022-07-23 23:06:00'),
(158, 'Barney', 'info@yfscapital.com', '0650 812 35 54', 'Palli Crafts || HOME PAGE', 'Good day \r\n\r\nDo you have time to brush your dog\'s teeth every day?\r\n\r\nLet your dog clean his own teeth with our dog dental care brushing stick. Made of eco-friendly natural rubber, this toothbrush is sturdy. The soft design is safe for your dogs\' gums and helps to clean their teeth and protect them from oral diseases and dental decay. \r\n\r\nAct Now And Receive A Special Discount!\r\n\r\nClick here: https://dogcare.center\r\n\r\nAll the best, \r\n \r\nBarney', '0', '2022-07-24 15:02:16', '2022-07-24 15:02:16'),
(159, 'RitaAxok975', 'ritaEstice089@yahoo.com', '85778657893', 'XEvil 5.0: The best software for captcha solving is available now !!', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha v.3, Hotmail, Google captcha, Solve Media, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha supported in new XEvil 6.0! Just search for XEvil 6.0 in YouTube \r\n \r\nInterested? Just google XEvil 5.0.14 \r\nP.S. Free XEvil Demo is available !!! \r\n \r\nAlso, there is a huge discount available for purchase until 30th July: -30%! \r\nStand-alone full license of XEvil price is Just 59 USD \r\n \r\nhttp://xrumersale.site/ \r\n \r\nCheck new video in YouTube: \r\n\"XEvil 6.0 <Beta>1] + XRumer multhithreading hCaptcha test\"', '0', '2022-07-25 22:07:41', '2022-07-25 22:07:41'),
(160, 'RitaAxok215', 'ritaEstice501@hotmail.com', '83854855649', 'XEVIL 5: The best software for captchas solving was released !!!', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha v.3, Hotmail, Google captcha, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha supported in new XEvil 6.0! Just search for XEvil 6.0 in YouTube \r\n \r\nInterested? Just google XEvil 5.0 \r\nP.S. Free XEvil Demo is available ! \r\n \r\nAlso, there is a huge discount available for purchase until 30th July: -30%! \r\nStand-alone full license of XEvil price is Just 59 USD \r\n \r\nhttp://XEvil.Net/ \r\n \r\nCheck new video in YouTube: \r\n\"XEvil 6.0 <Beta>1] + XRumer multhithreading hCaptcha test\"', '0', '2022-07-26 01:53:10', '2022-07-26 01:53:10'),
(161, 'Crytoken', 'kellerinvestmentsllc@yahoo.com', '89038234704', 'No need to work anymore. Just launch the robot.', 'Earning $1000 a day is easy if you use this financial Robot. https://Var.frostyelk.se/gotodate/go', '0', '2022-07-26 04:02:25', '2022-07-26 04:02:25'),
(162, 'RitaAxok200', 'ritaEstice064@cc.com', '89517932652', 'XEVIL 5.0: The best software for captchas solving is available now !', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha v.3, Hotmail, Google captcha, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha supported in new XEvil 6.0! Just search for XEvil 6.0 in YouTube \r\n \r\nInterested? Just google XEvil 5 \r\nP.S. Free XEvil Demo is available ! \r\n \r\nAlso, there is a huge discount available for purchase until 30th July: -30%! \r\nStand-alone full license of XEvil price is Just 59 USD \r\n \r\nhttp://xrumersale.site/ \r\n \r\nCheck new video in YouTube: \r\n\"XEvil 6.0 <Beta>1] + XRumer multhithreading hCaptcha test\"', '0', '2022-07-26 05:32:45', '2022-07-26 05:32:45'),
(163, 'Crytoken', 'lucaz-02@hotmail.com', '89037121661', 'It is the best time to launch the Robot to get more money.', 'The online financial Robot is your key to success. https://Var.frostyelk.se/gotodate/go', '0', '2022-07-26 08:59:09', '2022-07-26 08:59:09');
INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(164, 'RitaAxok592', 'ritaEstice683@hotmail.com', '86242338737', 'XEvil 5: The best software for captchas solving is available now !!', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha v.2, ReCaptcha-3, Hotmail, Google captcha, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha supported in new XEvil 6.0! Just search for XEvil 6.0 in YouTube \r\n \r\nInterested? Just google XEvil 5.0.15 \r\nP.S. Free XEvil Demo is available ! \r\n \r\nAlso, there is a huge discount available for purchase until 30th July: -30%! \r\nStand-alone full license of XEvil price is Just 59 USD \r\n \r\nhttp://xrumersale.site/ \r\n \r\nCheck new video in YouTube: \r\n\"XEvil 6.0 <Beta>1] + XRumer multhithreading hCaptcha test\"', '0', '2022-07-26 09:09:51', '2022-07-26 09:09:51'),
(165, 'Mike Mathews', 'no-replyGrouff@gmail.com', '86355724513', 'NEW: Semrush Backlinks', 'Howdy \r\n \r\nThis is Mike Mathews\r\n \r\nLet me present you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your pallicraftsltd.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Mathews\r\n \r\nmike@strictlydigital.net', '0', '2022-07-26 22:24:05', '2022-07-26 22:24:05'),
(166, 'Crytoken', 'rageshri2@yahoo.com', '89036254652', 'Earning $1000 a day is easy if you use this financial Robot.', 'Make money, not war! Financial Robot is what you need. https://Var.frostyelk.se/gotodate/go', '0', '2022-07-26 23:29:42', '2022-07-26 23:29:42'),
(167, 'Crytoken', 'ferrari-fan1982@hotmail.com', '89036311098', 'Attention! Here you can earn money online!', 'Let your money grow into the capital with this Robot. https://Var.frostyelk.se/gotodate/go', '0', '2022-07-27 04:24:01', '2022-07-27 04:24:01'),
(168, 'Crytoken', 'rishabh.jaiswal1212@gmail.com', '89039990390', 'Wow! This Robot is a great start for an online career.', 'The huge income without investments is available, now! https://Var.frostyelk.se/gotodate/go', '0', '2022-07-27 09:23:35', '2022-07-27 09:23:35'),
(169, 'Crytoken', 'genterczewsky.mayreen@gmail.com', '89031995534', 'Making money is very easy if you use the financial Robot.', 'Financial Robot is #1 investment tool ever. Launch it! https://Var.frostyelk.se/gotodate/go', '0', '2022-07-27 14:12:33', '2022-07-27 14:12:33'),
(170, 'Winter', 'no-reply@captainshad.com', '(210) 405-1423', 'Laravel Management question', 'I noticed that your website uses the PHP Laravel framework. I\'d love to connect you with my Laravel developer in case you are looking for a programmer here in the USA to help with it. Can you call me at (210) 405-1423 and I can get you connect to him? My name is Winter. I\'m in the office 9-5 M-F CST.', '0', '2022-07-27 16:09:15', '2022-07-27 16:09:15'),
(171, 'Crytoken', 'gandapo@hotmail.com', '89032809404', 'Launch the financial Robot and do your business.', 'Let the Robot bring you money while you rest. https://Var.frostyelk.se/gotodate/go', '0', '2022-07-27 23:58:07', '2022-07-27 23:58:07'),
(172, 'Crytoken', 'ERINPARKER1975@YAHOO.COM', '89031888092', 'One click of the robot can bring you thousands of bucks.', 'Even a child knows how to make $100 today. https://Var.frostyelk.se/gotodate/go', '0', '2022-07-28 05:12:52', '2022-07-28 05:12:52'),
(173, 'Crytoken', 'tworl@verizon.net', '89033032633', 'Check out the newest way to make a fantastic profit.', 'Still not a millionaire? The financial robot will make you him! https://Var.frostyelk.se/gotodate/go', '0', '2022-07-28 10:09:41', '2022-07-28 10:09:41'),
(174, 'Rory', 'sk@praxis-hpkraus.de', '078 3601 8480', 'Palli Crafts || HOME PAGE', 'Hello there \r\n\r\nI understand that you are looking for ways to improve your posture and contribute to a healthy lifestyle. I think our product, Medico Postura™ Body Posture Corrector, can be of great help.\r\n\r\nMedico Postura™ helps improve your posture INSTANTLY. It is an easy-to-use device that you can wear at home, work, or even when you are sleeping.\r\n\r\nIt is made of lightweight and breathable fabric, making it comfortable to wear all day long.\r\n\r\nGet it today while it\'s still 60% OFF: https://medicopostura.com   \r\n\r\nFREE Shipping - TODAY ONLY!\r\n\r\nKind Regards, \r\n\r\nRory', '0', '2022-07-28 13:28:34', '2022-07-28 13:28:34'),
(175, 'Crytoken', 'mizzrena843@aol.com', '89035878727', 'Check out the new financial tool, which can make you rich.', 'The online income is your key to success. https://Var.frostyelk.se/gotodate/go', '0', '2022-07-28 14:59:38', '2022-07-28 14:59:38'),
(176, 'Crytoken', 'riznatiqa@yahoo.com', '89035563532', 'Your money keep grow 24/7 if you use the financial Robot.', 'Robot never sleeps. It makes money for you 24/7. https://Var.pumpati.de/Var', '0', '2022-07-28 18:38:10', '2022-07-28 18:38:10'),
(177, 'Crytoken', 'jokers@36up.com', '89035217879', 'Online job can be really effective if you use this Robot.', 'Trust the financial Bot to become rich. https://Var.pumpati.de/Var', '0', '2022-07-28 21:38:39', '2022-07-28 21:38:39'),
(178, 'KevinSEn', 'no-replyOreveven@gmail.com', '81544242235', 'Do you know about Tentacle Porn?', 'This site makes the best pornstars in the world fucking with aliens. \r\nCheck it out: HENTAIED https://bit.ly/3vl55s7', '0', '2022-07-29 00:15:26', '2022-07-29 00:15:26'),
(179, 'Crytoken', 'JOhn542005@yahoo.com', '89034258515', 'Make your computer to be you earning instrument.', 'Have no financial skills? Let Robot make money for you. https://Var.pumpati.de/Var', '0', '2022-07-29 00:41:18', '2022-07-29 00:41:18'),
(180, 'Crytoken', 'pitferreira@hotmail.com', '89037506249', 'Money, money! Make more money with financial robot!', 'Make money 24/7 without any efforts and skills. https://Var.pumpati.de/Var', '0', '2022-07-29 03:46:52', '2022-07-29 03:46:52'),
(181, 'Eric Jones', 'ericjonesmyemail@gmail.com', '555-555-1212', 'how to turn eyeballs into phone calls', 'Hi, Eric here with a quick thought about your website pallicraftsltd.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://boostleadgeneration.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=pallicraftsltd.com', '0', '2022-07-29 04:04:31', '2022-07-29 04:04:31'),
(182, 'Crytoken', 'natalielueck@gmail.com', '89032807132', 'It is the best time to launch the Robot to get more money.', 'Buy everything you want earning money online. https://Var.pumpati.de/Var', '1', '2022-07-29 06:49:13', '2022-07-29 07:21:18'),
(184, 'Crytoken', 'foley.earl@yahoo.com', '89031765415', 'No need to work anymore while you have the Robot launched!', 'Still not a millionaire? Fix it now! https://Var.pumpati.de/Var', '0', '2022-07-29 09:51:52', '2022-07-29 09:51:52'),
(185, 'Crytoken', 'dimgbahrawlings@yahoo.com', '89032079449', 'The best online job for retirees. Make your old ages rich.', 'We know how to become rich and do you? https://Var.pumpati.de/Var', '0', '2022-07-29 12:56:40', '2022-07-29 12:56:40'),
(186, 'Crytoken', 'gunnarmcconnell@rocketmail.com', '89035243788', 'Check out the automatic Bot, which works for you 24/7.', 'Automatic robot is the best start for financial independence. https://Var.pumpati.de/Var', '0', '2022-07-29 16:00:09', '2022-07-29 16:00:09'),
(187, 'Crytoken', 'mariersharon@yahoo.com', '89035242422', 'Most successful people already use Robot. Do you?', 'Earn additional money without efforts and skills. https://Var.pumpati.de/Var', '0', '2022-07-29 19:02:52', '2022-07-29 19:02:52'),
(188, 'Crytoken', 'tntpoli@yahoo.com', '89030514958', 'Robot never sleeps. It makes money for you 24/7.', 'We know how to become rich and do you? https://Var.pumpati.de/Var', '0', '2022-07-29 22:07:04', '2022-07-29 22:07:04'),
(189, 'Crytoken', 'rodicagogea@gmail.com', '89034499721', 'Invest $1 today to make $1000 tomorrow.', 'Check out the new financial tool, which can make you rich. https://Var.pumpati.de/Var', '0', '2022-07-30 01:10:08', '2022-07-30 01:10:08'),
(190, 'Crytoken', 'pufutnkuacomvanda@hotmail.com', '89035720616', 'The success formula is found. Learn more about it.', 'Make money in the internet using this Bot. It really works! https://Var.pumpati.de/Var', '0', '2022-07-30 04:14:26', '2022-07-30 04:14:26'),
(191, 'Crytoken', 'green-eyez924@hotmail.com', '89039811140', 'Provide your family with the money in age. Launch the Robot!', 'Watch your money grow while you invest with the Robot. https://Var.pumpati.de/Var', '0', '2022-07-30 07:16:22', '2022-07-30 07:16:22'),
(192, 'Crytoken', 'amandareneeconceicao@gmail.com', '89039497145', 'The financial Robot is the most effective financial tool in the net!', 'Attention! Here you can earn money online! https://Var.pumpati.de/Var', '0', '2022-07-30 10:16:40', '2022-07-30 10:16:40'),
(193, 'Crytoken', 'cockyk0407@yahoo.com', '89030645864', 'This robot will help you to make hundreds of dollars each day.', 'Earn additional money without efforts and skills. https://Var.pumpati.de/Var', '0', '2022-07-30 13:16:50', '2022-07-30 13:16:50'),
(194, 'Crytoken', 'wandasjourney@yahoo.com', '89033743940', 'Make your computer to be you earning instrument.', 'Launch the best investment instrument to start making money today. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-30 16:16:36', '2022-07-30 16:16:36'),
(195, 'Crytoken', 'dgaddies2000@yahoo.com', '89036008603', 'Additional income is now available for anyone all around the world.', 'Launch the robot and let it bring you money. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-30 19:18:37', '2022-07-30 19:18:37'),
(196, 'Crytoken', 'jjjsjames@aol.com', '89037124966', 'The huge income without investments is available, now!', 'Need cash? Launch this robot and see what it can. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-30 22:22:24', '2022-07-30 22:22:24'),
(197, 'Jeffrey Brown', 'jefferybrown012l@gmail.com', '81396577992', 'Have a question for you.', 'Hello \r\n \r\nI just wanted to see if you would be open to getting a Full-Time Virtual Assistant for one week FREE, and the best part is, there is no obligation to continue, and no credit card or payment required to try us out. \r\n \r\nPlus! If you decide to move forward after the one-week trial period, we have plans starting at just a few hundred dollars a month for a part-time assistant. That’s about the same you spend on coffee for 2 each month. \r\n \r\nBut this offer is only good this week, for the first 20 clients, so you need to claim your Virtual Assistant Now, before you miss out. \r\n \r\nClick Here to Get Started   (   https://va.yodaddyapps.com/myaa-va-8338   ) \r\n \r\nOur Virtual Assistants Can: \r\n \r\n•	Handle a variety of tasks and projects for you so that your day is more productive \r\n•	Follow up on internal/external resources to ensure that there is daily progress \r\n•	Give you back time to focus on building your business instead of admin tasks \r\n \r\n... and much, MUCH more! \r\n \r\nImagine for a minute, if you can get the help you need to manage your day-to day task and ongoing projects at a fraction of the cost of hiring an onsite assistant. \r\n \r\nClick Here to Get Started  (   https://va.yodaddyapps.com/myaa-va-8338   ) \r\n \r\nBest, \r\n \r\nJeffrey Brown', '0', '2022-07-31 01:39:38', '2022-07-31 01:39:38'),
(198, 'Crytoken', 'sarajane_macaraeg@yahoo.com', '89036541786', 'Every your dollar can turn into $100 after you lunch this Robot.', 'Making money can be extremely easy if you use this Robot. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 01:44:53', '2022-07-31 01:44:53'),
(199, 'Crytoken', 'perfecto1979@hotmail.com', '89034430389', 'Turn $1 into $100 instantly. Use the financial Robot.', 'Need cash? Launch this robot and see what it can. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 04:44:23', '2022-07-31 04:44:23'),
(200, 'Crytoken', 'rbeas1616@bellsouth.net', '89036131867', 'Earning money in the Internet is easy if you use Robot.', 'The additional income for everyone. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 07:42:55', '2022-07-31 07:42:55'),
(201, 'Crytoken', 'orejelrob@yahoo.com', '89033668659', 'Your money work even when you sleep.', 'Need cash? Launch this robot and see what it can. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 10:43:40', '2022-07-31 10:43:40'),
(202, 'Crytoken', 'breakah67@aol.com', '89036034317', 'Need money? Get it here easily?', 'Need money? Get it here easily! Just press this to launch the robot. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 13:45:23', '2022-07-31 13:45:23'),
(203, 'Crytoken', 'mboucino2001@yahoo.com', '89032401676', 'The fastest way to make you wallet thick is here.', 'No worries if you are fired. Work online. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 16:49:22', '2022-07-31 16:49:22'),
(204, 'Crytoken', 'egutierrez925@gmail.com', '89031032109', 'Invest $1 today to make $1000 tomorrow.', 'Have no financial skills? Let Robot make money for you. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 19:53:39', '2022-07-31 19:53:39'),
(205, 'Crytoken', 'deev_l@yahoo.com', '89038916725', 'Still not a millionaire? Fix it now!', 'Financial robot keeps bringing you money while you sleep. https://Var.qbe-medienhaus.de/Var', '0', '2022-07-31 22:55:48', '2022-07-31 22:55:48'),
(206, 'Crytoken', 'depau_01@hotmail.com', '89039552258', 'We know how to become rich and do you?', 'Let your money grow into the capital with this Robot. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 01:57:43', '2022-08-01 01:57:43'),
(207, 'Crytoken', 'watersshianna@yahoo.com', '89030283221', 'Small investments can bring tons of dollars fast.', 'No need to work anymore. Just launch the robot. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 05:02:55', '2022-08-01 05:02:55'),
(208, 'Crytoken', 'gamorris76@yahoo.com', '89031599573', 'We know how to increase your financial stability.', 'Earn additional money without efforts and skills. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 08:03:02', '2022-08-01 08:03:02'),
(209, 'Crytoken', 'iashimalai@gmail.com', '89033902884', 'Make dollars just sitting home.', 'One dollar is nothing, but it can grow into $100 here. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 11:01:52', '2022-08-01 11:01:52'),
(210, 'Crytoken', 'wllczfa@aol.com', '89032731233', 'See how Robot makes $1000 from $1 of investment.', 'Invest $1 today to make $1000 tomorrow. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 14:04:57', '2022-08-01 14:04:57'),
(211, 'Damaris', 'super-cool-josh@josh.com', '(07) 4009 9397', 'Lead For pallicraftsltd.com', 'Hey,\r\n\r\nHave you ever wanted to change the color of your swim shorts without having to buy a new pair? With our new swim shorts, you can do just that!\r\n\r\nOur swim shorts are made with a special material that allows you to change the color of the shorts with just a few drops of water. So, if you\'re ever in the mood for a new color, you can just change it yourself! They are AMAZING!  It could be a great addition to your summer line-up.\r\n\r\nGet yours today with 50% OFF: https://myshorts.shop\r\n\r\nFREE Shipping - TODAY ONLY!\r\n\r\nCheers, \r\n\r\nDamaris', '0', '2022-08-01 15:39:58', '2022-08-01 15:39:58'),
(212, 'Mike Little', 'no-replyGrouff@gmail.com', '81934792645', 'Want Better Local Ranks? Ready this', 'Hi \r\n \r\nIf you have a local business and want to rank it on google maps in a specific area then this service is for you. \r\n \r\nGoogle Map Stacking is one of the best ways to rank your GMB in a specific mile radius. \r\n \r\nMore info: \r\nhttps://www.speed-seo.net/product/google-maps-pointers/ \r\n \r\n \r\nPS: Want an all in one Local Plan that includes everything? \r\nhttps://www.speed-seo.net/product/local-seo-package/', '0', '2022-08-01 15:49:02', '2022-08-01 15:49:02'),
(213, 'Crytoken', 'red_yakamoz17@hotmail.com', '89030225542', 'Watch your money grow while you invest with the Robot.', 'Find out about the easiest way of money earning. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 17:04:22', '2022-08-01 17:04:22'),
(214, 'Crytoken', 'narzun0ff@gmail.com', '89032216920', 'Financial robot keeps bringing you money while you sleep.', 'Looking forward for income? Get it online. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 20:10:23', '2022-08-01 20:10:23'),
(215, 'Crytoken', 'roby_robertx16@yahoo.com', '89031868667', 'Online job can be really effective if you use this Robot.', '# 1 financial expert in the net! Check out the new Robot. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-01 23:10:21', '2022-08-01 23:10:21'),
(216, 'Crytoken', 'bmcgrl@hotmail.com', '89031827581', 'Join the society of successful people who make money here.', 'Financial robot keeps bringing you money while you sleep. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-02 02:12:40', '2022-08-02 02:12:40'),
(217, 'Crytoken', 'natashahetts@yahoo.com', '89033136419', 'Make money online, staying at home this cold winter.', 'The online financial Robot is your key to success. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-02 05:14:13', '2022-08-02 05:14:13'),
(218, 'Crytoken', 'zshepher@gmail.com', '89039948579', 'Check out the newest way to make a fantastic profit.', 'There is no need to look for a job anymore. Work online. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-02 08:15:15', '2022-08-02 08:15:15'),
(219, 'Crytoken', 'famorette@ymail.com', '89030490843', 'The fastest way to make you wallet thick is here.', 'The additional income is available for everyone using this robot. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-02 11:13:32', '2022-08-02 11:13:32'),
(220, 'Crytoken', 'jb262290@gmail.com', '89036662688', 'The additional income is available for everyone using this robot.', 'There is no need to look for a job anymore. Work online. https://Var.qbe-medienhaus.de/Var', '0', '2022-08-02 14:13:55', '2022-08-02 14:13:55'),
(221, 'Crytoken', 'Scander14@yahoo.com', '89035925402', 'The fastest way to make you wallet thick is here.', 'Watch your money grow while you invest with the Robot. https://drive.google.com/file/d/1Rqop87rM8CQDz6UtBb2tXehOKwoUG4KK/view?usp=sharing', '0', '2022-08-02 17:14:42', '2022-08-02 17:14:42'),
(222, 'Crytoken', 'jonathancc20@hotmail.com', '89036253937', 'The financial Robot is the most effective financial tool in the net!', 'The financial Robot is your # 1 expert of making money. https://drive.google.com/file/d/16h--2NxCymIYLkRyC39ltIg-nBif8Ayz/view?usp=sharing', '0', '2022-08-02 20:19:23', '2022-08-02 20:19:23'),
(223, 'Crytoken', 'pierarfilip@msn.com', '89031449335', 'Have no money? Earn it online.', 'Attention! Financial robot may bring you millions! https://drive.google.com/file/d/1ZtpcAfZ5MIqMTOn0hOHHCykKbwSNPrmw/view?usp=sharing', '0', '2022-08-03 02:21:14', '2022-08-03 02:21:14'),
(224, 'Crytoken', 'saranraj77@yahoo.com', '89030091932', 'The online income is your key to success.', 'Have no money? Earn it online. https://drive.google.com/file/d/1HMRjvdPNeZ2W7wQLK2YHm_Q_pmRH4IzX/view?usp=sharing', '0', '2022-08-03 05:22:35', '2022-08-03 05:22:35'),
(225, 'Crytoken', 'etboeckenstedt@yahoo.com', '89032006212', 'Launch the robot and let it bring you money.', 'Financial independence is what this robot guarantees. https://drive.google.com/file/d/16h--2NxCymIYLkRyC39ltIg-nBif8Ayz/view?usp=sharing', '0', '2022-08-03 08:19:49', '2022-08-03 08:19:49'),
(226, 'Crytoken', 'sandrieventos@hotmail.com', '89037477573', 'Looking for additional money? Try out the best financial instrument.', 'Make your computer to be you earning instrument. https://drive.google.com/file/d/16h--2NxCymIYLkRyC39ltIg-nBif8Ayz/view?usp=sharing', '0', '2022-08-03 11:20:28', '2022-08-03 11:20:28'),
(227, 'Crytoken', 'tlsm61@aol.com', '89035201122', 'Automatic robot is the best start for financial independence.', 'Online Bot will bring you wealth and satisfaction. https://drive.google.com/file/d/1z2pZkAuKV9gLJURJKnMx-Tik7d1gjSUI/view', '0', '2022-08-03 14:24:00', '2022-08-03 14:24:00'),
(228, 'Crytoken', 'dzd6rj9xaoedb@yahoo.com', '89030755168', 'Looking for additional money? Try out the best financial instrument.', 'Automatic robot is the best start for financial independence. https://Var.gizmo-inc.fr/Var', '0', '2022-08-03 17:21:36', '2022-08-03 17:21:36'),
(229, 'Crytoken', 'depietrodesign@charter.net', '89034811752', 'Additional income is now available for anyone all around the world.', 'It is the best time to launch the Robot to get more money. https://Var.gizmo-inc.fr/Var', '0', '2022-08-03 20:26:09', '2022-08-03 20:26:09'),
(230, 'Crytoken', 'loveu2885@gmail.com', '89038065705', 'We know how to become rich and do you?', 'Launch the robot and let it bring you money. https://Var.gizmo-inc.fr/Var', '0', '2022-08-03 23:22:09', '2022-08-03 23:22:09'),
(231, 'Crytoken', 'terryroughy@jeffersonbox.com', '89034254571', 'Provide your family with the money in age. Launch the Robot!', 'Even a child knows how to make money. This robot is what you need! https://Var.gizmo-inc.fr/Var', '0', '2022-08-04 02:26:37', '2022-08-04 02:26:37'),
(232, 'Crytoken', 'rudolf.hansen@lyse.net', '89039140223', 'Financial Robot is #1 investment tool ever. Launch it!', 'We know how to become rich and do you? https://Var.gizmo-inc.fr/Var', '0', '2022-08-04 05:35:58', '2022-08-04 05:35:58'),
(233, 'Crytoken', 'susandiputra@yahoo.com', '89030601417', 'One dollar is nothing, but it can grow into $100 here.', 'Financial robot keeps bringing you money while you sleep. https://Var.gizmo-inc.fr/Var', '0', '2022-08-04 08:32:37', '2022-08-04 08:32:37'),
(234, 'Crytoken', 'gonzalezr0047@yahoo.com', '89035331954', 'Looking for an easy way to make money? Check out the financial robot.', 'Trust your dollar to the Robot and see how it grows to $100. https://Var.gizmo-inc.fr/Var', '0', '2022-08-04 11:32:46', '2022-08-04 11:32:46'),
(235, 'Crytoken', 'asrar.syed@yahoo.com', '89034386460', 'We know how to become rich and do you?', 'Trust the financial Bot to become rich. https://Var.chronicleshardcore.de/Var', '0', '2022-08-04 14:32:54', '2022-08-04 14:32:54'),
(236, 'Crytoken', 'Bubbleluvn603@aim.com', '89033900563', 'The additional income is available for everyone using this robot.', 'Have no financial skills? Let Robot make money for you. https://Var.chronicleshardcore.de/Var', '0', '2022-08-04 17:37:54', '2022-08-04 17:37:54'),
(237, 'Crytoken', 'czmacjaxn@gmail.com', '89037167771', 'Wow! This is a fastest way for a financial independence.', 'This robot can bring you money 24/7. https://Var.chronicleshardcore.de/Var', '0', '2022-08-04 20:41:12', '2022-08-04 20:41:12'),
(238, 'Crytoken', 'tanmaymoon@gmail.com', '89036430956', 'The huge income without investments is available.', 'The best way for everyone who rushes for financial independence. https://Var.chronicleshardcore.de/Var', '0', '2022-08-04 23:41:17', '2022-08-04 23:41:17'),
(239, 'Crytoken', 'nllanera@gmail.com', '89039744945', 'Make money online, staying at home this cold winter.', 'Using this Robot is the best way to make you rich. https://Var.chronicleshardcore.de/Var', '0', '2022-08-05 02:43:22', '2022-08-05 02:43:22'),
(240, 'Mike Davis', 'no-replyGrouff@gmail.com', '86195562397', 'Strengthen your Domain Authority', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nGet your pallicraftsltd.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nOn SALE: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nThank you \r\nMike Davis', '0', '2022-08-05 03:53:31', '2022-08-05 03:53:31'),
(241, 'Crytoken', 'jortiz032176@comcast.net', '89034286812', 'Financial Robot is #1 investment tool ever. Launch it!', 'The fastest way to make your wallet thick is found. https://Var.danceit.es/Var', '0', '2022-08-05 06:08:53', '2022-08-05 06:08:53'),
(242, 'Crytoken', 'noematrix17@aol.com', '89038324923', 'Make your computer to be you earning instrument.', 'Let the Robot bring you money while you rest. https://Var.danceit.es/Var', '0', '2022-08-05 09:08:56', '2022-08-05 09:08:56'),
(243, 'Crytoken', 'jimenajohn@tylerexpress.com', '89039170608', 'Try out the best financial robot in the Internet.', 'Small investments can bring tons of dollars fast. https://Var.danceit.es/Var', '0', '2022-08-05 12:09:55', '2022-08-05 12:09:55'),
(244, 'Crytoken', 'xtracrispymom@comcast.net', '89034628325', 'Additional income is now available for anyone all around the world.', 'The online job can bring you a fantastic profit. https://Var.danceit.es/Var', '0', '2022-08-05 15:10:40', '2022-08-05 15:10:40'),
(245, 'Crytoken', 'stephensjasmine99@yahoo.com', '89038226319', 'The online job can bring you a fantastic profit.', 'No need to stay awake all night long to earn money. Launch the robot. https://Var.danceit.es/Var', '0', '2022-08-05 18:12:07', '2022-08-05 18:12:07'),
(246, 'Crytoken', 'boostkdlover@aol.com', '89039934942', 'The financial Robot is your # 1 expert of making money.', 'Let the Robot bring you money while you rest. https://Var.echinat.de/Var', '0', '2022-08-05 21:10:45', '2022-08-05 21:10:45'),
(247, 'Crytoken', 'sammmxxjo@aim.com', '89030343022', 'Making money in the net is easier now.', 'Robot is the best solution for everyone who wants to earn. https://Var.echinat.de/Var', '0', '2022-08-06 00:12:56', '2022-08-06 00:12:56'),
(248, 'Crytoken', 'forrestjones.jacob@gmail.com', '89037421451', 'No need to stay awake all night long to earn money. Launch the robot.', 'This robot can bring you money 24/7. https://Var.echinat.de/Var', '0', '2022-08-06 03:17:50', '2022-08-06 03:17:50'),
(249, 'Crytoken', 'Thomaskperdue@gmail.com', '89038955870', 'Looking for additional money? Try out the best financial instrument.', 'The huge income without investments is available, now! https://Var.echinat.de/Var', '0', '2022-08-06 06:16:35', '2022-08-06 06:16:35'),
(250, 'Crytoken', 'kdblowme@gmail.com', '89034190148', 'Check out the new financial tool, which can make you rich.', 'The best online job for retirees. Make your old ages rich. https://Var.echinat.de/Var', '0', '2022-08-08 18:11:08', '2022-08-08 18:11:08'),
(251, 'Crytoken', 'jpaschke@wi.rr.com', '89035139052', 'The fastest way to make your wallet thick is found.', 'Make thousands of bucks. Financial robot will help you to do it! https://Var.echinat.de/Var', '0', '2022-08-08 21:12:56', '2022-08-08 21:12:56'),
(252, 'Crytoken', 'gatrelled@yahoo.com', '89036882280', 'Turn $1 in $100 statim. Uti oeconomus Robot.', 'Pecunia opus? Quisque id est non relicto domum tuam. https://Var.echinat.de/Var', '0', '2022-08-09 00:18:25', '2022-08-09 00:18:25'),
(253, 'Crytoken', 'miaumewpoop@yahoo.com', '89035297137', 'Satus faciens milia pupa omni septimana.', 'Planto vestri pecunia opus est tibi tota die. https://Var.echinat.de/Var', '0', '2022-08-09 03:17:23', '2022-08-09 03:17:23'),
(254, 'Crytoken', 'hana.ahmed.alaa@gmail.com', '89035422188', 'Pecuniam 24/7 sine ulla conatus et artes.', 'Milia illos leones,. Financial robot mos succurro vos facere! https://Var.echinat.de/Var', '0', '2022-08-09 06:21:23', '2022-08-09 06:21:23'),
(255, 'Crytoken', 'customcar@telus.net', '89037757870', 'Reprehendo ex novissima modo, ut a fantastic utilitatem.', 'Optimum online officium pro retirees. Planto vestri vetus saecula dives. https://Var.echinat.de/Var', '0', '2022-08-09 09:24:08', '2022-08-09 09:24:08'),
(256, 'Crytoken', 'dorurodg@msn.com', '89030633410', 'Optimus via pro omnibus, qui procurrit, pro financial libertatem.', 'Non opus ad solliciti de futuris, si uti hoc financial robot. https://Var.echinat.de/Var', '0', '2022-08-09 12:30:52', '2022-08-09 12:30:52'),
(257, 'Crytoken', 'bellacalista@sbcglobal.net', '89031996576', 'Opus cash? Launch hoc robot et quod potest videre.', 'Online officium et adducam vos a fantastic utilitatem. https://Var.echinat.de/Var', '0', '2022-08-09 15:33:52', '2022-08-09 15:33:52'),
(258, 'Crytoken', 'hera_1957@yahoo.com', '89039633926', 'Financial robot est optimus comes dives populus.', 'Iungere societatis prospere populo, qui pecuniam hic. https://Var.echinat.de/Var', '0', '2022-08-09 18:41:50', '2022-08-09 18:41:50'),
(259, 'Crytoken', 'yol9bro@yahoo.com', '89035219994', 'Faciens pecuniam in rete facilius est nunc.', 'Online reditus est clavem ad successus. https://Var.echinat.de/Var', '0', '2022-08-09 21:38:09', '2022-08-09 21:38:09'),
(260, 'Crytoken', 'tenty21d@yahoo.com', '89030560347', 'Ingens reditus sine re, quod est available.', 'Planto vestri computer ut vos promerendae instrumentum. https://Var.echinat.de/Var', '0', '2022-08-10 00:41:44', '2022-08-10 00:41:44'),
(261, 'Crytoken', 'joysunshineday@gmail.com', '89033766322', 'Financial Robot operatur in vobis, etiam cum tu somnum.', 'Online reditus est clavem ad successus. https://Var.echinat.de/Var', '0', '2022-08-10 03:45:21', '2022-08-10 03:45:21'),
(262, 'Crytoken', 'kailei25@yahoo.com', '89036902143', 'Financial robot est optimus comes dives populus.', 'Hoc robot mos succurro vos ut centum of pupa quotidie. https://Var.echinat.de/Var', '0', '2022-08-10 06:48:16', '2022-08-10 06:48:16'),
(263, 'Crytoken', 'cayla_1990@yahoo.com', '89037975183', 'Pecunia opus? Quisque id est non relicto domum tuam.', 'Financial robot est optimus comes dives populus. https://Var.echinat.de/Var', '0', '2022-08-10 10:13:07', '2022-08-10 10:13:07'),
(264, 'Crytoken', 'sandeeprtn06@gmail.com', '89030131762', 'Invenire de ieiunas via a financial libertatem.', 'Financial Robot operatur in vobis, etiam cum tu somnum. https://Var.echinat.de/Var', '0', '2022-08-10 13:11:51', '2022-08-10 13:11:51'),
(265, 'Josephevalp', 'wealthbuildingstrategies@outlook.com', '81626299822', 'WEALTH BUILDING STRATEGIES', 'Imagine getting to a place where all your hard work and investments finally pay off and you are able to receive a reliable stream of passive income that covers all of your expenses. That\'s the dream when Warren Buffett said, \"Never depend on a single income. Make investments to create a second source. \" \r\n \r\nTherefore, I bring you an amazing opportunity to make financial dreams come true. Seemingly, the best time to plant a tree was about 20 years ago. The second best time is now! \r\n \r\nWarren Buffett, in his school of thoughts, said, \"Opportunities come infrequently. When it rains gold, put out the bucket, not the thimble. \" \r\nSo why not join us on a long, stress-free journey towards financial breakthroughs? And in the near future, you will be glad you took that step. \r\n \r\nStart that journey today by registering with SafeTrust Innovations at www.safetrustinnovations.com using my referral code \"sb4KIVEmHw\". \r\nInvite link: https://www.safetrustinnovations.com/register/sb4KIVEmHw \r\n \r\n\"See you at the top!\"', '0', '2022-08-10 14:03:57', '2022-08-10 14:03:57'),
(266, 'Crytoken', 'Sadhanjyotidutta@gmail.com', '89036246305', 'Online officium potest esse vere efficax, si vos utor is Robot.', 'Pecuniam, domi hoc frigus hiemis. https://Var.echinat.de/Var', '0', '2022-08-10 16:12:15', '2022-08-10 16:12:15'),
(267, 'Crytoken', 'ltmartin.59@gmail.com', '89037687535', 'Reprehendo sicco novus financial instrumentum, quae potest facere vos divites essetis.', 'In ieiunas modo, ut peram crassitudine reperitur. https://Var.echinat.de/Var', '0', '2022-08-10 19:16:08', '2022-08-10 19:16:08'),
(268, 'Mike Longman', 'no-replyGrouff@gmail.com', '88799985423', 'cheap monthly SEO plans', 'Hi there \r\n \r\nI have just analyzed  pallicraftsltd.com for the ranking keywords and saw that your website could use a push. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Longman\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '0', '2022-08-11 07:06:34', '2022-08-11 07:06:34'),
(269, 'MargaritaAxok', 'lyudochka_kharichkova@mail.ru', '87393684665', 'XEvil 5: The best program for captcha solving was released !!!', 'XEvil 5.0 automatically solve most kind of captchas, \r\nIncluding such type of captchas: ReCaptcha-2, ReCaptcha-3, Hotmail, Google captcha, SolveMedia, BitcoinFaucet, Steam, +12000 \r\n+ hCaptcha supported in new XEvil 6.0! Just search for XEvil 6.0 in YouTube \r\n \r\nInterested? Just google XEvil 6.0 \r\nP.S. Free XEvil Demo is available !! \r\n \r\nAlso, there is a huge discount available for purchase until 30th July: -30%! \r\nStand-alone full license of XEvil price is Just 59 USD \r\n \r\nhttp://XEvil.Net/ \r\n \r\nCheck new video in YouTube: \r\n\"XEvil 6.0 <Beta>1] + XRumer multhithreading hCaptcha test\"', '0', '2022-08-11 15:41:41', '2022-08-11 15:41:41'),
(270, 'Crytoken', 'jyssai@hotmail.com', '89033195350', 'Hoc robot mos succurro vos ut centum of pupa quotidie.', 'Financial libertatem est, quod quisque eget. https://Var.rbertilsson.se/', '0', '2022-08-11 17:43:44', '2022-08-11 17:43:44'),
(271, 'Crytoken', 'rmichaelpusatere624@gmail.com', '89036120692', 'Nulla diam consequat? Sit Robot pecuniam pro te.', 'Buy omnia vis mereri pecuniam. https://Var.rbertilsson.se/', '0', '2022-08-12 21:39:52', '2022-08-12 21:39:52'),
(272, 'Crytoken', 'kdpcacacrew@hotmail.com', '89033956305', 'Rich people are rich because they use this robot.', 'The best online investment tool is found. Learn more! https://Var.rbertilsson.se/', '0', '2022-08-14 23:56:54', '2022-08-14 23:56:54'),
(273, 'Crytoken', 'temeka18@hotmail.com', '89038201503', 'Need money? Earn it without leaving your home.', 'Even a child knows how to make money. This robot is what you need! https://Var.rbertilsson.se/', '0', '2022-08-16 04:19:17', '2022-08-16 04:19:17'),
(274, 'Crytoken', 'julcharity@comcast.net', '89034198251', 'No need to worry about the future if your use this financial robot.', 'Launch the best investment instrument to start making money today. https://Var.rbertilsson.se/', '0', '2022-08-16 14:21:49', '2022-08-16 14:21:49'),
(275, 'Crytoken', 'galvanemma@yahoo.com', '89036547563', 'See how Robot makes $1000 from $1 of investment.', 'Make your laptop a financial instrument with this program. https://Var.rbertilsson.se/', '0', '2022-08-16 16:29:42', '2022-08-16 16:29:42'),
(276, 'Crytoken', 'sandyzaremba@yahoo.com', '89035232091', 'Everyone can earn as much as he wants now.', 'Still not a millionaire? Fix it now! https://Var.rbertilsson.se/', '0', '2022-08-16 18:37:15', '2022-08-16 18:37:15'),
(277, 'Crytoken', 'fbvfoxnv@nrzhbllf.com', '89033609533', 'Financial Robot is #1 investment tool ever. Launch it!', 'The financial Robot is the most effective financial tool in the net! https://Var.rbertilsson.se/', '0', '2022-08-16 20:45:24', '2022-08-16 20:45:24'),
(278, 'Crytoken', 'jimmanson1@hotmail.com', '89039252482', 'The online income is your key to success.', 'Let the financial Robot be your companion in the financial market. https://Var.rbertilsson.se/', '0', '2022-08-16 22:51:44', '2022-08-16 22:51:44'),
(279, 'Crytoken', 'mcdowell_dk@yahoo.com', '89030882634', 'Make yourself rich in future using this financial robot.', 'Turn $1 into $100 instantly. Use the financial Robot. https://Var.rbertilsson.se/', '0', '2022-08-17 01:35:40', '2022-08-17 01:35:40'),
(280, 'Crytoken', 'LLanger00@gmail.com', '89038667791', 'It is the best time to launch the Robot to get more money.', 'Attention! Financial robot may bring you millions! https://Var.rbertilsson.se/', '0', '2022-08-17 03:47:27', '2022-08-17 03:47:27'),
(281, 'Crytoken', 'evawinemillerphotography@gmail.com', '89038870355', 'The financial Robot is the most effective financial tool in the net!', 'The online financial Robot is your key to success. https://Var.rbertilsson.se/', '0', '2022-08-17 05:57:25', '2022-08-17 05:57:25'),
(282, 'Crytoken', 'jl_sexy16_908@yahoo.com', '89035003061', 'Rich people are rich because they use this robot.', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Var.rbertilsson.se/', '0', '2022-08-17 08:09:40', '2022-08-17 08:09:40'),
(283, 'Crytoken', 'Enedocfduibui343@yahoo.com', '89032396926', 'Provide your family with the money in age. Launch the Robot!', 'Automatic robot is the best start for financial independence. https://Var.rbertilsson.se/', '0', '2022-08-17 10:19:45', '2022-08-17 10:19:45'),
(284, 'Crytoken', 'kath551@hotmail.com', '89037503064', 'Small investments can bring tons of dollars fast.', 'Online job can be really effective if you use this Robot. https://Var.rbertilsson.se/', '0', '2022-08-17 12:30:47', '2022-08-17 12:30:47'),
(285, 'Crytoken', 'pityu.szabo@yahoo.com', '89035088664', 'Have no money? It’s easy to earn them online here.', 'Make thousands every week working online here. https://Var.rbertilsson.se/', '0', '2022-08-17 15:07:07', '2022-08-17 15:07:07'),
(286, 'Crytoken', 'knolbl@gmail.com', '89035990580', 'Robot is the best solution for everyone who wants to earn.', 'Start your online work using the financial Robot. https://Var.rbertilsson.se/', '0', '2022-08-17 17:15:39', '2022-08-17 17:15:39'),
(287, 'Crytoken', 'lkoolblueeyes@aol.com', '89038971320', 'Financial robot keeps bringing you money while you sleep.', 'Make your money work for you all day long. https://Var.rbertilsson.se/', '0', '2022-08-17 19:24:59', '2022-08-17 19:24:59'),
(288, 'Crytoken', 'ericably@hotmail.com', '89036999160', 'Let your money grow into the capital with this Robot.', 'Attention! Financial robot may bring you millions! https://Var.rbertilsson.se/', '0', '2022-08-17 21:34:08', '2022-08-17 21:34:08'),
(289, 'Crytoken', 'javier.carro.2001@gmail.com', '89036079281', 'The huge income without investments is available, now!', 'Financial independence is what everyone needs. https://Var.rbertilsson.se/', '0', '2022-08-17 23:42:43', '2022-08-17 23:42:43'),
(290, 'Crytoken', 'velesystolzea@ymail.org', '89035681466', 'There is no need to look for a job anymore. Work online.', 'Every your dollar can turn into $100 after you lunch this Robot. https://Var.rbertilsson.se/', '0', '2022-08-18 01:51:02', '2022-08-18 01:51:02'),
(291, 'Crytoken', 'freakout_05@yahoo.com', '89030501716', 'Your computer can bring you additional income if you use this Robot.', 'Looking for additional money? Try out the best financial instrument. https://Var.rbertilsson.se/', '0', '2022-08-18 03:59:48', '2022-08-18 03:59:48'),
(292, 'Crytoken', 'bp7669@aol.com', '89037741486', 'Need money? Get it here easily! Just press this to launch the robot.', 'Learn how to make hundreds of backs each day. https://Var.rbertilsson.se/', '0', '2022-08-18 06:08:55', '2022-08-18 06:08:55'),
(293, 'Crytoken', 'purepr76@yahoo.com', '89030165074', 'Make money, not war! Financial Robot is what you need.', 'Making money is very easy if you use the financial Robot. https://Var.rbertilsson.se/', '0', '2022-08-18 08:17:57', '2022-08-18 08:17:57'),
(294, 'Crytoken', 'ridemanropem@yahoo.com', '89037375657', 'See how Robot makes $1000 from $1 of investment.', 'The online income is the easiest ways to make you dream come true. https://Var.rbertilsson.se/', '0', '2022-08-18 10:27:57', '2022-08-18 10:27:57'),
(295, 'Crytoken', 'amyj1656@gmail.com', '89033146342', 'Make yourself rich in future using this financial robot.', 'Have no financial skills? Let Robot make money for you. https://Var.rbertilsson.se/', '0', '2022-08-18 12:36:12', '2022-08-18 12:36:12'),
(296, 'Crytoken', 'memphistilegroutcleaning@maillocal.com', '89031656532', 'Make your laptop a financial instrument with this program.', 'Financial Robot is #1 investment tool ever. Launch it! https://Var.rbertilsson.se/', '0', '2022-08-18 14:46:42', '2022-08-18 14:46:42'),
(297, 'Crytoken', 'Ozzy42057@hotmail.com', '89032343846', 'Still not a millionaire? The financial robot will make you him!', 'Your money work even when you sleep. https://Var.rbertilsson.se/', '0', '2022-08-18 16:53:36', '2022-08-18 16:53:36'),
(298, 'Crytoken', 'seatmassager93@hotmail.com', '89032927176', 'The huge income without investments is available.', 'We know how to make our future rich and do you? https://Var.rbertilsson.se/', '0', '2022-08-18 19:01:19', '2022-08-18 19:01:19'),
(299, 'Crytoken', 'widymatha@gmail.com', '89033595362', 'Earn additional money without efforts.', 'Robot never sleeps. It makes money for you 24/7. https://Var.rbertilsson.se/', '0', '2022-08-18 21:12:00', '2022-08-18 21:12:00'),
(300, 'Crytoken', 'aleciabarnes@ymail.com', '89034674173', 'Let the financial Robot be your companion in the financial market.', 'No worries if you are fired. Work online. https://Var.rbertilsson.se/', '0', '2022-08-18 23:20:23', '2022-08-18 23:20:23'),
(301, 'Crytoken', 'fl1psurf3r24@aol.com', '89033876403', 'Financial robot is the best companion of rich people.', 'Financial independence is what everyone needs. https://Var.escueladelcambio.es/', '0', '2022-08-19 01:28:34', '2022-08-19 01:28:34'),
(302, 'Crytoken', 'kim.zahra1809@outlook.com', '89034209957', 'Trust your dollar to the Robot and see how it grows to $100.', 'No need to work anymore. Just launch the robot. https://Var.escueladelcambio.es/', '0', '2022-08-19 03:41:40', '2022-08-19 03:41:40'),
(303, 'Crytoken', 'romanscheerle@hotmail.com', '89035944599', 'Financial robot keeps bringing you money while you sleep.', 'The financial Robot works for you even when you sleep. https://Var.escueladelcambio.es/', '0', '2022-08-19 05:53:42', '2022-08-19 05:53:42'),
(304, 'Crytoken', 'glasshomeservices@hotmail.com', '89030251296', 'Using this Robot is the best way to make you rich.', 'Check out the new financial tool, which can make you rich. https://Var.escueladelcambio.es/', '0', '2022-08-19 08:01:44', '2022-08-19 08:01:44'),
(305, 'Crytoken', 'breganh@yahoo.com', '89036739985', 'Find out about the easiest way of money earning.', 'The online income is the easiest ways to make you dream come true. https://Var.escueladelcambio.es/', '0', '2022-08-19 10:09:45', '2022-08-19 10:09:45'),
(306, 'Crytoken', 'sagar.s.haval@cummins.com', '89032019207', 'No need to work anymore. Just launch the robot.', 'Even a child knows how to make $100 today with the help of this robot. https://Var.escueladelcambio.es/', '0', '2022-08-19 12:21:16', '2022-08-19 12:21:16'),
(307, 'Crytoken', 'smokinj1989@hotmail.com', '89036022075', 'Find out about the fastest way for a financial independence.', 'Launch the best investment instrument to start making money today. https://Var.escueladelcambio.es/', '0', '2022-08-19 14:31:06', '2022-08-19 14:31:06'),
(308, 'Crytoken', 'Spacecase517@gmail.com', '89032603423', 'No worries if you are fired. Work online.', 'The additional income for everyone. https://Var.escueladelcambio.es/', '0', '2022-08-19 16:42:16', '2022-08-19 16:42:16'),
(309, 'Crytoken', 'gray_vicki@ymail.com', '89036193488', 'Make money, not war! Financial Robot is what you need.', 'Looking for an easy way to make money? Check out the financial robot. https://Var.escueladelcambio.es/', '0', '2022-08-19 18:52:56', '2022-08-19 18:52:56'),
(310, 'Crytoken', 'kudiabor@gmail.com', '89039237815', 'Make dollars staying at home and launched this Bot.', 'Everyone who needs money should try this Robot out. https://Var.escueladelcambio.es/', '0', '2022-08-19 21:03:08', '2022-08-19 21:03:08'),
(311, 'Crytoken', 'rogaye_noroozi_siam@yahoo.com', '89036602651', 'The fastest way to make you wallet thick is here.', 'Financial independence is what everyone needs. https://Var.escueladelcambio.es/', '0', '2022-08-19 23:12:30', '2022-08-19 23:12:30'),
(312, 'Crytoken', 'sjames@womenstar.com', '89031363896', 'Need money? Get it here easily?', 'The huge income without investments is available. https://Var.escueladelcambio.es/', '0', '2022-08-20 01:19:48', '2022-08-20 01:19:48'),
(313, 'Crytoken', 'SEXXIGURS15@YAHOO.COM', '89037952471', 'The huge income without investments is available.', 'No need to stay awake all night long to earn money. Launch the robot. https://Var.escueladelcambio.es/', '0', '2022-08-20 03:31:36', '2022-08-20 03:31:36'),
(314, 'Crytoken', 'Volleyballplayer9@icloud.com', '89033496511', 'Buy everything you want earning money online.', '# 1 financial expert in the net! Check out the new Robot. https://Var.escueladelcambio.es/', '0', '2022-08-20 05:40:51', '2022-08-20 05:40:51'),
(315, 'Crytoken', 'maanpallavi@yahoo.com', '89037558992', 'Launch the best investment instrument to start making money today.', 'Earn additional money without efforts. https://Var.escueladelcambio.es/', '0', '2022-08-20 07:53:12', '2022-08-20 07:53:12'),
(316, 'Mike Adderiy', 'no-replyGrouff@gmail.com', '87814998228', 'Get more dofollow backlinks for pallicraftsltd.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Adderiy\r\n \r\nsupport@digital-x-press.com', '0', '2022-08-20 08:05:00', '2022-08-20 08:05:00'),
(317, 'Crytoken', 'trinau5f11737@gmails.com', '89031986520', 'The best online investment tool is found. Learn more!', 'We know how to become rich and do you? https://Var.escueladelcambio.es/', '0', '2022-08-20 10:06:11', '2022-08-20 10:06:11'),
(318, 'Crytoken', 'jhwtfztd@qacddbww.com', '89039759621', 'Financial independence is what this robot guarantees.', 'The huge income without investments is available. https://Var.escueladelcambio.es/', '0', '2022-08-20 12:21:13', '2022-08-20 12:21:13'),
(319, 'Crytoken', 'coyote1701a@yahoo.com', '89030023898', 'We have found the fastest way to be rich. Find it out here.', 'Let the financial Robot be your companion in the financial market. https://Var.escueladelcambio.es/', '0', '2022-08-20 14:32:55', '2022-08-20 14:32:55'),
(320, 'Crytoken', 'ej.baglio@yahoo.com', '89039664451', 'Wow! This is a fastest way for a financial independence.', 'Make your computer to be you earning instrument. https://Var.escueladelcambio.es/', '0', '2022-08-20 16:43:55', '2022-08-20 16:43:55'),
(321, 'Dwain', 'info@an-shinkyu.com', '0379 0574907', 'Palli Crafts || HOME PAGE', 'Morning \r\n \r\nDefrost frozen foods in minutes safely and naturally with our THAW KING™. \r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED \r\n\r\nBuy now: https://thawking.store\r\n \r\nThe Best, \r\n \r\nDwain', '0', '2022-08-20 18:27:19', '2022-08-20 18:27:19'),
(322, 'Crytoken', 'aharvey210@yahoo.com', '89032330870', 'Robot never sleeps. It makes money for you 24/7.', 'Rich people are rich because they use this robot. https://Var.escueladelcambio.es/', '0', '2022-08-20 18:55:04', '2022-08-20 18:55:04'),
(323, 'Crytoken', 'cheriya_joey@yahoo.com', '89036945758', 'Wow! This is a fastest way for a financial independence.', 'The financial Robot works for you even when you sleep. https://Var.escueladelcambio.es/', '0', '2022-08-20 21:08:30', '2022-08-20 21:08:30');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fair_trades`
--

CREATE TABLE `fair_trades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fair_trades`
--

INSERT INTO `fair_trades` (`id`, `title`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Creating Opportunities for Economically Disadvantaged Producers. ', '<p>Palli Crafts mission is to help and support the artisans and producers who are marginalized,disadvantaged women, have a small workshop or family business. We enable them with financial help to support their artisans or to continue their business. Most of the artisans of the producers and own artisans are home-based women and they are disadvantaged rural <span style=\"color: #000000;\">women</span> including married, widows, divorced and minorities.</p>', 'assets/admin/images/fairTrade/1658945120_image_fairTrade.JPG', '1', '2022-06-26 11:19:34', '2022-07-27 22:05:20'),
(4, 'Transparency and Accountability', '<p>Palli Crafts is open and honest in its management and business dealings. It respects the sensitivity and confidentiality of submitted commercial information and is answerable to all of its stakeholders. When making decisions, the organization seeks for acceptable, democratic means to include its workers, members, and producers. It makes sure that all of its trading partners receive pertinent information. All supply chain levels have effective and transparent channels for communication.</p>', 'assets/admin/images/fairTrade/1658945235_image_fairTrade.JPG', '1', '2022-06-26 11:19:45', '2022-07-27 22:07:15'),
(5, 'Fair Trading Practices', '<p>Palli Crafts does business with a regard for its producers&amp;#39; social, economic, and environmental well-being. It is accountable for promptly keeping its promises to all of its business partners. In order to advance and expand fair trade, the group keeps long-lasting connections based on respect, solidarity, and trust. It collaborates with the other fair trade groups in the nation and stays away from unfair competition and copying the styles or designs of other businesses.It keeps in touch with its commercial partners effectively.</p>', 'assets/admin/images/fairTrade/1658944722_image_fairTrade.jpg', '1', '2022-06-26 11:19:50', '2022-07-27 21:58:42'),
(6, 'Fair Payment', '<p>Palli Crafts pays a fair wage and payment has been done promptly to the artisans and producers.The producers come with their cost breakdown of raw materials, wages, utility, transportation, rent, others and their profit. The producers present their cost breakdown of raw supplies, labour, utilities, transportation, rent, and other expenses, as well as their profit. We discuss their needs and confirm the pricing. Women and men are paid equally for the same amount of work.</p>', 'assets/admin/images/fairTrade/1658945355_image_fairTrade.JPG', '1', '2022-07-19 10:39:29', '2022-07-27 22:09:15'),
(7, 'Ensuring No Child and Forced Labour', '<p>The organization adheres to the UN Convention on the Rights of the Child, and national law on the employment of children. We ensure that no child and forced labor is being used in the production and that the producer complies with local and national laws regarding the employment of children. Palli Cratfs producers actively work on the children\'s well-being, security and educational needs.</p>', 'assets/admin/images/fairTrade/1658945411_image_fairTrade.jpg', '1', '2022-07-19 10:39:44', '2022-07-27 22:10:11'),
(8, 'Commitment to Non-discrimination, Gender Equality & Women\'s Economic Empowerment', '<p>Palli Crafts does not discriminate in hiring, remuneration, access to training, promotion, termination, or retirement based on race, caste, national origin, religion, disability, gender, sexual orientation, union membership, political affiliation, HIV/Aids status or age. The organization has a clear policy and plan to promote gender equality that ensures that women as well as men can gain access to the resources that they need to be productive and also the ability to influence the wider policy,regulatory, and institutional environment that shapes their livelihoods and lives. Women who work for us, are paid equally for the same amount of effort. The group is dedicated to ensure that women obtain all of the statutory employment benefits and acknowledges that women have the same employment rights as men.</p>', 'assets/admin/images/fairTrade/1658945538_image_fairTrade.JPG', '1', '2022-07-19 10:40:03', '2022-07-27 22:12:18'),
(9, 'Ensuring Good Working Conditions', '<p>Palli Crafts has a positive work environment at the production premises as well as the workplaces. The safety and health of our workers is a huge concern. We are doing&nbsp;training programs to improve the efficiency of the employees, producers, and artisans, in addition to inspiring positive attitudes towards their good working conditions. We make&nbsp;sure the workplace equipment is well maintained and&nbsp;workplaces are ventilated.</p>', 'assets/admin/images/fairTrade/1658945713_image_fairTrade.JPG', '1', '2022-07-19 10:40:58', '2022-07-27 22:15:13'),
(10, 'Providing Capacity Building.', '<p>We improve the abilities and skills of its own employees or producers. We work directly with small producers create specific activities to assist these producers in improving their management skills, production capabilities, and access to markets. Through Fair Trade, the organization aims to increase positive developmental impacts for small, marginalized producers.</p>', 'assets/admin/images/fairTrade/1658946268_image_fairTrade.JPG', '1', '2022-07-19 10:43:42', '2022-07-27 22:24:28'),
(11, 'Promoting Fair Trade', '<p>Palli Crafts works to increase public knowledge of Fair Commerce\'s objectives. We promote Fair Trade\'s goals and actions. Information about the company, offers and the products are all made available to clients and producers. Sincere marketing and advertising strategies are constantly employed.</p>', 'assets/admin/images/fairTrade/1660402039_image_fairTrade.jpg', '1', '2022-07-19 10:44:28', '2022-08-13 18:47:19'),
(12, 'Respect for the Environment.', '<p>Palli Crafts Ltd is concerned with the environment, which has been incorporated into the production process-like using non-toxic and AZO-free dyes, encouraging the use of natural fibre products and developing recycled and upcycling products. The products are handmade and require less energy.&nbsp;&nbsp;Palli Crafts&nbsp;offers its workers and/or members a secure and healthy working environment. It at least complies with municipal, state, and federal legislation as well as ILO treaties on health and safety.</p>', 'assets/admin/images/fairTrade/1658944850_image_fairTrade.jpg', '1', '2022-07-19 10:44:49', '2022-07-27 22:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `fair_trade_infos`
--

CREATE TABLE `fair_trade_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tech_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fair_trade_infos`
--

INSERT INTO `fair_trade_infos` (`id`, `description`, `image`, `tech_description`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"font-weight: 400;\">Palli Crafts Ltd is a Fair-Trade Organization. We believe and adhere to the Fair Trade Principles of WFTO to create a fairer world for everyone.</p>', 'images/fairTrade/1660030870fair.jpg', NULL, '2022-08-06 00:42:37', '2022-08-09 11:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `title`, `sub_title`, `image`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Nakshi Kantha', '<p>&ldquo;<strong>Nakshi Kantha</strong>&rdquo; means &ldquo;Embroidered Quilt&rdquo; in Bengali. The kantha embroidery itself is done with the threads and a needle! The unique patterns of Nakshi Kantha are filled with colorful threads.Our artisans have narrated their emotions beautifully through this.Nakshi kantha has gone through many changes and many adaptations to diversify its use and production. The nakshi kantha technique has become an identity maker of the rural women, as the artisans can find an opportunity to express desires, aspirations &amp; sentiments through creative embroidered platforms with the help of needles and threads.</p>', 'images/material/1660024368_material_one.jpg', 'images/material/1660024368_material_two.JPG', 'images/material/1659963499_material_three.JPG', '1', '2022-07-21 12:46:20', '2022-08-09 09:52:49'),
(4, 'Block Printing', '<p><strong>\"Block Printing\"</strong>&nbsp;is a technique for printing patterns with woodblock and colors.Woodblock is dipped in color and then stamped into clothing or similar surfaces.</p>', 'images/material/1660025097_material_one.JPG', 'images/material/1660025097_material_two.JPG', 'images/material/1660025097_material_three.JPG', '1', '2022-07-21 13:10:40', '2022-08-09 10:04:57'),
(5, 'Wax Batik', '<p>One of the most prominent techniques that we use is \"<strong>Wax Batik\"</strong>.Wax is applied to the fabric with a block and then it is dyed with expected colors. After coloring, the wax is removed and that\'s how we bring the unique patterns.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 'images/material/1660024658_material_one.JPG', 'images/material/1660024658_material_two.JPG', 'images/material/1660024658_material_three.JPG', '1', '2022-07-21 13:12:43', '2022-08-09 10:17:40'),
(6, 'Hand Weaving', '<p>The&nbsp;<strong>\"</strong><strong>Hand Weaving\"</strong>&nbsp;has given form to many of our products.</p>', 'images/material/1660024871_material_one.JPG', 'images/material/1660024871_material_two.JPG', 'images/material/1660024871_material_three.JPG', '1', '2022-07-21 13:14:22', '2022-08-09 10:01:11'),
(7, 'Earthenware', '<p>In this era of pollution,&nbsp;<strong>\"Earthenware\"</strong>&nbsp;is indeed a blessing.A&nbsp;spin&nbsp;wheel is used with versatile techniques and ingenuity. A lump of clay is thrown into the wheel and then artisans shape them by hand.Then they are baked in a specific temperature to give it a permanent texture.</p>', 'images/material/1660025534_material_one.jpeg', 'images/material/1660025534_material_two.jpg', 'images/material/1660025534_material_three.png', '1', '2022-07-21 13:16:33', '2022-08-09 10:12:14'),
(8, 'Wood Carving', '<p>Another way to create spectacular art pieces is \"<strong>Wood Carving</strong>\". Wood carving is a type of woodworking in which people use knives, chisels, and other hand-held wood carving tools to create figures or designs in pieces of wood.</p>', 'images/material/1660540434_material_one.JPG', 'images/material/1660540434_material_two.JPG', 'images/material/1660540434_material_three.jpg', '1', '2022-07-21 13:19:10', '2022-08-15 09:13:54'),
(9, 'Basket Weaving', '<p>We have also kept the rural art of \"<strong>Basket Weaving</strong>\".The basic process of basket making involves&nbsp; weaving strands of fiber, jute,palm.leaf,hogla leaf,date leaf over and under each other to create a particular shape.It serves the purpose of home decor and everyday use.</p>', 'images/material/1660026088_material_one.JPG', 'images/material/1660026088_material_two.JPG', 'images/material/1660026088_material_three.JPG', '1', '2022-07-21 13:20:39', '2022-08-09 10:21:28'),
(10, 'Recycling and Upcycling', '<p>The technique of \"<strong>Recycling and Upcycling</strong>\" includes old clothes or materials and then they are decorated with hand weaving and added embroideries giving an approbative appearance.</p>', 'images/material/1660026302_material_one.JPG', 'images/material/1660026302_material_two.JPG', 'images/material/1660026302_material_three.JPG', '1', '2022-07-21 13:21:21', '2022-08-09 10:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `material_infos`
--

CREATE TABLE `material_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tech_description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `material_infos`
--

INSERT INTO `material_infos` (`id`, `description`, `image`, `tech_description`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"gmail_default\">\r\n<p><span style=\"color: #808080;\">Our own production centers, home based artisans and individual producer groups altogether contribute to the vast group of products we produce. Textile products and non-textile products include various sectors such as Home D&eacute;cor, Lifestyle Fashion and Home Accessories. To make these products into what you love, we tend to use a collection of traditional techniques.&nbsp;<span lang=\"EN-MY\">For example, block and screen printing is</span><span lang=\"EN-MY\">&nbsp;</span><span lang=\"EN-MY\">used for home d&eacute;cor products, while embroidery and weaving are used as a profound metaphor of handicrafts</span>. Other techniques include shibori, which is a tie-dyeing technique, macrame, which is an art involving knotting strings and several other hand techniques for pottery and wood. Since we aim to sustainably do business causing minimum, if any, form of harm, our team uses dyes and colours which are natural and AZO free dyes. Through this, both the environment and our people stay healthy and safe. To make these products readily available, the artisans and our team try to achieve the best results by using these techniques that have been passed on generations after generations and still hold the same value and meaning as several years ago.</span></p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n</div>', 'images/material/1660026538material_x.JPG', '<div class=\"gmail_default\">\r\n<p dir=\"ltr\"><span style=\"color: #808080;\">From home decor to fashion accessories, Palli Crafts&nbsp; offers a broad range of items.The materials includes cotton, silk, knit fabric, wood, clay,metal and galvanised items, leather, natural fibre like jute, hogla, date leaf, palm leaf, candle, etc.We also focus on upcycling our products.This product line ensures minimal waste,lessens pollution and promotes a lifestyle prioritising reusing which is significant for preventing Global warming.</span></p>\r\n<p dir=\"ltr\"><span style=\"color: #808080;\">Palli Crafts Ltd has left no stone unturned to ensure&nbsp; the comprehensive quality of product and service.The perfect blend of revieting ideas of our team members, exclusive designs,resources of&nbsp; artisans&nbsp; make every product unique and spellbinding.&nbsp;</span></p>\r\n<p dir=\"ltr\"><span style=\"color: #808080;\">Let\'s&nbsp; go deeper and learn more about these techniques and how they come out as beautiful products.</span></p>\r\n<p dir=\"ltr\">&nbsp;</p>\r\n</div>\r\n<div class=\"gmail_default\"><span style=\"color: #808080;\">We keep these traditional techniques as a core medium of creating goods with the promise of doing sustainable business,minimising any form of harm to nature.Our team and artisans are trying to achieve the best outcome while participating in keeping these traditional techniques alive.</span></div>', '2022-08-07 20:27:18', '2022-08-09 10:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Ecota Fair Trade Forum', 'assets/admin/images/membership/1660411328_membership.png', '1', '2022-06-25 13:55:18', '2022-08-13 21:22:08'),
(6, 'Export Promotion Bureau', 'assets/admin/images/membership/1660411356_membership.png', '1', '2022-06-25 13:55:25', '2022-08-13 21:22:36'),
(7, 'Banglacraft', 'assets/admin/images/membership/1660411368_membership.jpg', '1', '2022-06-25 13:55:31', '2022-08-13 21:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2022_06_19_022213_create_categories_table', 2),
(11, '2022_06_19_031632_create_sub_categories_table', 3),
(12, '2022_06_19_041626_create_tags_table', 4),
(13, '2022_06_19_043821_create_sliders_table', 5),
(16, '2022_06_19_053501_create_settings_table', 6),
(20, '2022_06_21_183900_create_contact_us_table', 8),
(21, '2022_06_22_141802_create_newsletters_table', 9),
(22, '2022_06_25_183631_create_abouts_table', 10),
(23, '2022_06_25_193413_create_memberships_table', 11),
(24, '2022_06_25_195734_create_artisans_table', 12),
(27, '2022_06_25_214943_create_fair_trades_table', 15),
(28, '2022_06_25_230313_create_materials_table', 16),
(37, '2022_08_06_044635_create_fair_trade_infos_table', 25),
(39, '2022_06_25_210646_create_videos_table', 27),
(47, '2022_06_29_122059_create_blogs_table', 29),
(48, '2022_08_07_015002_create_new_settings_table', 30),
(50, '2022_06_19_072253_create_products_table', 31),
(60, '2022_06_25_203907_create_artisan_infos_table', 32),
(63, '2022_06_25_233333_create_material_infos_table', 33);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `status`, `created_at`, `updated_at`) VALUES
(3, 'apurboka@gmail.com', '1', '2022-08-13 18:33:00', '2022-08-13 18:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `new_settings`
--

CREATE TABLE `new_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pintorest_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privacy_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_settings`
--

INSERT INTO `new_settings` (`id`, `image`, `phone`, `email`, `address`, `whatsapp`, `whatsapp_link`, `facebook_link`, `twitter_link`, `pintorest_link`, `messenger_link`, `about`, `terms_condition`, `privacy_policy`, `refund_policy`, `google_map_link`, `created_at`, `updated_at`) VALUES
(1, 'images/logo/1660027164Logo-02 png.png', '+8801912-143388', 'info@pallicraftsltd.com', '299 Free School Street. Kathalbagan, Dhaka-1205, Bangladesh', '+8801912-1433889', 'https://api.whatsapp.com/send?phone=+8801912-143388', 'https://www.facebook.com/pallicraftslimited/', 'https://twitter.com/pallicraftsltd', 'https://instagram.com/pallicraftsltd?utm_medium=copy_link', NULL, '<p>The start of our&nbsp; journey was in the February of 2019, and since then we have strived to empower talented artisans , so that they are able to showcase what they possess. Together with the artisans and our knowledgeable team members, we are working towards the goal of taking the art of Bangladeshi handicrafts to another level.</p>\r\n<p>&nbsp;</p>\r\n<p>Palli Crafts Ltd is a Fair Trade Organization.Our aim is to achieve a sustainable business by adhering to fair-trade rules.&nbsp;To get started on our vision of evolving Bangladeshi artisans and reviving the rich, traditional skills of this country, we have set goals and objectives that we continuously work on to reach.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">Promising women empowerment and an enormous influence on the field of handicraft, Palli Crafts Ltd has maintained an erudite knowledge of&nbsp; handicraft&nbsp; which&nbsp; supports a chain of production engaging around 260 artisans with great skills.</p>\r\n<p>&nbsp;</p>\r\n<p dir=\"ltr\">With a diverse range of both textile and non-textile products, Palli Crafts Limited works tirelessly to protect the rare culture of handicrafts and provide better lives for the artisans who make it possible.</p>\r\n<p>&nbsp;</p>\r\n<p><span lang=\"EN-MY\">Palli Crafts is working hard to satisfy customers by providing quality and sophisticated products. We design and produce our collection as well as we also develop the customized designs and keep them exclusive.</span>We are currently exporting to Japan, Sweden, Italy, Germany, Australia,Spain and the United Kingdom.</p>', NULL, NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3651.996408480616!2d90.38977251481526!3d23.74750748459084!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8bdaf2fa65b%3A0xdba5b969349d6f60!2s299%20Free%20School%20St%2C%20Dhaka%201205!5e0!3m2!1sen!2sbd!4v1659974056926!5m2!1sen!2sbd', '2022-08-06 20:17:09', '2022-08-09 10:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` double(8,2) DEFAULT NULL,
  `offer_price` double(8,2) DEFAULT NULL,
  `avg_review` double(2,1) DEFAULT 0.0,
  `total_sell` double(8,2) NOT NULL DEFAULT 0.00,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `is_featured` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `product_id`, `short_desc`, `details`, `image`, `image_two`, `image_three`, `regular_price`, `offer_price`, `avg_review`, `total_sell`, `size`, `stock`, `is_featured`, `status`, `tag_id`, `category_id`, `subcategory_id`, `created_at`, `updated_at`) VALUES
(2, 'New', 'new', '1068', 'Lorem..', '<p>Lorem...</p>', 'images/product/16600336411068.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 50, '1', '1', 2, 2, 2, '2022-08-09 12:27:21', '2022-08-09 12:27:21'),
(3, 'New a', 'new-a', '1072', 'Lorem', '<p>Lorem</p>', 'images/product/16600337391072.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 43, '1', '1', 1, 2, 2, '2022-08-09 12:28:59', '2022-08-09 12:28:59'),
(4, 'New...', 'new', '7275', 'Lorem', '<p>Lorem</p>', 'images/product/16600338517275.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 52, '1', '1', 1, 2, 2, '2022-08-09 12:30:51', '2022-08-09 12:30:51'),
(5, 'New .', 'new', '7586', 'Lorem', '<p>LOrem</p>', 'images/product/16600340167586.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'XL', 24, '1', '1', 2, 2, 2, '2022-08-09 12:33:36', '2022-08-09 12:33:36'),
(6, 'lorem.', 'lorem', '7164', 'Lorem', '<p>lo</p>', 'images/product/16600345887164.JPG', 'images/product/16600395677177.JPG', NULL, NULL, NULL, 0.0, 0.00, 'L', 80, '1', '1', 1, 3, 7, '2022-08-09 12:43:08', '2022-08-09 14:06:07'),
(7, 'New..', 'new', '7180', 'Lorem', '<p>Lorem</p>', 'images/product/16600398437180.JPG', 'images/product/16600398437182.JPG', '', NULL, NULL, 0.0, 0.00, 'L', 60, '1', '1', 2, 3, 7, '2022-08-09 14:10:43', '2022-08-12 20:34:50'),
(8, 'Lorem', 'lorem', '2767', 'Lorem', '<p>l</p>', 'images/product/16600400732767.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 100, '1', '1', 1, 3, 11, '2022-08-09 14:14:33', '2022-08-09 14:14:33'),
(9, 'Lorem .', 'lorem', '2794', 'lorem', '<p>Lorem</p>', 'images/product/16600402092794.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 80, '1', '1', 2, 3, 11, '2022-08-09 14:16:49', '2022-08-09 14:16:49'),
(10, 'Lorem s', 'lorem-s', '2803', 'Lorem', '<p>Lorem</p>', 'images/product/16600404442803.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'M', 50, '1', '1', 2, 3, 11, '2022-08-09 14:20:44', '2022-08-09 14:20:44'),
(11, 'New. .', 'new', '6128', 'Lorem', '<p>Lorem</p>', 'images/product/16600409366128.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 200, '1', '1', 2, 3, 7, '2022-08-09 14:28:56', '2022-08-09 14:28:56'),
(12, 'Lorem .new', 'lorem-new', '7153', 'Lorem', '<p>Lorem</p>', 'images/product/16600411897153.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 130, '1', '1', 2, 3, 7, '2022-08-09 14:33:09', '2022-08-09 14:33:09'),
(13, 'New Product', 'new-product', '7155', 'Lorem', '<p>Lorem</p>', 'images/product/166004145971555.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'M', 60, '1', '1', 2, 3, 7, '2022-08-09 14:37:39', '2022-08-09 14:37:39'),
(14, 'New lorem', 'new-lorem', NULL, 'lorem', '<p>Lorem</p>', 'images/product/16600420845136.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 68, '1', '1', 1, 3, 11, '2022-08-09 14:48:04', '2022-08-09 14:48:04'),
(15, 'Lorem new .', 'lorem-new', '5146', 'Lorem', '<p>Lorem</p>', 'images/product/16600422905146.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 82, '1', '1', 2, 3, 11, '2022-08-09 14:51:30', '2022-08-09 14:51:30'),
(16, 'Lorem. c', 'lorem-c', '2497', 'Lorem', '<p>Lorem</p>', 'images/product/16600425612497.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 80, '1', '1', 1, 3, 11, '2022-08-09 14:56:01', '2022-08-09 14:56:01'),
(17, 'N', 'n', '4415', 'Lorem', '<p>Lorem</p>', 'images/product/16601060316035.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 80, '1', '1', 1, 5, 14, '2022-08-10 08:33:51', '2022-08-10 08:33:51'),
(18, 'np', 'np', '6042', 'Lorem', '<p>Lorem</p>', 'images/product/16601060966042.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 100, '1', '1', 2, 5, 14, '2022-08-10 08:34:56', '2022-08-10 08:34:56'),
(19, 'lroem', 'lroem', '4424', 'lorem', '<p>Lorem ..</p>', 'images/product/16601061664424.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'XL', 69, '1', '1', 1, 5, 14, '2022-08-10 08:36:06', '2022-08-10 08:36:06'),
(20, 'Nmd', 'nmd', '6035', 'Lorem', '<p>Lorem</p>', 'images/product/16601062136035.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 50, '1', '1', 2, 5, 14, '2022-08-10 08:36:53', '2022-08-10 08:36:53'),
(21, 'Kl', 'kl', '5108', 'Lorem', '<p>Lorem</p>', 'images/product/16601062845108.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'M', 59, '1', '1', 2, 5, 14, '2022-08-10 08:38:04', '2022-08-10 08:38:04'),
(22, 'Lorem..', 'lorem', '5121', 'Lorem ...', '<p>Lorem...</p>', 'images/product/16601063915121.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 13, '1', '1', 2, 5, 14, '2022-08-10 08:39:51', '2022-08-10 08:39:51'),
(23, 'New t', 'new-t', '5160', 'Lorem', '<p>Lorem ...</p>', 'images/product/16601064385160.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'M', 52, '1', '1', 2, 5, 14, '2022-08-10 08:40:38', '2022-08-10 08:40:38'),
(24, 'New . r', 'new-r', '5182', 'Lorem', '<p>Lorem</p>', 'images/product/16601064825182.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'XL', 62, '1', '1', 2, 5, 14, '2022-08-10 08:41:22', '2022-08-10 08:41:22'),
(25, 'New y', 'new-y', '5195', 'Lorem', '<p>Lorem</p>', 'images/product/16601065255195.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'X', 15, '1', '1', 2, 5, 14, '2022-08-10 08:42:05', '2022-08-10 08:42:05'),
(26, 'New aww', 'new-aww', '521', 'Lorem', '<p>L</p>', 'images/product/16601065865211.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 90, '1', '1', 2, 5, 14, '2022-08-10 08:43:06', '2022-08-10 08:43:06'),
(27, 'New k', 'new-k', '5221', 'orem', '<p>Lorem</p>', 'images/product/16601066625221.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 16, '1', '1', 2, 5, 14, '2022-08-10 08:44:22', '2022-08-10 08:44:22'),
(28, 'New .ssa', 'new-ssa', '5178', 'Lorem', '<p>Lorem</p>', 'images/product/16601066975178.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 29, '1', '1', 2, 5, 14, '2022-08-10 08:44:57', '2022-08-10 08:44:57'),
(29, 'New cs', 'new-cs', '7140', 'Lorem', '<p>dgfd</p>', 'images/product/16601067467140.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 85, '1', '1', 2, 5, 14, '2022-08-10 08:45:46', '2022-08-10 08:45:46'),
(30, 'New rds', 'new-rds', '4190', 'Lorem', '<p>Lorem</p>', 'images/product/16601068044190.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 50, '1', '1', 2, 5, 14, '2022-08-10 08:46:44', '2022-08-10 08:46:44'),
(31, 'New vd', 'new-vd', '1016', 'Lorem', '<p>Lorem</p>', 'images/product/16601068661016.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'l', 19, '1', '1', 2, 5, 14, '2022-08-10 08:47:46', '2022-08-10 08:47:46'),
(32, 'New vds', 'new-vds', '5152', 'Lorem', '<p>Lorem....&nbsp;</p>', 'images/product/16601069385152.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'X', 92, '1', '1', 2, 5, 14, '2022-08-10 08:48:58', '2022-08-10 08:48:58'),
(33, 'Nms', 'nms', '5843', 'loe', '<p>Lorem</p>', 'images/product/16603690935843.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 60, '1', '1', 2, 3, 8, '2022-08-13 09:38:13', '2022-08-13 09:38:13'),
(34, 'lc', 'lc', '5851', 'lorem', '<p>Lorem</p>', 'images/product/16603691405851.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'M', 80, '1', '1', 2, 3, 8, '2022-08-13 09:39:00', '2022-08-13 09:39:00'),
(35, 'Nx', 'nx', '5856', 'lo', '<p>Lorem</p>', 'images/product/16603691895856.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 90, '1', '1', 1, 3, 8, '2022-08-13 09:39:49', '2022-08-13 09:39:49'),
(36, 'Newr', 'newr', '5859', 'Lore', '<p>Lorem</p>', 'images/product/16603692415859.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'XL', 30, '1', '1', 1, 3, 8, '2022-08-13 09:40:41', '2022-08-13 09:40:41'),
(37, 'Loriem', 'loriem', '5866', 'Lorem', '<p>Lorem</p>', 'images/product/16603692955866.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 30, '1', '1', 2, 3, 8, '2022-08-13 09:41:35', '2022-08-13 09:41:35'),
(38, 'P', 'p', '5881', 'Lo', '<p>Lorem</p>', 'images/product/16603693815881.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 3, '1', '1', 1, 3, 8, '2022-08-13 09:43:01', '2022-08-13 09:43:01'),
(39, 'Lorem . k', 'lorem-k', '5890', 'Lorem', '<p>Lorem</p>', 'images/product/16603695895893.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'M', 50, '1', '1', 1, 3, 8, '2022-08-13 09:45:01', '2022-08-13 09:46:29'),
(40, 'M', 'm', '5911', 'Mn', '<p>Lorem</p>', 'images/product/16603697195911.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 41, '1', '1', 2, 3, 8, '2022-08-13 09:48:39', '2022-08-13 09:48:39'),
(41, 'Mx', 'mx', '5917', 'Lorem', '<p>Lorem</p>', 'images/product/16603697655917.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'XL', 50, '1', '1', 2, 3, 8, '2022-08-13 09:49:25', '2022-08-13 09:49:25'),
(42, 'Nv', 'nv', '5935', 'Lorem', '<p>Lorem</p>', 'images/product/16603698085935.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 32, '1', '1', 1, 3, 8, '2022-08-13 09:50:08', '2022-08-13 09:50:08'),
(43, 'Lom', 'lom', '5962', 'Lorem', '<p>Lorem</p>', 'images/product/16603698485962.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 60, '1', '1', 1, 3, 8, '2022-08-13 09:50:48', '2022-08-13 09:50:48'),
(44, 'Kem', 'kem', '5979', 'Lorem', '<p>Lorem</p>', 'images/product/16603698865979.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 26, '1', '1', 2, 3, 8, '2022-08-13 09:51:26', '2022-08-13 09:51:26'),
(45, 'Lorem mx', 'lorem-mx', '5993', 'Lorem', '<p>Lorem</p>', 'images/product/16603699675993.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 20, '1', '1', 2, 3, 8, '2022-08-13 09:52:47', '2022-08-13 09:52:47'),
(46, 'Mxs', 'mxs', '6020', 'Lorem', '<p>Lorem</p>', 'images/product/16603700466020.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 32, '1', '1', 2, 3, 8, '2022-08-13 09:54:06', '2022-08-13 09:54:06'),
(47, 'Mc', 'mc', '0418', 'Lorem', '<p>Lorem</p>', 'images/product/16603704600418.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 50, '1', '1', 1, 2, 3, '2022-08-13 10:01:00', '2022-08-13 10:01:00'),
(48, '0422', '0422', '0422', 'Lorem', '<p>Lorem</p>', 'images/product/16603705120422.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 52, '1', '1', 1, 2, 3, '2022-08-13 10:01:52', '2022-08-13 10:01:52'),
(49, '0428', '0428', '0428', 'Lorem', '<p>Lorem</p>', 'images/product/16603705740428.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 92, '1', '1', 2, 2, 3, '2022-08-13 10:02:54', '2022-08-13 10:02:54'),
(50, '4435', '4435', '4435', 'Lorem', '<p>Lorem</p>', 'images/product/16603706334435.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 63, '1', '1', 2, 2, 3, '2022-08-13 10:03:53', '2022-08-13 10:03:53'),
(51, '4438', '4438', '4438', 'L', '<p>Lo</p>', 'images/product/16603706734438.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 52, '1', '1', 2, 2, 3, '2022-08-13 10:04:33', '2022-08-13 10:04:33'),
(52, '4447', '4447', '4447', 'Lorem', '<p>Lorem</p>', 'images/product/16603707304447.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 41, '1', '1', 2, 2, 3, '2022-08-13 10:05:30', '2022-08-13 10:05:30'),
(53, '5227', '5227', '5227', 'Lo', '<p>Lorem</p>', 'images/product/16603707765227.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'X', 52, '1', '1', 2, 2, 3, '2022-08-13 10:06:16', '2022-08-13 10:06:16'),
(54, '5257', '5257', '5257', 'Lorem', '<p>L</p>', 'images/product/16603708485257.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'M', 20, '1', '1', 2, 2, 3, '2022-08-13 10:07:28', '2022-08-13 10:07:28'),
(55, '7109', '7109', '7109', 'Lorem', '<p>Lorem</p>', 'images/product/16603710337109.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 23, '1', '1', 1, 2, 3, '2022-08-13 10:10:33', '2022-08-13 10:10:33'),
(56, '7234', '7234', '7234', 'Lorem', '<p>Lorem</p>', 'images/product/16603710827234.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 63, '1', '1', 2, 2, 3, '2022-08-13 10:11:22', '2022-08-13 10:11:22'),
(57, '4404', '4404', '4404', 'Lorem', '<p>Lorem</p>', 'images/product/16603711464404.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 42, '1', '1', 2, 2, 3, '2022-08-13 10:12:26', '2022-08-13 10:12:26'),
(58, '5066', '5066', '5015', 'Lorem', '<p>Lorem</p>', 'images/product/16603712375015.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 45, '1', '1', 2, 2, 3, '2022-08-13 10:13:57', '2022-08-13 10:13:57'),
(59, '5037', '5037', '5037', 'Lorem', '<p>Lorem</p>', 'images/product/16603712785037.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 50, '1', '1', 2, 2, 3, '2022-08-13 10:14:38', '2022-08-13 10:14:38'),
(60, '5058', '5058', '5058', 'Lorem', '<p>Lorem</p>', 'images/product/16603713575058.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 30, '1', '1', 2, 2, 3, '2022-08-13 10:15:57', '2022-08-13 10:15:57'),
(61, '5093', '5093', '5093', 'Lo', '<p>Lorem</p>', 'images/product/16603713965093.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 59, '1', '1', 1, 2, 3, '2022-08-13 10:16:36', '2022-08-13 10:16:36'),
(62, '5940', '5940', '5940', 'Lorem', '<p>Lorem</p>', 'images/product/16603714655940.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 11, '1', '1', 2, 2, 3, '2022-08-13 10:17:45', '2022-08-13 10:17:45'),
(63, '5952', '5952', '5952', 'lorem', '<p>Lorem</p>', 'images/product/16603715175952.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 20, '1', '1', 2, 2, 3, '2022-08-13 10:18:37', '2022-08-13 10:18:37'),
(64, '4119', '4119', '4119', 'Lorem', '<p>Lorem</p>', 'images/product/16603717484119.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 15, '1', '1', 1, 2, 4, '2022-08-13 10:22:28', '2022-08-13 10:22:28'),
(65, '7753', '7753', '7753', 'Lorem', '<p>Lorem</p>', 'images/product/16603717907753.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 30, '1', '1', 2, 2, 4, '2022-08-13 10:23:10', '2022-08-13 10:23:10'),
(66, '7789', '7789', '7789', 'Lorem', '<p>Loerm</p>', 'images/product/16603718407789.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'XL', 20, '1', '1', 2, 2, 4, '2022-08-13 10:24:00', '2022-08-13 10:24:00'),
(67, '8059', '8059', '8059', 'Lorem', '<p>Lorem</p>', 'images/product/16603720228059.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'XXL', 25, '1', '1', 2, 2, 4, '2022-08-13 10:27:02', '2022-08-13 10:27:02'),
(68, '1117', '1117', '1117', 'Lore', '<p>lorem</p>', 'images/product/16603720621117.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 60, '1', '1', 2, 2, 4, '2022-08-13 10:27:42', '2022-08-13 10:27:42'),
(69, '1124', '1124', '1124', 'Lorem', '<p>Lorem</p>', 'images/product/16603721191124.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 35, '1', '1', 2, 2, 4, '2022-08-13 10:28:39', '2022-08-13 10:28:39'),
(70, '7605', '7605', '7605', 'Lorem', '<p>Lorem</p>', 'images/product/16603721717605.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'X', 21, '1', '1', 1, 2, 4, '2022-08-13 10:29:31', '2022-08-13 10:29:31'),
(71, '7613', '7613', '7613', 'Lorem', '<p>Lorem</p>', 'images/product/16603722277613.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 10, '1', '1', 1, 2, 4, '2022-08-13 10:30:27', '2022-08-13 10:30:27'),
(72, '0899', '0899', '0899', 'Lorem', '<p>Lorem</p>', 'images/product/16603723030899.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 32, '1', '1', 2, 2, 4, '2022-08-13 10:31:43', '2022-08-13 10:31:43'),
(73, '7115', '7115', '7115', 'lorem', '<p>Lorem</p>', 'images/product/16603723657115.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 26, '1', '1', 2, 2, 4, '2022-08-13 10:32:45', '2022-08-13 10:32:45'),
(74, '0912', '0912', '0912', 'Lorem', '<p>Lorem</p>', 'images/product/16603724230912.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 40, '1', '1', 2, 2, 4, '2022-08-13 10:33:43', '2022-08-13 10:33:43'),
(75, '0925', '0925', '0925', 'Lorem', '<p>Lorem</p>', 'images/product/16603724740925.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 50, '1', '1', 2, 2, 4, '2022-08-13 10:34:34', '2022-08-13 10:34:34'),
(76, '2378', '2378', '2378', 'Lorem', '<p>Lorem</p>', 'images/product/16603725212378.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 20, '1', '1', 2, 2, 4, '2022-08-13 10:35:21', '2022-08-13 10:35:21'),
(77, '2479', '2479', '2479', 'Lorem', '<p>Lorem</p>', 'images/product/16603725692479.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 29, '1', '1', 2, 2, 4, '2022-08-13 10:36:09', '2022-08-13 10:36:09'),
(78, '2434', '2434', '2434', 'Lorem', '<p>:</p>', 'images/product/16603727032434.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'S', 20, '1', '1', 2, 2, 4, '2022-08-13 10:38:23', '2022-08-13 10:38:23'),
(79, 'Cup', 'cup', '2539', 'Ceramic', '<p>Lorem</p>', 'images/product/16603728372539.JPG', NULL, NULL, NULL, NULL, 0.0, 0.00, 'L', 53, '1', '1', 2, 2, 4, '2022-08-13 10:40:37', '2022-08-13 17:09:11'),
(81, 'Kantha Quilt', 'kantha-quilt', '2066', 'cover', '<p>nakshi kantha quilt cover</p>', 'images/product/1660397801new sd.jpg', NULL, NULL, NULL, NULL, 0.0, 0.00, 'm', 33, '1', '1', 4, 2, 2, '2022-08-13 17:36:41', '2022-08-13 17:36:41'),
(82, 'ew', 'ew', '4349', 'adasd', '<p>sd</p>', 'images/product/16606257554349.PNG', NULL, NULL, 23.00, NULL, 0.0, 0.00, 'l', 45, '1', '1', 4, 4, 26, '2022-08-16 08:55:55', '2022-08-16 08:55:55'),
(83, 'fdsfsd', 'fdsfsd', '4353', 'dsadas', '<p>fdssdf</p>', 'images/product/16606258964353.PNG', NULL, NULL, 23.00, NULL, 0.0, 0.00, 'l', 43, '1', '1', 4, 4, 26, '2022-08-16 08:58:16', '2022-08-16 08:58:16'),
(84, 'dgdfg', 'dgdfg', '4362', 'gdfgdf', '<p>dsf</p>', 'images/product/16606260084362.PNG', NULL, NULL, 234.00, NULL, 0.0, 0.00, 'l', 23, '1', '1', 4, 4, 26, '2022-08-16 09:00:08', '2022-08-16 09:00:08'),
(85, 'dusfsd', 'dusfsd', '4377', 'dsad', '<p>dsf</p>', 'images/product/16606262084377.PNG', NULL, NULL, 21.00, 23.00, 0.0, 0.00, 's', 23, '1', '1', 4, 4, 26, '2022-08-16 09:03:28', '2022-08-16 09:03:28'),
(86, 'utu', 'utu', '4386', 'uttyur', '<p>ewdsfs</p>', 'images/product/16606264254386.PNG', NULL, NULL, 435.00, 233.00, 0.0, 0.00, 's', 32, '1', '1', 2, 4, 26, '2022-08-16 09:07:05', '2022-08-16 09:07:05'),
(87, 'hjf', 'hjf', '4389', 'gghfhf', '<p>rewsr</p>', 'images/product/16606266244389.PNG', NULL, NULL, 4323.00, 2334.00, 0.0, 0.00, 's', 32, '1', '1', 2, 4, 26, '2022-08-16 09:10:24', '2022-08-16 09:10:24'),
(88, 'efwsi', 'efwsi', '8103-01', 'kgda', '<p>jsdfsdf</p>', 'images/product/16606267008103-01.PNG', NULL, NULL, 234.00, 213.00, 0.0, 0.00, 'l', 23, '1', '1', 1, 4, 26, '2022-08-16 09:11:40', '2022-08-16 09:11:40'),
(89, 'fwds', 'fwds', '5168', 'rete', '<p>qeqw</p>', 'images/product/16606270747805.JPG', NULL, NULL, 234.00, 234.00, 0.0, 0.00, 'l', 23, '1', '1', 4, 4, 28, '2022-08-16 09:17:54', '2022-08-16 09:17:54'),
(90, 'ff', 'ff', '2332', 'wefwe', '<p>wqeqw</p>', 'images/product/16606271215168.JPG', NULL, NULL, 12312.00, 21312.00, 0.0, 0.00, 'dw', 12, '1', '1', 2, 4, 26, '2022-08-16 09:18:41', '2022-08-16 09:18:41'),
(91, 'drfsf', 'drfsf', '123421', 'werwqr', '<p>qweqwe</p>', 'images/product/16606271636091.PNG', NULL, NULL, 123.00, 12.00, 0.0, 0.00, '123', 123, '1', '1', 2, 4, 28, '2022-08-16 09:19:23', '2022-08-16 09:19:23'),
(92, 'sadsa', 'sadsa', '3232', 'asdas', '<p>adasfdas</p>', 'images/product/16606272168103-01.PNG', NULL, NULL, 2112.00, 123.00, 0.0, 0.00, 'asd', 21, '1', '1', 4, 4, 26, '2022-08-16 09:20:17', '2022-08-16 09:20:17'),
(93, 'ewrwer', 'ewrwer', '12', 'erwe', '<p>43wrwe</p>', 'images/product/16606361611a.PNG', NULL, NULL, 1323.00, 12.00, 0.0, 0.00, 'h', 21, '1', '1', 4, 2, 4, '2022-08-16 11:49:21', '2022-08-16 11:49:21'),
(94, 'ewrrwe', 'ewrrwe', '2626', 'ewrewr', '<p>rweewr</p>', 'images/product/16606362622626.PNG', NULL, NULL, 212.00, 123.00, 0.0, 0.00, 'l', 21, '1', '1', 4, 2, 4, '2022-08-16 11:51:02', '2022-08-16 11:51:02'),
(95, 'dsfds', 'dsfds', '5060', 'dsfsdf', '<p>ewre</p>', 'images/product/16606363205060.PNG', NULL, NULL, 231.00, 34.00, 0.0, 0.00, 'l', 23, '1', '1', 2, 2, 4, '2022-08-16 11:52:00', '2022-08-16 11:52:00'),
(96, 'esdfdsf', 'esdfdsf', '4155', 'sdfsdf', '<p>fsdgdf</p>', 'images/product/16606365354155.PNG', NULL, NULL, 242.00, 213.00, 0.0, 0.00, 'l', 23, '1', '1', 4, 2, 4, '2022-08-16 11:55:35', '2022-08-16 11:55:35'),
(97, 'ewret', 'ewret', '5076', '234324', '<p>er</p>', 'images/product/16606367155076.PNG', NULL, NULL, 213.00, 21.00, 0.0, 0.00, 'l', 21, '1', '1', 4, 2, 4, '2022-08-16 11:58:35', '2022-08-16 11:58:35'),
(98, 'rw425', 'rw425', '2527', 'erewter', '<p>sfsdf</p>', 'images/product/16606368072527.PNG', NULL, NULL, 123.00, 21.00, 0.0, 0.00, 'l', 23, '1', '1', 2, 2, 4, '2022-08-16 12:00:07', '2022-08-16 12:00:07'),
(99, 'ewerwe', 'ewerwe', '2324432', 'rerser', '<p>er</p>', 'images/product/16606369962550.PNG', NULL, NULL, 123.00, 211.00, 0.0, 0.00, 's', 213, '1', '1', 2, 2, 4, '2022-08-16 12:03:16', '2022-08-16 12:03:16'),
(100, 'tsfsdg', 'tsfsdg', '2578', 'ewrwer', '<p>dfsfsd</p>', 'images/product/16606371102578.PNG', NULL, NULL, 234.00, 213.00, 0.0, 0.00, 'l', 56, '1', '1', 4, 2, 4, '2022-08-16 12:05:10', '2022-08-16 12:05:10'),
(101, 'trt', 'trt', '2594', 'wqwq', '<p>dgdsg</p>', 'images/product/16606372192594.PNG', NULL, NULL, 23.00, 23.00, 0.0, 0.00, 'l', 43, '1', '1', 4, 2, 4, '2022-08-16 12:06:59', '2022-08-16 12:06:59'),
(102, 'etert', 'etert', '2667', 'ewrwe', '<p>ewryy</p>', 'images/product/16606374322667.PNG', NULL, NULL, 324.00, 123.00, 0.0, 0.00, 'l', 22, '1', '1', 2, 2, 4, '2022-08-16 12:10:32', '2022-08-16 12:10:32'),
(103, 'dssaf', 'dssaf', '2355', 'fsfas', '<p>asdfsf</p>', 'images/product/16606377962355.PNG', NULL, NULL, 233.00, 23.00, 0.0, 0.00, 'l', 34, '1', '1', 4, 2, 6, '2022-08-16 12:16:36', '2022-08-16 12:16:36'),
(104, 'esfsd', 'esfsd', '2359', 'fsdf', '<p>ewtew</p>', 'images/product/16610124222359.JPG', NULL, NULL, 2134.00, 213.00, 0.0, 0.00, 'l', 213, '1', '1', 2, 2, 6, '2022-08-20 20:20:22', '2022-08-20 20:20:22'),
(105, 'werwe', 'werwe', '2367', 'fsafas', '<p>rfwetr</p>', 'images/product/16610124952367.JPG', NULL, NULL, 2134.00, 21.00, 0.0, 0.00, 'l', 321, '1', '1', 2, 2, 6, '2022-08-20 20:21:35', '2022-08-20 20:21:35'),
(106, 'awfegr', 'awfegr', '2370', 'rwrq', '<p>31v2eqasav</p>', 'images/product/16610126522370.JPG', NULL, NULL, 2143.00, 4632.00, 0.0, 0.00, 'l', 213, '1', '1', 2, 2, 6, '2022-08-20 20:24:12', '2022-08-20 20:24:12'),
(107, 'dsfsd', 'dsfsd', '2381', 'rwestgd', '<p>sdgfsd</p>', 'images/product/16610127102381.JPG', NULL, NULL, 234.00, 123.00, 0.0, 0.00, 'l', 213, '1', '1', 4, 2, 6, '2022-08-20 20:25:10', '2022-08-20 20:25:10'),
(108, 'dwaserfs', 'dwaserfs', '2389', 'asfaf', '<p>wsdf</p>', 'images/product/16610127862389.JPG', NULL, NULL, 343.00, 123.00, 0.0, 0.00, 'l', 213, '1', '1', 2, 2, 6, '2022-08-20 20:26:26', '2022-08-20 20:26:26'),
(109, 'wetgesd', 'wetgesd', '2431', 'sfdsd', '<p>sdfsdg</p>', 'images/product/16610128682431.JPG', NULL, NULL, 124.00, 123.00, 0.0, 0.00, 'l', 23, '1', '1', 1, 2, 6, '2022-08-20 20:27:48', '2022-08-20 20:27:48'),
(110, 'efsd', 'efsd', '2412', 'sfsd', '<p>asdfz</p>', 'images/product/16610129592412.JPG', NULL, NULL, 124.00, 12.00, 0.0, 0.00, 'l', 21, '1', '1', 1, 2, 5, '2022-08-20 20:29:19', '2022-08-20 20:29:19'),
(111, 'sdfgfsdg', 'sdfgfsdg', '2693', 'sdgsd', '<p>sdgsd</p>', 'images/product/16610131422693.JPG', NULL, NULL, 243.00, 123.00, 0.0, 0.00, 'l', 21, '1', '1', 1, 2, 5, '2022-08-20 20:32:22', '2022-08-20 20:32:22'),
(112, 'erwer', 'erwer', '2718', 'wrwer', '<p>safdsaf</p>', 'images/product/16610131782718.JPG', NULL, NULL, 4231.00, 213.00, 0.0, 0.00, 'm', 213, '1', '1', 4, 2, 5, '2022-08-20 20:32:58', '2022-08-20 20:32:58'),
(113, 'efsg', 'efsg', '2727', 'sdgds', '<p>wetrt</p>', 'images/product/16610132722727.JPG', NULL, NULL, 2312.00, 123.00, 0.0, 0.00, 's', 21, '1', '1', 1, 2, 5, '2022-08-20 20:34:32', '2022-08-20 20:34:32'),
(114, 'sdfsd', 'sdfsd', '2733', 'fsdgf', '<p>werfg</p>', 'images/product/16610133352733.JPG', NULL, NULL, 324.00, 123.00, 0.0, 0.00, 'm', 21, '1', '1', 2, 2, 5, '2022-08-20 20:35:35', '2022-08-20 20:35:35'),
(115, 'westrewtg', 'westrewtg', '2850', 'rwerwe', '<p>sdgs</p>', 'images/product/16610133912850.JPG', NULL, NULL, 2314.00, 123.00, 0.0, 0.00, 'm', 21, '1', '1', 4, 2, 5, '2022-08-20 20:36:31', '2022-08-20 20:36:31'),
(116, 'wesdfg', 'wesdfg', '2817', 'sdgfd', '<p>sdfsdf</p>', 'images/product/16610134502817.JPG', NULL, NULL, 234.00, 123.00, 0.0, 0.00, 'l', 21, '1', '1', 2, 2, 5, '2022-08-20 20:37:30', '2022-08-20 20:37:30'),
(117, '3wrterdg', '3wrterdg', '2828', 'sdgf', '<p>sdfg</p>', 'images/product/16610135212828.JPG', NULL, NULL, 2134.00, 123.00, 0.0, 0.00, 'l', 34, '1', '1', 2, 2, 5, '2022-08-20 20:38:41', '2022-08-20 20:38:41'),
(118, 'wqerws', 'wqerws', '2836', 'sfdsd', '<p>sdfgfs</p>', 'images/product/16610135882836.JPG', NULL, NULL, 234.00, 123.00, 0.0, 0.00, 'l', 34, '1', '1', 2, 2, 5, '2022-08-20 20:39:48', '2022-08-20 20:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pintorest_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messenger_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_condition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_policy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `refund_policy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_map_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `phone`, `email`, `address`, `whatsapp`, `whatsapp_link`, `facebook_link`, `twitter_link`, `pintorest_link`, `messenger_link`, `about`, `terms_condition`, `privacy_policy`, `refund_policy`, `google_map_link`, `created_at`, `updated_at`) VALUES
(1, 'assets/admin/images/logo/1655620988_logo.png', '+8801912-143388', 'info@pallicraftsltd.com', '299 Free School Street. Kathalbagan, Dhaka-1205, Bangladesh', '+8801912-143388', 'https://api.whatsapp.com/send?phone=+8801912-143388', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.pintorest.com', 'https://www.facebook.com/messenger', '<p>The start of our moral journey was in the February of 2019, and since then we have strived to empower talented artisans throughout the country, so that they are able to showcase what they possess. Our centers aim to achieve a sustainable business by adhering to fair-trade rules. Together with the artisans and our knowledgeable team members, we are working towards the goal of taking the art of Bangladeshi handicrafts to another level. To get started on our vision of evolving Bangladeshi artisans and reviving the rich, traditional skills of this country, we have set goals and objectives that we continuously work on to reach. From maintaining fair-trade principles to supporting our artisans through various means, we have been creative and ethical at every step of the way. For our artisans, we provide training and ideas on the principles of fair-trade as well as help them with financial needs. To make them further independent, health education and medical support are also in the works to be provided.</p>\r\n<p>Palli Crafts Limited was established with the help of around 350 artisans from different villages and urban areas. Operating in Dhaka, Savar, Tongi, Jamalpur, Bogra and Kurigram, our products include handicrafts made of jute, leather, ceramic, paper, fabric, terracotta, wood and etc. With a diverse range of both textile and non-textile products, Palli Crafts Limited works tirelessly to protect the rare culture of handicrafts and provide better lives for the artisans who make it possible.</p>\r\n<p>Palli Crafts is working hard to satisfy customers by providing quality and sophisticated products. We design and produce our collection as well as we also develop the customized designs and keep them exclusive. We are currently exporting to Japan, Sweden, Italy, Germany, Australia and United Kingdom.</p>', '<p>The start of our moral journey was in the February of 2019, and since then we have strived to empower talented artisans throughout the country, so that they are able to showcase what they possess. Our centers aim to achieve a sustainable business by adhering to fair-trade rules. Together with the artisans and our knowledgeable team members, we are working towards the goal of taking the art of Bangladeshi handicrafts to another level. To get started on our vision of evolving Bangladeshi artisans and reviving the rich, traditional skills of this country, we have set goals and objectives that we continuously</p>', '<p>The start of our moral journey was in the February of 2019, and since then we have strived to empower talented artisans throughout the country, so that they are able to showcase what they possess. Our centers aim to achieve a sustainable business by adhering to fair-trade rules. Together with the artisans and our knowledgeable team members, we are working towards the goal of taking the art of Bangladeshi handicrafts to another level. To get started on our vision of evolving Bangladeshi artisans and reviving the rich, traditional skills of this country, we have set goals and objectives that we continuously.sdfsdf</p>', '<p>The start of our moral journey was in the February of 2019, and since then we have strived to empower talented artisans throughout the country, so that they are able to showcase what they possess. Our centers aim to achieve a sustainable business by adhering to fair-trade rules. Together with the artisans and our knowledgeable team members, we are working towards the goal of taking the art of Bangladeshi handicrafts to another level. To get started on our vision of evolving Bangladeshi artisans and reviving the rich, traditional skills of this country, we have set goals and objectives that we continuously.fdgdfgd</p>', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d14130.857353934944!2d85.36529494999999!3d27.6952226!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sne!2snp!4v1595323330171!5m2!1sne!2snp', '2022-06-19 00:43:08', '2022-07-29 07:12:20');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 'New', 'Lorem...', 'assets/admin/images/slider/1660029091_slider.JPG', '1', '2022-08-09 11:11:31', '2022-08-09 11:11:31'),
(10, 'New', 'Lorem ..', 'assets/admin/images/slider/1660029129_slider.JPG', '1', '2022-08-09 11:12:09', '2022-08-09 11:12:09'),
(11, 'New', 'Lorem ...', 'assets/admin/images/slider/1660029157_slider.JPG', '1', '2022-08-09 11:12:37', '2022-08-09 11:12:37'),
(12, 'New', 'Lorem..', 'assets/admin/images/slider/1660029395_slider.JPG', '1', '2022-08-09 11:16:35', '2022-08-13 17:19:05'),
(13, 'New', 'LOrem', 'assets/admin/images/slider/1660029420_slider.jpg', '0', '2022-08-09 11:17:00', '2022-08-13 17:19:54'),
(14, 'New', 'LOrem', 'assets/admin/images/slider/1660029437_slider.JPG', '1', '2022-08-09 11:17:17', '2022-08-09 11:17:17'),
(15, 'New', 'L', 'assets/admin/images/slider/1660364392_slider.jpg', '1', '2022-08-13 08:19:52', '2022-08-13 08:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Bedroom', 'bedroom', 2, '1', '2022-06-18 22:02:51', '2022-07-21 21:14:33'),
(3, 'Living Room', 'living-room', 2, '1', '2022-06-20 22:38:01', '2022-07-21 21:14:49'),
(4, 'Dinnerware and Tableware', 'dinnerware-and-tableware', 2, '1', '2022-06-20 22:38:21', '2022-07-21 21:16:03'),
(5, 'Decorations', 'decorations', 2, '1', '2022-06-20 22:38:32', '2022-07-21 21:16:23'),
(6, 'Storage', 'storage', 2, '1', '2022-06-20 22:38:44', '2022-07-21 21:16:44'),
(7, 'Kimono and Kaftan', 'kimono-and-kaftan', 3, '1', '2022-06-20 22:38:55', '2022-07-21 21:17:28'),
(8, 'Scarf and Dopatta', 'scarf-and-dopatta', 3, '1', '2022-06-20 22:39:03', '2022-07-21 21:17:57'),
(9, 'Tops and Pyjama set', 'tops-and-pyjama-set', 3, '1', '2022-06-20 22:39:14', '2022-07-21 21:18:23'),
(10, 'T-shirts and Shorts', 't-shirts-and-shorts', 3, '1', '2022-06-20 22:39:58', '2022-07-21 21:18:43'),
(11, 'Accessories', 'accessories', 3, '1', '2022-06-20 22:40:10', '2022-07-21 21:20:34'),
(12, 'Bedcover', 'bedcover', 5, '1', '2022-06-20 22:40:25', '2022-07-21 21:21:32'),
(13, 'Scarf', 'scarf', 5, '1', '2022-06-20 22:40:34', '2022-07-21 21:21:49'),
(14, 'Fashion Accessories', 'fashion-accessories', 5, '1', '2022-06-20 22:40:41', '2022-07-21 21:22:12'),
(15, 'Other', 'other', 3, '0', '2022-06-20 22:40:52', '2022-07-21 21:22:22'),
(16, 'Placemat & Napkin', 'placemat-napkin', 3, '0', '2022-06-20 22:41:18', '2022-07-21 21:22:35'),
(17, 'Cushion Cover', 'cushion-cover', 4, '0', '2022-06-20 22:42:26', '2022-07-21 21:22:48'),
(18, 'Bedcover', 'bedcover', 4, '0', '2022-06-20 22:42:38', '2022-07-21 21:23:37'),
(19, 'Kimono', 'kimono', 5, '0', '2022-06-20 22:43:38', '2022-07-21 21:23:03'),
(20, 'Scarf', 'scarf', 5, '0', '2022-06-20 22:43:50', '2022-07-21 21:23:46'),
(21, 'Tops and Pyjama set', 'tops-and-pyjama-set', 5, '0', '2022-06-20 22:44:13', '2022-07-21 21:23:14'),
(22, 'T-Shirt', 't-shirt', 5, '0', '2022-06-20 22:44:23', '2022-07-21 21:23:54'),
(23, 'Other', 'other', 5, '0', '2022-06-20 22:44:46', '2022-07-21 21:24:02'),
(26, 'Kids', 'kids', 4, '1', '2022-08-13 17:16:02', '2022-08-13 19:44:13'),
(28, 'Christmas', 'christmas', 4, '1', '2022-08-13 19:26:14', '2022-08-13 19:44:01');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hot', 'hot', '1', '2022-06-18 22:34:52', '2022-06-18 22:34:52'),
(2, 'New', 'new', '1', '2022-06-18 22:35:00', '2022-06-18 22:35:00'),
(4, 'Plus', 'plus', '1', '2022-08-13 17:23:21', '2022-08-13 17:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'assets/images/default.jpg',
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `user_type`, `address`, `image`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Admin', 'admin@gmail.com', '01749969029', '$2y$10$sJvlL8nfrUNgHJHHp06f9uZFJ6g8ExAnKWFcx04FUAMAGa4Few8aq', 'admin', 'Dhaka', 'assets/admin/images/1656784216_slider.png', '0', NULL, NULL, '2022-06-17 13:47:49', '2022-07-02 21:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `sub_title`, `video`, `status`, `created_at`, `updated_at`) VALUES
(4, 'BLOCK PRINTING', '<p>Lorem..</p>', 'video/1660047636_video.mp4', '1', '2022-08-09 16:06:17', '2022-08-09 16:20:36'),
(5, 'NAKSHI KANTHA STITCHING', '<p>Lorem</p>', 'video/1660064157_video.mp4', '1', '2022-08-09 20:55:57', '2022-08-09 20:55:57'),
(6, 'WARAJI MAKING PROCESS', '<p>Lorem</p>', 'video/1660115532_video.mp4', '1', '2022-08-10 11:08:10', '2022-08-10 11:12:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artisans`
--
ALTER TABLE `artisans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artisan_infos`
--
ALTER TABLE `artisan_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fair_trades`
--
ALTER TABLE `fair_trades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fair_trade_infos`
--
ALTER TABLE `fair_trade_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `material_infos`
--
ALTER TABLE `material_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters` (`email`);

--
-- Indexes for table `new_settings`
--
ALTER TABLE `new_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_title_unique` (`title`),
  ADD KEY `products_tag_id_foreign` (`tag_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `artisans`
--
ALTER TABLE `artisans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `artisan_infos`
--
ALTER TABLE `artisan_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fair_trades`
--
ALTER TABLE `fair_trades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fair_trade_infos`
--
ALTER TABLE `fair_trade_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `material_infos`
--
ALTER TABLE `material_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `new_settings`
--
ALTER TABLE `new_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
