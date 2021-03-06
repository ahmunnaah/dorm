-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 03:55 AM
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
(1, 'MD. ABIR HASAN MUNNA', 'munna', '$2y$10$2LJvXuubCiOIrFrBHkMqheJ1QtzL0MSkZf8dKR.3B6RzNEmh6EcV6'),
(2, 'Imran Hossain', 'imran', '$2y$10$R1svm.7hVG2dxC1PhWntK.Fr9ShrUhkygEAT5I1Vr6FdYU1Vh4sy.');

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
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`fee_id`, `std_id`, `total_fee`, `status`) VALUES
(1, '1000', '3630', '1'),
(2, '1001', '3120', '1'),
(3, '1002', '2910', '0'),
(4, '1003', '3330', '0'),
(5, '1004', '3510', '1'),
(6, '1005', '3510', '0'),
(7, '1006', '3090', '1'),
(8, '1007', '3540', '1'),
(9, '1008', '3270', '0'),
(10, '1009', '2910', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `std_id` varchar(255) NOT NULL,
  `std_pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`std_id`, `std_pass`, `email`) VALUES
('1000', '$2y$10$jeKFysgSeXo/FdQSusJF0enxbGk3xY.J904NZ2KcyhD0q2T.SsAQy', 'abirmunna091@gmail.com'),
('1001', '$2y$10$QNNY0bmJ92WXAml0WfsLdOSND7QWiibrVcZBT7QWPnF.6nUyo5TAW', 'imranhossainrana.2014@gmail.com'),
('1002', '$2y$10$19SqKi7TN3pCB5PcuX9vieYX7yspekg4dDbh9eRqNQAGEUquLxdLG', 'arif@juniv.edu'),
('1003', '$2y$10$ue6GwAPp3e2ovLtV8K8CQuZTvA2BgZvPGxZcVsH6viohM8qqf65De', ''),
('1004', '$2y$10$Srp8hZ9ak7.6ofUiQNr8SeOlnRipg2nigKrySNPKP6F24VYt/Xe5e', ''),
('1005', '$2y$10$D.H1qp6MHrfDneWNVHanoeVjMJbru/78Lj3m9.u8f0AgIelZn1gC2', ''),
('1006', '$2y$10$OOikvsi2Lerp1APiWcx3duSkIyt8s1naUMhT3wN2VEGbi8t5hSiC.', ''),
('1007', '$2y$10$OrCEiemQ2Jv.hUG0z5fkf.HMVpouwxeZUC2CW1TytEskWWY3b.quS', ''),
('1008', '$2y$10$pItW0tQ9OtyJHaD/n1JiyepqFNc6mjI5igWbxIJUFvE9akVhano7.', ''),
('1009', '$2y$10$7BKB2z6PkGSaAP0YNP70Zuh2vhfTvZjtpYWctShDxvxsnILwFxjAi', '');

-- --------------------------------------------------------

--
-- Table structure for table `meal`
--

CREATE TABLE `meal` (
  `std_id` varchar(255) NOT NULL,
  `breakfast` varchar(255) NOT NULL,
  `lunch` varchar(255) NOT NULL,
  `dinner` varchar(255) NOT NULL,
  `total_cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meal`
--

INSERT INTO `meal` (`std_id`, `breakfast`, `lunch`, `dinner`, `total_cost`) VALUES
('1000', '25', '22', '26', '3630'),
('1001', '24', '16', '24', '3120'),
('1002', '19', '15', '24', '2910'),
('1003', '19', '21', '25', '3330'),
('1004', '21', '24', '24', '3510'),
('1005', '25', '21', '25', '3510'),
('1006', '21', '17', '24', '3090'),
('1007', '24', '23', '24', '3540'),
('1008', '21', '24', '20', '3270'),
('1009', '23', '16', '21', '2910');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `day` varchar(255) NOT NULL,
  `breakfast_item` varchar(255) NOT NULL,
  `lunch_item` varchar(255) NOT NULL,
  `dinner_item` varchar(255) NOT NULL,
  `breakfast_p` varchar(255) NOT NULL,
  `lunch_p` varchar(255) NOT NULL,
  `dinner_p` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`day`, `breakfast_item`, `lunch_item`, `dinner_item`, `breakfast_p`, `lunch_p`, `dinner_p`) VALUES
('Friday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Birani', 'Rice, Chicken', '30', '60', '60'),
('Monday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Mutton Vuna Khicuri', 'Rice, Vegitble, Egg', '30', '60', '60'),
('Saturday', 'Mutton Vuna Khicuri', 'Rice, Vorta, Fish', 'Rice, Vegitable, Chicken', '30', '60', '60'),
('Sunday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Rice, Vegitable, Chicken', 'Rice, Vorta, Fish', '30', '60', '60'),
('Thursday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Rice, Vegitable, Chicken', 'Mutton Vuna Khicuri', '30', '60', '60'),
('Tuesday', 'Mutton Vuna Khicuri', 'Rice, Vorta, Fish', 'Rice, Vegitable, Chicken', '30', '60', '60'),
('Wednesday', 'Sliced Bread,Jam/Jelly, One egg/Banana', 'Rice, Vorta, Fish', 'Rice, Vegitable, Chicken', '30', '60', '60');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `std_id` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`std_id`, `msg`, `date`, `time`) VALUES
('', 'Very good student :)', '16/1/2021', '6');

-- --------------------------------------------------------

--
-- Table structure for table `pass_reset`
--

CREATE TABLE `pass_reset` (
  `random` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pass_reset`
--

INSERT INTO `pass_reset` (`random`, `email`) VALUES
('1082953743', 'abirmunna091@gmail.com');

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
('1000', 'MD. ABIR HASAN MUNNA', 'abirmunna091@gmail.com', '3', 'ICT', 'Dhaka', '01710402310', 'B+', 'Alan', '16071213 2380', '100'),
('1001', 'Imran Hossain', 'imranhossainrana.2014@gmail.com', '3', 'ICT', 'Dhaka', '01521106564', 'O+', 'Petra', '16160612 3659', '101'),
('1002', 'Elliott', 'fringilla.porttitor.vulputate@erat.ca', '1', 'Asset Management', 'Hof', '16621211 3325', 'O-', 'Leigh', '16591127 8314', '102'),
('1003', 'Ferdinand', 'sapien@urnaconvallis.ca', '4', 'Research and Development', 'Santa Juana', '16371220 4571', 'O-', 'Mira', '16770519 2198', '103'),
('1004', 'Mason', 'Vivamus@antedictum.co.uk', '2', 'Tech Support', 'Sioux City', '16151114 1309', 'B+', 'Martin', '16051227 9233', '104'),
('1005', 'Dillon', 'eu.accumsan@nascetur.org', '1', 'Research and Development', 'Otranto', '16990420 3610', 'A-', 'Clark', '16360727 5033', '105'),
('1006', 'Tad', 'blandit@euismod.edu', '3', 'Tech Support', 'Grayvoron', '16110613 4982', 'AB+', 'Cole', '16380628 8878', '106'),
('1007', 'Mohammad', 'neque.vitae.semper@acmattisvelit.net', '3', 'Human Resources', 'Georgia', '16960129 0613', 'B+', 'Hasad', '16630419 1437', '107'),
('1008', 'Hashim', 'ipsum.Curabitur@ullamcorpereueuismod.ca', '1', 'Sales and Marketing', 'Bruck an der Mur', '16680215 4093', 'AB+', 'Madeson', '16321218 9496', '108'),
('1009', 'Beck', 'et@egetvariusultrices.com', '2', 'Legal Department', 'Hamme', '16360802 3499', 'B-', 'Maris', '16500909 9812', '109');

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
  ADD UNIQUE KEY `std_id` (`std_id`);

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
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`std_id`);

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
  MODIFY `fee_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
