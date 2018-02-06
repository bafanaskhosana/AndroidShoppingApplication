-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2018 at 11:53 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id4248010_picknpay`
--
CREATE DATABASE IF NOT EXISTS `id4248010_picknpay` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id4248010_picknpay`;

-- --------------------------------------------------------

--
-- Table structure for table `Cart`
--

CREATE TABLE `Cart` (
  `id` int(255) NOT NULL,
  `prodName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` longtext COLLATE utf8_unicode_ci,
  `customer` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Cart`
--

INSERT INTO `Cart` (`id`, `prodName`, `description`, `quantity`, `price`, `img_url`, `customer`) VALUES
(38, 'Beef stew 100g', 'Stew', 1, '58.99', 'http://picknpay.000webhostapp.com/images/main5.jpg', 'bafana@gmail.com'),
(40, 'Albany Bread', 'High energized bread', 1, '13.99', 'http://picknpay.000webhostapp.com/images/food2.jpg', 'bafana@gmail.com'),
(48, 'Dunhil Cologne', 'Cologne', 1, '1150.0', 'http://picknpay.000webhostapp.com/images/face4.jpg', 'a@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `categoryid` int(255) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OrderItem`
--

CREATE TABLE `OrderItem` (
  `orderNo` int(255) NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `OrderItem`
--

INSERT INTO `OrderItem` (`orderNo`, `location`, `contact`, `time`) VALUES
(14, '116 lebanon, Mabopane, Pretoria', '0782145789', '17:00');

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `cardId` int(255) NOT NULL,
  `cardNo` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardHolder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cartType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvc` int(255) DEFAULT NULL,
  `expMonth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expYear` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Payment`
--

INSERT INTO `Payment` (`cardId`, `cardNo`, `cardHolder`, `cartType`, `cvc`, `expMonth`, `expYear`, `customer`) VALUES
(9, '111111111111111', 'absa', 'MaterCard', 236, '01', '2017', ''),
(10, '111111111111111', 'absa', 'MaterCard', 0, '01', '2017', ''),
(17, '6547894512354754', 'silimela', 'American Express', 0, '06', '2018', ''),
(18, '6547895412547895', 'silimela', 'Visa Debit', 0, '07', '2021', ''),
(22, '1111111111111111', 'bfn', 'Visa Debit', 0, '01', '2017', 'bafana@gmail.com'),
(23, '1111111111111111', 'bfn', 'Visa Debit', 236, '01', '2017', 'bafana@gmail.com'),
(24, '5125262645143636', 'Bafana Skhosana', 'American Express', 236, '04', '2018', 'bafana@gmail.com'),
(25, '5125262645143636', 'Bafana Skhosana', 'American Express', 236, '04', '2018', 'bafana@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `productid` int(11) NOT NULL,
  `prodname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_url` longtext COLLATE utf8_unicode_ci,
  `categoryID` int(11) DEFAULT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`productid`, `prodname`, `description`, `img_url`, `categoryID`, `price`) VALUES
(1, 'Dunhil Cologne', 'Cologne', 'http://picknpay.000webhostapp.com/images/face4.jpg', 1, 1150),
(2, 'Nescafe', 'Nescafe 500g', 'http://picknpay.000webhostapp.com/images/main7.jpg', 1, 78),
(3, 'Ponds', 'Keep your facial skin clean', 'http://picknpay.000webhostapp.com/images/face1.jpg', 1, 45),
(4, 'Beef stew 100g', 'Stew', 'http://picknpay.000webhostapp.com/images/main5.jpg', 5, 58.99),
(5, 'Mr min', 'Keep house clean and smelling fresh', 'http://picknpay.000webhostapp.com/images/jik4.jpg', 1, 22.49),
(6, 'Nivea shaving set', 'Nivea men shaving wax', 'http://picknpay.000webhostapp.com/images/shaving.jpg', 1, 110),
(8, 'Eggs', 'Fresh 30eggs', 'http://picknpay.000webhostapp.com/images/frozen2.jpg', 5, 55),
(9, 'Chicken Fresh Thighs and Drumsticks', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPChicken.jpg', 2, 67.99),
(10, 'PnP Green Beans 400g', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPGreenBeans.jpg', 2, 20.99),
(11, 'Bianconi Spaghetti 500g', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPspaghetti.jpg', 2, 9.99),
(12, 'Miami Hot Mixed Vegetable Atchaar 380g', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPMiami.jpg', 2, 32.99),
(13, 'Clover Full Cream Milk 1 Litre', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPMilk.jpg', 2, 18),
(14, 'Danone Nutriday Nutriday Smo Oth Strawberry Yoghurt 6ea', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPNutriDay.jpg', 2, 14.99),
(15, 'PnP Blue Pumpkin ', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnpPumpkin.jpg', 2, 14.99),
(16, 'Virgin Gorda British Caribbean Rum', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpay.000webhostapp.com/images/PnPBritishRum.jpg', 3, 134.5),
(18, 'Budweiser', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpay.000webhostapp.com/images/PnPBudweiser.jpg', 3, 12.99),
(21, 'Ciroc', 'Fine Vodka with flavours', 'http://picknpay.000webhostapp.com/images/whisky2.jpg', 3, 350.99),
(22, 'Jameson', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpay.000webhostapp.com/images/PnPJameson.jpg', 3, 180.99),
(27, 'Oros 5L', 'All kids love it', 'http://picknpay.000webhostapp.com/images/drink1.jpg', 4, 61.49),
(28, 'Tropica', 'Nice tropica with tropical flavour', 'http://picknpay.000webhostapp.com/images/drink2.jpg', 4, 29.99),
(29, 'Coca-Cola Sprite ', ' 2L ', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPSprite.jpg', 4, 16.99),
(30, 'Albany Bread', 'High energized bread', 'http://picknpay.000webhostapp.com/images/food2.jpg', 5, 13.99),
(31, 'Pamper Active Baby Nappies Size 5 ', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPPampers.jpg', 1, 145.99),
(32, 'Chicken Thighs', '8 Piece', 'http://picknpay.000webhostapp.com/images/food1.jpg', 5, 29.95),
(33, 'Chesse', 'Pamalate', 'http://picknpay.000webhostapp.com/images/food3.jpg', 5, 33.45),
(34, 'Johnson\'s Light Fragranced By Aqueous Cream 350ml', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPJohnson.jpg', 1, 35.99),
(35, 'Pizza', 'Beef Large pizza', 'http://picknpay.000webhostapp.com/images/main3.jpg', 5, 27.95),
(36, 'Russian', 'Pork 150g', 'http://picknpay.000webhostapp.com/images/frozen.jpg', 5, 22),
(39, 'Jik perfumed all Purpose Bleach 1.5L', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPJik.jpg', 6, 26.99),
(43, 'Tuffy Green Refuse Bags Roll 750x950mm x20', 'We recommend that you do not rely solely on this information and always check product labels. Where dietary or other information is important to you please contact Pick n Pay Customer Services if the poduct is Pick n Pay branded or otherwise the product manufacturer. Although we strive to keep this information as accurate as possible, Pick n Pay are unable to accept liability for any incorrect information. This does not affect your statutory rights.', 'http://picknpaysystemmyversion.000webhostapp.com/images/PnPBlackPlastics.jpg', 6, 62.99),
(44, 'Red bull', 'Energade with high power', 'http://picknpay.000webhostapp.com/images/energy.jpg', 7, 22),
(49, 'Anabolic', 'Helps grow muscle with high energy', 'http://picknpay.000webhostapp.com/images/energy4.jpg', 7, 449.95),
(50, 'Lucazade', 'Never stop going', 'http://picknpay.000webhostapp.com/images/energy1.jpg', 7, 19.95);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `roleID` int(255) NOT NULL,
  `roleName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`roleID`, `roleName`) VALUES
(1, 'CUSTOMER'),
(2, 'ADMIN'),
(3, 'SUPPLIER');

-- --------------------------------------------------------

--
-- Table structure for table `SalesItem`
--

CREATE TABLE `SalesItem` (
  `productid` int(255) NOT NULL,
  `orderno` int(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE `Supplier` (
  `supplierID` int(11) NOT NULL,
  `supplierName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `userId` int(11) NOT NULL,
  `fName` varchar(26) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(26) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(26) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pNumber` int(10) DEFAULT NULL,
  `lName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`userId`, `fName`, `username`, `password`, `email`, `pNumber`, `lName`) VALUES
(20, 'bafana', 'bafana@gmail.com', '12345', 'bafana@gmail.com', 728697985, 'sisco'),
(23, 'bfn', 'bm@gmail.com', '12345', 'bm@gmail.com', 728697985, 'skhosana'),
(26, 'a', 'a@gmail.com', '123', 'a@gmail', 125887950, 'a'),
(30, '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phoneNum` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `OrderItem`
--
ALTER TABLE `OrderItem`
  ADD PRIMARY KEY (`orderNo`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`cardId`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Cart`
--
ALTER TABLE `Cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `OrderItem`
--
ALTER TABLE `OrderItem`
  MODIFY `orderNo` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Payment`
--
ALTER TABLE `Payment`
  MODIFY `cardId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Product`
--
ALTER TABLE `Product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `Supplier`
--
ALTER TABLE `Supplier`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
