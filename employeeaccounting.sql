-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2023 at 04:49 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employeeaccounting`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `ID` int(11) NOT NULL,
  `Наименование` varchar(100) NOT NULL,
  `Головное подразделение` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`ID`, `Наименование`, `Головное подразделение`) VALUES
(1, 'Управление', ''),
(2, 'ТП', 'АСУ'),
(3, 'АСУ', 'Управление'),
(4, 'Отдел продаж', 'Управление');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `ФИО` varchar(100) NOT NULL,
  `Табельный номер` varchar(10) NOT NULL,
  `Должность` varchar(100) NOT NULL,
  `Подразделение` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Телефон` varchar(60) NOT NULL,
  `Дата приема` date NOT NULL,
  `Дата увольнения` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `ФИО`, `Табельный номер`, `Должность`, `Подразделение`, `Email`, `Телефон`, `Дата приема`, `Дата увольнения`) VALUES
(1, 'Титова Евангелина Михайловна', '62534', 'Директор управления', 'Управление', 'anicolao@hotmail.com', '37(92)708-19-48', '2009-02-11', NULL),
(2, 'Дорохов Артём Иванович', '26749', 'Главный бухгалтер', 'Управление', 'tmccarth@gmail.com', '5(633)817-20-09', '2013-12-22', NULL),
(3, 'Дорохов Артём Иванович', '26749', 'Главный бухгалтер', 'Управление', 'tmccarth@gmail.com', '5(633)817-20-09', '2013-12-22', NULL),
(4, 'Миронова Екатерина Марковна', '54674', 'Бухгалтер', 'Управление', 'quantaman@outlook.com', '4(67)870-75-05', '2007-10-29', NULL),
(5, 'Смирнова Александра Богдановна', '21687', 'Руководитель подразделения', 'ТП', 'smartfart@optonline.net', '904(50)944-76-20', '2007-06-29', NULL),
(6, 'Сафонова Елизавета Егоровна', '25469', 'Аналитик', 'ТП', 'nighthawk@optonline.net', '206(1349)298-70-44', '2011-12-13', NULL),
(7, 'Осипова Виктория Александровна', '56749', 'Офис-менеджер', 'Управление', 'rfisher@verizon.net', '4(1009)437-05-87', '2005-08-19', NULL),
(8, 'Смирнова Ева Данииловна', '9658', 'Системный администратор', 'АСУ', 'stakasa@icloud.com', '845(7089)870-82-49', '2005-03-17', '2008-07-16'),
(9, 'Орлов Артём Глебович', '96587', 'Руководитель подразделения', 'АСУ', 'research@att.net', '407(979)499-37-72', '2010-01-18', NULL),
(10, 'Гончаров Марк Маркович', '25468', 'Программист', 'АСУ', 'ntegrity@att.net', '3(93)869-67-88', '2006-06-19', NULL),
(11, 'Никитин Александр Максимович', '21687', 'Программист', 'АСУ', 'smartfart@aol.com', '7(683)709-05-99', '2022-08-19', NULL),
(12, 'Котов Руслан Александрович', '54987', 'Руководитель подразделения', 'Отдел продаж', 'reeds@att.net', '771(0384)704-47-23', '2019-08-02', NULL),
(13, 'Андреев Александр Михайлович', '95486', 'Менеджер про продажам', 'Отдел продаж', 'kingjoshi@icloud.com', '096(2752)686-67-43', '2020-04-16', NULL),
(14, 'Усов Гордей Миронович', '3657', 'Менеджер про продажам', 'Отдел продаж', 'trygstad@optonline.net', '342(86)904-73-77', '2019-05-18', NULL),
(15, 'Черняев Эрик Максимович', '9584', 'Менеджер про продажам', 'Отдел продаж', 'sequin@aol.com', '63(90)175-04-17', '2003-12-14', '2009-02-28'),
(23, 'Титова Евангелина Михайловна', '62534', 'Директор управления', 'Управление', 'anicolao@hotmail.com', '37(92)708-19-48', '2023-10-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `ID` int(10) NOT NULL,
  `Категория` varchar(100) NOT NULL,
  `ФИО` varchar(100) NOT NULL,
  `Табельный номер` varchar(100) NOT NULL,
  `Должность` varchar(100) NOT NULL,
  `Подразделение` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Телефон` varchar(100) NOT NULL,
  `Дата приема` date NOT NULL,
  `Дата увольнения` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`ID`, `Категория`, `ФИО`, `Табельный номер`, `Должность`, `Подразделение`, `Email`, `Телефон`, `Дата приема`, `Дата увольнения`) VALUES
(1, 'Зачисление в штат', 'Титова Евангелина Михайловна', '62534', 'Директор управления', 'Управление', 'anicolao@hotmail.com', '37(92)708-19-48', '2023-10-14', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
