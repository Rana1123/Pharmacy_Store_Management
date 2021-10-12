-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 02:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(111) NOT NULL,
  `details` varchar(333) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `pic`, `details`, `date`) VALUES
(1, 'Capsule', 'capsule.png', 'these are capsules whisd some k dsfksd', '2020-10-03 02:56:00'),
(2, 'Tablets', 'tab.png', 'some of the pic to be modii dfs tablet', '2020-10-03 04:58:57'),
(3, 'Syrup', 'syrupp.png', 'these are capsules whisd some k dsfksd', '2020-10-03 04:59:24'),
(4, 'Cream', 'creamm.png', 'some of the pic to be modii dfs tablet', '2020-10-03 04:59:24'),
(5, 'Lotion', 'lotioon.png', 'these are capsules whisd some k dsfksd', '2020-10-03 04:59:59'),
(6, 'Syrunj', 'syrunj.jpg', 'some of the pic to be modii dfs tablet', '2020-10-03 04:59:59'),
(7, 'Injection', 'injection.png', 'these are capsules whisd some k dsfksd', '2020-10-03 05:00:19'),
(8, 'Surgical Belt', 'belt.png', 'Here some belt items', '2020-11-12 03:02:17'),
(9, 'Other', 'MR.jpg', 'some of the pic to be modii dfs tablet', '2020-10-03 05:00:19');

-- --------------------------------------------------------

--
-- Table structure for table `inventeries`
--

