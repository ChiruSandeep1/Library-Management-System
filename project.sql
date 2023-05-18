-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2020 at 07:56 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.2.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `id` int(10) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(5000) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(10) NOT NULL,
  `books_quantity` varchar(20) NOT NULL,
  `books_availability` varchar(20) NOT NULL,
  `librarian_username` varchar(20) NOT NULL,
  `books_file` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_quantity`, `books_availability`, `librarian_username`, `books_file`) VALUES
(1, 'Theoretical Numerical Analysis', 'https://images-na.ssl-images-amazon.com/images/I/41mHCNwcDJL._SY346_.jpg', 'Kendall Atkinson', 'Dover Publications', '15/03/23', '420', '10', '8', 'chiru', 'file:///C:/Users/chiru/Downloads/Books/Numerical%20Analysis,%209th%20Edition%20-%20PDF%20Room.pdf'),
(2, 'Health Informatics', 'https://th.bing.com/th/id/OIP.T73dlH8PifZSFjWwyWj3twAAAA?w=183&h=234&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'Nancy Staggers', 'Elsevier Mosby', '12/03/23', '480', '15', '15', 'chiru', 'https://openhealthinformatics.org/wp-content/uploads/2020/03/INM337-S1-Introduction-to-Health-Informatics.pdf'),
(3, 'Digital Image Processing', 'https://3.bp.blogspot.com/-qfRj5s17fys/UFa7YXKyKlI/AAAAAAAACII/WXajmSammrA/s640/digital_image_processing_image-41.jpeg', 'Rafael C. Gonzalez', 'Prentice Hall', '20/03/23', '500', '20', '18', 'chiru', 'https://drive.google.com/file/d/1lmCYjFFUMLTSicnLQbZAH_Chmo2GEQrt/view?pli=1'),
(6, 'Artificial Intelligence', 'https://cdn11.bigcommerce.com/s-phtso/images/stencil/2048x2048/products/5742/7135/9781292401133-V1__28260.1625494673.jpg?c=2', ' Peter Norvig', 'Dover Publications', '25/03/23', '420', '5', '3', 'chiru', 'https://www.infobooks.org/pdfview/8329-artificial-intelligence-prakhar-swarup/'),
(7, 'Parallel and Distributed Processing', 'https://images-na.ssl-images-amazon.com/images/I/41%2B-0m1phnL._SY291_BO1,204,203,200_QL40_.jpg', 'Jose Rolim', 'Elsevier Science', '02/04/23', '350', '10', '9', 'chiru', 'https://gacbe.ac.in/pdf/ematerial/18MCS35E-U1.pdf'),
(8, 'The Guest Book: A Novel', 'https://th.bing.com/th/id/OIP.CUaoW8xSk5TnIMwe7YvH6QHaHa?w=208&h=208&c=7&r=0&o=5&dpr=1.3&pid=1.7', 'sarah blake', 'test', '10/5/23', '200', '10', '10', 'chiru', 'books-file/1568430614.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `finezone`
--

CREATE TABLE `finezone` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finezone`
--

INSERT INTO `finezone` (`id`, `username`, `utype`, `email`, `booksname`, `fine`) VALUES
(22, 'pardheev', 'teacher', 'pardheev07@gmail.com', 'Theoretical Numerical Analysis', '50'),
(24, 'chiru22', 'student', 'chirusandeep999@gmail.com', 'Theoretical Numerical Analysis', '50'),
(25, 'aravindh', 'student', 'aravindh2@gmail.com', 'Artificial Intelligence', '50'),
(26, 'chiru22', 'student', 'chirusandeep999@gmail.com', 'Artificial Intelligence', '50'),
(27, 'pavan22', 'student', 'suryapavan999@gmail.com', 'Combinatorics and Graph Theory', '50'),
(28, 'pardheev', 'teacher', 'pardheev07@gmail.com', 'Digital Image Processing', '50'),
(29, 'vinay', 'student', 'vinay87@gmail.com', 'Health Informatics', '50'),
(30, 'yogesh', 'student', 'yogeshwar@gmail.com', 'Health Informatics', '50'),
(31, 'chiru22', 'student', 'chirusandeep999@gmail.com', 'Combinatorics and Graph Theory', '50'),
(32, 'vinay', 'student', 'vinay87@gmail.com', 'Digital Image Processing', '50'),
(33, 'pavan22', 'student', 'suryapavan999@gmail.com', 'Artificial Intelligence', '50');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(10) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(10) NOT NULL,
  `booksreturndate` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book`
--

INSERT INTO `issue_book` (`id`, `utype`, `regno`, `name`, `sem`, `session`, `dept`, `phone`, `email`, `booksname`, `booksissuedate`, `booksreturndate`, `username`) VALUES
(22, 'student', '421248', 'Chiru', '4th', '17/18', 'CSE', '9441858245', 'chirusandeep999@gmail.com', 'Theoretical Numerical Analysis', '05/04/2023', '05/05/2023', 'chiru22'),
(26, 'student', '654385', 'Aravindh', '4th', '14/15', 'BBA', '5214588909', 'aravindh2@gmail.com', 'Parallel and Distributed Processing', '05/04/2023', '05/05/2023', 'aravindh'),
(28, 'student', '421248', 'Chiru', '4th', '17/18', 'CSE', '9441858245', 'chirusandeep999@gmail.com', 'Artificial Intelligence', '31/08/2023', '30/09/2023', 'chiru22'),
(29, 'student', '421206', 'Pardheev', '4th', '14/15', 'CSE', '9566599187', 'pardheev7@gmail.com', 'Digital Image Processing', '14/09/2023', '14/10/2023', 'pardheev');

-- --------------------------------------------------------

--
-- Table structure for table `lib_registration`
--

CREATE TABLE `lib_registration` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lib_registration`
--

