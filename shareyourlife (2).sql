-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2021 at 06:05 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shareyourlife`
--

-- --------------------------------------------------------

--
-- Table structure for table `adddoc`
--

CREATE TABLE IF NOT EXISTS `adddoc` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_files` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `qualification` varchar(300) NOT NULL,
  `department` varchar(100) NOT NULL,
  `spacialization` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `files` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cnf_password` varchar(100) NOT NULL,
  `g_id` varchar(100) NOT NULL,
  `hos_id` varchar(100) NOT NULL,
  `hos_name` varchar(100) NOT NULL,
  `forenoon` varchar(50) NOT NULL,
  `fore_token` int(50) NOT NULL,
  `afternoon` varchar(50) NOT NULL,
  `after_token` int(50) NOT NULL,
  PRIMARY KEY (`id`,`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `adddoc`
--

INSERT INTO `adddoc` (`id`, `img_files`, `name`, `email`, `age`, `phone`, `qualification`, `department`, `spacialization`, `date`, `salary`, `designation`, `files`, `password`, `cnf_password`, `g_id`, `hos_id`, `hos_name`, `forenoon`, `fore_token`, `afternoon`, `after_token`) VALUES
(1, 'Megha T B_zbFliEz.jpg', 'roy mathew', 'meghatb@gmail.com', '56', '8089186044', 'Md. california', 'Cardiology', 'In cardiac Science', '2019-10-24', '100000', 'doctor', 'None', 'Roy10000', 'Roy10000', '910510', '429475', 'renai Medicity', 'Forenoon', 10, 'None', 0),
(2, 'Megha photo 40kb_9c1kUld.jpg', 'Teneena james', 'meghatb@gmail.com', '23', '8089186044', 'Md. california', 'Gynecology', 'aaa', '2019-10-25', '100000', 'doctor', 'None', 'Teneena1', 'Teneena1', '379411', '429475', 'renai Medicity', 'None', 0, 'Afternoon', 10),
(3, 'Megha T B edited.jpg', 'priya jose', 'meghatb@gmail.com', '24', '8089186044', 'Md. california', 'Pediatrics Department', 'In child Physical ', '2019-10-25', '100000', 'doctor', 'None', 'Priya100', 'Priya100', '883627', '429475', 'renai Medicity', 'Forenoon', 15, 'None', 0),
(4, 'seq hospital_a9lCqmJ.jpg', 'Meenu ', 'meghatb@gmail.com', '23', '8089186044', 'Md. california', 'Cardiology', 'In cardiac Science', '2019-11-07', '100000', 'doctor', 'None', 'Sharija100', 'Sharija100', '369841', '429475', 'renai Medicity', 'Forenoon', 3, 'Afternoon', 10),
(5, 'aaaaaad_mVCXYei.png', 'miya joy', 'miya@gmail.com', '29', '5245632568', 'mD ', 'Others', 'ORTHOLOGY', '1993-01-16', '25000', 'doctor', '', 'mIYA@123', 'mIYA@123', '409735', '569182', 'aswini', 'Forenoon', 123, 'None', 0);

-- --------------------------------------------------------

--
-- Table structure for table `adddpt`
--