CREATE TABLE `inventeries` (
  `id` int(11) NOT NULL,
  `catId` int(11) NOT NULL,
  `supplier` varchar(222) NOT NULL,
  `name` text NOT NULL,
  `unit` text NOT NULL,
  `price` text NOT NULL,
  `pic` text NOT NULL,
  `description` text NOT NULL,
  `company` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventeries`
--

INSERT INTO `inventeries` (`id`, `catId`, `supplier`, `name`, `unit`, `price`, `pic`, `description`, `company`, `date`) VALUES
(5, 2, 'MD Riazul', 'Angicard ', '0.5mg', '3.05 ', 'MR.jpg', 'Nitroglycerin sublingual tablet is indicated for the acute relief of an attack or acute prophylaxis of angina pectoris due to coronary artery disease', 'Drug International Ltd.', '2020-10-03 06:10:37'),
(6, 2, 'MD Riazul', 'Otosil', '25mg', '0.44', 'MR.jpg', 'Promethazine is contraindicated for use in children less than two years of age', 'Opsonin Pharma Ltd.', '2020-10-03 06:10:40'),
(7, 2, 'MD Riazul', 'Phenergan', '10 mg', '1.36 ', 'MR.jpg', 'Potent long-acting antihistamine with additional anti-emetic and sedative/calming effects.', 'Sanofi Bangladesh Ltd.', '2020-10-03 06:10:43'),
(9, 2, 'MD Riazul', 'Anril ', '0.5 mg', '3.01', 'MR.jpg', 'Nitroglycerin sublingual tablet is indicated for the acute relief of an attack or acute prophylaxis of angina pectoris due to coronary artery disease', 'Square Pharmaceuticals Ltd.', '2020-10-03 06:10:48'),
(10, 3, 'MD Riazul', 'Aristo Kid', '100 ml', ' 86.00', 'MR.jpg', 'Multi-vitamin & Multi-mineral combined preparations', 'Aristopharma Ltd.', '2020-10-03 06:11:36'),
(11, 3, 'MD Riazul', 'Livwel', '100 ml ', ' 90.61', 'MR.jpg', 'The product is contraindicated in patients with a known hypersensitivity to any of the ingredients of this product.', 'Square Pharmaceuticals Ltd.', '2020-10-03 06:11:43'),
(12, 4, 'MD Riazul', 'Fungidal', '10 gm', '35.24', 'MR.jpg', 'Topical Antifungal preparations', 'Square Pharmaceuticals Ltd.', '2020-10-03 06:11:50'),
(13, 4, 'MD Riazul', 'MIC', '10 gm', '35.00', 'MR.jpg', 'Topical application of Miconazole Nitrate has almost no side effect.', 'Globe Pharmaceuticals Ltd.', '2020-10-03 06:11:53'),
(14, 4, 'MD Riazul', 'Mometa', '5 gm ', ' 100.00', 'MR.jpg', 'Mometasone cream is indicated for the relief of inflammatory and pruritic manifestations of corticosteroid- responsive dermatoses, such as psoriasis and atopic dermatitis.', 'Popular Pharmaceuticals Ltd.', '2020-10-03 06:11:56'),
(15, 5, 'MD Riazul', 'Clinex', '25 ml ', '125.00', 'MR.jpg', 'This is indicated for the topical treatment of acne vulgaris.', 'Aristopharma Ltd.', '2020-10-03 06:12:03'),
(16, 6, 'Md Jwel Rana', 'Slip-Tip Disposable Syringes', '5 mL', '12.50', 'MR.jpg', 'hese syringe barrels allow the needle to slip over the tip and compress for easy installation/removal. ', '0', '2020-10-03 06:12:09'),
(17, 7, 'Md Jwel Rana', 'Acerux', '250 mg', '399.84', 'MR.jpg', 'Acute clinical manifestations of Herpes simplex virus in immunocompromised patients\r\nSevere primary or non-primary genital herpes in immune competent patients', 'Opsonin Pharma Ltd.', '2020-10-03 06:12:14'),
(18, 7, 'Md Jwel Rana', 'Simplovir', '250 mg', ' 400.00', 'MR.jpg', 'Acute clinical manifestations of Herpes simplex virus in immunocompromised patients', 'Incepta Pharmaceuticals Ltd.', '2020-10-03 06:12:17'),
(19, 1, 'Md Jwel Rana', 'Momeson', '220 mcg\r\n', '10.00 ', 'MR.jpg', 'Mometasone Furoate is indicated for the maintenance treatment of asthma as prophylactic therapy in patients 4 years of age and older. It is not indicated for the relief of acute bronchospasm. It is not indicated in children less than 4 years of age.', 'Incepta Pharmaceuticals Ltd.', '2020-10-03 06:12:21'),
(20, 1, 'MD Riazul', 'Utrogestan', '100 mg', '36.00', '', 'Maintenance of Pregnancy in cases of Threatened / Recurrent abortion.', 'ZAS Corporation', '2020-10-17 16:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `title`, `name`) VALUES
(1, 'Medical Stores', 'Medical Stores');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL,
  `contact` varchar(222) NOT NULL,
  `discount` varchar(222) NOT NULL,
  `item` varchar(222) NOT NULL,
  `amount` varchar(222) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`id`, `name`, `contact`, `discount`, `item`, `amount`, `userId`, `date`) VALUES
(2, 'Billal hossain', '01756425155', '0', '2', '3', 1, '2020-10-17 15:44:15'),
(3, 'Tonmoy', '01856423659', '0', '3', '25', 1, '2020-10-17 16:47:22'),
(4, 'Elma', '01954665814', '75', '4', '35', 1, '2020-10-19 08:22:46');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `pic` text NOT NULL,
  `number` text NOT NULL,
  `address` text NOT NULL,
  `cnic` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `pic`, `number`, `address`, `cnic`, `date`) VALUES
(1, 'MD Riazul', 'MR.jpg', '0176546253', 'DHAKA,BANGLADESH', '234234', '2020-10-03 07:23:49'),
(2, 'MD Riazul', 'MR.jpg', '0176546253', 'DHAKA,BANGLADESH', '234234', '2020-10-03 07:23:53'),
(3, 'MD Riazul', 'MR.jpg', '0176546253', 'DHAKA,BANGLADESH', '234234', '2020-10-03 07:23:56'),
(4, 'MD Riazul', 'MR.jpg', '0176546253', 'DHAKA,BANGLADESH', '234234', '2020-10-03 07:23:59'),
(5, 'MD Riazul', 'MR.jpg', '0176546253', 'DHAKA,BANGLADESH', '234234', '2020-10-03 07:24:01'),
(6, 'Md Jwel Rana', 'MR.jpg', '01765489260', 'DHAKA,BANGLADESH', '234234', '2020-10-10 03:07:41'),
(7, 'Md Jwel Rana', 'MR.jpg', '01765489260', 'DHAKA,BANGLADESH', '234234', '2020-10-10 03:07:41'),
(8, 'Md Jwel Rana', 'MR.jpg', '01765489260', 'DHAKA,BANGLADESH', '234234', '2020-10-10 03:07:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `pic` varchar(222) NOT NULL,
  `number` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `pic`, `number`, `date`) VALUES
(1, 'rana@gmail.com', 'rana123', 'MR', 'rana.png', '03356910260', '2017-11-02 12:34:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventeries`
--
ALTER TABLE `inventeries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventeries`
--
ALTER TABLE `inventeries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sold`
--
ALTER TABLE `sold`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
