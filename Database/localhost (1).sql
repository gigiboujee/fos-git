-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2023 at 10:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--
DROP DATABASE IF EXISTS `fosdb`;
CREATE DATABASE IF NOT EXISTS `fosdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fosdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRole` varchar(50) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRole`, `AdminRegdate`) VALUES
(1, 'Gigi', 'admin1', 7894561238, 'test@gmail.com', 'admin', 'admin', '2023-04-15 18:30:00'),
(2, 'Admin', 'admin', 7368382063, 'natimo8000@gmail.com', '098f6bcd4621d373cade4e832627b4f6', 'admin', '2023-04-21 00:05:26'),
(3, 'Felicia Green', 'Fgreen', 7723222111, 'f.green@gmail.com', '0cbc6611f5540bd0809a388dc95a615b', 'staff', '2023-08-08 01:39:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(4, ' Burgers', '2023-04-21 18:30:00'),
(6, 'Fries and Sides', '2023-04-21 18:30:00'),
(7, 'Desserts', '2021-04-04 18:30:00'),
(9, 'Drinks', '2023-04-21 18:30:00'),
(10, 'Dipping Sauces', '2023-04-21 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

DROP TABLE IF EXISTS `tblfood`;
CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(3000) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(18, ' Burgers', 'The Classic Stack', '8.99', 'A traditional burger featuring a juicy beef patty, melted cheddar cheese, lettuce, tomato, pickles, and our signature sauce.', '20d21c1a19a1740093d5980f21f60044.jpg', '10'),
(19, ' Burgers', 'The Fiery Inferno', '8.99', 'For the spice lovers, this burger boasts a fiery jalapeno-infused beef patty, pepper jack cheese, jalapeno slices, and a zesty chipotle mayo.', 'f7f0770674194117e2a3b631551c01d9.jpg', '10'),
(20, ' Burgers', 'The Mediterranean Medley', '8.99', 'Embark on a culinary journey with a lamb patty seasoned with Mediterranean spices, topped with feta cheese, roasted red peppers, and a refreshing tzatziki sauce.', '06b3983a699141649a70b7a53b0ba7eb.jpg', '10'),
(21, ' Burgers', 'The Brunch Burger', '8.99', 'Start your day right with a beef patty, fried egg, savoury bacon, American cheese, and a slather of maple syrup on a fluffy brioche bun.                              	', 'a82e09cb76bc80253af5f9d5c2fdb053.jpg', '10'),
(22, ' Burgers', 'The California Dream', '8.99', 'Embrace the freshness of California with a turkey patty, avocado, sprouts, cucumber slices, and a zingy lemon herb mayo.                        	', '626bbc3cb35cadac92e788578f54e327.jpg', '10'),
(23, 'Fries and Sides', 'Small French Fries', '1.99', 'French fries are a beloved classic side dish made from deep-fried strips of potatoes, known for their crispy exterior and soft, fluffy interior. Served hot and seasoned to perfection, they are a mouthwatering accompaniment to various meals or a satisfying snack on their own.                             	', 'dda9b354babdcaf2f4691ce161366a7e.jpg', '10'),
(24, 'Fries and Sides', 'Medium French Fries', '3.99', 'French fries are a beloved classic side dish made from deep-fried strips of potatoes, known for their crispy exterior and soft, fluffy interior. Served hot and seasoned to perfection, they are a mouthwatering accompaniment to various meals or a satisfying snack on their own.                    	', 'dda9b354babdcaf2f4691ce161366a7e.jpg', '10'),
(25, 'Fries and Sides', 'Large French Fries', '4.99', 'French fries are a beloved classic side dish made from deep-fried strips of potatoes, known for their crispy exterior and soft, fluffy interior. Served hot and seasoned to perfection, they are a mouthwatering accompaniment to various meals or a satisfying snack on their own.                                            	', 'dda9b354babdcaf2f4691ce161366a7e.jpg', '10'),
(26, 'Fries and Sides', 'Garlic Bread', '4.99', 'Garlic bread is a delectable appetiser or side dish consisting of sliced bread, typically baguette or Italian bread, slathered with a generous amount of garlic-infused butter. After baking until golden and aromatic, it emerges with a crispy crust and a tantalising garlic flavour, making it a delightful addition to any meal or a delightful snack.', 'b425f1779181f31a82cfd794bad00adb.jpg', '10'),
(27, 'Desserts', 'Strawberry Milkshake', '8.39', 'A strawberry milkshake is a luscious and refreshing beverage made by blending ripe strawberries with creamy milk and a touch of sweetness. With its vibrant pink hue and delightful fruity flavor, it\'s a delightful treat perfect for hot days or as a sweet indulgence any time.', 'b98866da4a74b2e4a01a35ab1c37d64d.jpg', '10'),
(29, 'Desserts', 'Decadent Chocolate Delight', '8.99', '\"Decadent Chocolate Delight\" is a heavenly dessert that will satisfy every chocolate lover\'s craving. Indulge in rich, velvety chocolate mousse layered with moist chocolate cake, topped with a drizzle of ganache and a sprinkle of chocolate shavings. This divine treat is the ultimate indulgence for those seeking pure chocolate bliss.', 'dessert 1.jpg', '10'),
(31, 'Desserts', 'Decadent Chocolate Delight', '4.99', 'Decadent Chocolate Delight is a rich and indulgent dessert known for its luscious chocolate flavour. It often features layers of moist chocolate cake, velvety chocolate mousse, and topped with a smooth chocolate ganache or whipped cream. This heavenly treat is a favourite among chocolate enthusiasts and perfect for satisfying sweet cravings.', '537dc337a3e5c9ebe371a3f78e26cb9e.jpg', '10'),
(32, 'Desserts', 'Cheesecake Dream', '4.99', 'A heavenly dessert that tantalises taste buds with its creamy texture and delicate flavours. This decadent cheesecake features a smooth, velvety filling over a buttery graham cracker crust, topped with a luscious layer of fruity or chocolaty drizzle, creating a delightful symphony of flavours in every bite.                                                 	', 'ddb185693a4754c7a1b24da0ed1b24bf.jpg', '10'),
(33, 'Drinks', 'Water', '1.99', 'Spring water is naturally sourced water that flows to the surface from an underground aquifer or spring. It is known for its purity and is often collected for drinking purposes due to its natural filtration process. Spring water is typically free from additives and pollutants, making it a popular choice for bottled water.                                          	', '6d754cdf8fa992b9904dde8532355533.jpg', '10'),
(34, 'Drinks', 'Coke Original', '1.99', 'Original Coke, also known as Coca-Cola Classic, is an iconic carbonated soft drink renowned for its refreshing and distinctive taste. With its secret formula dating back to 1886, this beverage offers a perfect balance of sweetness and acidity, featuring a bubbly effervescence that has delighted consumers worldwide for generations. ', '0f63464e2818e368c7e44d95016cbd85.jpg', '10'),
(35, 'Dipping Sauces', 'Ketchup', '0.49', 'Sauces are flavourful liquids or semi-solid accompaniments that enhance dishes with a burst of taste, ranging from sweet and tangy to spicy and savoury.', '3beedc4adf8b8c981a20baacfd4a79fb.jpg', '10'),
(36, 'Dipping Sauces', 'Mayo', '0.49', 'Sauces are flavourful liquids or semi-solid accompaniments that enhance dishes with a burst of taste, ranging from sweet and tangy to spicy and savoury.	', '3beedc4adf8b8c981a20baacfd4a79fb.jpg', '10');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

DROP TABLE IF EXISTS `tblfoodtracking`;
CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(4, '677162851', 'Your order has been confirmed', 'Order Confirmed', '2023-04-21 00:29:13', NULL),
(5, '677162851', 'Food has been delivered', 'Food Delivered', '2023-04-21 00:31:19', NULL),
(6, '845365299', 'Food has been delivered', 'Food Delivered', '2023-05-02 11:40:08', NULL),
(7, '671308600', 'food has been successfully delivered.', 'Food Delivered', '2023-05-04 21:43:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

DROP TABLE IF EXISTS `tblorderaddresses`;
CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Postcode` varchar(255) DEFAULT NULL,
  `County` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Postcode`, `County`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(3, '4', '677162851', '46', 'Percy road', 'LE2 8FP', 'Leicestershire', 'Leicester', '2023-04-21 00:27:16', 'Food Delivered'),
(4, '4', '845365299', '46', 'Percy road', 'LE2 8FP', 'Leicestershire', 'Leicester', '2023-05-02 11:36:16', 'Food Delivered'),
(5, '5', '671308600', '34', 'miles lanbe', 'le3 46p', 'leicestershire', 'Leiceste', '2023-05-04 21:40:20', 'Food Delivered'),
(6, '6', '997462364', '2', 'HENRY ROAD', 'LE1 2SA', 'Leicestershire', 'Leicester', '2023-08-10 18:53:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `FoodQty` int(11) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `FoodQty`, `IsOrderPlaced`, `OrderNumber`) VALUES
(1, '1', '8', 1, 1, '409347008'),
(2, '1', '7', 1, 1, '409347008'),
(3, '3', '1', 1, 1, '111500378'),
(4, '3', '5', 2, 1, '111500378'),
(5, '4', '8', 1, 1, '677162851'),
(7, '4', '2', 1, 1, '845365299'),
(8, '4', '1', 1, 1, '845365299'),
(9, '4', '1', 1, 1, '845365299'),
(10, '5', '1', 1, 1, '671308600'),
(11, '5', '1', 1, NULL, NULL),
(12, '6', '26', 3, 1, '997462364'),
(13, '6', '19', 2, 1, '997462364');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(3, 'Stephen', 'Okwechime', 'ogboiy@gmail.com', 1236547890, 'f925916e2754e5e03f75dd58a5733251', '2023-04-17 12:28:41'),
(4, 'Ghislaine', 'Angoulangouli', 'ghislaine8000@gmail.com', 736838206, 'e50a6b61ed91461580a1cf173c0de498', '2023-04-21 00:09:11'),
(5, 'Dre', 'Gigi', 'gigianddre20@gmail.com', 736838278, 'd267185fb9083aa273f577e9fc542e08', '2023-05-04 21:39:24'),
(6, 'James', 'Barney', 'jbarney@gmail.com', 1233223322, '098f6bcd4621d373cade4e832627b4f6', '2023-08-10 18:41:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
