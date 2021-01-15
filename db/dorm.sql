-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 09:57 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dorm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(20) NOT NULL,
  `ad_name` varchar(255) NOT NULL,
  `ad_uname` varchar(255) NOT NULL,
  `ad_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_name`, `ad_uname`, `ad_pass`) VALUES
(1, 'MD. ABIR HASAN MUNNA', 'munna', 'munna2222'),
(2, 'Imran Hossain', 'imran', 'imranhei');

-- --------------------------------------------------------

--
-- Table structure for table `building_info`
--

CREATE TABLE `building_info` (
  `room_no` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building_info`
--

INSERT INTO `building_info` (`room_no`, `capacity`, `status`) VALUES
('100', '1', '3'),
('101', '1', '2'),
('102', '3', '2'),
('103', '1', '3'),
('104', '3', '3'),
('105', '3', '1'),
('106', '3', '1'),
('107', '3', '2'),
('108', '1', '1'),
('109', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `com_id` int(20) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `issue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `fee_id` int(20) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `total_fee` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `std_id` varchar(255) NOT NULL,
  `std_pass` varchar(255) NOT NULL,
  `stf_id` varchar(255) NOT NULL,
  `stf_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`std_id`, `std_pass`, `stf_id`, `stf_pass`) VALUES
('1000', '123', '1', '123'),
('1001', '123', '2', '123'),
('1002', '123', '3', '123'),
('1003', '123', '4', '123'),
('1004', '123', '5', '123'),
('1005', '123', '6', '123'),
('1006', '123', '7', '123'),
('1007', '123', '8', '123'),
('1008', '123', '9', '123'),
('1009', '123', '10', '123');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `std_id` varchar(255) NOT NULL,
  `breakfast` varchar(255) NOT NULL,
  `lunch` varchar(255) NOT NULL,
  `dinner` varchar(255) NOT NULL,
  `total_cost` varchar(255) NOT NULL,
  `total_meal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `day` varchar(255) NOT NULL,
  `breakfast_item` varchar(255) NOT NULL,
  `lunch_item` varchar(255) NOT NULL,
  `dinner_item` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`day`, `breakfast_item`, `lunch_item`, `dinner_item`) VALUES
('Friday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Birani', 'Rice, Chicken'),
('Monday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Mutton Vuna Khicuri', 'Rice, Vegitble, Egg'),
('Saturday', 'Mutton Vuna Khicuri', 'Rice, Vorta, Fish', 'Rice, Vegitable, Chicken'),
('Sunday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Rice, Vegitable, Chicken', 'Rice, Vorta, Fish'),
('Thursday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Rice, Vegitable, Chicken', 'Mutton Vuna Khicuri'),
('Tuesday', 'Mutton Vuna Khicuri', 'Rice, Vorta, Fish', 'Rice, Vegitable, Chicken'),
('Wednesday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Rice, Vorta, Fish', 'Rice, Vegitable, Chicken');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `std_id` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`std_id`, `msg`) VALUES
('18511071', 'Very good student :)');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `std_id` int(20) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `std_email` varchar(255) NOT NULL,
  `std_year` int(20) NOT NULL,
  `std_dept` varchar(255) NOT NULL,
  `std_address` varchar(255) NOT NULL,
  `std_contact` int(20) NOT NULL,
  `std_blood` varchar(255) NOT NULL,
  `std_gname` varchar(255) NOT NULL,
  `std_gcontact` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`std_id`, `std_name`, `std_email`, `std_year`, `std_dept`, `std_address`, `std_contact`, `std_blood`, `std_gname`, `std_gcontact`) VALUES
(1010, 'Macaulay', 'Donec.fringilla@Phasellus.co.uk', 1, 'Customer Relations', 'Gloucester', 16621219, 'AB+', 'Rowan', 16800905),
(1011, 'Merritt', 'bibendum.fermentum@eteuismodet.edu', 4, 'Asset Management', 'Gijzegem', 16580708, 'AB-', 'Oscar', 16090919),
(1012, 'Curran', 'neque.et@luctussit.co.uk', 1, 'Public Relations', 'Vottem', 16551029, 'O-', 'Lael', 16600115),
(1013, 'Noble', 'fames.ac@enimnec.ca', 3, 'Sales and Marketing', 'Bonnyville', 16440723, 'O+', 'Magee', 16000818),
(1014, 'Beck', 'mollis@nonduinec.net', 2, 'Research and Development', 'Pucón', 16450326, 'AB-', 'Rina', 16660724),
(1015, 'Marvin', 'metus.Aliquam.erat@duiCumsociis.ca', 4, 'Payroll', 'Baunatal', 16060310, 'AB-', 'Robin', 16821021),
(1016, 'Rigel', 'netus@velitPellentesque.com', 4, 'Finances', 'Dolceacqua', 16940930, 'O-', 'Brennan', 16791109),
(1017, 'Colton', 'in.hendrerit@Nullam.edu', 2, 'Advertising', 'Monstreux', 16570510, 'AB+', 'Tanek', 16950228),
(1018, 'Marsden', 'hendrerit@Pellentesquetincidunt.co.uk', 1, 'Payroll', 'Covington', 16930625, 'B+', 'Breanna', 16730407),
(1019, 'Timon', 'vitae@utsemNulla.ca', 1, 'Finances', 'Gravataí', 16530629, 'O-', 'Amir', 16720420);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `salary_id` int(20) NOT NULL,
  `stf_id` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `stf_id` varchar(255) NOT NULL,
  `stf_name` varchar(255) NOT NULL,
  `stf_address` varchar(255) NOT NULL,
  `stf_contact` varchar(255) NOT NULL,
  `stf_post` varchar(255) NOT NULL,
  `stf_salary` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`stf_id`, `stf_name`, `stf_address`, `stf_contact`, `stf_post`, `stf_salary`, `room_no`) VALUES