CREATE TABLE IF NOT EXISTS `adddpt` (
  `sl_no` int(11) NOT NULL AUTO_INCREMENT,
  `dptname` varchar(100) NOT NULL,
  `dptid` varchar(20) NOT NULL,
  `dpthead` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `drlist` varchar(300) NOT NULL,
  `details` varchar(500) NOT NULL,
  `hos_id` varchar(100) NOT NULL,
  `hos_name` varchar(100) NOT NULL,
  PRIMARY KEY (`sl_no`,`hos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `adddpt`
--

INSERT INTO `adddpt` (`sl_no`, `dptname`, `dptid`, `dpthead`, `phone`, `drlist`, `details`, `hos_id`, `hos_name`) VALUES
(1, 'Cardiology', '1030', 'roy mathew', '8089186044', 'raj, thomas', 'Cardiology  is a branch of medicine that deals with the disorders of the heart as well as some parts of the circulatory system. The field includes medical diagnosis and treatment of congenital heart defects, coronary artery disease, heart failure, valvular heart disease and electrophysiology. Physicians who specialize in this field of medicine are called cardiologists, a specialty of internal medicine. Pediatric cardiologists are pediatricians who specialize in cardiology. Physicians who special', '429475', 'renai Medicity'),
(2, 'Pediatrics Department', '1189', 'Beneeta ', '8089186044', 'raj, aneeta', 'Pediatrics (also spelled paediatrics or pædiatrics) is the branch of medicine that involves the medical care of infants, children, and adolescents. The American Academy of Pediatrics recommends people be under pediatric care up to the age of 21,[1] thought usually only minors under 18 are required to be under pediatric care. A medical doctor who specializes in this area is known as a pediatrician, or paediatrician. The word pediatrics and its cognates mean "healer of children"; they derive from ', '429475', 'renai Medicity'),
(3, 'Gynecology', '2467', 'sumesh', '8089186044', 'Radha Madhav, rani', 'Investigates and treats problems relating to the female urinary tract and reproductive organs, such as Endometriosis, infertility and incontinence.', '429475', 'renai Medicity'),
(4, 'neurology', '4219', 'umadevi', '8957841235', 'jerry\r\nhima\r\nmanu\r\nram', 'jhgshjdghj', '600667', 'lakeshore'),
(5, 'radiology', '6241', 'smitha', '7456854123', 'Yardley joy\r\nmini jose', 'bnvbvb', '501886', 'heart hospital'),
(6, 'ENT', '6733', 'sumi', '8745123698', 'finu\r\nsumi\r\ngokul\r\nsiva', 'Ear,nose,throat', '429475', 'renai Medicity');

-- --------------------------------------------------------

--
-- Table structure for table `addpat`
--

CREATE TABLE IF NOT EXISTS `addpat` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `votersid` varchar(100) NOT NULL,
  `adharno` varchar(100) NOT NULL,
  `licno` varchar(100) NOT NULL,
  `blood` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cnf_password` varchar(100) NOT NULL,
  `g_id` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `addpat`
--

INSERT INTO `addpat` (`id`, `img`, `name`, `email`, `age`, `gender`, `dob`, `phone`, `address`, `votersid`, `adharno`, `licno`, `blood`, `password`, `cnf_password`, `g_id`, `designation`) VALUES
(1, 'Megha photo 40kb_4ph6D1z.jpg', 'celina suman paul', 'meghatb@gmail.com', '25', 'Female', '2019-10-25', '8089186044', 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '2423', '2384394593', '34923u', 'A+', 'Suman100', 'Suman100', '253825', 'patient'),
(2, 'Best-love-profile-picture-Images-2-300x265.jpg', 'Dilraz', 'dilraz2026@gmail.com', '23', 'Male', '1998-10-01', '8089186044', 'st. monica , wellington, new zealand', '33781329', '12345678900', '23633ry8', 'O+', 'DILraz143', 'DILraz143', '296605', 'patient'),
(3, 'Megha T B edited_cfZU9J1.jpg', 'Dilsha M Deleep', 'dilshamdeleep20@gmail.com', '23', 'Female', '1995-12-04', '8089186044', 'Thembadath House, thaikkattukara(p.o), Ambattukavu, Aluva\r\n', '33781329', '1223673839', '23633ry8', 'A+', 'Dilsha10', 'Dilsha10', '595228', 'patient'),
(4, 'Megha T B edited_CQ3LxXC.jpg', 'lakshmi', 'meghatb@gmail.com', '23', 'Female', '2019-10-02', '8089186044', 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '33781329', '2356287', '23633ry8', 'A+', 'Lakshmi1', 'Lakshmi1', '631585', 'patient'),
(5, 'images (2).jpg', 'divya', 'meghatb@gmail.com', '23', 'Female', '2019-10-30', '8089186044', 'thembadath house, thaikkattukara(p.o), ambattukavu, aluva', '33781329', '276192', '34923u', 'A+', 'Divya100', 'Divya100', '721765', 'patient'),
(6, 'Megha T B crop_y9CV4Am.jpg', 'Aneeja', 'meghatb@gmail.com', '23', 'Female', '2019-10-29', '8089186044', 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '33781329', '576345729', '34923u', 'A+', 'Aneeja10', 'Aneeja10', '885271', 'patient'),
(7, 'aaaaaad.png', 'kiran', 'kiran@gmail.com', '21', 'Male', '2015-10-13', '6238666038', 'hjjj', 'hjshshh', '754896583652', '4552', 'A+', 'Kiran@123', 'Kiran@123', '414514', 'patient'),
(8, 'download (1).jfif', 'lilly', 'Lilly@123', '12', 'Female', '2017-01-15', '9658965845', 'ssdsd', '451245', '546852145698', '6589', 'A+', 'Lilly@123', 'Lilly@123', '168667', 'patient'),
(9, 'tomatoes-close-up.jpg', 'yadu', 'yadu@gmail.com', '18', 'Male', '2012-10-12', '8745969854', 'ffffvvvvff', '784589', '754896589874', '566', 'A+', 'Yadu@1234', 'Yadu@1234', '341410', 'patient'),
(10, 'download.jfif', 'dam', 'dam@d.com', '21', 'Female', '2020-01-16', '6523698546', 'kripa', '784589', '754896583652', '6589', 'A-', 'Asd12345', 'Asd12345', '796162', 'patient'),
(11, 'aaaaaad_5oRYP4N.png', 'vimu', 'nikhilatr1997@gmail.com', '21', 'Female', '2020-02-16', '6238666038', 'kll', '784589', '754896583652', '6589', 'B+', 'ass12345S', 'ass12345S', '980629', 'patient'),
(12, 'aaaaaad_LhNMhAK.png', 'tinu', 'tinu@gmail.com', '15', 'Female', '2017-10-13', '6954851245', 'fgfgggh', '123', '123', '54', 'A-', 'Tinu@123', 'Tinu@123', '722023', 'patient'),
(13, 'Best-love-profile-picture-Images-2-300x265_ZOfwtT6.jpg', 'ramu', 'ramu@gmail.com', '45', 'Male', '2021-02-13', '9984575858', 'kripa', '12345678945', '4456987', '0', 'A+', 'Ramu@12345', 'Ramu@12345', '265921', 'patient'),
(14, 'Best-love-profile-picture-Images-2-300x265_1raMrFQ.jpg', 'sumi', 'sumi@gmail.com', '21', 'Female', '2021-02-13', '9685745487', 'kkm', '123456789', '987456321', '0', 'O+', 'Sumi@123', 'Sumi@123', '331399', 'patient'),
(15, 'Best-love-profile-picture-Images-2-300x265_ppyHQMT.jpg', 'gokul', 'gokul@gmail.com', '20', 'Male', '2021-02-13', '9865321478', 'kkm', '123456789', '987654321', '124578963', 'A+', 'Gokul@123', 'Gokul@123', '107329', 'patient'),
(16, 'Best-love-profile-picture-Images-2-300x265_HYDroyz.jpg', 'gokul', 'gokul2@gmail.com', '20', 'Male', '2021-02-14', '9874563214', 'kkm', '123456789', '987654321', '456789123', 'A+', 'Gokul@123', 'Gokul@123', '341968', 'patient');

-- --------------------------------------------------------

--
-- Table structure for table `addstaff`
--

CREATE TABLE IF NOT EXISTS `addstaff` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `img_files` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `department` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `files` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cnf_password` varchar(100) NOT NULL,
  `g_id` varchar(100) NOT NULL,
  `hos_id` varchar(100) NOT NULL,
  `hos_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `addstaff`
--

INSERT INTO `addstaff` (`id`, `img_files`, `name`, `email`, `age`, `phone`, `department`, `date`, `designation`, `salary`, `files`, `password`, `cnf_password`, `g_id`, `hos_id`, `hos_name`) VALUES
(1, 'Megha T B crop.jpg', 'Anu Joy', 'meghatb@gmail.com', '23', '8089186044', 'Gynecology', '2019-10-24', 'nurse', '10000', 'None', 'Anu10000', 'Anu10000', '210004', '429475', 'renai Medicity'),
(2, 'Megha T B_sfW5p6T.jpg', 'Meenu ', 'meghatb@gmail.com', '23', '8089186044', 'Cardiology', '2019-10-24', 'staff', '100000', 'None', 'Meenu100', 'Meenu100', '465376', '429475', 'renai Medicity');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE IF NOT EXISTS `camp` (
  `campname` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Dis` varchar(500) NOT NULL,
  `Hospital` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`campname`, `Location`, `Dis`, `Hospital`, `date`) VALUES
('Blood', 'Ernakula,', 'no', '429475', '2021-02-13');

-- --------------------------------------------------------

--
-- Table structure for table `dr_prescribe`
--

CREATE TABLE IF NOT EXISTS `dr_prescribe` (
  `presc_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pt_id` varchar(100) NOT NULL,
  `date_from` varchar(100) NOT NULL,
  `disease` varchar(200) NOT NULL,
  `status` varchar(500) NOT NULL,
  `med1` varchar(100) NOT NULL,
  `day1` varchar(20) NOT NULL,
  `test` varchar(500) NOT NULL,
  `dr_id` varchar(100) NOT NULL,
  `hos_id` varchar(100) NOT NULL,
  PRIMARY KEY (`presc_id`,`pt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `dr_prescribe`
--

INSERT INTO `dr_prescribe` (`presc_id`, `name`, `pt_id`, `date_from`, `disease`, `status`, `med1`, `day1`, `test`, `dr_id`, `hos_id`) VALUES
(1, 'Dilsha M Deleep', '595228', '2019-10-25', 'Feaver', '100 degree celcius', '', '', '', '910510', '429475'),
(2, 'Dilraz', '296605', '2019-11-02', 'Fever', 'Continues fever from one week', '', '', '', '910510', '429475');

-- --------------------------------------------------------

--
-- Table structure for table `dr_suggest`
--

CREATE TABLE IF NOT EXISTS `dr_suggest` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dr_id` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`,`dr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dr_suggest`
--

INSERT INTO `dr_suggest` (`id`, `name`, `dr_id`, `phone`, `email`, `subject`, `message`) VALUES
(1, 'Meenu ', '465376', '8089186044', 'meghatb@gmail.com', 'personal Matter', 'xcvddsvsdfb');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `hos_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `g_id`, `name`, `password`, `designation`, `hos_id`) VALUES
(3, '429475', 'renai Medicity', 'RENai100', 'hospital', 'NULL'),
(4, '607891', 'PVS Memmorial Hospital', 'Pvsmemmorial100', 'hospital', 'NULL'),
(5, '354265', 'aaa', 'Aaaaaa100', 'hospital', 'NULL'),
(6, '910510', 'Roy Mathew', 'Roy10000', 'doctor', '429475'),
(7, '379411', 'Teneena james', 'Teneena1', 'doctor', '429475'),
(8, '883627', 'priya jose', 'Priya100', 'doctor', '429475'),
(9, '210004', 'Anu Joy', 'Anu10000', 'nurse', '429475'),
(10, '465376', 'Meenu ', 'Meenu100', 'staff', '429475'),
(11, '595228', 'Dilsha M Deleep', 'Dilsha10', 'patient', 'null'),
(12, '253825', 'celina suman paul', 'Suman100', 'patient', 'NULL'),
(16, '885271', 'Aneeja', 'Aneeja10', 'patient', 'NULL'),
(17, '631585', 'lakshmi', 'Lakshmi1', 'patient', 'NULL'),
(18, '721765', 'divya', 'Divya100', 'patient', 'NULL'),
(19, '296605', 'Dilraz', 'DILraz143', 'patient', 'NULL'),
(20, '377530', 'appolo', 'Appolo100', 'hospital', 'NULL'),
(21, '621658', 'appolo', 'Appolo100', 'hospital', 'NULL'),
(22, '369841', 'Meenu ', 'Sharija100', 'doctor', '429475'),
(23, '123520', 'lakeshore', 'Lake@123', 'hospital', 'NULL'),
(24, '600667', 'lakeshore', 'Lake@123', 'hospital', 'NULL'),
(25, '265519', 'daya', 'Daya@123', 'hospital', 'NULL'),
(26, '414514', 'kiran', 'Kiran@123', 'patient', 'NULL'),
(27, '168667', 'lilly', 'Lilly@123', 'patient', 'NULL'),
(28, '341410', 'yadu', 'Yadu@1234', 'patient', 'NULL'),
(29, '796162', 'dam', 'Asd12345', 'patient', 'NULL'),
(30, '980629', 'vimu', 'ass12345S', 'patient', 'NULL'),
(31, '569182', 'aswini', 'Aswini@123', 'hospital', 'NULL'),
(32, '409735', 'miya joy', 'mIYA@123', 'doctor', '569182'),
(33, '722023', 'tinu', 'Tinu@123', 'patient', 'null'),
(34, '501886', 'heart hospital', 'Heart@123', 'hospital', 'NULL'),
(35, '314215', 'smile', 'Smile@123', 'hospital', 'NULL'),
(36, '492733', 'smile', 'Smile@123', 'hospital', 'NULL'),
(37, '951373', 'kims', 'Kims@123', 'hospital', 'NULL'),
(38, '816505', 'kims', 'Kims@123', 'hospital', 'NULL'),
(39, '676267', 'jubily', 'Jub@11223', 'hospital', 'NULL'),
(40, '265921', 'ramu', 'Ramu@12345', 'patient', 'NULL'),
(41, '331399', 'sumi', 'Sumi@123', 'patient', 'NULL'),
(42, '107329', 'gokul', 'Gokul@123', 'patient', 'null'),
(43, '341968', 'gokul', 'Gokul@123', 'patient', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
  `med_id` int(100) NOT NULL AUTO_INCREMENT,
  `presc_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `forenoon` varchar(20) NOT NULL,
  `afternoon` varchar(20) NOT NULL,
  `timing` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  PRIMARY KEY (`med_id`,`presc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`med_id`, `presc_id`, `name`, `forenoon`, `afternoon`, `timing`, `review`) VALUES
(1, '1', 'Dolo 600 mg', 'Forenoon', 'Afternoon', '1-1-1', 'for 30 days'),
(2, '2', 'Citrizin', 'Forenoon', 'Afternoon', '1-1-1', 'one month'),
(3, '2', 'Dolo', '', '', '1-0-1', 'foe 15 days');

-- --------------------------------------------------------

--
-- Table structure for table `organdonation`
--

CREATE TABLE IF NOT EXISTS `organdonation` (
  `gin` int(11) NOT NULL,
  `organ` varchar(50) NOT NULL,
  `bgp` varchar(15) NOT NULL,
  `desiesname` varchar(50) NOT NULL,
  `med` varchar(50) NOT NULL,
  `dia` varchar(10) NOT NULL,
  `hiv` varchar(10) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organdonation`
--


-- --------------------------------------------------------

--
-- Table structure for table `organrequest`
--

CREATE TABLE IF NOT EXISTS `organrequest` (
  `docid` int(11) NOT NULL,
  `hosid` int(11) NOT NULL,
  `bgp` varchar(15) NOT NULL,
  `des` varchar(50) NOT NULL,
  `org` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `availdate` date NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organrequest`
--

INSERT INTO `organrequest` (`docid`, `hosid`, `bgp`, `des`, `org`, `status`, `date`, `availdate`, `pid`) VALUES
(883627, 0, 'A+', 'no', 'EYE', 'donated', '0000-00-00', '0000-00-00', 595228),
(910510, 0, 'A+', 'no', 'EYE', 'donated', '0000-00-00', '0000-00-00', 595228),
(910510, 0, 'O+', 'no', 'no', 'request', '2021-02-13', '2021-02-13', 0),
(910510, 0, 'O+', 'no', 'no', 'donated', '2021-02-13', '2021-02-13', 331399);

-- --------------------------------------------------------

--
-- Table structure for table `org_addorgan`
--

CREATE TABLE IF NOT EXISTS `org_addorgan` (
  `docid` int(11) NOT NULL,
  `hosid` int(11) NOT NULL,
  `gin` int(11) NOT NULL,
  `bgp` varchar(10) NOT NULL,
  `organ` varchar(50) NOT NULL,
  `dis` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_addorgan`
--


-- --------------------------------------------------------

--
-- Table structure for table `pt_book`
--

CREATE TABLE IF NOT EXISTS `pt_book` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `curr_dt` datetime NOT NULL,
  `department` varchar(100) NOT NULL,
  `doctor_id` varchar(100) NOT NULL,
  `hospital_id` varchar(100) NOT NULL,
  `patient` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `patient_id` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `token` varchar(100) NOT NULL,
  `timing` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`patient_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `pt_book`
--

INSERT INTO `pt_book` (`id`, `curr_dt`, `department`, `doctor_id`, `hospital_id`, `patient`, `date`, `name`, `patient_id`, `phone`, `token`, `timing`) VALUES
(1, '2019-10-25 00:00:00', 'Cardiology', '910510', '429475', 'New Patient', '2019-10-25', 'Dilsha M Deleep', '595228', '8089186044', '1', ''),
(2, '2019-10-25 00:00:00', 'Cardiology', '910510', '429475', 'Returning Patient', '2019-10-25', 'celina suman paul', '253825', '8089186044', '2', ''),
(3, '2019-10-26 00:00:00', 'Pediatrics Department', '883627', '429475', 'New Patient', '2019-10-27', 'Meenu ', '465376', '8089186044', '1', ''),
(4, '2019-11-02 00:00:00', 'Cardiology', '910510', '429475', 'Returning Patient', '2019-11-15', 'Dilsha M Deleep', '595228', '7894756123', '1', ''),
(5, '2019-11-06 00:00:00', 'Cardiology', '910510', '429475', 'Returning Patient', '2019-11-07', 'Dilsha M Deleep', '595228', '8089186044', '1', 'Forenoon'),
(6, '2019-11-06 00:00:00', 'Pediatrics Department', '883627', '429475', 'New Patient', '2019-11-07', 'Dilsha M Deleep', '595228', '8089186044', '1', 'Forenoon'),
(7, '2019-11-06 00:00:00', 'Cardiology', '369841', '429475', 'New Patient', '2019-11-08', 'Dilsha M Deleep', '595228', '8089186044', '1', 'Forenoon'),
(8, '2019-11-06 00:00:00', 'Cardiology', '369841', '429475', 'New Patient', '2019-11-08', 'Aneeja', '885271', '8089186044', '2', 'Forenoon'),
(11, '2019-11-06 00:00:00', 'Cardiology', '369841', '429475', 'New Patient', '2019-11-08', 'lakshmi', '631585', '8089186044', '3', 'Forenoon'),
(12, '2019-11-06 00:00:00', 'Cardiology', '369841', '429475', 'Returning Patient', '2019-11-08', 'lakshmi', '631585', '8089186044', '1', 'Afternoon'),
(13, '2020-01-16 00:00:00', 'Pediatrics Department', '883627', '429475', 'New Patient', '2020-12-14', 'vimu', '980629', '6238666038', '1', 'Forenoon'),
(14, '2020-01-16 00:00:00', 'Cardiology', '910510', '429475', 'New Patient', '2020-01-17', 'tinu', '722023', '6238666038', '1', 'Forenoon'),
(15, '2020-01-16 00:00:00', 'neurology', 'select', '600667', 'New Patient', '2020-11-14', 'tinu', '722023', '9658123456', '', 'Forenoon'),
(16, '2021-01-08 00:00:00', 'Cardiology', '910510', '429475', 'New Patient', '2021-01-09', 'tinu', '722023', '8086916927', '1', 'Forenoon'),
(17, '2021-02-12 00:00:00', 'Cardiology', '910510', '429475', 'New Patient', '2021-02-14', 'sumi', '331399', '9874123654', '1', 'Forenoon');

-- --------------------------------------------------------

--
-- Table structure for table `pt_contact`
--

CREATE TABLE IF NOT EXISTS `pt_contact` (
  `sl_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`sl_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `pt_contact`
--


-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `hos_id` int(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `site` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cnf_password` varchar(20) NOT NULL,
  `g_id` int(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `hos_id`, `address`, `phone`, `site`, `password`, `cnf_password`, `g_id`, `designation`) VALUES
(3, 'Renai Medicity', 276398, 'Post Box No. 2259, Mamangalam, Palarivattom. P O, Cochin, Kerala, India – 682 025', '8089186044', 'meghatb@gmail.com', 'RENai100', 'RENai100', 429475, 'hospital'),
(4, 'PVS Memmorial Hospital', 3894, 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '8089186044', 'meghatb@gmail.com', 'Pvsmemmorial100', 'Pvsmemmorial100', 607891, 'hospital'),
(5, 'appolo', 190123, 'appolo hospital , chennai', '8089186044', 'meghatb@gmail.com', 'Appolo100', 'Appolo100', 377530, 'hospital'),
(6, 'appolo', 190123, 'appolo hospital , chennai', '8089186044', 'meghatb@gmail.com', 'Appolo100', 'Appolo100', 621658, 'hospital'),
(7, 'lakeshore', 123, 'klfkjgfkjgkf', '6589521456', 'kjjj@gmail.com', 'Lake@123', 'Lake@123', 123520, 'hospital'),
(8, 'lakeshore', 123, 'klfkjgfkjgkf', '6589521456', 'kjjj@gmail.com', 'Lake@123', 'Lake@123', 600667, 'hospital'),
(9, 'daya', 232, 'hhhghg', '6523698546', 'daya@gmail.com', 'Daya@123', 'Daya@123', 265519, 'hospital'),
(10, 'aswini', 457, 'kdjdhh', '1542587452', 'kjjj@gmail.com', 'Aswini@123', 'Aswini@123', 569182, 'hospital'),
(11, 'heart hospital', 543, 'Heart hospital,palace road,Thrissur', '7589321458', 'heart11@gmail.com', 'Heart@123', 'Heart@123', 501886, 'hospital'),
(12, 'smile', 524, 'dsfs', '4521896547', 'fff@gmal.com', 'Smile@123', 'Smile@123', 314215, 'hospital'),
(13, 'smile', 784, 'hghgh', '4521896547', 'fff@gmal.com', 'Smile@123', 'Smile@123', 492733, 'hospital'),
(14, 'kims', 452, 'sdsd', '4568956231', 'jhhgjh@gmail.com', 'Kims@123', 'Kims@123', 951373, 'hospital'),
(15, 'kims', 123, 'dfdf', '4568956231', 'jhhgjh@gmail.com', 'Kims@123', 'Kims@123', 816505, 'hospital'),
(16, 'jubily', 2, 'thrissur', '9987458578', 'jub@j.com', 'Jub@11223', 'Jub@11223', 676267, 'hospital');

-- --------------------------------------------------------

--
-- Table structure for table `relative`
--

CREATE TABLE IF NOT EXISTS `relative` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(100) NOT NULL,
  `relative1` varchar(100) NOT NULL,
  `relation1` varchar(100) NOT NULL,
  `address1` varchar(200) NOT NULL,
  `phone1` varchar(100) NOT NULL,
  `relative2` varchar(100) NOT NULL,
  `relation2` varchar(100) NOT NULL,
  `address2` varchar(200) NOT NULL,
  `phone2` varchar(100) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `relative`
--

INSERT INTO `relative` (`id`, `g_id`, `relative1`, `relation1`, `address1`, `phone1`, `relative2`, `relation2`, `address2`, `phone2`, `patient_name`) VALUES
(1, '885271', 'anu', 'sister', 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '8089186044', 'ani', 'None', 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '8089186044', 'Aneeja'),
(2, '631585', 'appu', 'sister', 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '8089186044', 'rani', 'None', 'Banerji Rd, Opp Gokulam park, Kaloor, Ernakulam, Kerala 682017', '8089186044', 'lakshmi'),
(3, '721765', 'honey', 'sister', 'thaikkattukara p.o', '8089186044', 'jiffy', 'None', 'thaikkattukara p.o', '8089186044', 'divya'),
(4, '296605', 'megha', 'sister', 'thembadath house, ambattukavu, aluva', '8089186044', 'suman', 'None', 'marakkam veedu, neerikkod', '8089186044', 'Dilraz'),
(5, '414514', 'joy', 'mother', 'dfdf', '5468569854', 'jini', 'None', 'sdjhjd', '9587456321', 'kiran'),
(6, '168667', 'joy', 'sister', 'kjukui', '2548965874', 'pooja', 'None', 'xcxcx', '8547896589', 'lilly'),
(7, '341410', 'mini', 'sister', 'sddsd', '4587569854', 'hima', 'None', 'sdncnc', '5468954785', 'yadu'),
(8, '796162', 'joy', 'asasas', 'kripa', '8745969854', 'jini', 'None', 'krrrr', '8776554433', 'dam'),
(9, '980629', 'joy', 'sdsd', 'sdsd', '6523698546', 'jini', 'None', 'sds', '6523698546', 'vimu'),
(10, '341968', 'ram', 'bro', 'kkm', '9865321478', 'gokul', 'None', 'kkm', '6598321478', 'gokul');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `dr_id` varchar(100) NOT NULL,
  `hos_id` varchar(100) NOT NULL,
  `sunday` varchar(100) NOT NULL,
  `sf_time` varchar(100) NOT NULL,
  `sf_token` varchar(100) NOT NULL,
  `sa_time` varchar(100) NOT NULL,
  `sa_token` varchar(100) NOT NULL,
  `monday` varchar(100) NOT NULL,
  `mf_time` varchar(100) NOT NULL,
  `mf_token` varchar(100) NOT NULL,
  `ma_time` varchar(100) NOT NULL,
  `ma_token` varchar(100) NOT NULL,
  `tuesday` varchar(100) NOT NULL,
  `tf_time` int(11) NOT NULL,
  `tf_token` int(11) NOT NULL,
  `ta_time` int(11) NOT NULL,
  `ta_token` int(11) NOT NULL,
  `wednesday` int(11) NOT NULL,
  `wf_time` int(11) NOT NULL,
  `wf_token` int(11) NOT NULL,
  `wa_time` int(11) NOT NULL,
  `wa_token` int(11) NOT NULL,
  `thursday` int(11) NOT NULL,
  `thf_time` int(11) NOT NULL,
  `thf_token` int(11) NOT NULL,
  `tha_time` int(11) NOT NULL,
  `tha_token` int(11) NOT NULL,
  `friday` int(11) NOT NULL,
  `ff_time` int(11) NOT NULL,
  `ff_token` int(11) NOT NULL,
  `fa_time` int(11) NOT NULL,
  `fa_token` int(11) NOT NULL,
  `saturday` int(11) NOT NULL,
  `saf_time` int(11) NOT NULL,
  `saf_token` int(11) NOT NULL,
  `saa_time` int(11) NOT NULL,
  `saa_token` int(11) NOT NULL,
  PRIMARY KEY (`id`,`dr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `schedule`
--


-- --------------------------------------------------------

--
-- Table structure for table `sergary`
--

CREATE TABLE IF NOT EXISTS `sergary` (
  `id` int(11) NOT NULL,
  `hosid` varchar(50) NOT NULL,
  `Resivergin` varchar(50) NOT NULL,
  `donargin` varchar(50) NOT NULL,
  `docid` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sergary`
--


-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `test_id` int(100) NOT NULL AUTO_INCREMENT,
  `presc_id` varchar(100) NOT NULL,
  `test` varchar(200) NOT NULL,
  `results` varchar(200) NOT NULL,
  PRIMARY KEY (`test_id`,`presc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `presc_id`, `test`, `results`) VALUES
(1, '1', 'Blood Test', 'Simple_qKqHwpO.java'),
(2, '1', 'ESR Test', 'dbconnection_yMKRTky.java'),
(3, '1', 'Platelets Count', ''),
(4, '2', 'Blood Test', ''),
(5, '2', 'esr count', '');
