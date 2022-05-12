-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 10:07 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2017-01-24 16:21:18', '30-05-2021 09:18:36 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'asdsa', 'asdasdasd', '2022-05-08 09:35:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '1', 5, '2022-04-29 23:26:59', 'Debit / Credit card', NULL),
(2, 2, '1', 1, '2022-05-08 10:19:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 1, 'Cake1', 'Cake Shop', 800, 1000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p>', 'IMG-20220429-WA0014.jpg', 'IMG-20220429-WA0019.jpg', 'IMG-20220429-WA0014.jpg', 50, 'In Stock', '2022-04-29 23:22:22', NULL),
(2, 2, 5, 'Cake2', 'Cake Shop', 800, 1000, '<h3 class=\"section-title\" style=\"box-sizing: border-box; font-family: FjallaOneRegular; font-weight: 500; line-height: 1.1; color: rgb(0, 0, 0); margin-top: 20px; border-bottom: 1px solid rgb(227, 227, 227); padding-bottom: 10px; text-transform: uppercase;\"><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; text-transform: none;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; text-transform: none;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; text-transform: none;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p></h3>', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0013.jpg', 50, 'In Stock', '2022-04-29 23:28:28', NULL),
(3, 3, 9, 'Cake3', 'Cake Shop', 800, 1000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p>', 'IMG-20220429-WA0016.jpg', 'IMG-20220429-WA0017.jpg', 'IMG-20220429-WA0015.jpg', 50, 'In Stock', '2022-04-29 23:28:59', NULL),
(4, 4, 2, 'Cake2', 'Cake Shop', 1200, 1500, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p>', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0013.jpg', 50, 'In Stock', '2022-04-29 23:29:35', NULL),
(5, 5, 2, 'Cake1', 'Cake Shop', 800, 2000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p>', 'IMG-20220429-WA0021.jpg', 'IMG-20220429-WA0021.jpg', 'IMG-20220429-WA0021.jpg', 50, 'In Stock', '2022-04-29 23:30:38', NULL),
(6, 6, 1, 'Cake1', 'Cake Shop', 800, 1000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><br></p>', 'IMG-20220429-WA0014.jpg', 'IMG-20220429-WA0019.jpg', 'IMG-20220429-WA0014.jpg', 50, 'In Stock', '2022-04-29 23:22:22', NULL),
(7, 2, 5, 'Cake2', 'Cake Shop', 800, 1000, '<h3 class=\"section-title\" style=\"box-sizing: border-box; font-family: FjallaOneRegular; font-weight: 500; line-height: 1.1; color: rgb(0, 0, 0); margin-top: 20px; border-bottom: 1px solid rgb(227, 227, 227); padding-bottom: 10px; text-transform: uppercase;\"><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; text-transform: none;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; text-transform: none;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px; text-transform: none;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p></h3>', 'IMG-20220429-WA0016.jpg', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0013.jpg', 50, 'In Stock', '2022-04-29 23:28:28', NULL),
(8, 3, 9, 'Cake3', 'Cake Shop', 800, 1000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p>', 'IMG-20220429-WA0016.jpg', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0015.jpg', 50, 'In Stock', '2022-04-29 23:28:59', NULL),
(9, 7, 2, 'Cake2', 'Cake Shop', 1200, 1500, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p>', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0013.jpg', 'IMG-20220429-WA0013.jpg', 50, 'In Stock', '2022-04-29 23:29:35', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(10, 1, 2, 'Cake1', 'Cake Shop', 800, 2000, '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\"><b>Cake</b>&nbsp;is a form of sweet food made from flour, sugar, and other ingredients, that is usually&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking\" title=\"Baking\" style=\"color: rgb(6, 69, 173); background: none;\">baked</a>. In their oldest forms, cakes were modifications of&nbsp;<a href=\"https://en.wikipedia.org/wiki/Bread\" title=\"Bread\" style=\"color: rgb(6, 69, 173); background: none;\">bread</a>, but cakes now cover a wide range of preparations that can be simple or elaborate, and that share features with other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dessert\" title=\"Dessert\" style=\"color: rgb(6, 69, 173); background: none;\">desserts</a>&nbsp;such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pastry\" title=\"Pastry\" style=\"color: rgb(6, 69, 173); background: none;\">pastries</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Meringue\" title=\"Meringue\" style=\"color: rgb(6, 69, 173); background: none;\">meringues</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">custards</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Pie\" title=\"Pie\" style=\"color: rgb(6, 69, 173); background: none;\">pies</a>.</p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">The most commonly used cake ingredients include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Flour\" title=\"Flour\" style=\"color: rgb(6, 69, 173); background: none;\">flour</a>, sugar,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Egg_(food)\" class=\"mw-redirect\" title=\"Egg (food)\" style=\"color: rgb(6, 69, 173); background: none;\">eggs</a>, butter or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Vegetable_oil\" title=\"Vegetable oil\" style=\"color: rgb(6, 69, 173); background: none;\">oil</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Margarine\" title=\"Margarine\" style=\"color: rgb(6, 69, 173); background: none;\">margarine</a>, a liquid, and a&nbsp;<a href=\"https://en.wikipedia.org/wiki/Leavening_agent\" title=\"Leavening agent\" style=\"color: rgb(6, 69, 173); background: none;\">leavening agent</a>, such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_soda\" class=\"mw-redirect\" title=\"Baking soda\" style=\"color: rgb(6, 69, 173); background: none;\">baking soda</a>&nbsp;or&nbsp;<a href=\"https://en.wikipedia.org/wiki/Baking_powder\" title=\"Baking powder\" style=\"color: rgb(6, 69, 173); background: none;\">baking powder</a>. Common additional ingredients and flavourings include&nbsp;<a href=\"https://en.wikipedia.org/wiki/Dried_fruit\" title=\"Dried fruit\" style=\"color: rgb(6, 69, 173); background: none;\">dried</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Candied_fruit\" title=\"Candied fruit\" style=\"color: rgb(6, 69, 173); background: none;\">candied</a>, or fresh fruit,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Nut_(fruit)\" title=\"Nut (fruit)\" style=\"color: rgb(6, 69, 173); background: none;\">nuts</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Cocoa_powder\" class=\"mw-redirect\" title=\"Cocoa powder\" style=\"color: rgb(6, 69, 173); background: none;\">cocoa</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/Extract\" title=\"Extract\" style=\"color: rgb(6, 69, 173); background: none;\">extracts</a>&nbsp;such as vanilla, with numerous substitutions for the primary ingredients. Cakes can also be filled with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Fruit_preserves\" title=\"Fruit preserves\" style=\"color: rgb(6, 69, 173); background: none;\">fruit preserves</a>, nuts or dessert sauces (like&nbsp;<a href=\"https://en.wikipedia.org/wiki/Custard\" title=\"Custard\" style=\"color: rgb(6, 69, 173); background: none;\">pastry cream</a>), iced with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Buttercream\" title=\"Buttercream\" style=\"color: rgb(6, 69, 173); background: none;\">buttercream</a>&nbsp;or other&nbsp;<a href=\"https://en.wikipedia.org/wiki/Icing_(food)\" title=\"Icing (food)\" style=\"color: rgb(6, 69, 173); background: none;\">icings</a>, and decorated with&nbsp;<a href=\"https://en.wikipedia.org/wiki/Marzipan\" title=\"Marzipan\" style=\"color: rgb(6, 69, 173); background: none;\">marzipan</a>, piped borders, or candied fruit.<sup id=\"cite_ref-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a href=\"https://en.wikipedia.org/wiki/Cake#cite_note-1\" style=\"color: rgb(6, 69, 173); background: none;\">[1]</a></sup></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; color: rgb(32, 33, 34); font-family: sans-serif; font-size: 14px;\">Cake is often served as a celebratory dish on ceremonial occasions, such as weddings,&nbsp;<a href=\"https://en.wikipedia.org/wiki/Anniversary\" title=\"Anniversary\" style=\"color: rgb(6, 69, 173); background: none;\">anniversaries</a>, and birthdays. There are countless cake recipes; some are bread-like, some are rich and elaborate, and many are centuries old. Cake making is no longer a complicated procedure; while at one time considerable labor went into cake making (particularly the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Whisk\" title=\"Whisk\" style=\"color: rgb(6, 69, 173); background: none;\">whisking</a>&nbsp;of egg foams), baking equipment and directions have been simplified so that even the most amateur of cooks may bake a cake.</p>', 'pexels-photo-1070850.jpeg', 'IMG-20220429-WA0022.jpg', 'IMG-20220429-WA0021.jpg', 50, 'In Stock', '2022-04-29 23:30:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, '1KG', '2022-04-29 23:17:28', NULL),
(2, 1, '2KG', '2022-04-29 23:17:38', NULL),
(3, 1, '3KG', '2022-04-29 23:17:50', NULL),
(4, 2, '1KG', '2022-04-29 23:17:57', NULL),
(5, 2, '2KG', '2022-04-29 23:18:01', NULL),
(6, 2, '3KG', '2022-04-29 23:18:05', '30-04-2022 04:48:30 AM'),
(7, 3, '1KG', '2022-04-29 23:18:39', NULL),
(8, 3, '2KG', '2022-04-29 23:18:43', NULL),
(9, 3, '3KG', '2022-04-29 23:18:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'drim@005.in', 0x3a3a3100000000000000000000000000, '2022-04-29 23:26:42', NULL, 1),
(2, 'admin@123.con', 0x3a3a3100000000000000000000000000, '2022-05-08 09:59:24', NULL, 1),
(3, 'admin@123.con', 0x3a3a3100000000000000000000000000, '2022-05-08 10:18:51', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Drimesh Ishwar Pendam', 'drim@005.in', 9356895656, 'e10adc3949ba59abbe56e057f20f883e', 'Shegoankar layout\r\nSindhi Meghe', 'Maharashatra', 'Wardha', 442001, 'Shegoankar layout\r\nSindhi Meghe', 'Maharashatra', 'Wardha', 442001, '2022-04-29 23:26:35', NULL),
(2, 'Drimesh Ishwar Pendam', 'admin@123.con', 9356895656, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-08 09:46:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 2, 1, '2022-05-08 10:00:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