INSERT INTO `lib_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`, `photo`, `status`) VALUES
(1, 'chiru sandeep', 'chiru', 'admin', 'chirusandeep99@gmail.com', '9441858245', 'sonadanga 2nd phase', 'upload/1553532571.jpg', ''),
(2, 'pardheev', 'pardheev', 'admin', 'pardheev7@gmail.com', '9566599187', 'khulna, Andhra Pradesh...', 'upload/1571634617.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `rusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `read1` varchar(10) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `susername`, `rusername`, `title`, `msg`, `read1`, `time`) VALUES
(10, 'pardheev', 'vinay', 'test', 'good afternoon\r\n', 'y', '2023-09-07 11:49:45am'),
(11, 'pardheev', 'vinay', 'testing message', 'Hi mamun ! Whats up?', 'y', '2023-09-07 03:53:07pm'),
(12, 'pardheev', 'yogesh', 'last', 'dfsdf', 'y', '2023-09-07 03:56:15pm'),
(13, 'pardheev', 'vinay', 'test', 'Hi vinay!', 'y', '2023-09-10 06:35:04pm'),
(14, 'pardheev', 'yogesh', 'check', 'is it ok', 'y', '2023-09-10 06:38:07pm'),
(15, 'pardheev', 'yogesh', 'ttttt', 'mmnbvvv', 'y', '2023-09-14 10:51:44am');

-- --------------------------------------------------------

--
-- Table structure for table `request_books`
--

CREATE TABLE `request_books` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `bname` varchar(50) NOT NULL,
  `burl` varchar(500) NOT NULL,
  `read1` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_books`
--

INSERT INTO `request_books` (`id`, `name`, `username`, `email`, `utype`, `bname`, `burl`, `read1`) VALUES
(1, 'Pardheev', 'pardheev', 'pardheev7@gmail.com', 'student', 'Digital Logic Design', 'https://www.oreilly.com/library/view/digital-logic-design/9780750645829/', 'yes'),
(2, 'Pardheev', 'pardheev', 'pardheev7@gmail.com', 'student', 'Outliers', 'https://www.goodreads.com/book/show/3228917-outliers', 'yes'),
(5, 'Pardheev', 'pardheev', 'pardheev7@gmail.com', 'student', 'Medical Medium', 'https://www.medicalmedium.com/', 'yes'),
(6, 'Pardheev', 'pardheev', 'pardheev7@gmail.com', 'student', 'mmmmm', 'https://www.cricbuzz.com/', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `std_registration`
--

CREATE TABLE `std_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `session` varchar(5) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std_registration`
--

INSERT INTO `std_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `sem`, `dept`, `session`, `regno`, `address`, `utype`, `photo`, `status`, `vkey`, `verified`) VALUES
(4, 'Chiru', 'chiru22', '1234567', 'chirusandeep999@gmail.com', '9441858245', '4th', 'CSE', '17/18', '421248', 'kakinada', 'student', 'upload/avatar.jpg', 'yes', 'dfdsfsdf', 'yes'),
(5, 'Pardheev', 'pardheev', '1234567', 'pardheev7@gmail.com', '9566599187', '4th', 'CSE', '14/15', '421206', 'sonadanga 2nd phase', 'student', 'upload/1568958905.jpg', 'yes', 'gfhtr4ghtrgfbvf', 'yes'),
(38, 'Aravindh', 'aravindh', '1234567', 'aravindh2@gmail.com', '5214588909', '4th', 'BBA', '14/15', '654385', 'sonadanga', 'student', 'upload/avatar.jpg', 'yes', '436yhgfjhfdstref', 'yes'),
(39, 'Premsai', 'prem', '1234567', 'premsai62@gmail.com', '7854254526', '8th', 'CSE', '14/15', '621262', 'tanuku', 'student', 'upload/avatar.jpg', 'yes', 'dsrfewtgfdgvd', 'yes'),
(49, 'Vinay', 'vinay', '1234567', 'vinay87@gmail.com', '4785225897', '4th', 'CSE', '14/15', '421145', 'vijayawada', 'student', 'upload/avatar.jpg', 'yes', 'a9e5dcd08c06d04ea40ed7adc59b8a1e', 'yes'),
(51, 'Yogeshwar', 'yogesh', '1234567', 'yogeshwar@gmail.com', '9123456877', '4th', 'CSE', '14/15', '421172', 'khammam', 'student', 'upload/avatar.jpg', 'yes', 'bee5551ae6dbf70b784ed4dd0966c3bd', 'yes'),
(52, 'sadia', 'sadia2', 'sadia222', 'loveya3377@gmail.com', '8124555241', '4th', 'CSE', '14/15', '421247', 'kakinada', 'student', 'upload/avatar.jpg', 'yes', 'c79857de008257e8ded4b1bfaeba6f1d', 'yes'),
(53, 'Sharvan', 'sharvan2', '1234567', 'sharvan43@gmail.com', '9877686722', '4th', 'CSE', '14/15', '421116', 'vijayawada', 'student', 'upload/avatar.jpg', 'yes', '071703501c47bf0db6a04d6431935496', 'yes'),
(54, 'Pavan', 'pavan22', '1234567', 'suryapavan999@gmail.com', '8897797926', '4th', 'CSE', '14/15', '421275', 'kakinada', 'student', 'upload/avatar.jpg', 'yes', '6266417382abff9b2cae55c1b617dcd6', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t_issuebook`
--

CREATE TABLE `t_issuebook` (
  `id` int(10) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lecturer` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(20) NOT NULL,
  `booksreturndate` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_issuebook`
--

INSERT INTO `t_issuebook` (`id`, `utype`, `idno`, `name`, `lecturer`, `phone`, `email`, `booksname`, `booksissuedate`, `booksreturndate`, `username`) VALUES
(17, 'teacher', '1001', 'Pardheev', 'CSE', '9876599977', 'pardheev07@gmail.com', 'Theoretical Numerical Analysis', '05/04/2023', '05/05/2023', 'pardheev');

-- --------------------------------------------------------

--
-- Table structure for table `t_registration`
--

CREATE TABLE `t_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lecturer` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_registration`
--

INSERT INTO `t_registration` (`id`, `name`, `username`, `password`, `lecturer`, `email`, `phone`, `idno`, `address`, `utype`, `photo`, `status`, `vkey`, `verified`) VALUES
('11','Pardheev','pardheev','1234567','CSE','pardheev07@gmail.com','9876599977','1001','vijayawada','teacher','upload/1568958905.jpg','yes','gfhtr4ghtrgfbvf','yes'),
('21','Chiru','chiru','1234567','CSE','chirusandeep99@gmail.com','9441858245','1111','kakinada','teacher','upload/avatar.jpg','yes','dfdsfsdf','yes')
--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finezone`
--
ALTER TABLE `finezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lib_registration`
--
ALTER TABLE `lib_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_books`
--
ALTER TABLE `request_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_registration`
--
ALTER TABLE `std_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_registration`
--
ALTER TABLE `t_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_book`
--
ALTER TABLE `add_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finezone`
--
ALTER TABLE `finezone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lib_registration`
--
ALTER TABLE `lib_registration`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `request_books`
--
ALTER TABLE `request_books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `std_registration`
--
ALTER TABLE `std_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `t_registration`
--
ALTER TABLE `t_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `add_book`
  MODIFY `books_availability` int(10) NOT NULL AUTO_DECREMENT, AUTO_DECREMENT=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