('1', 'Aaron', 'San Mauro Marchesato', '16880803 5722', 'Asset Management', '10000', '100'),
('10', 'Wylie', 'Bailivre', '16600506 2713', 'Finances', '14500', '101'),
('2', 'Arsenio', 'Okigwe', '16051129 2088', 'Research and Development', '10500', '102'),
('3', 'Yasir', 'Moio Alcantara', '16740702 0739', 'Advertising', '11000', '103'),
('4', 'Camden', 'Muzaffargarh', '16330711 3575', 'Payroll', '11500', '104'),
('5', 'Kasimir', 'Seydişehir', '16540718 0875', 'Advertising', '12000', '105'),
('6', 'Alec', 'Châtellerault', '16410226 1296', 'Customer Service', '12500', '106'),
('7', 'Judah', 'Wachtebeke', '16490106 5583', 'Advertising', '13000', '107'),
('8', 'Asher', 'Dehradun', '16700509 2619', 'Sales and Marketing', '13500', '108'),
('9', 'Luke', 'Isle-aux-Coudres', '16911126 9917', 'Sales and Marketing', '14000', '109');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` varchar(255) NOT NULL,
  `std_name` varchar(255) NOT NULL,
  `std_email` varchar(255) NOT NULL,
  `std_year` varchar(255) NOT NULL,
  `std_dept` varchar(255) NOT NULL,
  `std_address` varchar(255) NOT NULL,
  `std_contact` varchar(255) NOT NULL,
  `std_blood` varchar(255) NOT NULL,
  `std_gname` varchar(255) NOT NULL,
  `std_gcontact` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `std_name`, `std_email`, `std_year`, `std_dept`, `std_address`, `std_contact`, `std_blood`, `std_gname`, `std_gcontact`, `room_no`) VALUES
('1000', 'Aristotle', 'luctus.aliquet@consectetuercursuset.edu', '4', 'Customer Service', 'Bharuch', '16781019 4600', 'AB+', 'Alan', '16071213 2380', '100'),
('1001', 'Dustin', 'dapibus.id@suscipit.co.uk', '2', 'Tech Support', 'Moricone', '16161018 3004', 'B-', 'Petra', '16160612 3659', '101'),
('1002', 'Elliott', 'fringilla.porttitor.vulputate@erat.ca', '1', 'Asset Management', 'Hof', '16621211 3325', 'O-', 'Leigh', '16591127 8314', '102'),
('1003', 'Ferdinand', 'sapien@urnaconvallis.ca', '4', 'Research and Development', 'Santa Juana', '16371220 4571', 'O-', 'Mira', '16770519 2198', '103'),
('1004', 'Mason', 'Vivamus@antedictum.co.uk', '2', 'Tech Support', 'Sioux City', '16151114 1309', 'B+', 'Martin', '16051227 9233', '104'),
('1005', 'Dillon', 'eu.accumsan@nascetur.org', '1', 'Research and Development', 'Otranto', '16990420 3610', 'A-', 'Clark', '16360727 5033', '105'),
('1006', 'Tad', 'blandit@euismod.edu', '3', 'Tech Support', 'Grayvoron', '16110613 4982', 'AB+', 'Cole', '16380628 8878', '106'),
('1007', 'Mohammad', 'neque.vitae.semper@acmattisvelit.net', '3', 'Human Resources', 'Georgia', '16960129 0613', 'B+', 'Hasad', '16630419 1437', '107'),
('1008', 'Hashim', 'ipsum.Curabitur@ullamcorpereueuismod.ca', '1', 'Sales and Marketing', 'Bruck an der Mur', '16680215 4093', 'AB+', 'Madeson', '16321218 9496', '108'),
('1009', 'Beck', 'et@egetvariusultrices.com', '2', 'Legal Department', 'Hamme', '16360802 3499', 'B-', 'Maris', '16500909 9812', '109'),
('18511071', 'Imran Hossain', 'imranhossainrana.2014@gmail.com', '3rd', 'ICT', 'Khilkhet', '0146646446', 'O+', 'moazzem', '01546465489', '101');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `building_info`
--
ALTER TABLE `building_info`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`com_id`),
  ADD UNIQUE KEY `std_id` (`std_id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `std_id` (`std_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `std_id` (`std_id`),
  ADD UNIQUE KEY `stf_id` (`stf_id`);

--
-- Indexes for table `meal`
--
ALTER TABLE `meal`
  ADD UNIQUE KEY `std_id` (`std_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD UNIQUE KEY `std_id` (`std_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `stf_id` (`stf_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`stf_id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`),
  ADD KEY `room_no` (`room_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `fee_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `salary_id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
