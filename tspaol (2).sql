-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 12:09 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tspaol`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminsession`
--

CREATE TABLE `adminsession` (
  `idadminsession` bigint(25) NOT NULL,
  `userhashkey` varchar(255) NOT NULL,
  `usertoken` varchar(50) NOT NULL,
  `adminmasterid` char(3) NOT NULL,
  `adminmasterno` char(6) NOT NULL,
  `sessionuserid` varchar(20) NOT NULL,
  `sessionuserno` char(10) NOT NULL,
  `sessionusertype` char(1) NOT NULL,
  `sessionusername` varchar(50) NOT NULL,
  `membershipaccess` varchar(3000) DEFAULT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Table holds the temporary session for dashboard users';

--
-- Dumping data for table `adminsession`
--

INSERT INTO `adminsession` (`idadminsession`, `userhashkey`, `usertoken`, `adminmasterid`, `adminmasterno`, `sessionuserid`, `sessionuserno`, `sessionusertype`, `sessionusername`, `membershipaccess`, `timestamp`) VALUES
(1, '0095297812672683614578HqpRE45p8oMm5K2f798609521848620632170943339043580018515984421831', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-04 10:12:38'),
(2, '0095298666832833391875HqpRE45p8oMm5K2f342014233453973102215639850472045452839746535604', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-04 11:20:02'),
(3, '0095299493717979661494dza4ERk8p0TctFAI424602748080658110474490313140548064021470412383', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-04 12:23:36'),
(4, '0095295121687884279137Emq9qAPnpQnF49Mn572814172103009725305634802904830529839295718635', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-05 09:04:17'),
(5, 'Brianna1776567599486736adblQlwNI45ox1bo834714690565895321651409952623951949713366811328', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', 'Brianna', '19315', 'U', 'BRIANNA OSBORNE', '\'AMU600769\'', '2018-02-05 09:10:17'),
(6, '0099300240252123022603uQbqDgKYYLIxBC8r702525911777608438276807682878901826679783701709', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', '009930', '20231', 'U', 'MIRANDA MEINBERG', '\'AMU137907\'', '2018-02-05 09:18:40'),
(7, '0095299825234446048490Emq9qAPnpQnF49Mn657933393032178445783329734227041595182184848672', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-05 09:42:29'),
(8, '00675986419814458142603ohQvkIPYI5deR5l936086939644464233942910469521151393566862380267', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', '006759', '20613', 'U', 'KYLEE BROWER', '\'AMU179419\'', '2018-02-05 10:02:10'),
(9, 'cbonham1021157050040237eKRePiKuA3sETh8L527345912260592320748807007962968876302351308102', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', 'cbonham', '19317', 'U', 'CHELSI BONHAM', '\'AMU179419\',\'AMU376378\'', '2018-02-05 10:20:16'),
(10, '00675966705267645328033ohQvkIPYI5deR5l342483725025250602262588007672118225257816188131', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', '006759', '20613', 'U', 'KYLEE BROWER', '\'AMU179419\'', '2018-02-05 10:20:30'),
(11, '0000835814295699152705B2dus53sKsfuhxYZ758445433938929743858759898940021187207404014758', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', '000083', '19753', 'M', 'DEANDRE LAVALAIVS', '\'AMU728831\'', '2018-02-05 12:20:53'),
(12, '0000839218978897646125B2dus53sKsfuhxYZ597212583353060939712883264612120988137537879948', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', '000083', '19753', 'M', 'DEANDRE LAVALAIVS', '\'AMU728831\'', '2018-02-05 12:23:19'),
(13, '0095299771020339724348Emq9qAPnpQnF49Mn306647701114948798688986616541929652471000742928', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-05 13:39:51'),
(14, '0101444687675691979387dza4ERk8p0TctFAI944098519311447562421299436219484241405859050100', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '010144', '20496', 'U', 'YESSENIA IBARRA', '\'ARZ826336\'', '2018-02-05 13:40:51'),
(15, '0095291236437674889194Emq9qAPnpQnF49Mn875774723630677427901688868114800789444602242400', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-05 13:43:12'),
(16, '0082630726413298872074wfr5ZUn8v9YxNq7k547972270001992934789986154308490280420293625554', '2833410117ACR|119390500371477793ACR|11939033000679', 'ACR', '119390', '008263', '19624', 'U', 'MARIA STAFFORD', '\'ACR175842\'', '2018-02-05 13:54:56'),
(17, '00850939912704925498148lTxh1Wrw39S1IfE342548477734427402279063278517475458905370959899', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '008509', '20559', 'U', 'ANAIS GARCIA-VEGA', '\'ARZ059821\'', '2018-02-05 14:55:42'),
(18, 'Brianna6506751222639534adblQlwNI45ox1bo806020557429209448626271248095689390304022772030', '9025313864AMU|259121287500436286AMU|25912106598525', 'AMU', '259121', 'Brianna', '19315', 'U', 'BRIANNA OSBORNE', '\'AMU600769\'', '2018-02-05 16:55:02'),
(19, '0095298362327782080089Emq9qAPnpQnF49Mn511636146780702519177830183144981312096223239135', '1150993645ARZ|473695998411264864ARZ|47369550009609', 'ARZ', '473695', '009529', '19942', 'U', 'JOSHUA PALACIO', '\'ARZ826336\'', '2018-02-05 17:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `appbank`
--

CREATE TABLE `appbank` (
  `idappbank` int(11) NOT NULL,
  `idapplicationid` int(11) NOT NULL COMMENT 'Application id',
  `accounttype` char(10) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `bankbranch` varchar(50) DEFAULT NULL,
  `bankphone` char(10) DEFAULT NULL,
  `approxbalance` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appbank`
--

INSERT INTO `appbank` (`idappbank`, `idapplicationid`, `accounttype`, `bankname`, `bankbranch`, `bankphone`, `approxbalance`) VALUES
(1370, 2, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1371, 4, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1372, 6, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1373, 9, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1374, 10, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1375, 11, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1376, 12, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1377, 12, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1378, 13, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1379, 13, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1380, 17, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1381, 17, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1382, 18, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1383, 18, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1384, 21, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1385, 21, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1386, 25, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1387, 27, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1388, 29, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1389, 33, 'ryj', 'tyj', 'ryj', '', '0.00'),
(1390, 36, 'gk', 'yuk', 'gyk', '', '0.00'),
(1391, 37, 'Account Ty', 'Bank Name', '', '9999999999', '999.00');

-- --------------------------------------------------------

--
-- Table structure for table `appcontacts`
--

CREATE TABLE `appcontacts` (
  `idappcontacts` int(11) NOT NULL,
  `appcontactsidapplication` int(11) NOT NULL,
  `appcontactsidapplicant` int(11) NOT NULL,
  `appcontactsname` varchar(50) NOT NULL,
  `appcontactsphone` varchar(10) NOT NULL,
  `appcontactsstreet` varchar(50) DEFAULT NULL,
  `appcontactscity` varchar(50) DEFAULT NULL,
  `appcontactsstate` char(2) DEFAULT NULL,
  `appcontactszip` char(5) DEFAULT NULL,
  `appcontactsrelations` varchar(20) DEFAULT NULL COMMENT 'Relationship - Dropdown with following valuses - Friend, Husband, Wife, Son, Daughter, Brother, Sister, Others'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Emergency Contact ';

--
-- Dumping data for table `appcontacts`
--

INSERT INTO `appcontacts` (`idappcontacts`, `appcontactsidapplication`, `appcontactsidapplicant`, `appcontactsname`, `appcontactsphone`, `appcontactsstreet`, `appcontactscity`, `appcontactsstate`, `appcontactszip`, `appcontactsrelations`) VALUES
(1, 2, 3, 'yju', '9999999999', '', '', '', '', ''),
(2, 4, 5, 'yju', '9999999999', '', '', '', '', ''),
(3, 6, 7, 'yju', '9999999999', '', '', '', '', ''),
(4, 9, 10, 'yju', '9999999999', '', '', '', '', ''),
(5, 10, 11, 'yju', '9999999999', '', '', '', '', ''),
(6, 11, 12, 'yju', '9999999999', '', '', '', '', ''),
(7, 12, 13, 'yju', '9999999999', '', '', '', '', ''),
(8, 13, 14, 'yju', '9999999999', '', '', '', '', ''),
(9, 17, 18, 'yju', '9999999999', '', '', '', '', ''),
(10, 17, 19, 'yju', '9999999999', '', '', '', '', ''),
(11, 18, 21, 'yju', '9999999999', '', '', '', '', ''),
(12, 21, 24, 'yju', '9999999999', '', '', '', '', ''),
(13, 25, 28, 'yju', '9999999999', '', '', '', '', ''),
(14, 27, 30, 'yju', '9999999999', '', '', '', '', ''),
(15, 29, 32, 'yju', '9999999999', '', '', '', '', ''),
(16, 29, 33, 'yju', '9999999999', '', '', '', '', ''),
(17, 29, 34, 'yju', '9999999999', '', '', '', '', ''),
(18, 33, 38, 'yju', '9999999999', '', '', '', '', ''),
(19, 36, 41, 'Fkufku', '8888888888', '', '', '', '', ''),
(20, 37, 42, ' Name', '7777777777', '', '', '', '', 'Other'),
(21, 37, 43, 'binny', '9999999999', '', '', 'AZ', '', 'Other'),
(22, 37, 44, 'binny', '9999999999', '', '', 'AZ', '', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `appcreditref`
--

CREATE TABLE `appcreditref` (
  `idappcreditref` int(11) NOT NULL,
  `idapplicant` int(11) NOT NULL,
  `creditorname` varchar(50) NOT NULL,
  `credittype` varchar(25) NOT NULL,
  `creditorphone` char(10) DEFAULT NULL,
  `monthlypayment` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appcreditref`
--

INSERT INTO `appcreditref` (`idappcreditref`, `idapplicant`, `creditorname`, `credittype`, `creditorphone`, `monthlypayment`) VALUES
(1908, 3, 'tj', 'tyj', '', '0.00'),
(1909, 3, 'tj', 'tyj', '', '0.00'),
(1910, 5, 'tj', 'tyj', '', '0.00'),
(1911, 5, 'tj', 'tyj', '', '0.00'),
(1912, 7, 'tj', 'tyj', '', '0.00'),
(1913, 7, 'tj', 'tyj', '', '0.00'),
(1914, 10, 'tj', 'tyj', '', '0.00'),
(1915, 10, 'tj', 'tyj', '', '0.00'),
(1916, 11, 'tj', 'tyj', '', '0.00'),
(1917, 11, 'tj', 'tyj', '', '0.00'),
(1918, 12, 'tj', 'tyj', '', '0.00'),
(1919, 12, 'tj', 'tyj', '', '0.00'),
(1920, 13, 'tj', 'tyj', '', '0.00'),
(1921, 13, 'tj', 'tyj', '', '0.00'),
(1922, 14, 'tj', 'tyj', '', '0.00'),
(1923, 14, 'tj', 'tyj', '', '0.00'),
(1924, 18, 'tj', 'tyj', '', '0.00'),
(1925, 18, 'tj', 'tyj', '', '0.00'),
(1926, 19, 'tj', 'tyj', '', '0.00'),
(1927, 19, 'tj', 'tyj', '', '0.00'),
(1928, 21, 'tj', 'tyj', '', '0.00'),
(1929, 21, 'tj', 'tyj', '', '0.00'),
(1930, 24, 'tj', 'tyj', '', '0.00'),
(1931, 24, 'tj', 'tyj', '', '0.00'),
(1932, 28, 'tj', 'tyj', '', '0.00'),
(1933, 28, 'tj', 'tyj', '', '0.00'),
(1934, 30, 'tj', 'tyj', '', '0.00'),
(1935, 30, 'tj', 'tyj', '', '0.00'),
(1936, 32, 'tj', 'tyj', '', '0.00'),
(1937, 32, 'tj', 'tyj', '', '0.00'),
(1938, 38, 'tj', 'tyj', '', '0.00'),
(1939, 38, 'tj', 'tyj', '', '0.00'),
(1940, 41, 'yguk', 'yguk', '', '0.00'),
(1941, 41, 'yuk', 'yuk', '', '0.00'),
(1942, 42, 'Creditor Name', 'Type', '', '0.00'),
(1943, 42, 'Creditor Name', 'Type', '', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `applicantaddress`
--

CREATE TABLE `applicantaddress` (
  `idapplicantaddress` int(11) NOT NULL,
  `appaddressidapplication` int(11) NOT NULL,
  `appaddressidapplicant` int(11) NOT NULL,
  `appaddresstype` char(1) NOT NULL COMMENT 'C=Current Address, P=Previous Address',
  `appaddressstreet` varchar(100) NOT NULL,
  `applicantaddressunit` varchar(20) DEFAULT NULL,
  `appaddresscity` varchar(50) NOT NULL,
  `appaddressstate` char(2) NOT NULL,
  `appaddressszip` char(5) NOT NULL,
  `appaddresslandlordname` varchar(50) NOT NULL,
  `appaddresslandlordphone` char(10) NOT NULL,
  `appaddressstayedfrom` date NOT NULL,
  `appaddressstayedto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applicantaddress`
--

INSERT INTO `applicantaddress` (`idapplicantaddress`, `appaddressidapplication`, `appaddressidapplicant`, `appaddresstype`, `appaddressstreet`, `applicantaddressunit`, `appaddresscity`, `appaddressstate`, `appaddressszip`, `appaddresslandlordname`, `appaddresslandlordphone`, `appaddressstayedfrom`, `appaddressstayedto`) VALUES
(3, 2, 3, 'C', '1108 Eton Manor', '7', 'California ', 'CA', '54846', '', '', '0000-00-00', '0000-00-00'),
(4, 2, 3, 'P', '1108 eton manor', '7', 'california ', 'CA', '98984', '', '', '0000-00-00', '0000-00-00'),
(21, 4, 5, 'C', '11804 Eton Manor', 'Cvxc', 'Xcvxcv', 'KS', '99999', '', '', '0000-00-00', '0000-00-00'),
(22, 4, 5, 'P', '11804 eton manor', 'cvxc', 'xcvxcv', 'KS', '99999', '', '', '0000-00-00', '0000-00-00'),
(23, 6, 7, 'C', 'whitefiled', '', 'california', 'CA', '13211', '', '', '0000-00-00', '0000-00-00'),
(24, 6, 7, 'P', 'whitefield', '', 'california', 'CA', '45646', '', '', '0000-00-00', '0000-00-00'),
(27, 10, 11, 'C', 'wnefkjnjn', '56', 'bebwb', 'CA', '65465', '', '', '0000-00-00', '0000-00-00'),
(28, 10, 11, 'P', 'wnefkjnjn', '56', 'bebwb', 'CA', '65465', '', '', '0000-00-00', '0000-00-00'),
(29, 9, 10, 'C', 'Whitefield', '5', 'California', 'CA', '16546', '', '', '0000-00-00', '0000-00-00'),
(30, 9, 10, 'P', 'whitefield', '5', 'california', 'CA', '16546', '', '', '0000-00-00', '0000-00-00'),
(31, 11, 12, 'C', 'marathahalli', '5', 'california', 'CA', '99879', '', '', '0000-00-00', '0000-00-00'),
(32, 11, 12, 'P', 'marathahalli', '5', 'california', 'CA', '99879', '', '', '0000-00-00', '0000-00-00'),
(33, 12, 13, 'C', 'kr puram', '6', 'banglore', 'IN', '88797', '', '', '0000-00-00', '0000-00-00'),
(34, 12, 13, 'P', 'kr puram', '6', 'banglore', 'IN', '88797', '', '', '0000-00-00', '0000-00-00'),
(35, 12, 13, 'P', 'kr puram', '6', 'banglore', 'IN', '88797', '', '', '0000-00-00', '0000-00-00'),
(36, 12, 13, 'P', 'kr puram', '6', 'banglore', 'IN', '88797', '', '', '0000-00-00', '0000-00-00'),
(37, 13, 14, 'C', 'majestic', '7', 'banglore', 'AZ', '56464', '', '', '0000-00-00', '0000-00-00'),
(38, 13, 14, 'P', 'majestic', '7', 'banglore', 'AZ', '56464', '', '', '0000-00-00', '0000-00-00'),
(39, 13, 14, 'P', 'majestic', '7', 'banglore', 'AZ', '56464', '', '', '0000-00-00', '0000-00-00'),
(40, 13, 14, 'P', 'majestic', '7', 'banglore', 'AZ', '56464', '', '', '0000-00-00', '0000-00-00'),
(45, 17, 18, 'C', 'Majestic', '56', 'California', 'AZ', '56516', '', '', '0000-00-00', '0000-00-00'),
(46, 17, 18, 'P', 'majestic', '56', 'california', 'CT', '56516', '', '', '0000-00-00', '0000-00-00'),
(47, 17, 18, 'P', 'majestic', '56', 'california', 'CA', '56516', '', '', '0000-00-00', '0000-00-00'),
(48, 17, 18, 'P', 'majestic', '56', 'california', 'WA', '56516', '', '', '0000-00-00', '0000-00-00'),
(49, 17, 19, 'C', 'majestic', '66', 'banglore', 'WI', '51951', '', '', '0000-00-00', '0000-00-00'),
(50, 17, 19, 'P', 'majestic', '66', 'banglore', 'IL', '51951', '', '', '0000-00-00', '0000-00-00'),
(51, 17, 19, 'P', 'majestic', '66', 'banglore', 'IL', '51951', '', '', '0000-00-00', '0000-00-00'),
(52, 17, 19, 'P', 'majestic', '66', 'banglore', 'IL', '51951', '', '', '0000-00-00', '0000-00-00'),
(57, 18, 21, 'C', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00'),
(58, 18, 21, 'P', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00'),
(59, 18, 21, 'P', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00'),
(60, 18, 21, 'P', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00'),
(61, 21, 24, 'C', '123 Avenue123444', '4815677', 'hubli7777', 'AR', '99999', 'qwerty', '8888888888', '0000-00-00', '0000-00-00'),
(62, 21, 24, 'P', '223123123 Avenue1', '461', 'Georgia1', 'WA', '99999', 'Iowa111', '8888888888', '0000-00-00', '0000-00-00'),
(63, 21, 24, 'P', 'anand nagar', 'wefwefwef', 'wefwef', 'DC', '55555', 'name55', '9880548386', '0000-00-00', '0000-00-00'),
(64, 21, 24, 'P', '44444 Avenue333', '8', 'Idaho33', 'CT', '99999', 'Illinoi78787877', '8147585351', '0000-00-00', '0000-00-00'),
(69, 25, 28, 'C', '35errg', '', 'Ergre', 'IN', '34545', '', '', '2018-04-28', '2018-04-28'),
(70, 25, 28, 'P', '35errg', '', 'ergre', 'IN', '34545', '', '', '1970-01-01', '1970-01-01'),
(71, 27, 30, 'C', '35 Windsor manner', '56', 'California', 'CA', '99999', 'simons', '2332323232', '2017-05-26', '2018-05-03'),
(72, 27, 30, 'P', '35 Windsor manner', '56', 'California', 'CA', '99999', 'simons', '2332323232', '2017-05-26', '2018-05-03'),
(87, 28, 31, 'C', '56 Avenue7789', '567788', 'California5656', 'CA', '55555', 'SMITH656565', '7777777777', '2017-10-05', '2018-10-05'),
(88, 28, 31, 'P', '56 Avenue52', '5655', 'california666', 'CA', '55555', 'SMITH232', '8888888888', '2017-05-10', '2018-05-10'),
(97, 29, 34, 'C', '32 avenue', '56', 'california', 'CA', '99999', 'ben', '9999999999', '2018-05-17', '2018-05-17'),
(98, 29, 34, 'P', '32 avenue', '56', 'california', 'CA', '99999', 'ben', '9999999999', '2018-05-17', '2018-05-17'),
(123, 29, 33, 'C', '32 Avenue', '56', 'California', 'CA', '99999', 'ben', '9999999999', '2018-02-05', '2018-07-05'),
(124, 29, 33, 'P', '32 avenue', '56', 'california', 'CA', '99999', 'ben', '9999999999', '2018-05-17', '2018-05-17'),
(125, 29, 32, 'C', 'Street', '8', 'California', 'AK', '99999', 'ben', '9999999999', '2018-02-05', '2018-01-05'),
(126, 29, 32, 'P', 'street2', '9', 'alaska', 'AK', '99999', 'mohan2', '9999999999', '2018-05-18', '2017-05-18'),
(229, 37, 42, 'C', 'Street Address', 'Unit/Apartment', '  Unit/Apartment City', 'KS', '99999', 'Landlord Name', '9999999999', '2018-05-06', '2018-05-09'),
(230, 37, 42, 'P', 'Street Address', 'Unit/Apartment', '  Unit/Apartment City', 'KS', '99999', 'Landlord Name', '9999999999', '2018-05-02', '2018-05-10'),
(231, 37, 43, 'C', '45 avenue', '78', 'california', 'AL', '99999', 'vikram', '9999999999', '2018-05-24', '2018-05-24'),
(232, 37, 43, 'P', '45 avenue', '78', 'california', 'AL', '99999', 'vikram', '9999999999', '2018-05-24', '2018-05-24'),
(233, 37, 44, 'C', '45 avenue', '78', 'california', 'AL', '99999', 'vikram', '9999999999', '2018-05-24', '2018-05-24'),
(234, 37, 44, 'P', '45 avenue', '78', 'california', 'AL', '99999', 'vikram', '9999999999', '2018-05-24', '2018-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `applicantdocuments`
--

CREATE TABLE `applicantdocuments` (
  `idapplicantdocuments` int(11) NOT NULL,
  `applicationid` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `documenttitle` varchar(100) NOT NULL,
  `docexternalname` varchar(100) DEFAULT NULL,
  `docinternalname` varchar(100) NOT NULL,
  `uploaddate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maintain the records of docuemnt that uploaded by applicants';

-- --------------------------------------------------------

--
-- Table structure for table `applicantemployment`
--

CREATE TABLE `applicantemployment` (
  `idapplicantemployment` int(11) NOT NULL,
  `applicantempidapplication` int(11) NOT NULL,
  `applicantempidapplicants` int(11) NOT NULL,
  `applicantemptype` char(1) NOT NULL COMMENT 'C=Current Employer P=Previous Employer',
  `applicantempname` varchar(100) DEFAULT NULL,
  `applicantempaddress` varchar(100) DEFAULT NULL,
  `applicantempapartment` char(10) DEFAULT NULL,
  `applicantempcity` varchar(50) DEFAULT NULL,
  `applicantempstate` char(2) DEFAULT NULL,
  `applicantempzip` char(5) DEFAULT NULL,
  `applicantempphone` char(10) DEFAULT NULL,
  `applicantemptitle` varchar(50) DEFAULT NULL,
  `applicantempsupervisor` varchar(50) DEFAULT NULL,
  `applicantempyears` int(3) DEFAULT NULL,
  `applicantempmonths` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applicantemployment`
--

INSERT INTO `applicantemployment` (`idapplicantemployment`, `applicantempidapplication`, `applicantempidapplicants`, `applicantemptype`, `applicantempname`, `applicantempaddress`, `applicantempapartment`, `applicantempcity`, `applicantempstate`, `applicantempzip`, `applicantempphone`, `applicantemptitle`, `applicantempsupervisor`, `applicantempyears`, `applicantempmonths`) VALUES
(2, 2, 3, 'C', '', '', '', '', '', '', '', '', '', 0, 0),
(4, 10, 11, 'C', 'ewrergh', 'ererergh', '55', 'ererg', 'CA', '45454', '6565464646', 'wrgwgg', 'wrgwergweg', 8, 5),
(5, 9, 10, 'C', 'Pradeep', 'Whitefield', '6', 'California', 'CA', '46546', '4849849849', 'Developer', 'Madhu', 5, 5),
(6, 11, 12, 'C', 'maavitech', 'whitefileld', '56', 'california', 'CA', '47979', '4648949498', 'developer', 'madhu', 7, 5),
(10, 17, 18, 'P', 'accenture', 'whitefield', '67', 'banglore', 'CA', '98498', '6565665464', 'developer', 'venu', 7, 10),
(11, 17, 18, 'P', 'maavitech', 'whitefield', '10', 'banglore', 'CA', '46565', '6516546546', 'developer', 'madhu', 5, 8),
(12, 17, 18, 'P', 'pc technology', 'richmond town', '56', 'banglore', 'CA', '46565', '6546464656', 'developer', 'vinod', 1, 11),
(16, 18, 21, 'C', '', '', '', '', '', '', '', '', '', 0, 0),
(17, 18, 21, 'P', '', '', '', '', '', '', '', '', '', 0, 0),
(18, 18, 21, 'P', '', '', '', '', '', '', '', '', '', 0, 0),
(26, 28, 31, 'C', '', '', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `applicantsidapplication` int(11) NOT NULL COMMENT 'Link to application table',
  `idapplicants` int(11) NOT NULL,
  `applicantsmemberid` char(3) NOT NULL,
  `applicantsmemberno` char(6) NOT NULL,
  `applicantsproperty` char(10) DEFAULT NULL,
  `applicantstype` char(1) NOT NULL COMMENT 'P=Primary A=Co-Applicant G=Guarantor  O=Adult Occupant M=Minor C=Care Taker ',
  `applicantsfirtsname` varchar(50) NOT NULL,
  `applicantmidname` varchar(50) DEFAULT NULL,
  `applicantslastname` varchar(50) NOT NULL,
  `applicantsemail` varchar(100) DEFAULT NULL,
  `applicantpassword` varchar(50) DEFAULT NULL COMMENT 'Password in MD5 Hash',
  `applicantphoneno` char(10) DEFAULT NULL COMMENT 'mobile phone',
  `applicanthomephone` char(10) DEFAULT NULL,
  `applicantworkphone` char(10) DEFAULT NULL,
  `appreasonforleaving` varchar(100) DEFAULT NULL,
  `applicantsuffix` char(3) DEFAULT NULL,
  `applicantdrivinglicense` varchar(20) DEFAULT NULL,
  `applicantdrivinglicstate` char(2) DEFAULT NULL,
  `applicantdob` date DEFAULT NULL,
  `applicantssn` char(9) DEFAULT NULL,
  `applicantssnencrypt` varbinary(50) DEFAULT NULL,
  `applicantdobencrypt` varbinary(50) DEFAULT NULL,
  `applicantdrivinglicenseencrypt` varbinary(100) DEFAULT NULL,
  `applicantempstatus` varchar(15) DEFAULT NULL COMMENT 'EMPLOYED, UN-EMPLOYED',
  `applicantsinvited` char(1) DEFAULT NULL,
  `applicantsinvitationdate` datetime DEFAULT NULL,
  `invitationmessage` varchar(500) DEFAULT NULL,
  `applicantsempincome` decimal(10,2) DEFAULT NULL,
  `applicantsothincome` decimal(10,2) DEFAULT NULL,
  `applicantsstatus` char(1) DEFAULT NULL COMMENT 'Applicant Status - I=Invited P=Pending C=Completed',
  `applicantsstatusdate` datetime DEFAULT NULL,
  `applicantsscreeningdecision` char(1) DEFAULT NULL COMMENT 'Applicant individual Screening Decisoin - A = Approve  C = Conditional  D = Decline',
  `applicantscurrentrent` decimal(10,2) DEFAULT NULL COMMENT 'Current Rent / Mortgage',
  `applicantscurrentrestype` char(10) DEFAULT NULL COMMENT 'RENT , OWN, OTHER',
  `Applicantcurntlyemplyd` char(1) DEFAULT NULL,
  `screeningfee` decimal(7,2) DEFAULT NULL,
  `processingfee` decimal(7,2) DEFAULT NULL,
  `holdingdeposit` decimal(7,2) DEFAULT NULL,
  `paymentid` varchar(50) DEFAULT NULL,
  `paymentdate` datetime DEFAULT NULL,
  `paidamount` decimal(10,2) DEFAULT NULL,
  `paidby` varchar(50) DEFAULT NULL,
  `paymentapprovalreference` varchar(100) DEFAULT NULL,
  `paymentstatus` char(1) DEFAULT NULL COMMENT 'P=Pending C=Completed  E=Error / Decline ',
  `termsagreeddate` datetime DEFAULT NULL,
  `disclosureagreeddate` datetime DEFAULT NULL,
  `appincometype` char(1) DEFAULT NULL,
  `otherleaseterms` varchar(15) DEFAULT NULL,
  `appconsentdate` datetime DEFAULT NULL,
  `appconsentfromip` varchar(20) DEFAULT NULL,
  `appconsent` char(1) DEFAULT NULL,
  `guestcardpersonid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`applicantsidapplication`, `idapplicants`, `applicantsmemberid`, `applicantsmemberno`, `applicantsproperty`, `applicantstype`, `applicantsfirtsname`, `applicantmidname`, `applicantslastname`, `applicantsemail`, `applicantpassword`, `applicantphoneno`, `applicanthomephone`, `applicantworkphone`, `appreasonforleaving`, `applicantsuffix`, `applicantdrivinglicense`, `applicantdrivinglicstate`, `applicantdob`, `applicantssn`, `applicantssnencrypt`, `applicantdobencrypt`, `applicantdrivinglicenseencrypt`, `applicantempstatus`, `applicantsinvited`, `applicantsinvitationdate`, `invitationmessage`, `applicantsempincome`, `applicantsothincome`, `applicantsstatus`, `applicantsstatusdate`, `applicantsscreeningdecision`, `applicantscurrentrent`, `applicantscurrentrestype`, `Applicantcurntlyemplyd`, `screeningfee`, `processingfee`, `holdingdeposit`, `paymentid`, `paymentdate`, `paidamount`, `paidby`, `paymentapprovalreference`, `paymentstatus`, `termsagreeddate`, `disclosureagreeddate`, `appincometype`, `otherleaseterms`, `appconsentdate`, `appconsentfromip`, `appconsent`, `guestcardpersonid`) VALUES
(1, 1, 'TSP', '416122', '', 'P', 'test1', '', 'test2', 'test1@gmail.com', '500b9a396b8aba362c68cee194dc37fa', '1234567898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-02-21 18:05:34', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '0.00', 'IZYuKjk77Ln2WwZdNku6|1|MpJFvt4o2JkeYURGqdvG', '2018-02-21 19:14:09', NULL, '', NULL, 'P', '2018-02-21 18:05:34', '2018-02-21 19:13:00', NULL, NULL, NULL, NULL, NULL, NULL),
(1, 2, 'TSP', '416122', NULL, 'O', 'bibuibui', NULL, 'bibiib', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-07', '012345666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '0.00', 'IZYuKjk77Ln2WwZdNku6|1|MpJFvt4o2JkeYURGqdvG', '2018-02-21 19:14:09', NULL, '', NULL, 'P', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, 'TSP', '416122', '', 'P', 'Test1', 'Test3', 'Test2', 'test@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '9999999999', '8797999999', '', 'shifting', 'SR', '<br /><b>Notice</b>:', '', '1999-02-02', '999999999', NULL, NULL, NULL, NULL, 'N', '2018-03-22 17:25:35', NULL, '15625.00', NULL, 'P', NULL, NULL, '253.00', 'rent', 'Y', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 17:25:35', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(3, 4, 'TSP', '416122', '', 'P', 'test5', '', 'test6', 'test3@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '4649846484', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-03-22 18:06:27', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-22 18:06:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 5, 'TSP', '416122', '', 'P', 'Raghu', '', 'Sharma', 'fgngfn@fghhdth.vom', '698d51a19d8a121ce581499d7b701668', '9865321478', '9999999999', '8888888888', 'cvbcvb', '', '', '', '1999-02-02', '999999999', 0xa54809b270c53ca0f352d4b2865fd89a, 0x01c0283acbb30009bd30d9b320582f48, 0x0143db63ee66b0cdff9f69917680151e, NULL, 'N', '2018-04-12 21:48:06', NULL, '989.00', NULL, 'P', NULL, NULL, '999.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-12 21:48:06', '2018-04-13 15:15:47', 'M', NULL, NULL, NULL, NULL, NULL),
(5, 6, 'TSP', '416122', '', 'P', 'test1', '', 'test2', 'ere@qwgg.com', '202cb962ac59075b964b07152d234b70', '1568549849', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-13 19:22:26', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 19:22:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 7, 'TSP', '416122', '', 'P', 'Test6', '', 'Test7', 'test7@gmail.com', '', '1234567899', '', '', '', '', NULL, '', NULL, NULL, 0xbc0298b5daf55451be6fe84279287f9e, 0xc84c59fa76a709bb6517cf0bb1632ac7, 0x0143db63ee66b0cdff9f69917680151e, NULL, 'N', '2018-04-16 13:51:58', NULL, '123.00', NULL, '', NULL, NULL, '54.00', 'rent', 'X', '1.00', '1.00', '5000.00', 'B9Diu7cBEGh2UOslDXOI|6|F7YTlJ04wNwZwKBRcAQo', '2018-04-16 13:56:14', NULL, '', NULL, 'P', '2018-04-16 13:51:58', '2018-04-16 13:56:11', 'M', NULL, NULL, NULL, NULL, NULL),
(7, 8, 'TSP', '416122', '', 'P', 'mohan', '', 'nings', 'fgqqngfn@fghhdth.vom', '', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-16 16:58:45', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:58:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 9, 'TSP', '416122', '', 'P', 'test1', '', 'sharma', 'test111@gmail.com', '', '3333333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-16 17:00:19', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:00:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 10, 'TSP', '416122', '', 'P', 'Ronit', 'Pradeep', 'Nike', 'fgngfn@fghhdth.vom', '96e79218965eb72c92a549dd5a330112', '9999999999', '5654654654', '2651691981', '', 'SR', NULL, 'CA', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x6af9d51d8a38b6ef6456f558d9730cd8, 0x155b1177639143adb927a75b6637fa0b, NULL, 'N', '2018-04-16 17:33:40', NULL, '1233.00', NULL, 'P', NULL, NULL, '345.00', 'rent', 'Y', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:33:40', '2018-04-16 17:44:57', 'M', NULL, NULL, NULL, NULL, NULL),
(10, 11, 'TSP', '416122', '', 'P', 'Test', 'rohit', 'Mohan', 'mohan@gamil.com', '4297f44b13955235245b2497399d7a93', '5645464546', '4654546464', '4654465465', 'wregerger', 'SR', NULL, 'CA', NULL, NULL, 0x75fc70d587ae62a7d70ff7924837428c, 0x3c729a6596c771180487327ddc1d176d, 0x7427d53c0b8141731d2c7165c7d7541b, NULL, 'N', '2018-04-16 17:40:53', NULL, '44.00', NULL, 'P', NULL, NULL, '32.00', 'rent', 'Y', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:40:53', '2018-04-16 17:47:07', 'M', NULL, NULL, NULL, NULL, NULL),
(11, 12, 'TSP', '416122', '', 'P', 'Virat', 'devendar', 'Kohli', 'virat@gamil.com', '4297f44b13955235245b2497399d7a93', '4684987987', '7867867867', '7867868767', '', '', NULL, 'CA', NULL, NULL, 0x155cd6da64847e85dbf5ce98460f3878, 0x42b30ff30cf71841fb715c706b35e45a, 0xf4013fa49b3fd4e17ca11767cfd35b18, NULL, 'N', '2018-04-16 17:59:20', NULL, '789.00', NULL, 'P', NULL, NULL, '787.00', 'rent', 'Y', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:59:20', '2018-04-16 18:04:27', 'M', NULL, NULL, NULL, NULL, NULL),
(12, 13, 'DSR', '285988', '', 'P', 'John ', 'david', 'Smith', 'john@gmail.com', '4297f44b13955235245b2497399d7a93', '5446879879', '4984949549', '9849849498', '', 'SR', NULL, 'AR', NULL, NULL, 0x0868234ff971fcd23c4ff44f3e7be98d, 0x50b58b053e557e747c836db9f30049e5, 0xf37670e9fa54a436a63ea186dfd69750, NULL, 'N', '2018-04-16 18:08:45', NULL, '4949.00', NULL, 'P', NULL, NULL, '456.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 18:08:45', '2018-04-16 18:15:57', 'M', NULL, NULL, NULL, NULL, NULL),
(13, 14, 'DSR', '285988', '', 'P', 'Shikhar', 'hardik', 'Dhawan', 'shikhar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '4464646646', '9778797989', '6546546546', '', 'SR', NULL, 'CA', NULL, NULL, 0x8972193079b88fb0a8e7a86334c85e76, 0x34fdc8d0a7ea705d7ce1253fc44cc49d, 0x339fcda09f4f301d351a67faba29853b, NULL, 'N', '2018-04-16 18:41:41', NULL, '5454.00', NULL, 'P', NULL, NULL, '4564.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 18:41:41', '2018-04-16 18:47:49', 'M', NULL, NULL, NULL, NULL, NULL),
(14, 15, 'DSR', '285988', '', 'P', 'shikar', '', 'john', 'jkkjk@gamil.com', '96e79218965eb72c92a549dd5a330112', '6546546546', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-16 19:53:00', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 19:53:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 16, 'DSR', '285988', '', 'P', 'david', '', 'mike', 'mike@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '5465444654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-17 17:03:35', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 17:03:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 17, 'DSR', '285988', '', 'P', 'mike', '', 'david', 'mike@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '5465465465', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-17 17:12:20', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 17:12:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 18, 'DSR', '285988', '', 'P', 'Mike', 'Kieren', 'David', 'mike@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2314654165', '4651619816', '6551651118', 'nebnoen', '', NULL, 'VA', NULL, NULL, 0x827193f27ca290603532d15a43001ab2, 0xb4a644b6a93b42995b2da0fb629c0967, 0xca060cb7b52c0288e7a98ebf7e44c9aa, NULL, 'N', '2018-04-17 17:33:38', NULL, '8788.00', NULL, 'P', NULL, NULL, '455.00', 'rent', 'N', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 17:33:38', '2018-04-17 18:40:12', 'M', NULL, NULL, NULL, NULL, NULL),
(17, 19, 'DSR', '285988', '', 'A', 'cameron', 'bancroft', 'taylor', 'taylor@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '8984881981', '4984984988', '4984198498', '4519', 'SR', NULL, 'CA', NULL, NULL, 0x064a347a6de3d62abba947f5bebfc134, 0x919912ff5ef0884542137c53e74504e6, 0x40e63c08d9caa4f4b60f4f61b2237aad, NULL, 'N', '2018-04-17 18:09:13', NULL, '566.00', NULL, 'P', NULL, NULL, '5656.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 18:09:13', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(17, 20, 'DSR', '285988', NULL, 'O', 'nike', NULL, 'puma', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0x7cd52ef1bc166d4dc5b0db3025023969, 0x1b15515faa741726a23acc9ce0d8e158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 21, 'DSR', '285988', '', 'P', 'Daniel', '', 'Vettori', 'vettori@gmail.com', '96e79218965eb72c92a549dd5a330112', '2165465465', '', '', '', '', NULL, '', NULL, NULL, 0x0143db63ee66b0cdff9f69917680151e, 0x9431ff7a31efd4b3f77e7475f961a4f8, 0x0143db63ee66b0cdff9f69917680151e, NULL, 'N', '2018-04-18 14:30:13', NULL, '0.00', NULL, 'P', NULL, NULL, '0.00', 'rent', 'Y', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 14:30:13', NULL, '', NULL, NULL, NULL, NULL, NULL),
(19, 22, 'DSR', '285988', '', 'P', 's', '', 'we', 'fgngfn@fghhdth.vom', 'e10adc3949ba59abbe56e057f20f883e', '2342352352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-19 15:26:09', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 15:26:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 23, 'DSR', '285988', '', 'P', 'dhe', '', 'erh', 'test1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2352352352', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-19 17:20:30', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 17:20:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 24, 'DSR', '285988', '', 'P', 'Karan112222', 'mennie11113333', 'Paigambar', 'karan1@gmail.com.com', 'e10adc3949ba59abbe56e057f20f883e', '8147585351', '5645465465', '6465465465', 'dont know', '', NULL, 'AS', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x98bc733decb9885e83d6ff5309fed833, 0x3b25fb340bf13146b7d98d6d01e3d0a9, NULL, 'N', '2018-04-20 18:08:29', NULL, '5555.00', NULL, 'P', NULL, NULL, '111.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-20 18:08:29', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(22, 25, 'DSR', '285988', '', 'P', 'test5', '', 'test2', 'test1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-20 19:03:48', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-20 19:03:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 26, 'TSP', '000001', '', 'P', 'test1', '', 'sharma', 'test1@gmail.com', '1a100d2c0dab19c4430e7d73762b3423', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-25 17:45:46', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-25 17:45:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 27, 'TSP', '000001', '', 'P', 'test1', '', 'mohan', 'mohan.ningappanavar@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8147585351', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-26 14:32:22', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-26 14:32:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 28, 'TSP', '416122', '', 'P', 'Brad ', '', 'Hodge', 'brad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8888888888', '4335345345', '3555555555', '', '', NULL, '', NULL, NULL, 0x33ad61e20cb70f78b0e4dbd0d961e099, 0x03a02d7394eaa227ca9328ba946b8976, 0x0143db63ee66b0cdff9f69917680151e, NULL, 'N', '2018-04-27 14:45:05', NULL, '4546.00', NULL, 'P', NULL, NULL, '3454.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-27 14:45:05', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(26, 29, 'TSP', '000001', '', 'P', 'raghu', '', 'sharma', 'test1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '3333333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-04-30 18:54:43', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-30 18:54:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 30, 'TSP', '000001', '', 'P', 'Evin', 'chris', 'Lewis', 'evin@gmail.com', '96e79218965eb72c92a549dd5a330112', '9898989898', '9898989898', '9889898989', 'shifting to california', 'SR', NULL, 'CA', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x8dfff39776504365f97d090309e8075a, 0xfba200bce23bcd3d3608bec9397c125c, NULL, 'N', '2018-05-04 17:34:53', NULL, '8982.00', NULL, 'P', NULL, NULL, '565.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-04 17:34:53', '2018-05-04 17:42:07', 'M', NULL, NULL, NULL, NULL, NULL),
(28, 31, 'TSP', '416122', '', 'P', 'Karun ', 'Manish', 'Pandey', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8147585351', '9999999999', '9999999999', 'shiftingfgfj', 'SR', NULL, 'CA', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x5c5ab58c1ae805368e9c1e451cc5c42c, 0x68411c15eaec1e8ea73e581e1c296acf, NULL, 'N', '2018-05-09 15:46:04', NULL, '456.00', NULL, 'P', NULL, NULL, '565.00', 'rent', 'Y', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-09 15:46:04', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(29, 32, 'TSP', '416122', '', 'P', 'Mohan', '', 'N', 'mohan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8147585351', '', '', 'rykjty', '', NULL, '', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x7fadbf5de9e967ae2f8158949138040f, 0x0143db63ee66b0cdff9f69917680151e, NULL, 'N', '2018-05-17 11:06:01', NULL, '6565.00', NULL, 'P', NULL, NULL, '678.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-17 11:06:01', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(29, 33, 'TSP', '416122', '', 'A', 'Pradeep', 'S', 'Shetty', 'pradeep@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '9999999999', '', '', '', 'SR', NULL, 'CA', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0xd61995d16b77c8e39986185c9c81f359, 0x3b25fb340bf13146b7d98d6d01e3d0a9, NULL, 'N', '2018-05-17 14:25:29', NULL, '676.00', NULL, 'P', NULL, NULL, '333.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-17 14:25:29', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(30, 35, 'TSP', '000001', '', 'P', 'pradeep', '', 'shetty', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-18 14:32:38', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 14:32:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 36, 'TSP', '000001', '', 'P', 'pradeep', '', 'david', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-18 14:34:22', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 14:34:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 37, 'TSP', '416122', '', 'P', 'pradeep', '', 'sharma', 'ppradeeps205@gmail.com', '4297f44b13955235245b2497399d7a93', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-18 14:35:56', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 14:35:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 38, 'TSP', '000001', '', 'P', 'Pradeep', '', 'Sharma', 'ppradeeps205@gmail.com', '4297f44b13955235245b2497399d7a93', '9999999999', '', '', 'rty', '', NULL, '', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0xd9710c4a65e0046cf0eeea98b814fc1f, 0x0143db63ee66b0cdff9f69917680151e, NULL, 'N', '2018-05-18 15:00:11', NULL, '999.00', NULL, 'P', NULL, NULL, '787.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 15:00:11', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(34, 39, 'DSR', '454356', 'PROPERTY5', 'P', 'pradeep', '', 'sharma', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-18 15:11:23', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '29.99', '1.00', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 15:11:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 40, 'TSP', '416122', '', 'P', 'pradeep', '', 'sharma', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-18 17:25:36', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 17:25:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 41, 'TSP', '416122', '', 'P', 'Pradeep', '', 'Test2', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', '', '', '', '', NULL, '', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0xc2e5607fff323813dec5390e918fd982, 0x0143db63ee66b0cdff9f69917680151e, NULL, 'N', '2018-05-18 18:02:08', NULL, '999.00', NULL, 'P', NULL, NULL, '99.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 18:02:08', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(37, 42, 'TSP', '416122', '', 'P', 'Pradeep', 'Bancroft', 'Sharma', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', '', '', '', '', NULL, 'AK', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x23d87f56e44837386ced2ba3995c1f62, 0x5b550bd10f3371dd16e534ac05eb365a, NULL, 'N', '2018-05-18 19:16:15', NULL, '777.00', NULL, 'P', NULL, NULL, '777.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 19:16:15', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(37, 43, 'TSP', '416122', '', 'A', 'arun', 'langer', 'justien', 'mohan@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '9999999999', '9999999999', '9999999999', 'shifting', 'SR', NULL, 'AK', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x9942dc0310d61f531e4ddaa521c0c7d2, 0x832a0dc8eb168ead44bbe57225ff10a6, NULL, 'N', '2018-05-23 16:03:30', NULL, '456.00', NULL, 'P', NULL, NULL, '566.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-23 16:03:30', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(37, 44, 'TSP', '416122', '', 'A', 'arun', 'langer', 'justien', 'mohan@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '9999999999', '9999999999', '9999999999', 'shifting', 'SR', NULL, 'AK', NULL, NULL, 0x3c31b1c818641f9bb2bc4e2cf08f2f3b, 0x9942dc0310d61f531e4ddaa521c0c7d2, 0x832a0dc8eb168ead44bbe57225ff10a6, NULL, 'N', '2018-05-23 16:03:32', NULL, '456.00', NULL, 'P', NULL, NULL, '566.00', 'rent', 'X', '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-23 16:03:32', NULL, 'M', NULL, NULL, NULL, NULL, NULL),
(38, 45, 'TSP', '416122', '', 'P', 'pradeep', '', 'sharma', 'ppradeeps205@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9999999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', '2018-05-28 17:14:13', NULL, NULL, NULL, 'P', NULL, NULL, NULL, NULL, NULL, '1.00', '1.00', '5000.00', NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-28 17:14:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applicantssignature`
--

CREATE TABLE `applicantssignature` (
  `idapplicantssignature` int(11) NOT NULL,
  `applicationid` int(11) NOT NULL,
  `applicantid` int(11) NOT NULL,
  `signaturetype` char(1) NOT NULL COMMENT 'P=PAD K=Keyboard',
  `signaturefont` varchar(100) DEFAULT NULL,
  `signatureimage` longblob,
  `signaturedatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Applicants signature table';

--
-- Dumping data for table `applicantssignature`
--

INSERT INTO `applicantssignature` (`idapplicantssignature`, `applicationid`, `applicantid`, `signaturetype`, `signaturefont`, `signatureimage`, `signaturedatetime`) VALUES
(1, 1, 1, '1', '', 0x686b6a686b, '2018-02-21 19:08:44'),
(2, 4, 5, '1', '', '', '2018-04-13 15:15:47'),
(3, 6, 7, '1', '', '', '2018-04-16 13:56:11'),
(4, 9, 10, '1', '', '', '2018-04-16 17:44:57'),
(5, 10, 11, '1', '', 0x6466676766686766, '2018-04-16 17:47:07'),
(6, 11, 12, '1', '', 0x747974796a, '2018-04-16 18:04:27'),
(7, 12, 13, '1', '', 0x776566776566, '2018-04-16 18:15:57'),
(8, 13, 14, '1', '', 0x7277657274, '2018-04-16 18:47:49'),
(9, 17, 18, '1', '', 0x6a6e6e, '2018-04-17 18:40:12'),
(10, 27, 30, '1', '', 0x35363535, '2018-05-04 17:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `idapplication` int(11) NOT NULL,
  `applicationmemberid` char(3) NOT NULL,
  `applicationmemberno` char(6) NOT NULL,
  `applicationmastermemberid` char(3) NOT NULL,
  `applicationmastermemberno` char(6) NOT NULL,
  `applicationproperty` char(10) DEFAULT NULL,
  `applicationdate` datetime NOT NULL,
  `applicationtoken` varchar(100) NOT NULL,
  `applicationstatus` char(1) NOT NULL COMMENT 'I=Incomplete, E=Error, C=Complete',
  `applicationcompletiondate` datetime DEFAULT NULL,
  `applicationtotalapplicant` int(3) DEFAULT NULL,
  `applicationtotalresidents` int(3) DEFAULT NULL,
  `applicationpendapplicant` int(3) DEFAULT NULL,
  `applicationtotaloccupant` int(3) DEFAULT NULL COMMENT 'All dependents including minors',
  `applicationlastactivitydate` datetime DEFAULT NULL,
  `applicationholdingdeposit` decimal(10,2) DEFAULT NULL,
  `applicationsecuritydeposit` decimal(10,2) DEFAULT NULL,
  `applicationunitno` varchar(20) DEFAULT NULL,
  `bedroomtype` varchar(50) DEFAULT NULL,
  `otherfee` decimal(10,2) DEFAULT NULL,
  `futurerent` decimal(10,2) DEFAULT NULL,
  `moveindate` date DEFAULT NULL,
  `leaseterm` char(15) DEFAULT NULL,
  `ispetincluded` char(1) DEFAULT NULL,
  `isvehicleincluded` char(1) DEFAULT NULL,
  `isbankincluded` char(1) DEFAULT NULL,
  `iscreditrefincluded` char(1) DEFAULT NULL,
  `ispersonalrefincluded` char(1) DEFAULT NULL,
  `marketsourceid` int(15) DEFAULT NULL,
  `marketsourcename` varchar(100) DEFAULT NULL,
  `marketsourceother` varchar(100) DEFAULT NULL,
  `applicationscreeningsubmitdate` datetime DEFAULT NULL,
  `applicationscreeningstatus` char(1) DEFAULT NULL COMMENT 'C=Completed P=Pending for User R=Pending For Management Review E=Error I=In-progress ',
  `applicationscreeningdecision` char(1) DEFAULT NULL COMMENT 'A=Approve  C=Conditional  D = Decline  P=Pending N=No Decision',
  `applicationprimaryzip` char(5) DEFAULT NULL COMMENT 'Primary applicant zip code - Used for analysis ',
  `applicationaverageincome` decimal(10,2) DEFAULT NULL COMMENT 'Application average income - use for analysis',
  `applicationsubmittype` varchar(20) DEFAULT NULL,
  `otherleaseterms` varchar(15) DEFAULT NULL,
  `screeningerror` varchar(255) DEFAULT NULL,
  `screeningdecisiontext` varchar(255) DEFAULT NULL,
  `screeninginquiryno` varchar(15) DEFAULT NULL,
  `screeningreportlink` varchar(3000) DEFAULT NULL,
  `screeningupdatedate` datetime DEFAULT NULL,
  `screeningcrimstatus` varchar(25) DEFAULT NULL,
  `guestcardvendor` varchar(10) DEFAULT NULL,
  `guestcardvendorid` varchar(100) DEFAULT NULL,
  `guestcardfirstpost` char(1) DEFAULT NULL,
  `applicationfirstpost` char(1) DEFAULT NULL,
  `guestfloorplanid` varchar(25) DEFAULT NULL,
  `guestmarketingname` varchar(100) DEFAULT NULL,
  `vendorleaseid` varchar(100) DEFAULT NULL,
  `screeningposttovendor` char(1) DEFAULT NULL COMMENT 'Posting the Screening Result to Vendor like ResMan',
  `screeningposttovendresp` varchar(3000) DEFAULT NULL COMMENT 'Vendor response XML',
  `unitaddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`idapplication`, `applicationmemberid`, `applicationmemberno`, `applicationmastermemberid`, `applicationmastermemberno`, `applicationproperty`, `applicationdate`, `applicationtoken`, `applicationstatus`, `applicationcompletiondate`, `applicationtotalapplicant`, `applicationtotalresidents`, `applicationpendapplicant`, `applicationtotaloccupant`, `applicationlastactivitydate`, `applicationholdingdeposit`, `applicationsecuritydeposit`, `applicationunitno`, `bedroomtype`, `otherfee`, `futurerent`, `moveindate`, `leaseterm`, `ispetincluded`, `isvehicleincluded`, `isbankincluded`, `iscreditrefincluded`, `ispersonalrefincluded`, `marketsourceid`, `marketsourcename`, `marketsourceother`, `applicationscreeningsubmitdate`, `applicationscreeningstatus`, `applicationscreeningdecision`, `applicationprimaryzip`, `applicationaverageincome`, `applicationsubmittype`, `otherleaseterms`, `screeningerror`, `screeningdecisiontext`, `screeninginquiryno`, `screeningreportlink`, `screeningupdatedate`, `screeningcrimstatus`, `guestcardvendor`, `guestcardvendorid`, `guestcardfirstpost`, `applicationfirstpost`, `guestfloorplanid`, `guestmarketingname`, `vendorleaseid`, `screeningposttovendor`, `screeningposttovendresp`, `unitaddress`) VALUES
(1, 'TSP', '416122', 'TSP', '000001', NULL, '2018-02-21 18:05:33', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-02-21 18:05:33', '5000.00', '0.00', '', '', '500.00', '0.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(2, 'TSP', '416122', 'TSP', '000001', NULL, '2018-03-22 17:25:35', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-03-22 17:25:35', '5000.00', '0.00', '', '', '500.00', '0.00', '2018-03-23', '12 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, ''),
(3, 'TSP', '416122', 'TSP', '000001', NULL, '2018-03-22 18:06:27', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-03-22 18:06:27', '5000.00', '0.00', '', '', '500.00', '0.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(4, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-12 21:48:05', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-12 21:48:05', '5000.00', '0.00', '', '', '500.00', '0.00', '2018-04-20', '12 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, ''),
(5, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-13 19:22:26', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-13 19:22:26', '5000.00', '0.00', '', '', '500.00', '0.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(6, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-16 13:51:57', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-16 13:51:57', '5000.00', '0.00', '', '', '500.00', '0.00', '2018-04-17', '12 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, ''),
(7, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-16 16:58:45', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:58:45', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-16 17:00:19', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:00:19', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-16 17:33:39', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:33:39', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-18', '12 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(10, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-16 17:40:53', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:40:53', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-17', '12 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(11, 'TSP', '416122', 'TSP', '000001', NULL, '2018-04-16 17:59:20', '9991111841TSP|000001380910583080TSP|41612288249541', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:59:20', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-18', '12 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(12, 'DSR', '285988', 'DSR', '454356', NULL, '2018-04-16 18:08:44', '3732593124DSR|454356554986292921DSR|28598893678570', 'p', NULL, NULL, NULL, NULL, NULL, '2018-04-16 18:08:44', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-18', '24 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(13, 'DSR', '285988', 'DSR', '454356', '', '2018-04-16 18:41:41', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, 1, 1, NULL, 0, '2018-04-16 18:41:41', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-17', '12', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, '', '5454.00', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, ''),
(14, 'DSR', '285988', 'DSR', '454356', '', '2018-04-16 19:53:00', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-16 19:53:00', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(15, 'DSR', '285988', 'DSR', '454356', '', '2018-04-17 17:03:35', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-17 17:03:35', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(16, 'DSR', '285988', 'DSR', '454356', '', '2018-04-17 17:12:20', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-17 17:12:20', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(17, 'DSR', '285988', 'DSR', '454356', '', '2018-04-17 17:33:38', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, 2, 2, NULL, 1, '2018-04-17 17:33:38', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-18', '12', '', '', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, '', '4677.00', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, ''),
(18, 'DSR', '285988', 'DSR', '454356', '', '2018-04-18 14:30:13', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-18 14:30:13', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '1970-01-01', '12', '', '', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, ''),
(19, 'DSR', '285988', 'DSR', '454356', '', '2018-04-19 15:26:09', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-19 15:26:09', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(20, 'DSR', '285988', 'DSR', '454356', '', '2018-04-19 17:20:30', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-19 17:20:30', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(21, 'DSR', '285988', 'DSR', '454356', '', '2018-04-20 18:08:29', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-20 18:08:29', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-25', '12', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, ''),
(22, 'DSR', '285988', 'DSR', '454356', '', '2018-04-20 19:03:48', '3732593124DSR|454356554986292921DSR|28598893678570', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-20 19:03:48', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(23, 'TSP', '000001', 'TSP', '000001', '', '2018-04-25 17:45:46', '6979810912TSP|000001879708071754TSP|00000155985023', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-25 17:45:46', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(24, 'TSP', '000001', 'TSP', '000001', '', '2018-04-26 14:32:22', '6979810912TSP|000001879708071754TSP|00000155985023', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-26 14:32:22', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(25, 'TSP', '416122', 'TSP', '000001', '', '2018-04-27 14:45:05', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-27 14:45:05', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-04-30', '12', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, ''),
(26, 'TSP', '000001', 'TSP', '000001', '', '2018-04-30 18:54:43', '6979810912TSP|000001879708071754TSP|00000155985023', 'P', NULL, NULL, NULL, NULL, NULL, '2018-04-30 18:54:43', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(27, 'TSP', '000001', 'TSP', '000001', '', '2018-05-04 17:34:53', '6979810912TSP|000001879708071754TSP|00000155985023', 'P', NULL, 1, 1, NULL, 0, '2018-05-04 17:34:53', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-05-25', '12 Months', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, '', '8982.00', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, ''),
(28, 'TSP', '416122', 'TSP', '000001', '', '2018-05-09 15:46:04', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-09 15:46:04', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-05-15', '12', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, ''),
(29, 'TSP', '416122', 'TSP', '000001', '', '2018-05-17 11:06:01', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-17 11:06:01', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-05-18', '12', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, ''),
(30, 'TSP', '000001', 'TSP', '000001', '', '2018-05-18 14:32:38', '6979810912TSP|000001879708071754TSP|00000155985023', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 14:32:38', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(31, 'TSP', '000001', 'TSP', '000001', '', '2018-05-18 14:34:22', '6979810912TSP|000001879708071754TSP|00000155985023', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 14:34:22', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(32, 'TSP', '416122', 'TSP', '000001', '', '2018-05-18 14:35:56', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 14:35:56', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(33, 'TSP', '000001', 'TSP', '000001', '', '2018-05-18 15:00:11', '6979810912TSP|000001879708071754TSP|00000155985023', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 15:00:11', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-05-24', '', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, ''),
(34, 'DSR', '454356', 'DSR', '454356', 'PROPERTY5', '2018-05-18 15:11:23', '4362226613DSR|454356094849740335DSR|45435659643456', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 15:11:23', '0.00', '0.00', '', '', '0.00', '0.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ResMan', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL),
(35, 'TSP', '416122', 'TSP', '000001', '', '2018-05-18 17:25:36', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 17:25:36', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL),
(36, 'TSP', '416122', 'TSP', '000001', '', '2018-05-18 18:02:08', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 18:02:08', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-05-23', '12', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, '77'),
(37, 'TSP', '416122', 'TSP', '000001', '', '2018-05-18 19:16:14', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-18 19:16:14', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', '2018-05-23', '12', 'N', 'N', 'Y', NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, '22'),
(38, 'TSP', '416122', 'TSP', '000001', '', '2018-05-28 17:14:13', '9991111841TSP|000001380910583080TSP|41612288249541', 'P', NULL, NULL, NULL, NULL, NULL, '2018-05-28 17:14:13', '5000.00', '5000.00', '21a', '2x2', '500.00', '1500.00', NULL, '12', NULL, NULL, NULL, NULL, NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '1x1', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `applicationandapplicants`
-- (See below for the actual view)
--
CREATE TABLE `applicationandapplicants` (
`idapplication` int(11)
,`applicationmemberid` char(3)
,`applicationmemberno` char(6)
,`applicationmastermemberid` char(3)
,`applicationmastermemberno` char(6)
,`applicationproperty` char(10)
,`applicationdate` datetime
,`applicationtoken` varchar(100)
,`applicationstatus` char(1)
,`applicationcompletiondate` datetime
,`applicationtotalapplicant` int(3)
,`applicationtotalresidents` int(3)
,`applicationpendapplicant` int(3)
,`applicationtotaloccupant` int(3)
,`applicationlastactivitydate` datetime
,`applicationholdingdeposit` decimal(10,2)
,`applicationsecuritydeposit` decimal(10,2)
,`applicationunitno` varchar(20)
,`bedroomtype` varchar(50)
,`otherfee` decimal(10,2)
,`futurerent` decimal(10,2)
,`moveindate` date
,`leaseterm` char(15)
,`ispetincluded` char(1)
,`isvehicleincluded` char(1)
,`isbankincluded` char(1)
,`iscreditrefincluded` char(1)
,`ispersonalrefincluded` char(1)
,`marketsourceid` int(15)
,`marketsourcename` varchar(100)
,`marketsourceother` varchar(100)
,`applicationscreeningsubmitdate` datetime
,`applicationscreeningstatus` char(1)
,`applicationscreeningdecision` char(1)
,`applicationprimaryzip` char(5)
,`applicationaverageincome` decimal(10,2)
,`applicationsubmittype` varchar(20)
,`otherleaseterms` varchar(15)
,`screeningerror` varchar(255)
,`screeningdecisiontext` varchar(255)
,`screeninginquiryno` varchar(15)
,`screeningreportlink` varchar(3000)
,`screeningupdatedate` datetime
,`screeningcrimstatus` varchar(25)
,`guestcardvendor` varchar(10)
,`guestcardvendorid` varchar(100)
,`guestcardfirstpost` char(1)
,`applicationfirstpost` char(1)
,`guestfloorplanid` varchar(25)
,`guestmarketingname` varchar(100)
,`vendorleaseid` varchar(100)
,`screeningposttovendor` char(1)
,`screeningposttovendresp` varchar(3000)
,`applicantsidapplication` int(11)
,`idapplicants` int(11)
,`applicantsmemberid` char(3)
,`applicantsmemberno` char(6)
,`applicantsproperty` char(10)
,`applicantstype` char(1)
,`applicantsfirtsname` varchar(50)
,`applicantmidname` varchar(50)
,`applicantslastname` varchar(50)
,`applicantsemail` varchar(100)
,`applicantphoneno` char(10)
,`applicanthomephone` char(10)
,`appreasonforleaving` varchar(100)
,`applicantsuffix` char(3)
,`applicantdrivinglicense` varbinary(100)
,`applicantdrivinglicstate` char(2)
,`applicantdob` varbinary(50)
,`applicantssn` varbinary(50)
,`applicantempstatus` varchar(15)
,`applicantsinvited` char(1)
,`applicantsinvitationdate` datetime
,`applicantsempincome` decimal(10,2)
,`applicantsothincome` decimal(10,2)
,`applicantsstatus` char(1)
,`applicantsstatusdate` datetime
,`applicantsscreeningdecision` char(1)
,`applicantscurrentrent` decimal(10,2)
,`applicantscurrentrestype` char(10)
,`Applicantcurntlyemplyd` char(1)
,`screeningfee` decimal(7,2)
,`processingfee` decimal(7,2)
,`holdingdeposit` decimal(7,2)
,`paymentid` varchar(50)
,`paymentdate` datetime
,`paidamount` decimal(10,2)
,`paidby` varchar(50)
,`paymentapprovalreference` varchar(100)
,`paymentstatus` char(1)
,`termsagreeddate` datetime
,`disclosureagreeddate` datetime
,`appincometype` char(1)
,`appconsent` char(1)
,`appconsentdate` datetime
,`appconsentfromip` varchar(20)
,`guestcardpersonid` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `apppersonalref`
--

CREATE TABLE `apppersonalref` (
  `idapppersonalref` int(11) NOT NULL,
  `idapplication` int(11) NOT NULL,
  `idapplicant` int(11) NOT NULL,
  `referencename` varchar(50) NOT NULL,
  `relationship` varchar(25) NOT NULL,
  `referencephone` char(10) NOT NULL,
  `referenceaddress` varchar(60) DEFAULT NULL,
  `referencecity` varchar(50) DEFAULT NULL,
  `referencestate` char(2) DEFAULT NULL,
  `referencezip` char(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `apppersonalref`
--

INSERT INTO `apppersonalref` (`idapppersonalref`, `idapplication`, `idapplicant`, `referencename`, `relationship`, `referencephone`, `referenceaddress`, `referencecity`, `referencestate`, `referencezip`) VALUES
(1918, 2, 3, 'jytj', '', '9999999999', '', '', '', ''),
(1919, 4, 5, 'jytj', '', '9999999999', '', '', '', ''),
(1920, 6, 7, 'jytj', '', '9999999999', '', '', '', ''),
(1921, 9, 10, 'jytj', '', '9999999999', '', '', '', ''),
(1922, 10, 11, 'jytj', '', '9999999999', '', '', '', ''),
(1923, 11, 12, 'jytj', '', '9999999999', '', '', '', ''),
(1924, 12, 13, 'jytj', '', '9999999999', '', '', '', ''),
(1925, 12, 13, 'jytj', '', '9999999999', '', '', '', ''),
(1926, 13, 14, 'jytj', '', '9999999999', '', '', '', ''),
(1927, 13, 14, 'jytj', '', '9999999999', '', '', '', ''),
(1928, 17, 18, 'jytj', '', '9999999999', '', '', '', ''),
(1929, 17, 18, 'jytj', '', '9999999999', '', '', '', ''),
(1930, 17, 19, 'jytj', '', '9999999999', '', '', '', ''),
(1931, 17, 19, 'jytj', '', '9999999999', '', '', '', ''),
(1932, 18, 21, 'jytj', '', '9999999999', '', '', '', ''),
(1933, 18, 21, 'jytj', '', '9999999999', '', '', '', ''),
(1934, 21, 24, 'jytj', '', '9999999999', '', '', '', ''),
(1935, 21, 24, 'jytj', '', '9999999999', '', '', '', ''),
(1936, 25, 28, 'jytj', '', '9999999999', '', '', '', ''),
(1937, 27, 30, 'jytj', '', '9999999999', '', '', '', ''),
(1938, 29, 32, 'jytj', '', '9999999999', '', '', '', ''),
(1939, 33, 38, 'jytj', '', '9999999999', '', '', '', ''),
(1940, 36, 41, 'yuk', '', '9999999999', '', '', '', ''),
(1941, 37, 42, 'Name', 'Other', '9999999999', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `apppets`
--

CREATE TABLE `apppets` (
  `idpets` int(11) NOT NULL,
  `petsidapplication` int(11) NOT NULL,
  `petstype` varchar(25) NOT NULL,
  `petsbreed` varchar(25) NOT NULL,
  `petsname` varchar(50) DEFAULT NULL,
  `petsweight` char(3) DEFAULT NULL COMMENT 'Weight in pounds',
  `petscolor` varchar(25) DEFAULT NULL,
  `petsage` varchar(15) DEFAULT NULL,
  `petsgender` char(1) DEFAULT NULL COMMENT 'M=Male F=Female',
  `petstagno` varchar(25) DEFAULT NULL,
  `petspicture` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pets''s table ';

--
-- Dumping data for table `apppets`
--

INSERT INTO `apppets` (`idpets`, `petsidapplication`, `petstype`, `petsbreed`, `petsname`, `petsweight`, `petscolor`, `petsage`, `petsgender`, `petstagno`, `petspicture`) VALUES
(2, 17, 'dog', 'lab', 'puppy', '67', 'white', '10', 'F', '6778678', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appquestions`
--

CREATE TABLE `appquestions` (
  `idappquestions` int(11) NOT NULL,
  `appquestionsidapplication` int(11) NOT NULL,
  `appquestionsidapplicant` int(11) NOT NULL,
  `appquestionsidquestion` int(11) NOT NULL,
  `appquestionsdescription` varchar(250) NOT NULL,
  `appquestionsanswer` char(1) NOT NULL COMMENT 'Y or N',
  `appquestionsdetail` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Applicant questions and answers table';

--
-- Dumping data for table `appquestions`
--

INSERT INTO `appquestions` (`idappquestions`, `appquestionsidapplication`, `appquestionsidapplicant`, `appquestionsidquestion`, `appquestionsdescription`, `appquestionsanswer`, `appquestionsdetail`) VALUES
(1, 12, 13, 0, '', 'N', ''),
(2, 13, 14, 0, '', 'N', ''),
(3, 17, 18, 0, '', 'N', ''),
(4, 17, 19, 0, '', 'N', ''),
(5, 18, 21, 0, '', 'N', ''),
(6, 21, 24, 0, '', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `apptermslog`
--

CREATE TABLE `apptermslog` (
  `idapptermslog` int(11) NOT NULL,
  `apptermslogapplicationid` int(11) NOT NULL,
  `apptermslogapplicantid` int(11) NOT NULL,
  `apptermslogtype` char(20) NOT NULL,
  `apptermslogdate` datetime NOT NULL,
  `apptermslogdateupdate` datetime DEFAULT NULL,
  `apptermslogip` varchar(15) DEFAULT NULL,
  `apptermslogbrowser` varchar(500) DEFAULT NULL,
  `apptermsloginfo` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Applicants terms and condition and disclosure acceptance log';

--
-- Dumping data for table `apptermslog`
--

INSERT INTO `apptermslog` (`idapptermslog`, `apptermslogapplicationid`, `apptermslogapplicantid`, `apptermslogtype`, `apptermslogdate`, `apptermslogdateupdate`, `apptermslogip`, `apptermslogbrowser`, `apptermsloginfo`) VALUES
(1, 6, 7, 'Policy', '2018-04-16 14:24:35', '2018-04-16 15:56:01', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(2, 7, 8, 'Policy', '2018-04-16 16:58:46', '2018-04-16 16:59:31', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(3, 8, 9, 'Policy', '2018-04-16 17:00:19', '2018-04-16 17:25:14', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(4, 9, 10, 'Policy', '2018-04-16 17:33:40', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(5, 10, 11, 'Policy', '2018-04-16 17:40:53', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(6, 9, 10, 'Disclosure', '2018-04-16 17:44:57', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n'),
(7, 10, 11, 'Disclosure', '2018-04-16 17:47:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n'),
(8, 11, 12, 'Policy', '2018-04-16 17:59:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(9, 11, 12, 'Disclosure', '2018-04-16 18:04:26', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n'),
(10, 12, 13, 'Policy', '2018-04-16 18:08:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(11, 12, 13, 'Disclosure', '2018-04-16 18:15:56', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n'),
(12, 13, 14, 'Policy', '2018-04-16 18:41:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(13, 13, 14, 'Disclosure', '2018-04-16 18:47:49', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n'),
(14, 14, 15, 'Policy', '2018-04-16 19:53:01', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(15, 15, 16, 'Policy', '2018-04-17 17:03:36', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(16, 16, 17, 'Policy', '2018-04-17 17:12:21', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(17, 17, 18, 'Policy', '2018-04-17 17:33:39', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(18, 17, 18, 'Disclosure', '2018-04-17 18:12:04', '2018-04-17 18:40:12', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n'),
(19, 18, 21, 'Policy', '2018-04-18 14:30:14', '2018-04-18 14:44:40', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36'),
(20, 19, 22, 'Policy', '2018-04-19 15:26:10', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(21, 20, 23, 'Policy', '2018-04-19 17:20:31', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(22, 21, 24, 'Policy', '2018-04-20 18:08:30', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(23, 22, 25, 'Policy', '2018-04-20 19:03:49', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>how r u??</p>\r\n'),
(24, 23, 26, 'Policy', '2018-04-25 17:45:47', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(25, 24, 27, 'Policy', '2018-04-26 14:32:22', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(26, 25, 28, 'Policy', '2018-04-27 14:45:06', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(27, 26, 29, 'Policy', '2018-04-30 18:54:43', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(28, 27, 30, 'Policy', '2018-05-04 17:34:53', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(29, 27, 30, 'Disclosure', '2018-05-04 17:42:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n'),
(30, 28, 31, 'Policy', '2018-05-09 15:46:04', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(31, 29, 32, 'Policy', '2018-05-17 11:06:02', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(32, 30, 35, 'Policy', '2018-05-18 14:32:38', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(33, 31, 36, 'Policy', '2018-05-18 14:34:22', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(34, 32, 37, 'Policy', '2018-05-18 14:35:56', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(35, 33, 38, 'Policy', '2018-05-18 15:00:11', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(36, 34, 39, 'Policy', '2018-05-18 15:11:23', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(37, 35, 40, 'Policy', '2018-05-18 17:25:36', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(38, 36, 41, 'Policy', '2018-05-18 18:02:08', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(39, 37, 42, 'Policy', '2018-05-18 19:16:15', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n'),
(40, 38, 45, 'Policy', '2018-05-28 17:14:14', NULL, '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `appvehicles`
--

CREATE TABLE `appvehicles` (
  `idvehicles` int(11) NOT NULL,
  `vehiclesidapplications` int(11) NOT NULL,
  `vehiclesmake` varchar(25) NOT NULL,
  `vehiclesmodel` varchar(25) NOT NULL,
  `vehiclesyear` char(4) NOT NULL,
  `vehiclescolor` varchar(15) NOT NULL,
  `vehiclesplateno` varchar(25) DEFAULT NULL,
  `vehiclesregistrationstate` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vehicles table ';

--
-- Dumping data for table `appvehicles`
--

INSERT INTO `appvehicles` (`idvehicles`, `vehiclesidapplications`, `vehiclesmake`, `vehiclesmodel`, `vehiclesyear`, `vehiclescolor`, `vehiclesplateno`, `vehiclesregistrationstate`) VALUES
(2, 17, 'Bajaj', '2010', '2010', 'Black', 'Ka03ef6050', 'CA');

-- --------------------------------------------------------

--
-- Stand-in structure for view `app_applicants`
-- (See below for the actual view)
--
CREATE TABLE `app_applicants` (
`idapplication` int(11)
,`applicationmemberid` char(3)
,`applicationmemberno` char(6)
,`applicationproperty` char(10)
,`applicationmastermemberid` char(3)
,`applicationmastermemberno` char(6)
,`applicationdate` datetime
,`applicationstatus` char(1)
,`applicationcompletiondate` datetime
,`applicationlastactivitydate` datetime
,`applicationscreeningsubmitdate` datetime
,`applicationscreeningstatus` char(1)
,`applicationscreeningdecision` char(1)
,`applicationsubmittype` varchar(20)
,`applicantsidapplication` int(11)
,`idapplicants` int(11)
,`applicantsmemberid` char(3)
,`applicantsmemberno` char(6)
,`applicantsproperty` char(10)
,`applicantstype` char(1)
,`applicantsfirtsname` varchar(50)
,`applicantmidname` varchar(50)
,`applicantslastname` varchar(50)
,`applicantsemail` varchar(100)
,`applicantpassword` varchar(50)
,`applicantphoneno` char(10)
,`applicanthomephone` char(10)
,`applicantworkphone` char(10)
,`appreasonforleaving` varchar(100)
,`applicantsuffix` char(3)
,`applicantdrivinglicense` varchar(20)
,`applicantdrivinglicstate` char(2)
,`applicantdob` date
,`applicantssn` char(9)
,`applicantssnencrypt` varbinary(50)
,`applicantdobencrypt` varbinary(50)
,`applicantdrivinglicenseencryptencrypt` varbinary(100)
,`applicantempstatus` varchar(15)
,`applicantsinvited` char(1)
,`applicantsinvitationdate` datetime
,`invitationmessage` varchar(500)
,`applicantsempincome` decimal(10,2)
,`applicantsothincome` decimal(10,2)
,`applicantsstatus` char(1)
,`applicantsstatusdate` datetime
,`applicantsscreeningdecision` char(1)
,`applicantscurrentrent` decimal(10,2)
,`applicantscurrentrestype` char(10)
,`Applicantcurntlyemplyd` char(1)
,`screeningfee` decimal(7,2)
,`processingfee` decimal(7,2)
,`holdingdeposit` decimal(7,2)
,`paymentid` varchar(50)
,`paymentdate` datetime
,`paidamount` decimal(10,2)
,`paidby` varchar(50)
,`paymentapprovalreference` varchar(100)
,`paymentstatus` char(1)
,`termsagreeddate` datetime
,`disclosureagreeddate` datetime
,`appincometype` char(1)
,`otherleaseterms` varchar(15)
,`appconsentdate` datetime
,`appconsentfromip` varchar(20)
,`appconsent` char(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `emailverify`
--

CREATE TABLE `emailverify` (
  `idemailverify` int(11) UNSIGNED NOT NULL,
  `loginemail` varchar(100) NOT NULL,
  `generatedcode` varchar(10) DEFAULT NULL,
  `generationtime` datetime DEFAULT NULL,
  `verified` char(1) DEFAULT NULL,
  `verifieddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Applicant email verification for 1st time login';

--
-- Dumping data for table `emailverify`
--

INSERT INTO `emailverify` (`idemailverify`, `loginemail`, `generatedcode`, `generationtime`, `verified`, `verifieddate`) VALUES
(1, 'mike@gmail.com', '4924', '2018-04-17 17:32:49', '', NULL),
(2, 'ppradeeps205@gmail.com', '5040', '2018-05-09 15:49:36', 'Y', '2018-05-09 15:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `marketsource`
--

CREATE TABLE `marketsource` (
  `idmarketsource` int(15) NOT NULL,
  `linkidprofile` int(15) NOT NULL,
  `mastersourceid` int(15) NOT NULL,
  `recordstatus` char(1) DEFAULT NULL COMMENT 'A=Active I=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table contains the selected marketing source for client profile';

-- --------------------------------------------------------

--
-- Table structure for table `marketsourcexref`
--

CREATE TABLE `marketsourcexref` (
  `idmarketsourcexref` int(15) NOT NULL,
  `marketsourcexrefmemberid` char(3) NOT NULL,
  `marketsourcexrefmemberno` char(6) NOT NULL,
  `marketsourcexrefvendorid` varchar(50) NOT NULL,
  `marketsourcexrefmastersrcid` char(4) NOT NULL,
  `marketsourcexrefdate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Table to hold the TSP Master market source vs Vendor Id Corss reference';

-- --------------------------------------------------------

--
-- Stand-in structure for view `market_view`
-- (See below for the actual view)
--
CREATE TABLE `market_view` (
`idmastermarketsource` int(15) unsigned
,`sourcemastermemberid` char(3)
,`sourcemastermemberno` char(6)
,`sourceid` char(4)
,`sourcedescription` varchar(100)
,`createdate` datetime
,`updatedate` datetime
,`idmarketsource` int(15)
,`linkidprofile` int(15)
,`mastersourceid` int(15)
,`recordstatus` char(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `mastermarketsource`
--

CREATE TABLE `mastermarketsource` (
  `idmastermarketsource` int(15) UNSIGNED NOT NULL,
  `sourcemastermemberid` char(3) NOT NULL,
  `sourcemastermemberno` char(6) NOT NULL,
  `sourceid` char(4) NOT NULL,
  `sourcedescription` varchar(100) NOT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `externalid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table contains the master list of marketing source';

--
-- Dumping data for table `mastermarketsource`
--

INSERT INTO `mastermarketsource` (`idmastermarketsource`, `sourcemastermemberid`, `sourcemastermemberno`, `sourceid`, `sourcedescription`, `createdate`, `updatedate`, `externalid`) VALUES
(1, 'DSR', '454356', '1', 'Apartment Guide', '2016-12-30 04:54:14', '2016-12-31 18:22:35', NULL),
(2, 'DSR', '454356', '2', 'Apartment Living', '2016-12-30 04:56:10', '2016-12-31 18:22:35', NULL),
(3, 'DSR', '454356', '3', 'Apartments \'R Us', '2016-12-30 04:56:10', '2016-12-31 18:22:35', NULL),
(4, 'DSR', '454356', '4', 'Los Angeles Times', '2016-12-30 04:59:01', '2016-12-31 18:22:35', NULL),
(6, 'DSR', '454356', '6', 'Rent.com', '2016-12-30 04:59:01', '2016-12-31 18:22:35', NULL),
(7, 'DSR', '454356', '7', 'Renter\'s Guide', '2016-12-30 05:00:44', '2016-12-31 18:22:35', NULL),
(8, 'DSR', '454356', '8', 'The Recycler', '2016-12-30 05:02:25', '2016-12-31 18:22:35', NULL),
(9, 'DSR', '454356', '9', 'Renter\'s Guide', '2016-12-30 05:02:53', '2016-12-31 18:22:35', NULL),
(10, 'DSR', '454356', '10', 'The Recycler', '2016-12-30 11:43:04', '2016-12-31 18:22:35', NULL),
(11, 'RMM', '612572', '1', 'Apartment Guide', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(12, 'RMM', '612572', '2', 'Penny Saver', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(13, 'RMM', '612572', '3', 'Rent.com', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(14, 'RMM', '612572', '4', 'Los Angeles Times', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(15, 'RMM', '612572', '5', 'Apartment Living', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(16, 'RMM', '612572', '6', 'Go daddy.com', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(17, 'RMM', '612572', '7', 'Apartments \'R Us', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(18, 'RMM', '612572', '8', 'Renter\'s Guide', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(19, 'RMM', '612572', '9', 'Edwin S', '2016-12-30 12:39:05', '2016-12-31 18:23:15', NULL),
(20, 'TSP', '000001', '1', 'Apartment Guide', '2017-01-01 15:11:48', '2017-01-01 15:11:49', NULL),
(22, 'TSP', '000001', '3', 'Rent.com', '2017-01-01 15:11:48', '2017-01-01 15:11:49', NULL),
(23, 'TSP', '000001', '4', 'Los Angeles Times', '2017-01-01 15:11:48', '2017-01-01 15:11:49', NULL),
(24, 'TSP', '000001', '5', 'Apartment Living', '2017-01-01 15:11:49', '2017-01-01 15:11:49', NULL),
(25, 'TSP', '000001', '6', 'The Recycler', '2017-01-01 15:11:49', '2017-01-01 15:11:49', NULL),
(26, 'TSP', '000001', '7', 'Apartments \'R Us', '2017-01-01 15:11:49', '2017-01-01 15:11:49', NULL),
(27, 'TSP', '000001', '8', 'Renter\'s Guide', '2017-01-01 15:11:49', '2017-01-01 15:11:49', NULL),
(28, 'TSP', '000001', '9', 'Edwin S', '2017-01-01 15:11:49', '2017-01-01 15:11:49', NULL),
(29, 'RWN', '906904', '1', 'Apartment Guide', '2017-02-04 11:05:44', '2017-02-04 11:05:44', NULL),
(30, 'RWN', '906904', '2', 'Penny Saver', '2017-02-04 11:05:44', '2017-02-04 11:05:44', NULL),
(31, 'RWN', '906904', '3', 'Rent.com', '2017-02-04 11:05:44', '2017-02-04 11:05:44', NULL),
(32, 'RWN', '906904', '4', 'Los Angeles Times', '2017-02-04 11:05:44', '2017-02-04 11:05:44', NULL),
(33, 'RWN', '906904', '5', 'Apartment Living', '2017-02-04 11:05:44', '2017-02-04 11:05:44', NULL),
(34, 'RWN', '906904', '6', 'The Recycler', '2017-02-04 11:05:44', '2017-02-04 11:05:45', NULL),
(35, 'RWN', '906904', '7', 'Apartments \'R Us', '2017-02-04 11:05:44', '2017-02-04 11:05:45', NULL),
(36, 'RWN', '906904', '8', 'Renter\'s Guide', '2017-02-04 11:05:44', '2017-02-04 11:05:45', NULL),
(37, 'RWN', '906904', '9', 'Edwin S', '2017-02-04 11:05:44', '2017-02-04 11:05:45', NULL),
(38, 'AOL', '230717', '1', 'Apartment Guide', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(39, 'AOL', '230717', '2', 'Penny Saver', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(40, 'AOL', '230717', '3', 'Rent.com', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(41, 'AOL', '230717', '4', 'Los Angeles Times', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(42, 'AOL', '230717', '5', 'Apartment Living', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(43, 'AOL', '230717', '6', 'The Recycler', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(44, 'AOL', '230717', '7', 'Apartments \'R Us', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(45, 'AOL', '230717', '8', 'Renter\'s Guide', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(46, 'AOL', '230717', '9', 'Edwin S', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(47, 'AOL', '230717', '10', 'Renter\'s Guide', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(48, 'AOL', '230717', '11', 'The Recycler', '2017-02-28 11:08:40', '2017-02-28 14:49:25', NULL),
(49, 'MSL', '647524', '1', 'Apartments.com', '2017-03-14 12:36:40', '2017-03-15 16:18:28', 'dfd451b1-6aef-48b5-913b-c8ade61e177f'),
(50, 'MSL', '647524', '2', 'Apartment Finder', '2017-03-14 12:36:40', '2017-03-15 16:18:28', '48e1f664-79e8-46fe-b1e2-b5a1ce218cdb'),
(51, 'MSL', '647524', '3', 'Apartment Guide', '2017-03-14 12:36:40', '2017-03-15 16:18:28', 'bc78e068-6f6f-4331-9301-62fea48fad51'),
(52, 'MSL', '647524', '4', 'Apartment Home Living', '2017-03-14 12:36:40', '2017-03-15 16:18:28', ''),
(53, 'MSL', '647524', '5', 'Apartment Living', '2017-03-14 12:36:40', '2017-03-15 16:18:28', ''),
(54, 'MSL', '647524', '6', 'Apartments \'R Us', '2017-03-14 12:36:40', '2017-03-15 16:18:28', ''),
(55, 'MSL', '647524', '7', 'Craigslist', '2017-03-14 12:36:40', '2017-03-15 16:18:28', ''),
(56, 'MSL', '647524', '8', 'Rent.com', '2017-03-14 12:36:40', '2017-03-15 16:18:28', ''),
(57, 'MSL', '647524', '9', 'Zillow', '2017-03-14 12:36:40', '2017-03-15 16:18:28', ''),
(58, 'DMP', '437952', '1', 'Apartments.com', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(59, 'DMP', '437952', '2', 'Apartment Guide', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(60, 'DMP', '437952', '3', 'Apartmentguide.com', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(61, 'DMP', '437952', '4', 'Catholic Social Services', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(62, 'DMP', '437952', '5', 'Craigs List', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(63, 'DMP', '437952', '6', 'D & M Site Referral', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(64, 'DMP', '437952', '7', 'Drive By', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(65, 'DMP', '437952', '8', 'Flyer', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(66, 'DMP', '437952', '9', 'For Rent', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(67, 'DMP', '437952', '10', 'Forrent.com', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(68, 'DMP', '437952', '11', 'Newspaper', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(69, 'DMP', '437952', '12', 'Other Ad Source', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(70, 'DMP', '437952', '13', 'PVSI Portal', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(71, 'DMP', '437952', '14', 'Referral', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(72, 'DMP', '437952', '15', 'Rent.com', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(73, 'DMP', '437952', '16', 'Resident Referral', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(74, 'DMP', '437952', '17', 'Second Visit', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(75, 'DMP', '437952', '18', 'Signage', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(76, 'DMP', '437952', '19', 'Word of Mouth', '2017-03-28 11:03:52', '2017-03-30 12:51:58', NULL),
(137, 'PRC', '452301', '1', 'Website', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(138, 'PRC', '452301', '2', 'Broker', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(139, 'PRC', '452301', '3', 'Other', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(140, 'PRC', '452301', '4', 'Apartments.com', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(141, 'PRC', '452301', '5', 'Craigs List', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(142, 'PRC', '452301', '6', 'Drive By', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(143, 'PRC', '452301', '7', 'Penny Saver', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(144, 'PRC', '452301', '8', 'Referral', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(145, 'PRC', '452301', '9', 'Rent.com', '2017-04-11 12:38:47', '2017-05-05 13:15:07', NULL),
(146, 'PRC', '452301', '10', 'Section 8', '2017-04-11 12:38:47', '2017-04-11 12:38:47', NULL),
(147, 'PRC', '452301', '11', 'Zillow', '2017-04-11 12:38:47', '2017-04-11 12:38:47', NULL),
(148, 'PRC', '452301', '12', 'HUD', '2017-04-11 12:38:47', '2017-04-11 12:38:47', NULL),
(149, 'PRC', '452301', '14', 'Property Website', '2017-04-11 12:38:47', '2017-04-11 12:38:47', NULL),
(356, 'IMG', '384154', '1', 'Apartments.com', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(357, 'IMG', '384154', '2', 'Apt Guide/RENT.COM', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(358, 'IMG', '384154', '3', 'Competitor Apt', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(359, 'IMG', '384154', '4', 'Craigslist.com', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(360, 'IMG', '384154', '5', 'Drive By', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(361, 'IMG', '384154', '6', 'For Rent.com', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(362, 'IMG', '384154', '7', 'Inhouse Transfer', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(363, 'IMG', '384154', '8', 'Internet/Jibe', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(365, 'IMG', '384154', '10', 'KSL.COM/Rentler', '2017-04-19 12:59:36', '2017-08-18 11:14:08', NULL),
(366, 'IMG', '384154', '11', 'MarketingApts.com', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(367, 'IMG', '384154', '12', 'Outreach Marketing', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(368, 'IMG', '384154', '14', 'Previous Resident', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(369, 'IMG', '384154', '13', 'Preferred Employer Program', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(370, 'IMG', '384154', '15', 'Realtor Referral', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(371, 'IMG', '384154', '16', 'Rent Jungle', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(372, 'IMG', '384154', '17', 'Resident Referral', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(373, 'IMG', '384154', '18', 'Sister Community Referral', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(374, 'IMG', '384154', '19', 'Zillow/Trulia/Hotpads', '2017-04-19 12:59:36', '2017-08-18 11:14:09', NULL),
(375, 'ACR', '119390', '1', 'After 55/Senior-For Rent', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(376, 'ACR', '119390', '2', 'Apartment Finder', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(377, 'ACR', '119390', '3', 'Apartment Guide', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(378, 'ACR', '119390', '4', 'Apartment Home Living', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(379, 'ACR', '119390', '5', 'Apartment List', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(380, 'ACR', '119390', '6', 'Apartments.com', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(381, 'ACR', '119390', '7', 'Billboard/Bus Bench Advertisement', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(382, 'ACR', '119390', '8', 'Blue Book', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(383, 'ACR', '119390', '9', 'College', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(384, 'ACR', '119390', '10', 'Craigslist.com', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(385, 'ACR', '119390', '11', 'Direct Mail', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(386, 'ACR', '119390', '12', 'Drive By', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(387, 'ACR', '119390', '13', 'Facebook', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(388, 'ACR', '119390', '14', 'Forrent', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(389, 'ACR', '119390', '15', 'Google Ads', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(390, 'ACR', '119390', '16', 'Hotpads.com', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(391, 'ACR', '119390', '17', 'Housing Authority', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(392, 'ACR', '119390', '18', 'KSL/Rentler', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(393, 'ACR', '119390', '19', 'Locator Service', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(394, 'ACR', '119390', '20', 'Lovely', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(395, 'ACR', '119390', '21', 'Military', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(396, 'ACR', '119390', '22', 'Newspaper', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(397, 'ACR', '119390', '23', 'Outreach Marketing', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(398, 'ACR', '119390', '24', 'Preferred Employer Program', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(399, 'ACR', '119390', '25', 'Previous Resident', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(400, 'ACR', '119390', '26', 'Property Pond', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(401, 'ACR', '119390', '27', 'Property Referral', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(402, 'ACR', '119390', '28', 'Property Website', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(403, 'ACR', '119390', '29', 'Realtor.com', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(404, 'ACR', '119390', '30', 'Rent.com', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(405, 'ACR', '119390', '31', 'Resident Referral', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(406, 'ACR', '119390', '32', 'Transfer Within Community', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(407, 'ACR', '119390', '33', 'Trulia.com', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(408, 'ACR', '119390', '34', 'Yellow Pages', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(409, 'ACR', '119390', '35', 'Yelp', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(410, 'ACR', '119390', '36', 'Zillow', '2017-04-19 13:02:32', '2017-06-26 14:20:08', NULL),
(447, 'ARZ', '473695', '1', 'After 55/Senior-For Rent', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(448, 'ARZ', '473695', '2', 'Apartment Finder', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(449, 'ARZ', '473695', '3', 'Apartment Guide', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(450, 'ARZ', '473695', '4', 'Apartment Home Living', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(451, 'ARZ', '473695', '5', 'Apartment List', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(452, 'ARZ', '473695', '6', 'Apartments.com', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(453, 'ARZ', '473695', '7', 'Billboard/Bus Bench Advertisement', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(454, 'ARZ', '473695', '8', 'Blue Book', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(455, 'ARZ', '473695', '9', 'College', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(456, 'ARZ', '473695', '10', 'Craigslist.com', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(457, 'ARZ', '473695', '11', 'Direct Mail', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(458, 'ARZ', '473695', '12', 'Drive By', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(459, 'ARZ', '473695', '13', 'Facebook', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(460, 'ARZ', '473695', '14', 'Forrent', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(461, 'ARZ', '473695', '15', 'Google Ads', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(462, 'ARZ', '473695', '16', 'Hotpads.com', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(463, 'ARZ', '473695', '17', 'Housing Authority', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(464, 'ARZ', '473695', '18', 'KSL/Rentler', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(465, 'ARZ', '473695', '19', 'Locator Service', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(466, 'ARZ', '473695', '20', 'Lovely', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(467, 'ARZ', '473695', '21', 'Military', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(468, 'ARZ', '473695', '22', 'Newspaper', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(469, 'ARZ', '473695', '23', 'Outreach Marketing', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(470, 'ARZ', '473695', '24', 'Preferred Employer Program', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(471, 'ARZ', '473695', '25', 'Previous Resident', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(472, 'ARZ', '473695', '26', 'Property Pond', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(473, 'ARZ', '473695', '27', 'Property Referral', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(474, 'ARZ', '473695', '28', 'Property Website', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(475, 'ARZ', '473695', '29', 'Realtor.com', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(476, 'ARZ', '473695', '30', 'Rent.com', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(477, 'ARZ', '473695', '31', 'Resident Referral', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(478, 'ARZ', '473695', '32', 'Transfer Within Community', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(479, 'ARZ', '473695', '33', 'Trulia.com', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(480, 'ARZ', '473695', '34', 'Yellow Pages', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(481, 'ARZ', '473695', '35', 'Yelp', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(482, 'ARZ', '473695', '36', 'Zillow', '2017-04-19 13:03:42', '2017-12-07 14:49:10', NULL),
(483, 'FDC', '427925', '1', 'Apartment Magazine', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(484, 'FDC', '427925', '2', 'Apartmentfinders.com', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(485, 'FDC', '427925', '3', 'Apartsments.com', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(486, 'FDC', '427925', '4', 'Sign Twirlers', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(487, 'FDC', '427925', '5', 'Craigs List', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(488, 'FDC', '427925', '6', 'Apartmentguide.com', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(489, 'FDC', '427925', '7', 'Apartment Guide', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(490, 'FDC', '427925', '8', 'Drive By', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(491, 'FDC', '427925', '9', 'Internet', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(492, 'FDC', '427925', '10', 'Orange County Register', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(493, 'FDC', '427925', '11', 'Resident Referral', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(494, 'FDC', '427925', '12', 'Non Resident Referral', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(495, 'FDC', '427925', '14', 'Huntington Beach Chamber', '2017-04-25 15:41:16', '2017-04-25 15:41:16', NULL),
(496, 'FDC', '427925', '13', 'Employee Referral', '2017-04-25 15:41:16', NULL, NULL),
(497, 'FDC', '427925', '15', 'Referral', '2017-04-25 15:41:16', NULL, NULL),
(498, 'FDC', '427925', '16', 'Rent.com', '2017-04-25 15:41:16', NULL, NULL),
(535, 'AMU', '259121', '1', 'After 55/Senior-For Rent', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(536, 'AMU', '259121', '2', 'Apartment Finder', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(537, 'AMU', '259121', '3', 'Apartment Guide', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(538, 'AMU', '259121', '4', 'Apartment Home Living', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(539, 'AMU', '259121', '5', 'Apartment List', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(540, 'AMU', '259121', '6', 'Apartments.com', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(541, 'AMU', '259121', '7', 'Billboard/Bus Bench Advertisement', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(542, 'AMU', '259121', '8', 'Blue Book', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(543, 'AMU', '259121', '9', 'College', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(544, 'AMU', '259121', '10', 'Craigslist.com', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(545, 'AMU', '259121', '11', 'Direct Mail', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(546, 'AMU', '259121', '12', 'Drive By', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(547, 'AMU', '259121', '13', 'Facebook', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(548, 'AMU', '259121', '14', 'Forrent', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(549, 'AMU', '259121', '15', 'Google Ads', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(550, 'AMU', '259121', '16', 'Hotpads.com', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(551, 'AMU', '259121', '17', 'Housing Authority', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(552, 'AMU', '259121', '18', 'KSL/Rentler', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(553, 'AMU', '259121', '19', 'Locator Service', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(554, 'AMU', '259121', '20', 'Lovely', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(555, 'AMU', '259121', '21', 'Military', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(556, 'AMU', '259121', '22', 'Newspaper', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(557, 'AMU', '259121', '23', 'Outreach Marketing', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(558, 'AMU', '259121', '24', 'Preferred Employer Program', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(559, 'AMU', '259121', '25', 'Previous Resident', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(560, 'AMU', '259121', '26', 'Property Pond', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(561, 'AMU', '259121', '27', 'Property Referral', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(562, 'AMU', '259121', '28', 'Property Website', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(563, 'AMU', '259121', '29', 'Realtor.com', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(564, 'AMU', '259121', '30', 'Rent.com', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(565, 'AMU', '259121', '31', 'Resident Referral', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(566, 'AMU', '259121', '32', 'Transfer Within Community', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(567, 'AMU', '259121', '33', 'Trulia.com', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(568, 'AMU', '259121', '34', 'Yellow Pages', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(569, 'AMU', '259121', '35', 'Yelp', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(570, 'AMU', '259121', '36', 'Zillow', '2017-04-27 16:19:23', '2018-01-10 14:36:19', NULL),
(571, 'IMG', '384154', '9', 'JetPack', '2017-05-08 15:51:02', '2017-08-18 11:14:08', NULL),
(572, 'GMG', '000001', '1', 'Gary\'s Listing Service', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(573, 'GMG', '000001', '2', 'NY TIMES', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(574, 'GMG', '000001', '3', 'Office Lease List', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(575, 'GMG', '000001', '4', 'West Side Rentals', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(576, 'GMG', '000001', '5', 'Craigs List', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(577, 'GMG', '000001', '6', 'Drive By', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(578, 'GMG', '000001', '7', 'Daily Press', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(579, 'GMG', '000001', '8', 'Los Angeles Times', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(580, 'GMG', '000001', '9', 'Referral', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(581, 'GMG', '000001', '10', 'Los Angeles Times', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(582, 'GMG', '000001', '11', 'Move.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(583, 'GMG', '000001', '12', 'Moveforfree.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(584, 'GMG', '000001', '13', 'MyNewPlace.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(585, 'GMG', '000001', '14', 'Penny Saver', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(586, 'GMG', '000001', '15', 'Referral', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(587, 'GMG', '000001', '16', 'Rent.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(588, 'GMG', '000001', '17', 'The Recycler', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(589, 'GMG', '000001', '18', 'Westside Rentals', '2017-06-05 15:44:39', '2017-11-02 15:27:53', NULL),
(590, 'IHP', '033565', '1', 'Apartment Finder', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(591, 'IHP', '033565', '2', 'Apartments.com', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(592, 'IHP', '033565', '3', 'Drive By', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(593, 'IHP', '033565', '4', 'Forrent.com', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(594, 'IHP', '033565', '5', 'Move.com', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(595, 'IHP', '033565', '6', 'Referral', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(596, 'IHP', '033565', '7', 'Rent.com', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(597, 'IHP', '033565', '8', 'Craigs List', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(598, 'IHP', '033565', '9', 'Sign Twirler', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(599, 'IHP', '033565', '10', 'Section 8', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(600, 'IHP', '033565', '11', 'Zillow', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(601, 'IHP', '033565', '12', 'HUD', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(602, 'IHP', '033565', '14', 'Property Website', '2017-06-06 10:14:47', '2017-06-08 12:08:13', NULL),
(603, 'PMC', '938417', '1', 'Apartment Finder', '2017-06-13 08:37:00', NULL, NULL),
(604, 'PMC', '938417', '2', 'Apartments.com', '2017-06-13 08:37:00', NULL, NULL),
(605, 'PMC', '938417', '3', 'Drive By', '2017-06-13 08:37:00', NULL, NULL),
(606, 'PMC', '938417', '4', 'Forrent.com', '2017-06-13 08:37:00', NULL, NULL),
(607, 'PMC', '938417', '5', 'Move.com', '2017-06-13 08:37:00', NULL, NULL),
(608, 'PMC', '938417', '6', 'Referral', '2017-06-13 08:37:00', NULL, NULL),
(609, 'PMC', '938417', '7', 'Rent.com', '2017-06-13 08:37:00', NULL, NULL),
(610, 'PMC', '938417', '8', 'Craigs List', '2017-06-13 08:37:00', NULL, NULL),
(611, 'PMC', '938417', '9', 'Sign Twirler', '2017-06-13 08:37:00', NULL, NULL),
(612, 'PMC', '938417', '10', 'Section 8', '2017-06-13 08:37:00', NULL, NULL),
(613, 'PMC', '938417', '11', 'Zillow', '2017-06-13 08:37:00', NULL, NULL),
(614, 'PMC', '938417', '12', 'HUD', '2017-06-13 08:37:00', NULL, NULL),
(615, 'PMC', '938417', '14', 'Property Website', '2017-06-13 08:37:00', NULL, NULL),
(616, 'SGM', '733037', '1', 'Rent Wiki', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(617, 'SGM', '733037', '2', 'My New Place', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(618, 'SGM', '733037', '3', 'Locators', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(619, 'SGM', '733037', '4', 'Wild Cat', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(620, 'SGM', '733037', '5', 'Apartment Finders', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(621, 'SGM', '733037', '6', 'Apartment Guide', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(622, 'SGM', '733037', '7', 'Apartmentguide.com', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(623, 'SGM', '733037', '8', 'Apartments.com', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(624, 'SGM', '733037', '9', 'Craigs List', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(625, 'SGM', '733037', '10', 'Drive By', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(626, 'SGM', '733037', '11', 'For Rent', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(627, 'SGM', '733037', '12', 'Forrent.com', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(628, 'SGM', '733037', '13', 'Referral', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(629, 'SGM', '733037', '14', 'Rent.com', '2017-08-16 09:43:38', '2017-08-16 09:43:38', NULL),
(630, 'PNC', '710076', '1', 'Apartment Finder', '2017-08-22 13:03:08', NULL, NULL),
(631, 'PNC', '710076', '2', 'Apartments.com', '2017-08-22 13:03:08', NULL, NULL),
(632, 'PNC', '710076', '3', 'Drive By', '2017-08-22 13:03:08', NULL, NULL),
(633, 'PNC', '710076', '4', 'Forrent.com', '2017-08-22 13:03:08', NULL, NULL),
(634, 'PNC', '710076', '5', 'Move.com', '2017-08-22 13:03:08', NULL, NULL),
(635, 'PNC', '710076', '6', 'Referral', '2017-08-22 13:03:08', NULL, NULL),
(636, 'PNC', '710076', '7', 'Rent.com', '2017-08-22 13:03:08', NULL, NULL),
(637, 'PNC', '710076', '8', 'Craigs List', '2017-08-22 13:03:08', NULL, NULL),
(638, 'PNC', '710076', '9', 'Sign Twirler', '2017-08-22 13:03:08', NULL, NULL),
(639, 'PNC', '710076', '10', 'Section 8', '2017-08-22 13:03:08', NULL, NULL),
(640, 'PNC', '710076', '11', 'Zillow', '2017-08-22 13:03:08', NULL, NULL),
(641, 'PNC', '710076', '12', 'HUD', '2017-08-22 13:03:08', NULL, NULL),
(642, 'PNC', '710076', '14', 'Property Website', '2017-08-22 13:03:08', NULL, NULL),
(643, 'AMC', '025269', '1', 'After 55/Senior-For Rent', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(644, 'AMC', '025269', '2', 'Apartment Finder', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(645, 'AMC', '025269', '3', 'Apartment Guide', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(646, 'AMC', '025269', '4', 'Apartment Home Living', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(647, 'AMC', '025269', '5', 'Apartment List', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(648, 'AMC', '025269', '6', 'Apartments.com', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(649, 'AMC', '025269', '7', 'Billboard/Bus Bench Advertisement', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(650, 'AMC', '025269', '8', 'Blue Book', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(651, 'AMC', '025269', '9', 'College', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(652, 'AMC', '025269', '10', 'Craigslist.com', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(653, 'AMC', '025269', '11', 'Direct Mail', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(654, 'AMC', '025269', '12', 'Drive By', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(655, 'AMC', '025269', '13', 'Facebook', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(656, 'AMC', '025269', '14', 'Forrent', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(657, 'AMC', '025269', '15', 'Google Ads', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(658, 'AMC', '025269', '16', 'Hotpads.com', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(659, 'AMC', '025269', '17', 'Housing Authority', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(660, 'AMC', '025269', '18', 'KSL/Rentler', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(661, 'AMC', '025269', '19', 'Locator Service', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(662, 'AMC', '025269', '20', 'Lovely', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(663, 'AMC', '025269', '21', 'Military', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(664, 'AMC', '025269', '22', 'Newspaper', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(665, 'AMC', '025269', '23', 'Outreach Marketing', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(666, 'AMC', '025269', '24', 'Preferred Employer Program', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(667, 'AMC', '025269', '25', 'Previous Resident', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(668, 'AMC', '025269', '26', 'Property Pond', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(669, 'AMC', '025269', '27', 'Property Referral', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(670, 'AMC', '025269', '28', 'Property Website', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(671, 'AMC', '025269', '29', 'Realtor.com', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(672, 'AMC', '025269', '30', 'Rent.com', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(673, 'AMC', '025269', '31', 'Resident Referral', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(674, 'AMC', '025269', '32', 'Transfer Within Community', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(675, 'AMC', '025269', '33', 'Trulia.com', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(676, 'AMC', '025269', '34', 'Yellow Pages', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(677, 'AMC', '025269', '35', 'Yelp', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(678, 'AMC', '025269', '36', 'Zillow', '2017-10-30 12:52:06', '2017-10-30 12:52:06', NULL),
(679, 'MGR', '194227', '1', 'Apartment Finder', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(680, 'MGR', '194227', '2', 'Apartments.com', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(681, 'MGR', '194227', '3', 'Drive By', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(682, 'MGR', '194227', '4', 'Forrent.com', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(683, 'MGR', '194227', '5', 'Move.com', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(684, 'MGR', '194227', '6', 'Referral', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(685, 'MGR', '194227', '7', 'Rent.com', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(686, 'MGR', '194227', '8', 'Craigs List', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(687, 'MGR', '194227', '9', 'Sign Twirler', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(688, 'MGR', '194227', '10', 'Section 8', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(689, 'MGR', '194227', '11', 'Zillow', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(690, 'MGR', '194227', '12', 'HUD', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL),
(691, 'MGR', '194227', '14', 'Property Website', '2017-11-28 17:55:06', '2017-11-28 18:26:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mastermember`
--

CREATE TABLE `mastermember` (
  `idmastermember` int(15) NOT NULL,
  `mastermemberid` char(3) NOT NULL,
  `mastermemberno` char(6) NOT NULL,
  `mastermembername` char(100) NOT NULL,
  `masteruserid` varchar(20) NOT NULL,
  `masteruserno` char(10) DEFAULT NULL,
  `masteruseremail` varchar(100) NOT NULL,
  `notifytoclient` char(1) DEFAULT NULL,
  `reportuserid` varchar(20) DEFAULT NULL,
  `reportuserpwd` varchar(50) DEFAULT NULL,
  `reportrunuserno` char(10) DEFAULT NULL,
  `processingfee` char(7) DEFAULT NULL,
  `screeningfee` char(7) DEFAULT NULL,
  `activateddate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `authorizationkey` varchar(50) NOT NULL,
  `clickpaylandlordid` varchar(255) DEFAULT NULL,
  `clickpayfcrefid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Master member table';

--
-- Dumping data for table `mastermember`
--

INSERT INTO `mastermember` (`idmastermember`, `mastermemberid`, `mastermemberno`, `mastermembername`, `masteruserid`, `masteruserno`, `masteruseremail`, `notifytoclient`, `reportuserid`, `reportuserpwd`, `reportrunuserno`, `processingfee`, `screeningfee`, `activateddate`, `updatedate`, `authorizationkey`, `clickpaylandlordid`, `clickpayfcrefid`) VALUES
(1, 'DSR', '454356', 'DAVID\'S TEST ACCOUNT', 'aimmitstst', '1381', 'ghopwood@profoundlogic.com', 'Y', 'edwinstest2', NULL, '1378', '1.00', '29.99', '2016-12-31 18:22:34', NULL, '9019796173DSR|454356967090829524DSR|45435614871780', '0d4ae26d-f206-4844-a8f9-8d3f0d27ef01', '9338051c-5678-4879-adcf-5db8842cc1e5'),
(2, 'RMM', '612572', 'RICK SUBMEMBER TEST', 'jtest', '1439', 'cyndir@thescreeningpros.com', 'Y', 'test2', NULL, '1441', '1.00', '24.99', '2016-12-31 18:23:15', NULL, '1262320791RMM|612572627716894575RMM|61257200964397', NULL, NULL),
(3, 'TSP', '000001', 'THE SCREENING PROS', 'rizwana', '1383', 'rizwana@thescreeningpros.com', 'Y', 'rizwana', NULL, '1383', '1.00', '23.00', '2017-01-01 15:11:48', NULL, '6979810912TSP|000001879708071754TSP|00000155985023', NULL, NULL),
(4, 'RWN', '906904', 'MOUNT EVEREST MANAGEMENT', 'jmartin', '1443', 'rizwana@thescreeningpros.com', 'Y', 'emanagement', NULL, '1444', '1.00', '35.00', '2017-02-04 11:05:44', NULL, '8596404504RWN|906904903236586531RWN|90690408496356', NULL, NULL),
(5, 'AOL', '230717', 'ONLINE DEMO ACCOUNT', 'paulsdemo', '1445', 'paulm@thescreeningpros.com', 'Y', 'paulsdemo', NULL, '1445', '1.00', '25.00', '2017-02-28 11:08:40', '2017-02-28 14:49:25', '4688918119AOL|230717948961569553AOL|23071723916388', '3356237a-0eec-44d9-b8d3-1fcdc4e6e447', 'dfc07903-21cb-403b-98bc-a1b3f8d7c50d'),
(6, 'MSL', '647524', 'MANHATTAN SKYLINE DEMO', 'paulMSL', '1446', 'paulm@thescreeningpros.com', 'Y', 'paulMSL', 'aWjhNBwu', '1446', '1.00', '1.00', '2017-03-14 12:36:40', '2017-03-15 16:18:28', '6259479467MSL|647524669544072777MSL|64752414487502', NULL, NULL),
(7, '*HQ', '*HQNO', 'TSP Internal Profile', 'tsp', '0', 'rizwana@thescreeningpros.com', 'N', 'tsp', NULL, '0', '0.00', '0.00', '2017-03-22 18:22:34', '2017-03-22 00:00:00', '11BC1AC982EC5B4EC9DBF334DC58E', NULL, NULL),
(8, 'DMP', '437952', 'DUNLAP & MAGEE PROPERTY MGMT', 'cmaguirre', '17259', 'caguirre@dunlap-magee.com', '', 'cmaguirre', 'cJYUK7Is0u', '17259', '4.95', '1.00', '2017-03-28 11:03:52', '2017-03-30 12:51:58', '4987107295DMP|437952043891671099DMP|43795270566072', NULL, NULL),
(9, 'AMC', '025269', 'APARTMENT MGMT CONSULTANTS', 'LindsayVegas', '18364', 'l.daniels@amcllc.net', '', 'LindsayVegas', '5JShuwVw', '18364', '.00', '50.00', '2017-03-30 14:34:53', '2017-10-30 12:52:06', '7908393029AMC|025269474151108870AMC|02526995429317', '0d4ae26d-f206-4844-a8f9-8d3f0d27ef01', '9338051c-5678-4879-adcf-5db8842cc1e5'),
(10, 'AMU', '259121', 'AMC LLC UTAH', 'DanaUT', '18881', 'd.murrah@amcllc.net', '', 'DanaUT', 'nhQb7jhVy', '18881', '4.95', '', '2017-04-05 10:41:55', '2018-01-10 14:36:19', '9025313864AMU|259121287500436286AMU|25912106598525', '0d4ae26d-f206-4844-a8f9-8d3f0d27ef01', '9338051c-5678-4879-adcf-5db8842cc1e5'),
(11, 'ACR', '119390', 'AMC LLC COLORADO', 'acronline', '16820', 'brkmgr@amclle.net', '', 'acronline', 'gNhCUKu', '16820', '4.95', '50.00', '2017-04-07 14:41:44', '2017-06-26 14:20:07', '2833410117ACR|119390500371477793ACR|11939033000679', '0d4ae26d-f206-4844-a8f9-8d3f0d27ef01', '9338051c-5678-4879-adcf-5db8842cc1e5'),
(12, 'ARZ', '473695', 'AMC LLC ARIZONA', 'AZOnlineApp', '15643', 'cyndir@thescreeningpros.com', '', 'AZOnlineApp', 'gNhCUKV', '15643', '.00', '.00', '2017-04-07 14:50:14', '2017-12-07 14:49:10', '1150993645ARZ|473695998411264864ARZ|47369550009609', '0d4ae26d-f206-4844-a8f9-8d3f0d27ef01', '9338051c-5678-4879-adcf-5db8842cc1e5'),
(13, 'PRC', '452301', 'PRC MANAGEMENT CORP', 'rebeccaz', '19034', 'rebeccaz@prcny.com', '', 'PRCoa', 'gNhCUKu', '19170', '4.95', '75.00', '2017-04-11 12:38:47', '2017-05-05 13:15:07', '7983780675PRC|452301180177466514PRC|45230195856228', NULL, NULL),
(14, 'IMG', '384154', 'ICO MANAGEMENT LLC', 'jennyb', '15870', 'jennyb@icomanagement.com', '', 'ICOOnline', 'gNUjUvJQV', '15967', '3.95', '.00', '2017-04-19 12:59:36', '2017-08-18 11:14:08', '4444256485IMG|384154222810463982IMG|38415460469871', NULL, NULL),
(15, 'FDC', '427925', 'FDC MANAGEMENT INC', 'jdepaul', '16248', 'jdepaul@fdcmanagement.com', '', 'jdepaul', 'cUvUuwVI', '16248', '4.95', '.00', '2017-04-25 15:41:16', NULL, '6873914598FDC|427925050745420856FDC|42792525408749', NULL, NULL),
(16, 'GMG', '000001', 'GARYS TEST ACCOUNT', 'gmg', '79', 'garyg@thescreeningpros.com', 'Y', 'gmg', 'iJNQhYV', '79', '4.95', '45.00', '2017-06-05 15:44:38', '2017-11-02 15:27:53', '1524531700GMG|000001334180160569GMG|00000199270724', '0d4ae26d-f206-4844-a8f9-8d3f0d27ef01', '9338051c-5678-4879-adcf-5db8842cc1e5'),
(17, 'IHP', '033565', 'IMAJN HOMES PHOENIX I', 'IHPonline', '19788', 'cyndir@thescreeningpros.com', '', 'IHPonline', 'i7jhBuu', '19788', '2.95', '.00', '2017-06-06 10:14:47', '2017-06-08 12:08:13', '1778164670IHP|033565944612593133IHP|03356512633957', '3356237a-0eec-44d9-b8d3-1fcdc4e6e447', 'dfc07903-21cb-403b-98bc-a1b3f8d7c50d'),
(18, 'PMC', '938417', 'PROVIDENT MANAGEMENT CORP', 'jkane', '19723', 'providentmgmt@gmail.com', '', 'jkane', 'gNhCUKu', '19723', '4.95', '.00', '2017-06-13 08:37:00', NULL, '0170211610PMC|938417285474432564PMC|93841714724357', NULL, NULL),
(19, 'SGM', '733037', 'SCOTIA GROUP MANAGEMENT', 'SGMoa', '12387', 'cyndir@thescreeningpros.com', '', 'SGMoa', 'RhvKJQBk', '12387', '.00', '.00', '2017-08-16 09:43:38', NULL, '0674390533SGM|733037449238452309SGM|73303722752328', NULL, NULL),
(20, 'PNC', '710076', 'PARKCHESTER NORTH CONDO', 'qdiaz', '20038', 'qdiaz@pncondo.com', '', 'qdiaz', '97NKFuwV0', '20038', '4.95', '50.00', '2017-08-22 13:03:08', NULL, '1545410515PNC|710076336268032016PNC|71007671809511', NULL, NULL),
(21, 'MGR', '194227', 'MGR PROPERTY MGMT/UPLAND', 'chiggins1', '9037', 'chiggins@mgrmgmt.com', '', 'chiggins1', 'r7vDhvVlll', '9037', '.00', '.00', '2017-11-28 17:55:06', '2017-11-28 18:26:50', '5898675975MGR|194227592937238444MGR|19422727317939', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `masterquestions`
--

CREATE TABLE `masterquestions` (
  `idmasterquestions` int(15) NOT NULL,
  `masterquestionmasterid` char(3) NOT NULL,
  `masterquestionmasterno` char(6) NOT NULL,
  `masterquestionid` int(10) NOT NULL,
  `masterquestion` varchar(250) NOT NULL,
  `masterquestionrequired` char(1) DEFAULT NULL,
  `masterdetailrequired` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Master Question set';

--
-- Dumping data for table `masterquestions`
--

INSERT INTO `masterquestions` (`idmasterquestions`, `masterquestionmasterid`, `masterquestionmasterno`, `masterquestionid`, `masterquestion`, `masterquestionrequired`, `masterdetailrequired`) VALUES
(1, 'DSR', '454356', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', '', 'y'),
(2, 'DSR', '454356', 2, 'Have you filed for bankruptcy in the past 15 years?', 'y', 'y'),
(3, 'DSR', '454356', 3, 'Have you been evicted or refused to pay rent for any other reason?', 'y', ''),
(4, 'DSR', '454356', 4, '  Have you ever been sued by a landlord for non-payment of rent or any other reason?', 'y', 'y'),
(5, 'DSR', '454356', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'y', 'y'),
(6, 'DSR', '454356', 6, ' Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'y', 'y'),
(7, 'DSR', '454356', 7, '  Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'y', 'y'),
(8, 'DSR', '454356', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'y', 'y'),
(9, 'DSR', '454356', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'y', 'y'),
(10, 'DSR', '454356', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'y', 'y'),
(11, 'DSR', '454356', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'y', 'y'),
(15, 'DSR', '454356', 12, 'Which is favorite place??', 'y', 'y'),
(44, 'DSR', '454356', 14, 'hey which is your favorite food??', 'y', 'y'),
(50, 'RWN', '906904', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'y', 'y'),
(51, 'RWN', '906904', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(52, 'RWN', '906904', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(53, 'RWN', '906904', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(54, 'RWN', '906904', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(55, 'RWN', '906904', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(56, 'RWN', '906904', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(57, 'RWN', '906904', 8, 'Do you or any person anticipating to occupy the premises have any outstanding warrants?', 'y', ''),
(58, 'RWN', '906904', 9, 'Are you or any person anticipating to occupy the premises now or have ever been listed on any sex offender list?', '', ''),
(59, 'RWN', '906904', 10, 'Do you or any person anticipating to occupy the premises have any pending case or action relating to any type of criminal offense?', '', ''),
(60, 'RWN', '906904', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(61, 'TSP', '000001', 0, 'What is your name?', 'y', 'y'),
(63, 'AOL', '230717', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(64, 'AOL', '230717', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(65, 'AOL', '230717', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(66, 'AOL', '230717', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(67, 'AOL', '230717', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(68, 'AOL', '230717', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(69, 'AOL', '230717', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(70, 'AOL', '230717', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(71, 'AOL', '230717', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(72, 'AOL', '230717', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(73, 'AOL', '230717', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(74, 'AOL', '230717', 12, 'Do you have any musical instruments?', 'y', 'y'),
(75, 'AOL', '230717', 13, 'Do you or any proposed occupants smoke?', 'y', 'y'),
(76, 'MSL', '647524', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(77, 'MSL', '647524', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(78, 'MSL', '647524', 3, 'Have you been evicted or refused to pay rent for any reason?', 'y', 'y'),
(79, 'MSL', '647524', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'y', 'y'),
(80, 'MSL', '647524', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'y', 'y'),
(81, 'MSL', '647524', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(82, 'MSL', '647524', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(83, 'MSL', '647524', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(84, 'MSL', '647524', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(85, 'MSL', '647524', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(86, 'MSL', '647524', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(87, 'DMP', '437952', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(88, 'DMP', '437952', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(89, 'DMP', '437952', 3, 'Have you been evicted or refused to pay rent for any reason?', 'y', 'y'),
(90, 'DMP', '437952', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(91, 'DMP', '437952', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(92, 'DMP', '437952', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(93, 'DMP', '437952', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(94, 'DMP', '437952', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(95, 'DMP', '437952', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(96, 'DMP', '437952', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(97, 'DMP', '437952', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(98, 'AMC', '025269', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(99, 'AMC', '025269', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(100, 'AMC', '025269', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(101, 'AMC', '025269', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(102, 'AMC', '025269', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(103, 'AMC', '025269', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(104, 'AMC', '025269', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(105, 'AMC', '025269', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(106, 'AMC', '025269', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(107, 'AMC', '025269', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(108, 'AMC', '025269', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(109, 'AOL', '230717', 14, 'Have you ever possessed, sold, or used illicit drugs or narcotics in or about your residence?   \r\n\r\n  \r\n\r\n    \r\n\r\n\r\n', 'y', 'y'),
(110, 'AOL', '230717', 15, 'Have you or any person anticipated to occupy the premises ever been arrested, or have any criminal record not previously disclosed above?  \r\n\r\n  ', 'y', 'y'),
(111, 'AMU', '259121', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(112, 'AMU', '259121', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(113, 'AMU', '259121', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(114, 'AMU', '259121', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(115, 'AMU', '259121', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(116, 'AMU', '259121', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(117, 'AMU', '259121', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(118, 'AMU', '259121', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(119, 'AMU', '259121', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(120, 'AMU', '259121', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(121, 'AMU', '259121', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(122, 'AMU', '259121', 12, 'Have you ever possessed, sold, or used illicit drugs or narcotics in or about your residence?   \r\n', 'y', 'y'),
(123, 'AMU', '259121', 13, 'Have you or any person anticipated to occupy the premises ever been arrested, or have any criminal record not previously disclosed above? ', 'y', 'y'),
(124, 'AMU', '259121', 14, 'Do you intend to have any pets in the apartment home?', 'y', 'y'),
(125, 'ACR', '119390', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(126, 'ACR', '119390', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(127, 'ACR', '119390', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(128, 'ACR', '119390', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(129, 'ACR', '119390', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(130, 'ACR', '119390', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(131, 'ACR', '119390', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(132, 'ACR', '119390', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(133, 'ACR', '119390', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(134, 'ACR', '119390', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(135, 'ACR', '119390', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(136, 'ARZ', '473695', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(137, 'ARZ', '473695', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(138, 'ARZ', '473695', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(139, 'ARZ', '473695', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(140, 'ARZ', '473695', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(141, 'ARZ', '473695', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(142, 'ARZ', '473695', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(143, 'ARZ', '473695', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(144, 'ARZ', '473695', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(145, 'ARZ', '473695', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(146, 'ARZ', '473695', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(147, 'PRC', '452301', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', '', ''),
(148, 'PRC', '452301', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(149, 'PRC', '452301', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(150, 'PRC', '452301', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(151, 'PRC', '452301', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(152, 'PRC', '452301', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(153, 'PRC', '452301', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(154, 'PRC', '452301', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(155, 'PRC', '452301', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(156, 'PRC', '452301', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(157, 'PRC', '452301', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(158, 'ACR', '119390', 12, 'Do you have or intend to have  any pets in  the apartment home', 'y', 'y'),
(159, 'IMG', '384154', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(160, 'IMG', '384154', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(161, 'IMG', '384154', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(162, 'IMG', '384154', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(163, 'IMG', '384154', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(164, 'IMG', '384154', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(165, 'IMG', '384154', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(166, 'IMG', '384154', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(167, 'IMG', '384154', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(168, 'IMG', '384154', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(169, 'IMG', '384154', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(170, 'ARZ', '473695', 12, 'Do you have or intend to have pets in the apartment home?', 'y', 'y'),
(171, 'ARZ', '473695', 13, 'Have you ever possessed, sold, or used illicit drugs or narcotics in or about your residence?', 'y', 'y'),
(172, 'ARZ', '473695', 14, 'Have you or any person anticipated to occupy the premises ever been arrested, or have any criminal record not previously disclosed above?', 'y', 'y'),
(173, 'ACR', '119390', 13, 'Have you ever possessed, sold, or used illicit drugs or narcotics in or about your residence?', 'y', 'y'),
(174, 'ACR', '119390', 14, 'Have you or any person anticipated to occupy the premises ever been arrested, or have any criminal record not previously disclosed above?', 'y', 'y'),
(175, 'FDC', '427925', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(176, 'FDC', '427925', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(177, 'FDC', '427925', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(178, 'FDC', '427925', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(179, 'FDC', '427925', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(180, 'FDC', '427925', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(181, 'FDC', '427925', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(182, 'FDC', '427925', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(183, 'FDC', '427925', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(184, 'FDC', '427925', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(185, 'FDC', '427925', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(186, 'FDC', '427925', 12, 'Have you ever been convicted for selling, distributing or manufacturing illegal drugs?', 'y', 'y'),
(187, 'FDC', '427925', 13, 'Have you ever filed for bankruptcy?', 'y', 'y'),
(188, 'FDC', '427925', 14, 'Have you ever been evicted or asked to move?', 'y', 'y'),
(189, 'GMG', '000001', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', '', ''),
(190, 'GMG', '000001', 2, 'Have you filed for bankruptcy in the past 10 years?', 'y', 'y'),
(191, 'GMG', '000001', 3, 'Have you been evicted or refused to pay rent for any reason?', 'y', 'y'),
(192, 'GMG', '000001', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(193, 'GMG', '000001', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(194, 'GMG', '000001', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'y', ''),
(195, 'GMG', '000001', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', '', ''),
(196, 'GMG', '000001', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(197, 'GMG', '000001', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(198, 'GMG', '000001', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(199, 'GMG', '000001', 11, 'Do you have or intend to have water filled furniture in the apartment home?', '', ''),
(200, 'IHP', '033565', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'y', 'y'),
(201, 'IHP', '033565', 2, 'Have you filed for bankruptcy in the past 10 years?', 'y', ''),
(202, 'IHP', '033565', 3, 'Have you been evicted or refused to pay rent for any reason?', 'y', 'y'),
(203, 'IHP', '033565', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'y', 'y'),
(204, 'IHP', '033565', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'y', 'y'),
(205, 'IHP', '033565', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'y', 'y'),
(206, 'IHP', '033565', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'y', 'y'),
(207, 'IHP', '033565', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'y', 'y'),
(208, 'IHP', '033565', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'y', 'y'),
(209, 'IHP', '033565', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'y', 'y'),
(210, 'IHP', '033565', 11, 'Do you have or intend to have water filled furniture in the home?', 'y', 'y'),
(211, 'GMG', '000001', 12, 'Were you screened as a joint applicant at your new apartment?', 'y', ''),
(212, 'GMG', '000001', 13, 'Are you sharing responsibility for rent payments with anyone else? ', 'y', ''),
(213, 'GMG', '000001', 14, 'Do you have records of your current bank statement? \r\n(You will need to upload later in this application.) ', 'y', ''),
(214, 'GMG', '000001', 15, 'Do you have records of your current pay stubs? \r\n(You will need to upload later in this application.) ', 'y', ''),
(215, 'PMC', '938417', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', '', ''),
(216, 'PMC', '938417', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(217, 'PMC', '938417', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(218, 'PMC', '938417', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(219, 'PMC', '938417', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(220, 'PMC', '938417', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(221, 'PMC', '938417', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(222, 'PMC', '938417', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(223, 'PMC', '938417', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(224, 'PMC', '938417', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(225, 'PMC', '938417', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(226, 'PMC', '938417', 12, 'Are you a current member of Military Service?', 'y', ''),
(227, 'SGM', '733037', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(228, 'SGM', '733037', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(229, 'SGM', '733037', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(230, 'SGM', '733037', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(231, 'SGM', '733037', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(232, 'SGM', '733037', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(233, 'SGM', '733037', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(234, 'SGM', '733037', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(235, 'SGM', '733037', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(236, 'SGM', '733037', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(237, 'SGM', '733037', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(238, 'AMU', '259121', 15, 'Meets property criteria ', 'y', 'y'),
(239, 'PNC', '710076', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(240, 'PNC', '710076', 2, 'Have you filed for bankruptcy in the past 10 years?', 'Y', NULL),
(241, 'PNC', '710076', 3, 'Have you been evicted or refused to pay rent for any reason?', 'Y', NULL),
(242, 'PNC', '710076', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(243, 'PNC', '710076', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(244, 'PNC', '710076', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(245, 'PNC', '710076', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(246, 'PNC', '710076', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(247, 'PNC', '710076', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(248, 'PNC', '710076', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(249, 'PNC', '710076', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(250, 'IMG', '384154', 12, 'Have you ever declared bankruptcy? ', 'y', 'y'),
(251, 'IMG', '384154', 13, 'If you have declared bankruptcy, has it been discharged?', 'y', 'y'),
(252, 'GMG', '000001', 16, 'Do you have a snake ?', 'y', 'y'),
(253, 'MGR', '194227', 1, 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?', 'Y', NULL),
(254, 'MGR', '194227', 2, 'Have you filed for bankruptcy?', 'y', 'y'),
(255, 'MGR', '194227', 3, 'Have you ever been evicted or asked to move?', 'y', 'y'),
(256, 'MGR', '194227', 4, 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ', 'Y', NULL),
(257, 'MGR', '194227', 5, 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?', 'Y', NULL),
(258, 'MGR', '194227', 6, 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?', 'Y', NULL),
(259, 'MGR', '194227', 7, 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?', 'Y', NULL),
(260, 'MGR', '194227', 8, 'Do you or any person anticipated to occupy the premises have any outstanding warrants?', 'Y', NULL),
(261, 'MGR', '194227', 9, 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?', 'Y', NULL),
(262, 'MGR', '194227', 10, 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?', 'Y', NULL),
(263, 'MGR', '194227', 11, 'Do you have or intend to have water filled furniture in the apartment home?', 'Y', NULL),
(264, 'MGR', '194227', 12, 'Have you ever been convicted of selling, distributing or manufacturing illegal drugs? ', 'y', 'y'),
(265, 'GMG', '000001', 17, 'This process is easy and simple', 'y', 'y'),
(267, 'GMG', '000001', 18, 'Test Question', 'y', 'y'),
(268, '', '', 0, 'rrr?', 'y', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `idmembers` int(15) NOT NULL,
  `memberid` char(3) NOT NULL,
  `memberno` char(6) NOT NULL,
  `membername` char(100) NOT NULL,
  `membermasterid` char(3) NOT NULL,
  `membermasterno` char(6) NOT NULL,
  `memberaddress` varchar(100) NOT NULL,
  `membercity` varchar(50) NOT NULL,
  `memberstate` char(2) NOT NULL,
  `memberzip` char(5) NOT NULL,
  `leaseofficephone` char(15) DEFAULT NULL,
  `leaseoffichours` varchar(100) DEFAULT NULL,
  `leaseofficeemail` varchar(100) DEFAULT NULL,
  `notificationemail1` varchar(100) DEFAULT NULL,
  `notificationemail2` varchar(100) DEFAULT NULL,
  `notificationemail3` varchar(100) DEFAULT NULL,
  `notificationemail4` varchar(100) DEFAULT NULL,
  `notificationemail5` varchar(100) DEFAULT NULL,
  `membertoken` varchar(50) DEFAULT NULL,
  `datecreated` datetime DEFAULT NULL,
  `dateedited` datetime DEFAULT NULL,
  `styleid` int(15) DEFAULT NULL,
  `profileid` int(15) DEFAULT NULL,
  `applicantfee` decimal(7,2) DEFAULT NULL,
  `paymentsubmit` varchar(20) DEFAULT NULL,
  `paymentprovider` char(10) DEFAULT NULL,
  `tspclickpaylandlordid` varchar(255) DEFAULT NULL,
  `tspclickpayllcid` varchar(255) DEFAULT NULL,
  `clickpaylandlordid` varchar(255) DEFAULT NULL,
  `clickpayllcid` varchar(255) DEFAULT NULL,
  `pmsintegrationisactive` char(1) DEFAULT NULL COMMENT 'Activate the Property Management System Integration',
  `pmspartner` varchar(10) DEFAULT NULL COMMENT 'RESMAN, YARDI, MRI, ENTRATA etc',
  `resmanaccountid` varchar(25) DEFAULT NULL,
  `resmanpropertyid` varchar(100) DEFAULT NULL,
  `resmanagentid` varchar(100) DEFAULT NULL,
  `resmanagentfirstname` varchar(50) DEFAULT NULL,
  `resmanagentlastname` varchar(50) DEFAULT NULL,
  `resmanrentchargecode` varchar(100) DEFAULT NULL,
  `resmansecdepositchargecode` varchar(100) DEFAULT NULL,
  `resmanholdepositchargecode` varchar(100) DEFAULT NULL,
  `membertag` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Members table';

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`idmembers`, `memberid`, `memberno`, `membername`, `membermasterid`, `membermasterno`, `memberaddress`, `membercity`, `memberstate`, `memberzip`, `leaseofficephone`, `leaseoffichours`, `leaseofficeemail`, `notificationemail1`, `notificationemail2`, `notificationemail3`, `notificationemail4`, `notificationemail5`, `membertoken`, `datecreated`, `dateedited`, `styleid`, `profileid`, `applicantfee`, `paymentsubmit`, `paymentprovider`, `tspclickpaylandlordid`, `tspclickpayllcid`, `clickpaylandlordid`, `clickpayllcid`, `pmsintegrationisactive`, `pmspartner`, `resmanaccountid`, `resmanpropertyid`, `resmanagentid`, `resmanagentfirstname`, `resmanagentlastname`, `resmanrentchargecode`, `resmansecdepositchargecode`, `resmanholdepositchargecode`, `membertag`) VALUES
(1, 'DSR', '223339', 'PRICE OVERRIDE II', 'DSR', '454356', '432 ELM STEET', 'VAN NUYS', 'CA', '91405', '(123) 456-7891', '10AM-6PM', 'leaseoffice@gmail.com', '', 'smith@gmail.com', 'david@ymail.com', 'notificationemail4@gmail.com', 'notificationemail5@gmail.com', '8958804963DSR|454356077507486848DSR|22333945936885', '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '1.00', 'NOREPORTRUN', 'TSP', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'DSR', '454356', 'DAVID\'S TEST ACCOUNT', 'DSR', '454356', '6708 LOOP ROAD', 'DAYTON', 'OH', '45459', '(123) 456-7891', '10AM-6PM', 'leaseoffice@gmail.com', 'john@yahoo.com', 'smith@gmail.com', 'david@ymail.com', 'notificationemail4@gmail.com', 'notificationemail5@gmail.com', '4362226613DSR|454356094849740335DSR|45435659643456', '2016-12-29 17:02:58', '2016-12-31 18:22:35', 1, 1, '1.00', 'NOREPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', 'Y', 'ResMan', '800', 'd3f567a1-2132-466f-ba24-4e4da1cd48eb', '03d71449-69b4-432c-9053-71824e01a260', 'Roi', 'ResMan', '8bf2c1ec-2ff2-4e12-80b0-b10f6962ac43', NULL, NULL, NULL),
(3, 'DSR', '485555', 'TEST ACCOUNT 2', 'DSR', '454356', 'P O BOX 3338', 'CHATSWORTH', 'CA', '91313', '(123) 456-7891', '10AM-6PM', 'leaseoffice@gmail.com', 'john@yahoo.com', 'smith@gmail.com', 'david@ymail.com', 'notificationemail4@gmail.com', 'notificationemail5@gmail.com', '6750071290DSR|454356035391441882DSR|48555553697626', '2016-12-30 11:43:04', '2016-12-31 18:22:35', 1, 1, '1.00', 'NOREPORTRUN', 'TSP', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'DSR', '905057', 'DAVID', 'DSR', '454356', '2134234', 'DAYTON', 'MT', '23423', '(123) 456-7891', '10AM-6PM', 'leaseoffice@gmail.com', 'john@yahoo.com', 'smith@gmail.com', 'david@ymail.com', 'notificationemail4@gmail.com', 'notificationemail5@gmail.com', '2123796331DSR|454356713964468589DSR|90505721554928', '2016-12-30 11:43:04', '2016-12-31 18:22:35', 1, 1, '1.00', 'NOREPORTRUN', 'TSP', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'RMM', '333664', 'SUBACCOUNT 1', 'RMM', '612572', '1234 MAIN STREET', 'OXNARD', 'CA', '91405', '(818) 324-2432', NULL, '', NULL, NULL, NULL, NULL, NULL, '2513288159RMM|612572956155705403RMM|33366433798278', '2016-12-30 12:39:05', '2016-12-31 18:23:15', 10, 13, '1.00', 'REPORTRUN', '', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'RMM', '612572', 'RICK SUBMEMBER TEST', 'RMM', '612572', '111 SOUTH 1ST STREET', 'GARDENA', 'CA', '92030', '(616) 111-1111', NULL, '', NULL, NULL, NULL, NULL, NULL, '1262320791RMM|612572627716894575RMM|61257200964397', '2016-12-30 12:39:05', '2016-12-31 18:23:15', 10, 13, '1.00', 'REPORTRUN', '', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'DSR', '285988', 'PRICING OVERRIDE TEST', 'DSR', '454356', '123 MAIN STREET', 'CULVER CITY', 'CA', '90230', '(123) 456-7891', '10AM-6PM', 'leaseoffice@gmail.com', 'john@yahoo.com', 'smith@gmail.com', 'david@ymail.com', 'notificationemail4@gmail.com', 'notificationemail5@gmail.com', '3732593124DSR|454356554986292921DSR|28598893678570', '2016-12-30 12:40:55', '2016-12-31 18:22:34', 1, 50, '1.00', 'NOREPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'TSP', '000001', 'THE SCREENING PROS', 'TSP', '000001', '123 TESTING TSP ADDRESS', 'LOS ANGELES', 'CA', '98765', '(111) 111-1111', NULL, 'edwins@thescreeningpros.com', NULL, NULL, NULL, NULL, NULL, '6979810912TSP|000001879708071754TSP|00000155985023', '2017-01-01 15:11:49', NULL, 11, 14, '1.00', 'REPORTRUN', '', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'TSP', '416122', 'THE SCREENING PROS', 'TSP', '000001', 'PO BOX 3338', 'CHATSWORTH', 'CA', '91313', '(818) 444-5252', '', 'cdaneena@yahoo.com', '', '', '', '', '', '9991111841TSP|000001380910583080TSP|41612288249541', '2017-01-01 15:11:49', NULL, 11, 14, '1.00', 'REPORTRUN', 'TSP', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'RWN', '875678', 'MID WEST REGIONAL HQ', 'RWN', '906904', '789 WEST ST', 'CHICAGO', 'IL', '60626', '(999) 999-9999', 'Mon - Friday 9 am to 5pm | Saturday 10 am to 4pm | Sunday :Closed', 'cyndir@thescreeningpros.com', 'rizwana@thescreeningpros.com', '', '', '', '', '1122112771RWN|906904072323083071RWN|87567875761860', '2017-02-04 11:05:44', NULL, 41, 53, '1.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'RWN', '906904', 'MOUNT EVEREST MANAGEMENT', 'RWN', '906904', '9001 EVEREST AVENUE', 'LOS ANGELES', 'CA', '90011', '(999) 999-9999', 'Mon - Friday 9 am to 5pm | Saturday 10 am to 4pm | Sunday :Closed', 'cyndir@thescreeningpros.com', 'rizwana@thescreeningpros.com', '', '', '', '', '8596404504RWN|906904903236586531RWN|90690408496356', '2017-02-04 11:05:44', NULL, 35, 53, '1.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'RWN', '967073', 'EAST COAST REGIONAL HQ', 'RWN', '906904', '456 BROADWAY', 'BALTIMORE', 'MD', '21226', '(999) 999-9999', 'Mon - Friday 9 am to 5pm | Saturday 10 am to 4pm | Sunday :Closed', 'cyndir@thescreeningpros.com', 'rizwana@thescreeningpros.com', '', '', '', '', '6333141666RWN|906904815041157182RWN|96707399676813', '2017-02-04 11:05:45', NULL, 35, 53, '1.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'AOL', '230717', 'Eastchester Heights', 'AOL', '230717', '3480 Seymour Avenue', 'Bronx', 'NY', '10469', '(347) 221-0070', 'Mon - Friday: 9 am to 5pm | Saturday: 10 am to 4pm | Sunday: Closed', 'paulm@thescreeningpros.com', 'paulm@thescreeningpros.com', '', '', '', '', '4688918119AOL|230717948961569553AOL|23071723916388', '2017-02-28 11:08:40', '2017-02-28 14:49:25', 51, 85, '1.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'Y', 'AIM', '', '123456', '', '', '', '', '', NULL, ''),
(14, 'AOL', '362089', 'PRC MANAGEMENT', 'AOL', '230717', '240 MADISON AVE', 'NEW YORK', 'NY', '10016', '(999) 999-9999', 'Mon - Friday: 9 am to 5pm | Saturday: 10 am to 4pm | Sunday: Closed', 'paulm@thescreeningpros.com', 'paulm@thescreeningpros.com', '', '', '', '', '7517445811AOL|230717635128815564AOL|36208913671363', '2017-02-28 14:49:25', NULL, 44, 83, '1.00', 'NOREPORTRUN', 'CLICKPAY', NULL, NULL, '3356237a-0eec-44d9-b8d3-1fcdc4e6e447', '', 'N', '', '', '', '', '', '', '', '', NULL, 'Apartment Managed By'),
(15, 'AOL', '535784', 'THE PIERCE', 'AOL', '230717', '525-527 RIVERDALE AVENUE', 'YONKERS', 'NY', '10705', '(999) 999-9999', 'Mon - Friday: 9 am to 5pm | Saturday: 10 am to 4pm | Sunday: Closed', 'paulm@thescreeningpros.com', 'paulm@thescreeningpros.com', '', '', '', '', '6611763858AOL|230717162761201305AOL|53578454458828', '2017-02-28 14:49:25', NULL, 47, 82, '1.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', 'N', '', '', '', '', '', '', '', '', NULL, ''),
(16, 'MSL', '647524', 'Manhattan Skyline Management', 'MSL', '647524', '103 West 55th Street', 'New York', 'NY', '10019', '(212) 408-9435', 'Mon - Friday: 9 am to 5pm | Saturday: 10 am to 4pm | Sunday: Closed', '', 'paulm@thescreeningpros.com', '', '', '', '', '6259479467MSL|647524669544072777MSL|64752414487502', '2017-03-14 12:36:40', '2017-03-15 16:18:28', 52, 86, '1.00', 'NOREPORTRUN', 'TSP', NULL, NULL, '', '', 'Y', 'ResMan', '800', 'd3f567a1-2132-466f-ba24-4e4da1cd48eb', '03d71449-69b4-432c-9053-71824e01a260', 'Roi', 'ResMan', '8bf2c1ec-2ff2-4e12-80b0-b10f6962ac43', '20db8c9a-8ac6-47e0-aedd-0da5ce7f9b07', NULL, ''),
(17, 'DMP', '437952', 'DUNLAP & MAGEE PROPERTY MGMT', 'DMP', '437952', '11260 N. TATUM BLVD', 'PHOENIX', 'AZ', '85028', '(602) 244-1006', 'Mon - Fri 9:00am to 5:00pm Sat 10:00 to 4:00pm ', '', 'rent@dmp.com', '', '', '', '', '4987107295DMP|437952043891671099DMP|43795270566072', '2017-03-28 11:03:52', '2017-03-30 12:51:58', 56, 87, '1.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(18, 'AMC', '025269', 'APARTMENT MGMT CONSULTANTS', 'AMC', '025269', '7001 SOUTH 900 EAST', 'MIDVALE', 'UT', '84047', '(801) 676-1633', '', '', '', '', '', '', '', '7908393029AMC|025269474151108870AMC|02526995429317', '2017-03-30 14:34:53', '2017-10-30 12:52:06', 59, 88, '35.00', 'NOREPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(19, 'AMU', '179419', 'CLARADON VILLAGE', 'AMU', '259121', '3560 MIDLAND DRIVE', 'WEST HAVEN', 'UT', '84401', '(801) 203-3233', '', 'claradonvillage@amcllc.net', 'clrmgr@amcllc.net', 'claradonvillage@amcllc.net', '', '', '', '0631979249AMU|259121448194652056AMU|17941962982163', '2017-04-05 10:41:55', '2017-11-28 08:59:50', 61, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxxxxxxx', 'AMU179419', 'Y', 'ResMan', '1310', '76096271-071f-4b00-a58c-00bcbeb9dbb4', '13559e0f-6145-42ed-b536-05200f9b6e05', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', '', NULL),
(20, 'AMU', '259121', 'AMC LLC UTAH', 'AMU', '259121', '7001 SOUTH 900 EAST', 'MIDVALE', 'UT', '84047', '(801) 676-1633', '', 'd.murrah@amcllc.net', '', '', '', '', '', '9025313864AMU|259121287500436286AMU|25912106598525', '2017-04-05 10:41:55', '2018-01-10 14:36:19', 60, 89, '35.00', 'NOREPORTRUN', 'TSP', NULL, NULL, '', '', 'N', 'ResMan', '', '', '', '', '', '', '', '', NULL),
(21, 'ACR', '119390', 'AMC LLC COLORADO', 'ACR', '119390', '6021 SOUTH SYRACUSE WAY', 'GREENWOOD VILLAGE', 'CO', '80111', '(720) 518-2736', '', 's.brooks@amcllc.net', 's.brooks@amcllc.net', '', '', '', '', '2833410117ACR|119390500371477793ACR|11939033000679', '2017-04-07 14:41:44', '2017-06-26 14:20:07', 62, 91, '50.00', 'NOREPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(22, 'ACR', '175842', 'FRANKLIN FLATS', 'ACR', '119390', '3208 W 7TH ST', 'GREELEY CITY', 'CO', '80634', '(970) 353-2932', '', 'clmmgr@amcllc.net', 'clmmgr@amcllc.net', '', '', '', '', '7937331336ACR|119390837329269186ACR|17584272061348', '2017-04-07 14:41:44', '2017-06-26 14:20:07', 69, 91, '50.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'ACR175842', 'Y', 'ResMan', '1310', '4924ad65-86e8-4c9f-8635-01a23faa21c9', 'a5b1038c-75ff-448f-a2d8-91d980aa5233', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, ''),
(23, 'ARZ', '473695', 'AMC LLC ARIZONA', 'ARZ', '473695', '1230 N MESA DR', 'MESA', 'AZ', '85201', '(702) 259-0171', '', 'j.bradley@amcllc.net', '', '', '', '', '', '1150993645ARZ|473695998411264864ARZ|47369550009609', '2017-04-07 14:50:14', '2017-12-07 14:49:10', 63, 92, '35.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(24, 'ARZ', '708803', 'WOODSTREAM VILLAGE', 'ARZ', '473695', '1230 N MESA DRIVE', 'MESA', 'AZ', '85201', '(480) 898-0722', '', 'woodstreamvillage@amcllc.net', 'wovmgr@amcllc.net', 'woodstreamvillage@amcllc.net', '', '', '', '6339264493ARZ|473695135511264842ARZ|70880351731067', '2017-04-07 14:50:14', '2017-12-07 14:49:10', 67, 92, '40.70', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'ARZ708803', 'Y', 'ResMan', '1310', '1b25e88a-f8b1-49b1-add9-1982b57cdb39', 'be00483e-0d90-42b3-80ad-3056c4c78bff', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, NULL),
(25, 'ARZ', '826336', 'FALCON GLEN', 'ARZ', '473695', '4225 E UNIVERSITY DRIVE', 'MESA', 'AZ', '85205', '(480) 830-8795', '', 'flnmgr@amcllc.net', 'fgamgr@amcllc.net', 'falconglen@amcllc.net', '', '', '', '8807646320ARZ|473695382349467493ARZ|82633606249162', '2017-04-07 14:50:14', '2017-12-07 14:49:10', 68, 92, '40.70', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'ARZ826336', 'Y', 'ResMan', '1310', 'ac2cb864-2454-4566-8cbc-1c462a67965a ', '99b68800-910d-4a08-b562-4475259015e6', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, NULL),
(27, 'PRC', '122176', '525-527 RIVERDALE AVE, LLC', 'PRC', '452301', '525-27 RIVERDALE AVE', 'YONKERS', 'NY', '10705', '(914) 618-4933', '', 'info@thepiercerentals.com', 'rebeccaz@prcny.com', 'lauraf@prcny.com', '', '', '', '0499273694PRC|452301253197106045PRC|12217691179650', '2017-04-11 12:38:47', '2017-05-05 13:15:07', 64, 93, '75.00', 'NOREPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(28, 'PRC', '452301', 'PRC MANAGEMENT CORP', 'PRC', '452301', '240 MADISON AVE', 'NEW YORK', 'NY', '10016', '(212) 585-0500', '', 'stephenh@prcny.com', 'rebeccaz@prcny.com', 'lauraf@prcny.com', '', '', '', '7983780675PRC|452301180177466514PRC|45230195856228', '2017-04-11 12:38:47', '2017-05-05 13:15:07', 64, 93, '75.00', 'NOREPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(29, 'PRC', '538918', '1355 E 18TH ST LLC', 'PRC', '452301', '1355 E 18TH ST', 'BROOKLYN', 'NY', '11230', '(212) 585-0500', '', 'rebeccaz@prcny.com', 'rebeccaz@prcny.com', 'lauraf@prcny.com', '', '', '', '7253584180PRC|452301226943233475PRC|53891890708539', '2017-04-11 12:38:47', '2017-05-05 13:15:07', 64, 93, '75.00', 'NOREPORTRUN', 'TSP', NULL, NULL, 'xxx', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(30, 'PRC', '716871', '800 AVENUE H, LLC', 'PRC', '452301', '800 AVENUE H', 'BROOKLYN', 'NY', '11230', '(212) 585-0500', '', 'rebeccaz@prcny.com', 'rebeccaz@prcny.com', 'lauraf@prcny.com', '', '', '', '8416031916PRC|452301343288017058PRC|71687172501509', '2017-04-11 12:38:47', '2017-05-05 13:15:07', 64, 93, '75.00', 'NOREPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(31, 'PRC', '811327', '532 WEST 152ND ST PARTNERS LLC', 'PRC', '452301', '532 WEST 152ND STREET', 'NEW YORK', 'NY', '10031', '(212) 585-0500', '', 'rebeccaz@prcny.com', 'rebeccaz@prcny.com', 'lauraf@prcny.com', '', '', '', '0884413870PRC|452301590026212476PRC|81132727016837', '2017-04-11 12:38:47', '2017-05-05 13:15:07', 64, 93, '75.00', 'NOREPORTRUN', 'TSP', NULL, NULL, 'xxx', '532W', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(32, 'PRC', '912131', '1550 E 13TH ST LLC', 'PRC', '452301', '1550 E 13TH ST', 'BROOKLYN', 'NY', '11230', '(212) 585-0500', '', 'rebeccaz@prcny.com', 'rebeccaz@prcny.com', 'lauraf@prcny.com', '', '', '', '6336223485PRC|452301135207163985PRC|91213181534932', '2017-04-11 12:38:47', '2017-05-05 13:15:07', 64, 93, '75.00', 'NOREPORTRUN', 'TSP', NULL, NULL, 'xxx', '1550', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(33, 'IMG', '370352', 'THE ASTON AT UNIVERSITY PLACE', 'IMG', '384154', '730 EAST 950 SOUTH', 'OREM', 'UT', '84097', '(801) 937-4049', 'Mon â€“ Fri 9:00 am to 6:00 pm Sat â€“ 10:00 am to 5:00 pm', 'astonleasing@icocommunities.com', 'astonmanager@icocommunities.com', 'astonasst@icocommunities.com', 'astonleasing@icocommunities.com', '', '', '4314028404IMG|384154613229830944IMG|37035299502923', '2017-04-19 12:59:36', '2017-08-18 11:14:08', 74, 102, '39.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(34, 'IMG', '384154', 'ICO MANAGEMENT LLC', 'IMG', '384154', '978 WOODOAK LANE', 'MURRAY', 'UT', '84117', '(801) 747-7000', NULL, 'jennyb@icomanagement.com', NULL, NULL, NULL, NULL, NULL, '4444256485IMG|384154222810463982IMG|38415460469871', '2017-04-19 12:59:36', '2017-08-18 11:14:08', 66, 102, '0.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'AMU', '243634', 'GREEN GROVE', 'AMU', '259121', '170 S PLEASANT GROVE BLVD', 'PLEASANT GROVE', 'UT', '84062', '(801) 769-7000', '', 'greengrove@amcllc.net', 'ggrmgr@amcllc.net', 'greengrove@amcllc.net', '', '', '', '7745636424AMU|259121818059778545AMU|24363470144400', '2017-04-20 10:56:56', '2017-11-28 08:59:50', 73, 107, '35.00', 'NOFEENOREPORTRUN', 'TSP', NULL, NULL, '', '', 'Y', 'ResMan', '1310', '79e49961-9757-4520-9861-f577910b1138', 'a9df167a-cf87-49be-be95-5c1a7c44bd37', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', '', ''),
(36, 'AMU', '600769', 'SETTLERS LANDING', 'AMU', '259121', '3330 SOUTH MIDLAND DRIVE', 'WEST HAVEN', 'UT', '84401', '(801) 781-6200', '', 'settlerslanding@amcllc.net', 'setmgr@amcllc.net', 'settlerslanding@amcllc.net', '', '', '', '0288279683AMU|259121912212194075AMU|60076929401159', '2017-04-20 10:56:56', '2017-11-28 08:59:50', 70, 89, '30.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'AMU600769', 'Y', 'ResMan', '1310', '298c927e-0810-4e3a-a374-f6e9d2a788f0', '854662e6-0ed1-4a33-8bcd-ca635cb193bc', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', '', NULL),
(37, 'AMU', '658611', 'GOLDSTONE PLACE', 'AMU', '259121', '1200 SOUTH 1500 EAST', 'CLEARFIELD', 'UT', '84015', '(801) 776-6887', '', 'gstmgr@amcllc.net', 'gstmgr@amcllc.net', '', '', '', '', '2825759961AMU|259121144445141738AMU|65861162441488', '2017-04-20 10:56:56', '2017-11-28 08:59:50', 72, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'AMU658611', 'Y', 'ResMan', '1310', 'ba5c2304-41ef-4e8d-8f43-df2df319782b', '7b805506-eb55-4c29-b13d-a1b31fd6d40c', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', '', NULL),
(38, 'AMU', '833923', 'COVENTRY COVE', 'AMU', '259121', '2091 WEST PARK AVENUE', 'RIVERTON', 'UT', '84065', '(801) 307-1600', '', 'coventrycove@amcllc.net', 'covmgr@amcllc.net', 'coventrycove@amcllc.net', '', '', '', '1696681526AMU|259121671252988060AMU|83392305308006', '2017-04-20 10:56:56', '2017-11-28 08:59:50', 71, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'AMU833923', 'Y', 'ResMan', '1310', 'f8327ffc-f977-44a7-9576-919dac1e63dd', 'a22d2af8-e24d-41fb-b9ad-d56778e7c669', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', '', NULL),
(39, 'FDC', '427925', 'FDC MANAGEMENT INC', 'FDC', '427925', '135 SOUTH CHAPARRAL CT', 'ANAHEIM HILLS', 'CA', '92808', '(714) 685-7000', 'Monday-Sunday 8am-6pm', 'jwohrman@fdcmanagement.com', 'jwohrman@fdcmanagement.com', '', '', '', '', '6873914598FDC|427925050745420856FDC|42792525408749', '2017-04-25 15:41:16', NULL, 75, 104, '35.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(40, 'FDC', '505081', 'FDC/HARBOUR LIGHTS', 'FDC', '427925', '16700 SAYBROOK LN', 'HUNTINGTON BEACH', 'CA', '92649', '(714) 846-3341', 'Monday-Sunday 8am-6pm ', '', '', '', '', '', '', '4940288765FDC|427925759212507136FDC|50508194103948', '2017-04-25 15:41:16', NULL, 75, 104, '0.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(41, 'PRC', '113970', 'THE SUMMIT AT DOBBS FERRY', 'PRC', '452301', '200 BEACON HILL DRIVE', 'DOBBS FERRY', 'NY', '10522', '(914) 937-9300', NULL, '', NULL, NULL, NULL, NULL, NULL, '1810240378PRC|452301064408259482PRC|11397056599307', '2017-05-05 09:55:43', '2017-05-05 13:15:07', 77, 105, '75.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'IMG', '466266', 'TRAINING PROPERTY', 'IMG', '384154', '978 E WOODOAK LANE', 'MURRAY', 'UT', '84117', '(999) 999-9999', 'Mon - Friday: 9 am to 5pm | Saturday: 10 am to 4pm | Sunday: Closed', 'chelseam@icomanagement.com', 'chelseam@icomanagement.com', '', '', '', '', '8125193703IMG|384154972736020388IMG|46626647431610', '2017-05-08 15:51:02', '2017-08-18 11:14:08', 78, 106, '1.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'Y', 'ResMan', '1239', '8948f793-19e1-43ea-9ab4-231b188eb73e', 'e2726e69-8b22-469b-9317-8105d2a99cd8', 'TSP', 'Applcation', '4bbb2c53-567d-4d5c-a9bf-bb4fa34db50a', 'a1554ad2-5eea-4322-8155-fc9fad9672fd', NULL, NULL),
(43, 'AMU', '137907', 'HIDDEN COVE', 'AMU', '259121', '2075 NORTH MAIN', 'LAYTON', 'UT', '84041', '(801) 775-9001', '', 'hdcmgr@amcllc.net', 'hiddencove@amcllc.net', 'hdcmgr@amcllc.net', '', '', '', '8784702628AMU|259121038654487309AMU|13790754023930', '2017-05-19 08:38:19', '2017-11-28 08:59:50', 83, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'AMU137907', 'Y', 'ResMan', '1310', 'a50e59a6-e2ea-43f0-9b8c-710c185575b5', 'a1e53a14-eaf7-49bd-8cd0-7e237d48d6cb', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, ''),
(44, 'AMU', '187161', 'HOLLADAY ON 9TH', 'AMU', '259121', '4418 LEMANS DR', 'SALT LAKE CITY', 'UT', '84124', '(801) 263-0689', '', 'hl9mgr@amcllc.net', 'holladayonninth@amcllc.net', 'hl9mgr@amcllc.net', '', '', '', '6810901922AMU|259121385944764321AMU|18716186598682', '2017-05-19 08:38:19', '2017-11-28 08:59:50', 84, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'AMU187161', 'Y', 'ResMan', '1310', 'e7bdcf42-76ef-4756-95df-86967a7728eb', '79473406-7f88-4d16-8ef4-b4549e0426d9', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, ''),
(45, 'AMU', '728831', 'ASPENWOOD', 'AMU', '259121', '4139 SOUTH 4080 WEST', 'WEST VALLEY CITY', 'UT', '84120', '(801) 968-1161', '', 'aspenwood@amcllc.net', 'aspenwood@amcllc.net', 'aswmgr@amcllc.net', '', '', '', '2467830554AMU|259121748267870859AMU|72883113016727', '2017-05-19 08:38:20', '2017-11-28 08:59:50', 82, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'AMU728831', 'Y', 'ResMan', '1310', '76f51420-7890-4208-bf84-bc007b6f3369', 'f5714bc4-ad1e-40d1-884a-3a0d8247ba60', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, ''),
(46, 'ACR', '303493', 'CHEYENNE CROSSING', 'ACR', '119390', '640 WYCLIFF DRIVE', 'COLORADO SPRINGS', 'CO', '80906', '(719) 540-0780', '', 'chnmgr@amcllc.net', 'chnmgr@amcllc.net', 'cheyennecrossing@amcllc.net', '', '', '', '0304413734ACR|119390233711110017ACR|30349301219593', '2017-05-19 08:39:21', '2017-06-26 14:20:08', 81, 91, '50.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'ACR303493', 'Y', 'ResMan', '1310', '30b40757-3466-4c74-8697-67e711abc3a8', '120e746f-ee66-48d1-b42a-7161e7a771b5', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, NULL),
(47, 'ARZ', '552624', 'WATERSTONE', 'ARZ', '473695', '1651 S DOBSON RD', 'MESA', 'AZ', '85202', '(480) 831-6200', '', 'wtnmgr@amcllc.net', 'wtnmgr@amcllc.net', 'waterstone@amcllc.net', '', '', '', '0757628903ARZ|473695257489880866ARZ|55262463928928', '2017-05-19 08:40:00', '2017-10-04 13:25:25', 80, 92, '40.70', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'ARZ552624', 'Y', 'ResMan', '1310', '7b3cc2ac-ba35-4cac-a0f7-a3b4acc8d68a', 'b0eb9625-3ba6-438b-993a-4e62674483e9', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, NULL),
(48, 'ARZ', '902529', 'PARK VILLAGE', 'ARZ', '473695', '226 N HOBSON STREET', 'MESA', 'AZ', '85203', '(480) 655-7459', '', 'pvimgr@amcllc.net', 'pvimgr@amcllc.net', 'parkvillage@amllc.net', '', '', '', '2779017824ARZ|473695659701181449ARZ|90252916138601', '2017-05-19 08:40:00', '2017-12-07 14:49:10', 79, 92, '40.70', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'ARZ902529', 'Y', 'ResMan', '1310', 'c66a8941-68c7-4e69-854a-6649f48d4ce6', '0962e29c-b05e-4360-bd39-05fec957fc8d', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, NULL),
(49, 'AMU', '988782', 'TRAINING PROPERTY', 'AMU', '259121', '7001 SOUTH 900 EAST', 'MIDVALE', 'UT', '84047', '(999) 999-9999', '', '', '', '', '', '', '', '2577019324AMU|259121642798669500AMU|98878214438348', '2017-05-25 12:56:48', '2017-11-28 08:59:50', 60, 89, '1.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'Y', 'ResMan', '1310', '58cde9af-338b-4612-8517-09a3b45f7c6d', '174338e8-5505-419b-9002-f6ccd5e9593b', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, 'Use for traning purposes only'),
(50, 'GMG', '000001', 'GARYS TEST ACCOUNT', 'GMG', '000001', '111 GARY STREET', 'GLENDALE', 'CA', '91405', '(123) 456-7890', 'Mon - Fri 9:00am to 5:00pm Sat 10:00 to 4:00pm ', 'garyg@thescreeningpros.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com', 'awilliams2@costar.com', 'sbudhawani@costar.com', '1524531700GMG|000001334180160569GMG|00000199270724', '2017-06-05 15:44:39', '2017-11-02 15:27:53', 85, 117, '45.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, ''),
(51, 'GMG', '107572', 'COSTAR APARTMENTS', 'GMG', '000001', '1331 L STREET NW', 'WASHINGTON', 'DC', '20005', '(123) 456-7890', 'Mon - Fri 9:00am to 5:00pm Sat 10:00 to 4:00pm ', 'garyg@thescreeningpros.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com', 'awilliams2@costar.com', 'sbudhawani@costar.com', '4561555829GMG|000001659425332339GMG|10757216091015', '2017-06-05 15:44:39', '2017-11-02 15:27:53', 85, 117, '45.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, ''),
(52, 'IHP', '033565', 'IMAJN HOMES PHOENIX I', 'IHP', '033565', '8434 N 90TH ST.', 'SCOTTSDALE', 'AZ', '85258', '(602) 570-3963', '', 'info@imajnhomes.com', 'mgoldfarb@imajnhomes.com', 'jschulman@imajnhomes.com', '', '', '', '1778164670IHP|033565944612593133IHP|03356512633957', '2017-06-06 10:14:47', '2017-06-08 12:08:13', 86, 109, '55.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, '3356237a-0eec-44d9-b8d3-1fcdc4e6e447', 'IHP033565', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(53, 'IHP', '633601', 'IMAJN HOMES PHOENIX II', 'IHP', '033565', '8434 N 90TH ST.', 'SCOTTSDALE', 'AZ', '85258', '(602) 570-3963', '', 'info@imajnhomes.com', 'mgoldfarb@imajnhomes.com', 'jschulman@imajnhomes.com', '', '', '', '2750598700IHP|033565456886850510IHP|63360125671444', '2017-06-08 12:08:13', NULL, 86, 109, '55.00', 'NOREPORTRUN', 'CLICKPAY', NULL, NULL, '3356237a-0eec-44d9-b8d3-1fcdc4e6e447', 'IHP033565', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(54, 'PMC', '938417', 'PROVIDENT MANAGEMENT CORP.', 'PMC', '938417', '240 WEST 35TH STREET SUITE 504', 'NEW YORK', 'NY', '10001', '(212) 685-3982', '11:30 am to 6:00 pm Weekdays', 'providentmgmt@gmail.com', 'marknagel1@yahoo.com', '', '', '', '', '0170211610PMC|938417285474432564PMC|93841714724357', '2017-06-13 08:37:00', NULL, 90, 113, '75.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, 'An apartment managed by'),
(55, 'ACR', '234852', 'ASPENWOOD', 'ACR', '119390', '572 POTOMAC ST #A', 'AURORA', 'CO', '80011', '(303) 344-9672', '', 'aspnmgr@amcllc.net', 'aspnmgr@amcllc.net', '', '', '', '', '9399952244ACR|119390801764370003ACR|23485230334919', '2017-06-16 09:59:04', '2017-06-26 14:20:07', 62, 91, '50.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'Y', 'ResMan', '1310', '76f51420-7890-4208-bf84-bc007b6f3369', '', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, NULL),
(56, 'AMU', '376378', 'CLARADON VILLAGE II', 'AMU', '259121', '3560 MIDLAND DRIVE', 'WEST HAVEN', 'UT', '84401', '(801) 203-3233', '', 'claradonvillage@amcllc.net', 'clrmgr@amcllc.net', 'claradonvillage@amcllc.net', '', '', '', '5239542702AMU|259121607438590351AMU|37637810902341', '2017-06-22 12:50:03', '2017-11-28 08:59:50', 61, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'AMU376378', 'Y', 'ResMan', '1310', '8d6562af-373a-40c1-a2fe-87262c74b1d3', 'f8adab2d-5bed-449b-9551-461d8f2f4757', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, NULL),
(57, 'SGM', '199935', 'THE HERBERT APARTMENTS', 'SGM', '733037', '202 E 12TH ST', 'TUCSON', 'AZ', '85701', '(520) 777-5771', 'Mon-Fri: 8:30 AM to 5:30 PM Sat: 10 AM to 5 PM Sun: Closed', 'herbert@scotiagroup.com', 'herbert@scotiagroup.com', '', '', '', '', '5300309495SGM|733037213287319366SGM|19993589332947', '2017-08-16 09:43:38', NULL, 91, 114, '35.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(58, 'SGM', '733037', 'SCOTIA GROUP MANAGEMENT', 'SGM', '733037', '6340 N CAMPBELL AVE', 'TUCSON', 'AZ', '85718', '(520) 323-6515', NULL, 'shar@scotiagroup.com', NULL, NULL, NULL, NULL, NULL, '0674390533SGM|733037449238452309SGM|73303722752328', '2017-08-16 09:43:38', NULL, 91, 114, '0.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'IMG', '223400', 'ICO ORCHARD FARMS', 'IMG', '384154', '893 S LILY DRIVE', 'FRUIT HEIGHTS', 'UT', '84037', '(801) 827-0411', 'Mon â€“ Fri 9:00 am to 5:30 pm', 'orchardmanager@icocommunities.com', 'orchardmanager@icocommunities.com', '', '', '', '', '3980220380IMG|384154579749018580IMG|22340023834841', '2017-08-18 11:10:45', '2017-08-18 11:14:08', 96, 102, '39.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(60, 'IMG', '242965', 'ICO FAIRBOURNE STATION', 'IMG', '384154', '2900 WEST LEHMAN', 'SALT LAKE CITY', 'UT', '84119', '(801) 869-6999', 'Mon â€“ Fri 9:00 am to 6:00 pm Sat â€“ 10:00 am to 5:00 pm', 'FairbourneLeasing@icocommunities.com', 'Fairbournemanager@icocommunities.com', 'Fairbourneasst@icocommunities.com', 'FairbourneLeasing@icocommunities.com', '', '', '9900151132IMG|384154756711249283IMG|24296593853822', '2017-08-18 11:10:45', '2017-08-18 11:14:08', 97, 102, '39.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(61, 'IMG', '325323', 'ICO DISTRICT', 'IMG', '384154', '11100 S RIVER HEIGHTS DR', 'SOUTH JORDAN', 'UT', '84095', '(801) 727-8188', 'Mon -Fri 9:00 am to 6:00 pm Sat â€“ 10:00 am to 5:00 pm', 'districtleasing@icocommunities.com', 'Districtmanager@icocommunities.com', 'districtasst@icocommunities.com', 'districtleasing@icocommunities.com', '', '', '3455606468IMG|384154503152188947IMG|32532391228435', '2017-08-18 11:10:45', '2017-08-18 11:14:08', 66, 102, '39.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(62, 'IMG', '326796', 'ICO MAYFIELD', 'IMG', '384154', '2275 WEST 250 SOUTH', 'PLEASANT GROVE', 'UT', '84062', '(801) 922-5030', 'Mon â€“ Fri 9:00 am to 6:00 pm Sat â€“ 10:00 am to 5:00 pm', 'Mayfieldleasing@icocommunities.com', 'Mayfieldmanager@icocommunities.com', 'Mayfieldasst@icocommunities.com', 'Mayfieldleasing@icocommunities.com', '', '', '6391646164IMG|384154119134355821IMG|32679632247642', '2017-08-18 11:10:45', '2017-08-18 11:14:08', 95, 102, '39.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(63, 'IMG', '673308', 'ICO MONTEVAL', 'IMG', '384154', '355 WEST 920 NORTH', 'OREM', 'UT', '84057', '(385) 203-0300', 'Mon â€“ Fri 9:00 am to 5:30 pm Sat â€“ 10:00 am to 5:00 pm', 'montevalleasing@icocommunities.com', 'montevalmanager@icocommunities.com', 'montevalleasing@icocommunities.com', '', '', '', '8509246586IMG|384154330994408017IMG|67330853423646', '2017-08-18 11:10:46', '2017-08-18 11:14:08', 98, 102, '39.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(64, 'IMG', '890974', 'ICO RIDGE', 'IMG', '384154', '3315 N CENTER ST', 'LEHI', 'UT', '84043', '(801) 753-7377', '9:00am to 5:30pm Monday- Friday', 'ridgemanager@icocommunities.com', 'ridgemanager@icocommunities.com', '', '', '', '', '5777325906IMG|384154057802330029IMG|89097458090224', '2017-08-18 11:10:46', '2017-08-18 11:14:09', 92, 102, '39.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, NULL),
(65, 'PNC', '710076', 'PARKCHESTER NORTH CONDO', 'PNC', '710076', '1970 EAST TREMONT AVENUE', 'BRONX', 'NY', '10462', '(917) 634-5200', NULL, 'dpoole@pncondo.com', NULL, NULL, NULL, NULL, NULL, '1545410515PNC|710076336268032016PNC|71007671809511', '2017-08-22 13:03:08', NULL, 93, 115, '50.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'AMC', '387032', 'CRYSTAL CREEK', 'AMC', '025269', '3001 W. WARM SPRINGS RD', 'HENDERSON', 'NV', '89014', '(702) 451-8144', NULL, 'ccmgr@amcllc.net', NULL, NULL, NULL, NULL, NULL, '4464226420AMC|025269628149622508AMC|38703230839178', '2017-10-30 12:52:06', NULL, 59, 88, '0.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'AMU', '008480', '21 AND VIEW', 'AMU', '259121', '1339 EAST 2100 SOUTH', 'SALT LAKE CITY', 'UT', '84106', '(801) 487-6022', '', '21andview@amcllc.net', 'stamgr@amcllc.net', 'vsamgr@amcllc.net', '', '', '', '5106235654AMU|259121692350555933AMU|00848037249271', '2017-11-28 08:59:49', NULL, 102, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '634VSA', '', '', '', '', '', NULL, ''),
(68, 'AMU', '012667', 'PALLADIO', 'AMU', '259121', '360 SOUTH 200 WEST', 'SALT LAKE CITY', 'UT', '84101', '(801) 320-4400', '', 'palladio@amcllc.net', 'palladio@amcllc.net', '', '', '', '', '0348913401AMU|259121714933505159AMU|01266711827566', '2017-11-28 08:59:49', NULL, 104, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '668DIO', '', '', '', '', '', NULL, ''),
(69, 'AMU', '015858', 'CALAVERAS', 'AMU', '259121', '7940 MAIN STREET', 'MIDVALE', 'UT', '84047', '(801) 921-5308', '', 'thecalaveras@amcllc.net', 'thecalaveras@amcllc.net', '', '', '', '', '0784874661AMU|259121481729631216AMU|01585828162953', '2017-11-28 08:59:50', NULL, 105, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '629CLV', '', '', '', '', '', NULL, ''),
(70, 'AMU', '049742', 'PARK CENTRAL', 'AMU', '259121', '4425 SOUTH CHRISTOPHER WAY', 'WEST VALLEY CITY', 'UT', '84120', '(801) 969-2582', '', 'parkcentral@amcllc.net', 'parkcentral@amcllc.net', '', '', '', '', '9066916398AMU|259121586761149102AMU|04974238663369', '2017-11-28 08:59:50', NULL, 106, 89, '30.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '39CRW', '', '', '', '', '', NULL, ''),
(71, 'AMU', '075670', 'MULBERRY PARK', 'AMU', '259121', '5287 DEWBERRY LANE', 'TAYLORSVILLE', 'UT', '84129', '(801) 965-1384', '', 'mulberrypark@amcllc.net', 'mulberrypark@amcllc.net', 'mulmgr@amcllc.net', '', '', '', '2700179208AMU|259121950260085916AMU|07567065184500', '2017-11-28 08:59:50', NULL, 107, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '73MPA', '', '', '', '', '', NULL, ''),
(72, 'MGR', '194227', 'MGR PROPERTY MGMT/UPLAND', 'MGR', '194227', '1425 W FOOTHILL BLVD', 'UPLAND', 'CA', '91786', '(909) 581-6600', NULL, 'accounting@mgrrealestate.com', NULL, NULL, NULL, NULL, NULL, '5898675975MGR|194227592937238444MGR|19422727317939', '2017-11-28 17:55:06', '2017-11-28 18:26:50', 110, 118, '0.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'MGR', '226846', 'CROWN POINTE', 'MGR', '194227', '1840 NELSON ST', 'WEST COVINA', 'CA', '91792', '(626) 912-4519', 'Mon - Sat 8:00 am - 5:00 pm & Sun 11:00 am - 3:00 pm', 'crownpointmgr@gmail.com', 'crownpointmgr@mgrmgmt.com', 'chiggins@mgrmgmt.com', '', '', '', '8626163369MGR|194227658583962788MGR|22684674600055', '2017-11-28 18:26:50', NULL, 111, 120, '30.00', 'REPORTRUN', 'TSP', NULL, NULL, '', '', 'N', '', '', '', '', '', '', '', '', NULL, ''),
(74, 'AMU', '083670', 'CALAVERAS SOUTH', 'AMU', '259121', '797 AND 799 W WASATCH ST', 'MIDVALE', 'UT', '84047', '(801) 921-5308', '', 'thecalaverassouth@amcllc.net', 'thecalaverassouth@amcllc.net', '', '', '', '', '3014081615AMU|259121483135142055AMU|08367016327730', '2017-12-06 17:24:06', NULL, 109, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '683CLS', '', '', '', '', '', NULL, ''),
(75, 'AMU', '105655', 'BRAXTON AT TROLLEY SQUARE', 'AMU', '259121', '727 E 600 S', 'SALT LAKE CITY', 'UT', '84102', '(801) 359-8800', '', 'htcmgr@amcllc.net', 'htcmgr@amcllc.net', '', '', '', '', '3632214275AMU|259121043335902577AMU|10565572357806', '2017-12-06 17:24:07', NULL, 131, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '671HTC', '', '', '', '', '', NULL, ''),
(76, 'AMU', '131618', 'SHENANDOAH', 'AMU', '259121', '380 E 3860 S', 'SALT LAKE CITY', 'UT', '84115', '(801) 906-0819', '', 'shenandoah@amcllc.net', 'shenandoah@amcllc.net', '', '', '', '', '4068898735AMU|259121086932038634AMU|13161861005962', '2017-12-06 17:24:07', NULL, 167, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '602SHN', '', '', '', '', '', NULL, ''),
(77, 'AMU', '199255', 'CANDLESTICK LANE', 'AMU', '259121', '80 E 7800 SOUTH', 'MIDVALE', 'UT', '84047', '(801) 561-0204', '', 'candlesticklane@amcllc.net', 'candlesticklane@amcllc.net', 'clamgr@amcllc.net', '', '', '', '4873057248AMU|259121967347781422AMU|19925576727537', '2017-12-07 10:40:11', NULL, 134, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '29CLA', '', '', '', '', '', NULL, ''),
(78, 'AMU', '206675', 'ELMWOOD', 'AMU', '259121', '4320 SOUTH 700 EAST #14', 'SALT LAKE CITY', 'UT', '84107', '(801) 265-0921', '', 'elmwood@amcllc.net', 'elmwood@amcllc.net', '', '', '', '', '4145304512AMU|259121076227188342AMU|20667575646934', '2017-12-07 10:40:11', NULL, 145, 89, '30.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '620ELM', '', '', '', '', '', NULL, ''),
(79, 'AMU', '212176', 'BARBARA WORTH', 'AMU', '259121', '336 SOUTH TEMPLE', 'SALT LAKE CITY', 'UT', '84111', '(801) 441-5908', '', 'barbaraworth@amcllc.net', 'barbaraworth@amcllc.net', '', '', '', '', '2065496054AMU|259121006477189715AMU|21217638827658', '2017-12-07 10:40:11', NULL, 130, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '657BWA', '', '', '', '', '', NULL, ''),
(80, 'AMU', '229864', 'CITY LINE', 'AMU', '259121', '57 SOUTH 300 EAST', 'SALT LAKE CITY', 'UT', '84111', '(801) 411-5906', '', 'cityline@amcllc.net', 'cityline@amcllc.net', '', '', '', '', '4117880565AMU|259121796684783693AMU|22986417848418', '2017-12-07 10:45:01', NULL, 137, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '658CIL', '', '', '', '', '', NULL, ''),
(81, 'AMU', '241471', '644 CITY STATION', 'AMU', '259121', '644 WEST NORTH TEMPLE', 'SALT LAKE CITY', 'UT', '84116', '(801) 869-8200', '', '644citystation@amcllc.net', '644citystation@amcllc.net', 'ctymbr@amcllc.net', '', '', '', '5177840726AMU|259121408116641798AMU|24147172092614', '2017-12-07 10:45:01', NULL, 103, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '04CIS', '', '', '', '', '', NULL, ''),
(82, 'AMU', '267368', 'GREYHAWK TOWNHOMES', 'AMU', '259121', '1750 E 3250 N', 'LAYTON', 'UT', '84040', '(385) 383-5075', '', 'greyhawktownhomes@amcllc.net', 'greyhawktownhomes@amcllc.net', '', '', '', '', '7461768373AMU|259121149518992384AMU|26736812797623', '2017-12-07 10:45:01', NULL, 146, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '630GRH', '', '', '', '', '', NULL, ''),
(83, 'AMU', '268131', 'NEW BROADMOOR', 'AMU', '259121', '930 EAST 300 SOUTH', 'SALT LAKE CITY', 'UT', '84102', '(801) 860-4546', '', 'thenewbroadmoor@amcllc.net', 'thenewbroadmoor@amcllc.net', '', '', '', '', '8389033621AMU|259121563860085580AMU|26813124390224', '2017-12-07 10:47:22', NULL, 157, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '609NEW', '', '', '', '', '', NULL, ''),
(84, 'AMU', '300151', 'WINDGATE', 'AMU', '259121', '2030 S MAIN STREET', 'BOUNTIFUL', 'UT', '84010', '(855) 370-9464', '', 'windgate@amcllc.net', 'windgate@amcllc.net', 'wndmgr@amcllc.net', '', '', '', '9296820595AMU|259121431266872198AMU|30015111140903', '2017-12-07 10:47:22', NULL, 174, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '612WND', '', '', '', '', '', NULL, ''),
(85, 'AMU', '319354', 'MONACO', 'AMU', '259121', '4115 SOUTH 430 EAST', 'MILLCREEK', 'UT', '84107', '(801) 262-7551', '', 'monaco@amcllc.net', 'monaco@amcllc.net', '', '', '', '', '4963780871AMU|259121176520242164AMU|31935497642015', '2017-12-07 10:47:22', NULL, 182, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '675MNC', '', '', '', '', '', NULL, ''),
(86, 'AMU', '347995', 'CENTER COURT', 'AMU', '259121', '4916 SOUTH CENTER STREET', 'WEST JORDAN', 'UT', '84107', '(801) 819-5333', '', 'ctcmgr@amcllc.net', 'centercourt@amcllc.net', '', '', '', '', '8383892920AMU|259121241631457080AMU|34799533987411', '2017-12-07 10:47:22', NULL, 136, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '645CCT', '', '', '', '', '', NULL, ''),
(87, 'AMU', '363652', 'RIVERWALK', 'AMU', '259121', '6972 SOUTH RIVER RESERVE COURT', 'MIDVALE', 'UT', '84047', '(801) 520-1111', '', 'riverwalk@amcllc.net', 'riverwalk@amcllc.net', 'rwamgr@amcllc.net', '', '', '', '1451255020AMU|259121326852482522AMU|36365228597264', '2017-12-07 10:47:51', NULL, 196, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '616RWA', '', '', '', '', '', NULL, ''),
(88, 'AMU', '423490', 'JOSHUA TREE', 'AMU', '259121', '3345 S 1300 E', 'SALT LAKE CITY', 'UT', '84106', '(801) 906-0819', '', 'joshuatree@amcllc.net', 'joshuatree@amcllc.net', '', '', '', '', '8460058987AMU|259121326175638130AMU|42349002783287', '2017-12-07 10:47:51', NULL, 148, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '55JOT', '', '', '', '', '', NULL, ''),
(89, 'AMU', '442377', 'MEADOWS AT PARK AVENUE', 'AMU', '259121', '12650 SOUTH PARK AVENUE', 'RIVERTON', 'UT', '84065', '(801) 716-7900', '', 'meadowsatparkavenue@amcllc.net', 'meadowsatparkavenue@amcllc.net', '', '', '', '', '6895192913AMU|259121929440841871AMU|44237777308624', '2017-12-07 10:47:51', NULL, 202, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '664MEP', '', '', '', '', '', NULL, ''),
(90, 'AMU', '458079', 'DRIFTWOOD PARK', 'AMU', '259121', '3945 S 700 W', 'MURARY', 'UT', '84123', '(801) 264-8397', '', 'driftwoodpark@amcllc.net', 'driftwoodpark@amcllc.net', '', '', '', '', '7547408112AMU|259121456398055193AMU|45807913654021', '2017-12-07 10:47:52', NULL, 143, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '25DFT', '', '', '', '', '', NULL, ''),
(91, 'AMU', '485319', 'SANTA FE', 'AMU', '259121', '1550 FORT UNION BLVD', 'SALT LAKE CITY', 'UT', '84121', '(801) 942-5595', '', 'santafe@amcllc.net', 'santafe@amcllc.net', '', '', '', '', '5015704437AMU|259121981612500368AMU|48531938495466', '2017-12-07 10:49:11', NULL, 165, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '613SFA', '', '', '', '', '', NULL, ''),
(92, 'AMU', '496460', 'ATHERTON PARK', 'AMU', '259121', '4545 S ATHERTON DRIVE', 'TAYLORSVILLE', 'UT', '84123', '(801) 904-3554', '', 'athertonpark@amcllc.net', 'athertonpark@amcllc.net', '', '', '', '', '1538266048AMU|259121633996344229AMU|49646033565358', '2017-12-07 10:49:11', NULL, 129, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '02ATH', '', '', '', '', '', NULL, ''),
(93, 'AMU', '503303', 'RIDGEVIEW I', 'AMU', '259121', '110 SOUTH MAIN STREET', 'NORTH SALT LAKE CITY', 'UT', '84054', '(801) 936-0424', '', 'ridgeview@amcllc.net', 'ridgeview@amcllc.net', 'rvmgr@amcllc.net', '', '', '', '6775647902AMU|259121379249711428AMU|50330317914961', '2017-12-07 10:49:11', NULL, 161, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '648RV1', '', '', '', '', '', NULL, ''),
(94, 'AMU', '506267', 'WEST POINTE', 'AMU', '259121', '2184 W 3100 S', 'WEST VALLEY CITY', 'UT', '84119', '(801) 972-4982', '', 'westpointe@amcllc.net', 'westpointe@amcllc.net', '', '', '', '', '0409187612AMU|259121564046342834AMU|50626724428850', '2017-12-07 10:49:11', NULL, 203, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '32WPA', '', '', '', '', '', NULL, ''),
(95, 'AMU', '524948', 'FAIRSTONE AT RIVERVIEW', 'AMU', '259121', '4341 RIVERBOAT ROAD', 'SALT LAKE CITY', 'UT', '84123', '(801) 685-8200', '', 'fairstoneatriverview@amcllc.net', 'rizwana@thescreeningpros.com', 'tres@thescreeningpros.com', 'Cyndir@thescreeningpros.com', '', '', '0467847037AMU|259121228411694289AMU|52494875151159', '2017-12-07 10:50:43', NULL, 114, 89, '35.00', 'NOREPORTRUN', 'TSP', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '611FSR', '', '', '', '', '', NULL, ''),
(96, 'AMU', '554743', 'MOUNTAIN RIDGE MANOR', 'AMU', '259121', '820 MONROE', 'OGDEN', 'UT', '84404', '(801) 392-8139', '', 'mountainridgemanor@amcllc.net', 'mountainridgemanor@amcllc.net', '', '', '', '', '5279336494AMU|259121611317969562AMU|55474341131786', '2017-12-07 10:50:44', NULL, 155, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '79MRM', '', '', '', '', '', NULL, ''),
(97, 'AMU', '563837', 'REDWOOD', 'AMU', '259121', '4000 SOUTH REDWOOD RD', 'WEST VALLEY CITY', 'UT', '84123', '(801) 972-0124', '', 'theredwood@amcllc.net', 'theredwood@amcllc.net', '', '', '', '', '4548139971AMU|259121254741571472AMU|56383765818373', '2017-12-07 10:50:44', NULL, 187, 89, '45.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '608RED', '', '', '', '', '', NULL, ''),
(98, 'AMU', '574352', 'WILSHIRE PLACE', 'AMU', '259121', '6447 W WILSHIRE PARK AVE', 'WEST JORDAN', 'UT', '84081', '(801) 858-1999', '', 'wilshireplace@amcllc.net', 'wilshireplace@amcllc.net', '', '', '', '', '5200252020AMU|259121319952783619AMU|57435202151002', '2017-12-07 10:50:44', NULL, 173, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '621WSH', '', '', '', '', '', NULL, ''),
(99, 'AMU', '580882', 'LEGACY VILLAGE', 'AMU', '259121', '6256 S GOLD MEDAL DRIVE', 'TAYLORSVILLE', 'UT', '84129', '(801) 327-8300', '', 'legacyvillage@amcllc.net', 'legacyvillage@amcllc.net', 'lvamgr@amcllc.net', '', '', '', '0882349518AMU|259121448519271920AMU|58088224841917', '2017-12-07 10:51:37', NULL, 152, 89, '30.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '07LVA', '', '', '', '', '', NULL, ''),
(100, 'AMU', '582098', 'LAKESIDE VILLAGE UT', 'AMU', '259121', '1580 WEST 3940 SOUTH', 'SALT LAKE CITY', 'UT', '84123', '(801) 972-9999', '', 'lakesidevillageut@amcllc.net', 'lakesidevillageut@amcllc.net', 'lkvmgr@amcllc.net', '', '', '', '1495039945AMU|259121233088314667AMU|58209833133097', '2017-12-07 10:51:37', NULL, 120, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, '661LKV', '', 'Y', 'AIM', '', '661LKV', '', '', '', '', '', NULL, ''),
(101, 'AMU', '592941', 'COVE AT PLEASANT VIEW TOWN', 'AMU', '259121', '255 WEST 2700 NORTH', 'PLEASANT VIEW', 'UT', '84414', '(801) 648-4728', '', 'thecoveatpleasantview@amcllc.net', 'thecoveatpleasantview@amcllc.net', '', '', '', '', '3964421899AMU|259121076584345035AMU|59294187641192', '2017-12-07 10:51:37', NULL, 139, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '656CPV', '', '', '', '', '', NULL, ''),
(102, 'AMU', '608316', 'CHRISTOPHER VILLAGE', 'AMU', '259121', '4935 OLD POST ROAD', 'OGDEN', 'UT', '84403', '(801) 479-7105', '', 'christophervillage@amcllc.net', 'christophervillage@amcllc.net', '', '', '', '', '7760733385AMU|259121936257552168AMU|60831643784237', '2017-12-07 10:52:41', NULL, 189, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '51CHR', '', '', '', '', '', NULL, ''),
(103, 'AMU', '633130', 'ALPINE MEADOWS', 'AMU', '259121', '845 EAST 9000 SOUTH', 'SANDY', 'UT', '84094', '(801) 256-6000', '', 'alpinemeadowsut@amcllc.net', 'alpmgr@amcllc.net', 'alpinemeadowsut@amcllc.net', '', '', '', '1364449826AMU|259121700099052104AMU|63313020168387', '2017-12-07 10:52:41', NULL, 113, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '640ALP', '', '', '', '', '', NULL, ''),
(104, 'AMU', '694495', 'HIGHTOWER', 'AMU', '259121', '40 SOUTH 900 EAST', 'SALT LAKE CITY', 'UT', '84102', '(801) 532-6644', '', 'stamgr@amcllc.net', 'hightower@amcllc.net', 'stamgr@amcllc.net', '', '', '', '9720602656AMU|259121473645081076AMU|69449515388724', '2017-12-07 10:52:41', NULL, 177, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '622STA', '', '', '', '', '', NULL, ''),
(105, 'AMU', '706824', 'LOOKOUT POINTE', 'AMU', '259121', '1200 TERRACE DRIVE', 'PROVO', 'UT', '84604', '(801) 377-5201', '', 'lookoutpointe@amcllc.net', 'lookoutpointe@amcllc.net', 'lptmgr@amcllc.net', '', '', '', '7205832737AMU|259121222068109178AMU|70682488069518', '2017-12-07 10:52:41', NULL, 194, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '50LOP', '', '', '', '', '', NULL, ''),
(106, 'AMU', '727566', 'PLEASANT SPRINGS', 'AMU', '259121', '884 WEST 700 SOUTH', 'PLEASANT GROVE', 'UT', '84062', '(801) 922-9400', '', 'pleasantsprings@amcllc.net', 'pleasantsprings@amcllc.net', '', '', '', '', '4387512227AMU|259121642020969304AMU|72756644192086', '2017-12-07 11:07:39', NULL, 160, 89, '35.00', 'REPORTRUN', 'TSP', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '12PSA', '', '', '', '', '', NULL, '');
INSERT INTO `members` (`idmembers`, `memberid`, `memberno`, `membername`, `membermasterid`, `membermasterno`, `memberaddress`, `membercity`, `memberstate`, `memberzip`, `leaseofficephone`, `leaseoffichours`, `leaseofficeemail`, `notificationemail1`, `notificationemail2`, `notificationemail3`, `notificationemail4`, `notificationemail5`, `membertoken`, `datecreated`, `dateedited`, `styleid`, `profileid`, `applicantfee`, `paymentsubmit`, `paymentprovider`, `tspclickpaylandlordid`, `tspclickpayllcid`, `clickpaylandlordid`, `clickpayllcid`, `pmsintegrationisactive`, `pmspartner`, `resmanaccountid`, `resmanpropertyid`, `resmanagentid`, `resmanagentfirstname`, `resmanagentlastname`, `resmanrentchargecode`, `resmansecdepositchargecode`, `resmanholdepositchargecode`, `membertag`) VALUES
(107, 'AMU', '763710', 'ARCHES', 'AMU', '259121', '171 WEST 300 NORTH', 'SALT LAKE CITY', 'UT', '84103', '(801) 935-4535', '', 'arches@amcllc.net', 'arches@amcllc.net', '', '', '', '', '7208195995AMU|259121200961656098AMU|76371060420381', '2017-12-07 11:07:39', NULL, 127, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '685ACH', '', '', '', '', '', NULL, ''),
(108, 'AMU', '798110', 'BLUEKOI', 'AMU', '259121', '1712 SOUTH 900 EAST', 'SALT LAKE CITY', 'UT', '84105', '(801) 441-5902', '', 'bluekoi@amcllc.net', 'bluekoi@amcllc.net', '', '', '', '', '4477275215AMU|259121149484772658AMU|79811082952693', '2017-12-07 11:07:39', NULL, 179, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '632BLK', '', '', '', '', '', NULL, ''),
(109, 'AMU', '825586', 'SHADOWBROOK', 'AMU', '259121', '3852 SOUTH 1845 WEST', 'WEST VALLEY CITY', 'UT', '84119', '(801) 972-6666', '', 'shadowbrook@amcllc.net', 'shadowbrook@amcllc.net', '', '', '', '', '5128387336AMU|259121193080891483AMU|82558699298080', '2017-12-07 11:07:39', NULL, 166, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '30SBA', '', '', '', '', '', NULL, ''),
(110, 'AMU', '856478', 'HILLS AT RENAISSANCE', 'AMU', '259121', '467 WEST 1875 SOUTH', 'WOODS CROSS', 'UT', '84010', '(801) 951-8700', '', 'thehillsatrenaissance@amcllc.net', 'thehillsatrenaissance@amcllc.net', 'harmgr@amcllc.net', '', '', '', '2561064148AMU|259121416390649241AMU|85647811797556', '2017-12-07 11:08:17', NULL, 126, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '647HAR', '', '', '', '', '', NULL, ''),
(111, 'AMU', '864676', 'WASATCH COMMONS', 'AMU', '259121', '2790 N COMMONS BLVD', 'HEBER', 'UT', '84032', '(435) 657-6200', '', 'wasatchcommons@amcllc.net', 'wasatchcommons@amcllc.net', 'wacmgr@amcllc.net', '', '', '', '5042817587AMU|259121304109340250AMU|86467698435150', '2017-12-07 11:08:17', NULL, 171, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '619WAC', '', '', '', '', '', NULL, ''),
(112, 'AMU', '875917', 'YELLOWSTONE APARTMENTS', 'AMU', '259121', '155 EAST 1ST AVE', 'SALT LAKE CITY', 'UT', '84103', '(801) 935-4535', '', '', 'ysnmgr@amcllc.net', '', '', '', '', '3693205523AMU|259121049462710216AMU|87591775111995', '2017-12-07 11:08:17', NULL, 204, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '606YSN', '', '', '', '', '', NULL, ''),
(113, 'AMU', '897740', '500 TOWNHOMES', 'AMU', '259121', '3440 SOUTH 500 EAST', 'SALT LAKE CITY', 'UT', '84106', '(801) 467-2023', '', 'villafranche@amcllc.net', 'villafranche@amcllc.net', '', '', '', '', '4344317573AMU|259121114573912364AMU|89774091440150', '2017-12-07 11:08:18', NULL, 125, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '36VFA', '', '', '', '', '', NULL, ''),
(114, 'AMU', '935838', 'WOODGATE', 'AMU', '259121', '3851 COBBLE RIDGE DR', 'WEST JORDAN', 'UT', '84084', '(801) 282-1909', '', 'wgtmgr@amcllc.net', 'woodgate@amcllc.net', '', '', '', '', '2755550195AMU|259121278724660491AMU|93583866055174', '2017-12-07 11:09:24', NULL, 175, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '628WGA', '', '', '', '', '', NULL, ''),
(115, 'AMU', '946900', 'LOTUS', 'AMU', '259121', '338 EAST SOUTH TEMPLE', 'SALT LAKE CITY', 'UT', '84111', '(801) 441-5900', '', 'lotus@amcllc.net', 'lotus@amcllc.net', '', '', '', '', '8849313327AMU|259121266730731703AMU|94690006665832', '2017-12-07 11:09:24', NULL, 180, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '28LOT', '', '', '', '', '', NULL, ''),
(116, 'AMU', '974613', 'GROVECREST VILLAS', 'AMU', '259121', '488 WEST CENTER', 'PLEASANT GROVE', 'UT', '84062', '(801) 203-0777', '', 'grovecrestvillas@amcllc.net', 'grovecrestvillas@amcllc.net', '', '', '', '', '7954140269AMU|259121158867987943AMU|97461354069507', '2017-12-07 11:09:24', NULL, 147, 89, '25.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '665GVS', '', '', '', '', '', NULL, ''),
(117, 'AMU', '987119', 'PRANA', 'AMU', '259121', '255 W 800 S', 'SALT LAKE CITY', 'UT', '84101', '(801) 441-5911', '', 'prana@amcllc.net', 'prana@amcllc.net', '', '', '', '', '0674029104AMU|259121449202319419AMU|98711924922989', '2017-12-07 11:09:25', NULL, 193, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '605PNA', '', '', '', '', '', NULL, ''),
(118, 'AMU', '008412', 'ARCHES SOUTH', 'AMU', '259121', '156 W 200 N', 'SALT LAKE CITY', 'UT', '84103', '(801) 666-6435', '', 'archessouth@amcllc.net', 'archessouth@amcllc.net', '', '', '', '', '4633336051AMU|259121645160585655AMU|00841234674551', '2017-12-07 11:10:15', NULL, 128, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '601ASO', '', '', '', '', '', NULL, ''),
(119, 'AMU', '014794', 'CANYON VIEW CROSSING', 'AMU', '259121', '1460 SOUTH STATE STREET', 'OREM', 'UT', '84097', '(801) 669-5700', '', 'canyonviewcrossing@amcllc.net', '', '', '', '', '', '4348126481AMU|259121115027123159AMU|01479409341204', '2017-12-07 11:10:15', NULL, 202, 89, '1.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '660LAO', '', '', '', '', '', NULL, ''),
(120, 'AMU', '028217', 'VILLAGE PARK', 'AMU', '259121', '1080 NORTH STATE STREET', 'OREM', 'UT', '84057', '(801) 226-0064', '', 'villagepark@amcllc.net', '', '', '', '', '', '9800659196AMU|259121958450833527AMU|02821736189299', '2017-12-07 11:10:15', NULL, 115, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '663VGP', '', '', '', '', '', NULL, ''),
(121, 'AMU', '990634', 'COUNTRY SPRINGS', 'AMU', '259121', '625 S OREM BLVD', 'OREM', 'UT', '84058', '(801) 226-5276', '', 'countrysprings@amcllc.net', 'countrysprings@amcllc.net', 'cspmgr@amcllc.net', '', '', '', '5340471608AMU|259121214289325906AMU|99063491584656', '2017-12-07 11:10:16', NULL, 190, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '05CSP', '', '', '', '', '', NULL, ''),
(123, 'AMU', '114644', 'TOWNHOMES AT MOUNTAIN RIDGE', 'AMU', '259121', '3570 S 300 E', 'SALT LAKE CITY', 'UT', '84115', '(801) 263-2024', '', 'tmrmgr@amcllc.net', 'tmrmgr@amcllc.net', '', '', '', '', '1491106268AMU|259121829352781856AMU|11464450949494', '2017-12-07 11:10:42', NULL, 169, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '631TMR', '', '', '', '', '', NULL, ''),
(124, 'AMU', '137294', 'WASATCH CLUB', 'AMU', '259121', '6960 SOUTH STATE STREET', 'MIDVALE', 'UT', '84047', '(801) 562-2017', '', 'wasatchclub@amcllc.net', 'wasatchclub@amcllc.net', 'wasmgr@amcllc.net', '', '', '', '7619098450AMU|259121054675908416AMU|13729485457580', '2017-12-07 11:10:42', NULL, 117, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '24WAS', '', '', '', '', '', NULL, ''),
(125, 'AMU', '162748', 'EASTBROOK', 'AMU', '259121', '1719 EAST 3300 SOUTH', 'SALT LAKE CITY', 'UT', '84106', '(801) 265-0921', '', 'eastbrook@amcllc.net', 'eastbrook@amcllc.net', '', '', '', '', '8030989165AMU|259121602926500829AMU|16274830468374', '2017-12-07 11:10:42', NULL, 144, 89, '30.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '78EBK', '', '', '', '', '', NULL, ''),
(126, 'AMU', '173102', 'TAPESTRY', 'AMU', '259121', '852 EAST 3900 SOUTH', 'SALT LAKE CITY', 'UT', '84107', '(801) 441-5911', '', 'tapmgr@amcllc.net', 'tapmgr@amcllc.net', '', '', '', '', '6160716646AMU|259121179598054137AMU|17310268118287', '2017-12-07 11:11:52', NULL, 124, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '682TAP', '', '', '', '', '', NULL, ''),
(127, 'AMU', '206326', 'PARKWAY COMMONS', 'AMU', '259121', '875 W MEADOWBROOK EXPY', 'MURRAY', 'UT', '84123', '(801) 269-1979', '', 'parmgr@amcllc.net', 'parmgr@amcllc.net', '', '', '', '', '6699905987AMU|259121851617579279AMU|20632603344456', '2017-12-07 11:11:52', NULL, 159, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '35PAR', '', '', '', '', '', NULL, ''),
(128, 'AMU', '206776', 'CRESTHAVEN', 'AMU', '259121', '4151 NORTH TRAVERSE RIDGE LANE', 'LEHI', 'UT', '84043', '(801) 901-1919', '', 'cresthaven@amcllc.net', 'cresthaven@amcllc.net', 'crhmgr@amcllc.net', '', '', '', '1237064632AMU|259121207263102902AMU|20677670884793', '2017-12-07 11:11:52', NULL, 141, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '33CRH', '', '', '', '', '', NULL, ''),
(129, 'AMU', '231778', 'ROYAL RIDGE', 'AMU', '259121', '880 EAST CANYON RIDGE WAY', 'MIDVALE', 'UT', '84047', '(801) 561-4263', '', 'royalridge@amcllc.net', 'royalridge@amcllc.net', '', '', '', '', '3658058689AMU|259121845875615564AMU|23177820613225', '2017-12-07 11:11:52', NULL, 164, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '637ROR', '', '', '', '', '', NULL, ''),
(130, 'AMU', '267319', 'PRESTON HOLLOW', 'AMU', '259121', '4150 SOUTH 300 EAST', 'MURRAY', 'UT', '84107', '(801) 288-5100', '', 'prestonhollow@amcllc.net', 'prestonhollow@amcllc.net', '', '', '', '', '9201581188AMU|259121101885099324AMU|26731908034233', '2017-12-07 11:12:19', NULL, 195, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '636PRE', '', '', '', '', '', NULL, ''),
(131, 'AMU', '267716', 'WOODS CROSSING', 'AMU', '259121', '850 N HWY 89', 'NORTH SALT LAKE CITY', 'UT', '84054', '(801) 992-3758', '', 'woodscrossing@amcllc.net', 'woodscrossing@amcllc.net', '', '', '', '', '4684697163AMU|259121850269115304AMU|26771665019669', '2017-12-07 11:12:19', NULL, 176, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '662PBC', '', '', '', '', '', NULL, ''),
(132, 'AMU', '290246', 'LEGACY COTTAGES  SOUTH JORDAN', 'AMU', '259121', '1844 WEST 10400 SOUTH', 'SOUTH JORDAN', 'UT', '84095', '(877) 864-7850', '', 'lcomgr@amcllc.net', 'lcomgr@amcllc.net', '', '', '', '', '6937651429AMU|259121216892734446AMU|29024619534997', '2017-12-07 11:12:19', NULL, 150, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '643LCO', '', '', '', '', '', NULL, ''),
(133, 'AMU', '318230', 'COUNTRY LAKE', 'AMU', '259121', '335 EAST WOODLAKE DRIVE', 'SALT LAKE CITY', 'UT', '84107', '(888) 265-0547', '', 'countrylake@amcllc.net', 'countrylake@amcllc.net', 'ctlmgr@amcllc.net', '', '', '', '2604888650AMU|259121940533483228AMU|31823074043092', '2017-12-07 11:12:19', NULL, 184, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '52CTL', '', '', '', '', '', NULL, ''),
(134, 'AMU', '357167', 'SUNNYVALE', 'AMU', '259121', '764 W 3940 S', 'MURRAY', 'UT', '84123', '(801) 269-0502', '', 'sunnyvale@amcllc.net', 'sunnyvale@amcllc.net', '', '', '', '', '8610852711AMU|259121042712261613AMU|35716772285442', '2017-12-07 11:12:45', NULL, 168, 89, '30.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '34SUN', '', '', '', '', '', NULL, ''),
(135, 'AMU', '366390', 'FOOTHILL PLACE', 'AMU', '259121', '2260 FOOTHILL DRIVE', 'SALT LAKE CITY', 'UT', '84109', '(801) 486-3574', '', 'foothillplace@amcllc.net', 'foothillplace@amcllc.net', '', '', '', '', '7515762921AMU|259121231546041524AMU|36639093320328', '2017-12-07 11:12:45', NULL, 185, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '603FPL', '', '', '', '', '', NULL, ''),
(136, 'AMU', '398592', 'HUNTER WOODS', 'AMU', '259121', '4924 S MURRAY BLVD', 'MURRAY', 'UT', '84123', '(801) 268-2256', '', 'hunterwoods@amcllc.net', 'hunterwoods@amcllc.net', '', '', '', '', '1800414780AMU|259121980069059626AMU|39859266011121', '2017-12-07 11:12:45', NULL, 118, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '03HWD', '', '', '', '', '', NULL, ''),
(137, 'AMU', '427271', 'BELLA GRACE APARTMENTS LLC', 'AMU', '259121', '100 N MAIN ST', 'PLEASANT GROVE', 'UT', '84062', '(801) 441-5912', '', 'bgrmgr@amcllc.net', 'bellagrace@amcllc.net', '', '', '', '', '7252224295AMU|259121546765097226AMU|42727122680725', '2017-12-07 11:12:45', NULL, 133, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '679BG1', '', '', '', '', '', NULL, ''),
(138, 'AMU', '444588', 'WILLOW COVE', 'AMU', '259121', '3851 COBBLE RIDGE DRIVE', 'WEST JORDAN', 'UT', '84088', '(801) 562-1770', '', 'willowcove@amcllc.net', 'leasing@willowcoveapts.net', 'wilmgr@amcllc.net', '', '', '', '2209172196AMU|259121304401539787AMU|44458810431431', '2017-12-07 11:13:45', NULL, 172, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '01WIL', '', '', '', '', '', NULL, ''),
(139, 'AMU', '482155', 'CROSSING AT DAYBREAK', 'AMU', '259121', '4950 WEST FROGS LEAP DRIVE', 'SOUTH JORDAN', 'UT', '84009', '(801) 446-6798', '', 'crossingatdaybreak@amcllc.net', 'crossingatdaybreak@amcllc.net', '', '', '', '', '2464694442AMU|259121769597028590AMU|48215544973918', '2017-12-07 11:13:46', NULL, 142, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '53CAD', '', '', '', '', '', NULL, ''),
(140, 'AMU', '496277', 'LOGAN LANDING', 'AMU', '259121', '1767 N 500 W', 'LOGAN', 'UT', '84341', '(435) 753-0254', '', 'loganlanding@amcllc.net', 'loganlanding@amcllc.net', '', '', '', '', '5148503957AMU|259121613093056189AMU|49627716435211', '2017-12-07 11:13:46', NULL, 153, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '56LOGA', '', '', '', '', '', NULL, ''),
(141, 'AMU', '497943', 'VILLAGE AT RAINTREE', 'AMU', '259121', '870 NORTH 900 WEST', 'SALT LAKE CITY', 'UT', '84116', '(801) 595-0107', '', 'thevillageatraintree@amcllc.net', 'thevillageatraintree@amcllc.net', '', '', '', '', '8599312516AMU|259121540073416658AMU|49794363100998', '2017-12-07 11:13:46', NULL, 170, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '674VRT', '', '', '', '', '', NULL, ''),
(142, 'AMU', '504022', 'MADRONA', 'AMU', '259121', '4560 SOUTH 700 EAST', 'SALT LAKE CITY', 'UT', '84107', '(801) 441-5910', '', 'madrona@amcllc.net', 'madrona@amcllc.net', '', '', '', '', '5688295118AMU|259121750556492385AMU|50402255048408', '2017-12-07 11:17:15', NULL, 181, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '615MDR', '', '', '', '', '', NULL, ''),
(143, 'AMU', '522598', 'SANDPIPER', 'AMU', '259121', '1496 SPRING LANE', 'HOLLADAY', 'UT', '84117', '(801) 278-4650', '', 'sandpiper@amcllc.net', 'sandpiper@amcllc.net', '', '', '', '', '4447030758AMU|259121647945132434AMU|52259829744531', '2017-12-07 11:17:15', NULL, 197, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '623SAN', '', '', '', '', '', NULL, ''),
(145, 'AMU', '556080', 'APARTMENTS ON THE GREEN', 'AMU', '259121', '1153 N REDWOOD ROAD', 'SALT LAKE CITY', 'UT', '84116', '(801) 596-1717', '', 'apartmentsonthegreen@amcllc.net', 'apartmentsonthegreen@amcllc.net', '', '', '', '', '8945510694AMU|259121076278049986AMU|55608059937795', '2017-12-07 11:17:16', NULL, 178, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '75GPA', '', '', '', '', '', NULL, ''),
(146, 'AMU', '567206', 'RIDGEVIEW II', 'AMU', '259121', '110 SOUTH MAIN STREET', 'NORTH SALT LAKE CITY', 'UT', '84054', '(801) 936-0424', '', 'ridgeview@amcllc.net', 'ridgeview@amcllc.net', '', '', '', '', '5263583019AMU|259121279431274492AMU|56720670818528', '2017-12-07 11:17:16', NULL, 205, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '649RV2', '', '', '', '', '', NULL, ''),
(147, 'AMU', '580680', 'LEGACY CROSSING', 'AMU', '259121', '1162 WEST 200 NORTH', 'CENTERVILLE', 'UT', '84014', '(801) 813-0300', '', 'legacycrossing@amcllc.net', 'legacycrossing@amcllc.net', '', '', '', '', '7548510694AMU|259121256435884913AMU|58068093657804', '2017-12-07 11:17:16', NULL, 151, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '642LEG', '', '', '', '', '', NULL, ''),
(148, 'AMU', '580923', 'MARMALADE HILL I & II', 'AMU', '259121', '439 N 200 W #1', 'SALT LAKE CITY', 'UT', '84103', '(801) 532-1298', '', 'marmaladehill@amcllc.net', 'marmaladehill@amcllc.net', '', '', '', '', '1618011665AMU|259121961701068066AMU|58092334364670', '2017-12-07 11:17:16', NULL, 154, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '625MA1', '', '', '', '', '', NULL, ''),
(149, 'AMU', '585961', 'CREEKVIEW', 'AMU', '259121', '967 E SOUTH UNION AVE', 'MIDVALE', 'UT', '84047', '(801) 565-8888', '', 'creekview@amcllc.net', 'creekview@amcllc.net', '', '', '', '', '4684790466AMU|259121733662670065AMU|58596123524749', '2017-12-07 11:18:25', NULL, 140, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', '', '', '627CKV', '', '', '', '', '', NULL, ''),
(150, 'AMU', '596372', 'IRVING SCHOOLHOUSE', 'AMU', '259121', '1155 EAST 2100 SOUTH', 'SALT LAKE CITY', 'UT', '84106', '(801) 493-2000', '', 'irvingschoolhouse@amcllc.net', 'irvingschoolhouse@amcllc.net', 'ishmgr@amcllc.net', '', '', '', '6727499853AMU|259121654304557399AMU|59637201466119', '2017-12-07 11:18:25', NULL, 119, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '641ISH', '', '', '', '', '', NULL, ''),
(151, 'AMU', '615265', 'MOUNTAIN SHADOWS', 'AMU', '259121', '3825 S 700 W', 'SALT LAKE CITY', 'UT', '84119', '(801) 263-0777', '', 'mountainshadows@amcllc.net', 'mountainshadows@amcllc.net', '', '', '', '', '1916770615AMU|259121693261886977AMU|61526519474671', '2017-12-07 11:18:25', NULL, 156, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '70MTN', '', '', '', '', '', NULL, ''),
(152, 'AMU', '656435', 'LAYTON MEADOWS', 'AMU', '259121', '540 WEST 1425 NORTH', 'LAYTON', 'UT', '84041', '(801) 825-1800', '', 'laytonmeadows@amcllc.net', 'laytonmeadows@amcllc.net', '', '', '', '', '9216269644AMU|259121303454043401AMU|65643578359611', '2017-12-07 11:18:25', NULL, 191, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '76LMA', '', '', '', '', '', NULL, ''),
(153, 'AMU', '666577', 'ROYAL FARMS', 'AMU', '259121', '2102 EAST ROYAL FARMS DR.', 'SALT LAKE CITY', 'UT', '84121', '(801) 943-4713', '', 'royalfarms@amcllc.net', 'royalfarms@amcllc.net', '', '', '', '', '5365878337AMU|259121718214824297AMU|66657769679974', '2017-12-07 11:19:01', NULL, 202, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '638ROF', '', '', '', '', '', NULL, ''),
(154, 'AMU', '696664', 'LIBERTY HEIGHTS', 'AMU', '259121', '8176 SOUTH 1300 EAST', 'SANDY', 'UT', '84094', '(801) 566-8988', '', 'libertyheights@amcllc.net', 'libertyheights@amcllc.net', 'libmgr@amcllc.net', '', '', '', '2357747322AMU|259121417401717255AMU|69666421732930', '2017-12-07 11:19:01', NULL, 192, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '617LIB', '', '', '', '', '', NULL, ''),
(155, 'AMU', '716750', 'SPRINGS OF COUNTRY WOODS', 'AMU', '259121', '6945 S WELL WOOD ROAD', 'MIDVALE', 'UT', '84047', '(801) 566-5132', '', 'springsofcountrywoods@amcllc.net', 'springsofcountrywoods@amcllc.net', '', '', '', '', '1658247315AMU|259121846066896647AMU|71675064599447', '2017-12-07 11:19:01', NULL, 199, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '27SCW', '', '', '', '', '', NULL, ''),
(156, 'AMU', '864193', 'AVALON SENIOR', 'AMU', '259121', '179 N STATE STREET', 'LINDON', 'UT', '84042', '(801) 203-0838', '', 'avalon@amcllc.net', 'avalon@amcllc.net', '', '', '', '', '1189048985AMU|259121172074711502AMU|86419367355953', '2017-12-07 11:19:27', NULL, 183, 89, '40.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '31AVA', '', '', '', '', '', NULL, ''),
(157, 'AMU', '866303', 'HIGHLAND EAST', 'AMU', '259121', '1985 SOUTH 2100 EAST', 'SALT LAKE CITY', 'UT', '84108', '(801) 991-0946', '', 'highlandeast@amcllc.net', 'highlandeast@amcllc.net', 'heamgr@amcllc.net', '', '', '', '9637895485AMU|259121643940235980AMU|86630344383160', '2017-12-07 11:19:27', NULL, 122, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '618HEA', '', '', '', '', '', NULL, ''),
(158, 'AMU', '877180', 'LE VAIL CHATEAU', 'AMU', '259121', '3480 S 300 E', 'SALT LAKE CITY', 'UT', '84115', '(801) 467-2023', '', 'fivmgr@amcllc.net', 'levailchateau@amcllc.net', '', '', '', '', '5089428100AMU|259121210627733965AMU|87718089076989', '2017-12-07 11:19:28', NULL, 149, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '72LEV', '', '', '', '', '', NULL, ''),
(159, 'AMU', '881510', 'OQUIRRH HILLS', 'AMU', '259121', '2842 S 8440 W', 'MAGNA', 'UT', '84044', '(801) 987-4000', '', 'oquirrhills@amcll.net', 'oquirrhhills@amcllc.net', '', '', '', '', '5965934081AMU|259121276778831922AMU|88151097839280', '2017-12-07 11:19:28', NULL, 158, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '670OQH', '', '', '', '', '', NULL, ''),
(160, 'ARZ', '059821', 'VENTANA PALMS', 'ARZ', '473695', '7021 W MCDOWELL RD', 'PHOENIX', 'AZ', '85035', '(623) 849-8680', 'Monday-Friday 8:30AM - 5:30PM Sat-Sun 10:00AM-5:00PM', 'ventanapalms@amcllc.net', 'ventanapalms@amcllc.net', 'vtpmgr@amcllc.net', '', '', '', '4567147212ARZ|473695638514021720ARZ|05982131865618', '2017-12-07 14:49:10', NULL, 63, 92, '40.92', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'XXXXX', 'ARZ059821', 'Y', 'ResMan', '1310', '6152f7a6-c3ee-4e42-baba-fac0f37a3de7', 'f8590121-35e1-4a09-b6ed-03599d1e0da9', 'TSPOnline', 'Application', 'e0027a68-1135-4f52-94cc-5bd9dcc55993', '89308bd1-ff16-4a81-b7e6-e9eb0f6cb5c0', NULL, ''),
(161, 'AMU', '936666', 'DRAPER VILLAGE', 'AMU', '259121', '12100 SOUTH 303 EAST', 'DRAPER', 'UT', '84020', '(801) 260-9600', '', 'drapervillage@amcllc.net', 'drapervillage@amcllc.net', '', '', '', '', '0607700645AMU|259121242497055091AMU|93666692253921', '2017-12-13 13:51:16', NULL, 186, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '676DVG', '', '', '', '', '', NULL, ''),
(162, 'AMU', '983989', 'SOUTH RIDGE TOWN HOMES', 'AMU', '259121', '10668 MONICA RIDGE WAY', 'SOUTH JORDAN', 'UT', '84095', '(801) 449-9980', '', 'southridgetownhomes@amcllc.net', 'southridgetownhomes@amcllc.net', '', '', '', '', '2136421129AMU|259121893784278050AMU|98398969361185', '2017-12-13 13:51:16', NULL, 198, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '610SRT', '', '', '', '', '', NULL, ''),
(163, 'AMU', '999369', 'RIVERFRONT', 'AMU', '259121', '745 FINE DR', 'SOUTH SALT LAKE CITY', 'UT', '84119', '(801) 214-2400', '', 'riverfront@amcllc.net', 'riverfront@amcllc.net', '', '', '', '', '1437921116AMU|259121823834279423AMU|99936962386185', '2017-12-13 13:51:16', NULL, 162, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '667RFT', '', '', '', '', '', NULL, ''),
(164, 'AMU', '158746', 'CALLAWAY', 'AMU', '259121', '1141 WEST 3900 SOUTH', 'TAYLORSVILLE', 'UT', '84123', '(801) 266-9208', '', 'callaway@amcllc.net', '', '', '', '', '', '6489397080AMU|259121234008843639AMU|15874603398755', '2017-12-20 13:25:14', NULL, 188, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '26FWA', '', '', '', '', '', NULL, ''),
(165, 'AMU', '168354', 'ACADIA', 'AMU', '259121', '760 SOUTH 900 EAST', 'SALT LAKE CITY', 'UT', '84102', '(801) 441-5907', '', 'adamgr@amcllc.net', '', '', '', '', '', '9425436776AMU|259121324343076657AMU|16835482592789', '2017-12-20 13:25:14', NULL, 108, 89, '35.00', 'REPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', '', 'Y', 'AIM', '', '659LTP', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `idnotifications` bigint(11) NOT NULL,
  `notifymastermemberid` varchar(3) NOT NULL,
  `notifymastermemberno` varchar(6) NOT NULL,
  `notifymemberid` varchar(3) NOT NULL,
  `notifymemberno` varchar(6) NOT NULL,
  `notifytype` varchar(1) NOT NULL,
  `notifydate` datetime NOT NULL,
  `notifytitle` varchar(50) DEFAULT NULL,
  `notifydetails` varchar(500) DEFAULT NULL,
  `notifyreadflag` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paymentprovider`
--

CREATE TABLE `paymentprovider` (
  `idpaymentprovider` int(11) NOT NULL,
  `paymentproviderid` varchar(10) NOT NULL,
  `apiurl` varchar(255) NOT NULL,
  `apiuserid` varchar(50) NOT NULL,
  `apipassword` varchar(50) NOT NULL,
  `apipagereference` varchar(100) DEFAULT NULL,
  `apiredirectpage` varchar(255) DEFAULT NULL,
  `landlordid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Payment provider reference table';

--
-- Dumping data for table `paymentprovider`
--

INSERT INTO `paymentprovider` (`idpaymentprovider`, `paymentproviderid`, `apiurl`, `apiuserid`, `apipassword`, `apipagereference`, `apiredirectpage`, `landlordid`) VALUES
(1, 'CLICKPAY', 'https://www.clickpay.com/npapi/wsPM.asmx', 'garyg@thescreeningpros.com', '!cr33niNg!', 'dfc07903-21cb-403b-98bc-a1b3f8d7c50d', 'https://www.clickpay.com/Redirector.aspx', '3356237a-0eec-44d9-b8d3-1fcdc4e6e447');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttransactions`
--

CREATE TABLE `paymenttransactions` (
  `idpaymenttransactions` int(11) NOT NULL,
  `paymentdate` datetime NOT NULL,
  `paymenttype` char(3) NOT NULL COMMENT 'CCR=Credit Card   ACH=Bank ',
  `paymentvendor` varchar(15) DEFAULT NULL COMMENT 'CLICKPAY or someone else',
  `paymentapplicationid` int(11) DEFAULT NULL,
  `paymentapplicationreference` varchar(255) NOT NULL,
  `paymentmemberid` char(3) NOT NULL,
  `paymentmemberno` char(6) NOT NULL,
  `paymentproperty` char(10) DEFAULT NULL,
  `paymenttoken` varchar(255) DEFAULT NULL COMMENT 'Provided by ClickPay',
  `paymentmadeby` varchar(50) DEFAULT NULL,
  `paymentlandlordid` varchar(255) DEFAULT NULL,
  `paymentllcid` varchar(255) DEFAULT NULL,
  `paymentscreeningfee` decimal(7,2) DEFAULT NULL,
  `paymentprocessingfee` decimal(7,2) DEFAULT NULL,
  `paymentholdingdeposit` decimal(10,2) DEFAULT NULL,
  `paymentsecuritydeposit` decimal(10,2) DEFAULT NULL,
  `paymenttotal` decimal(10,2) DEFAULT NULL,
  `paymentresponsedate` datetime DEFAULT NULL,
  `paymentresponsereference` varchar(255) DEFAULT NULL,
  `paymentcardtype` varchar(25) DEFAULT NULL,
  `paymentcardnumber` varchar(16) DEFAULT NULL,
  `paymentstatus` char(1) DEFAULT NULL COMMENT 'P=Pending  C=Completed  E=Error',
  `paymentrespjson` longtext,
  `paidbyapplicantid` int(11) DEFAULT NULL COMMENT 'Applicant who initiate the payment',
  `paymentmethod` varchar(255) DEFAULT NULL COMMENT 'possible values all, selected, single,invity'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `paymenttransactions`
--

INSERT INTO `paymenttransactions` (`idpaymenttransactions`, `paymentdate`, `paymenttype`, `paymentvendor`, `paymentapplicationid`, `paymentapplicationreference`, `paymentmemberid`, `paymentmemberno`, `paymentproperty`, `paymenttoken`, `paymentmadeby`, `paymentlandlordid`, `paymentllcid`, `paymentscreeningfee`, `paymentprocessingfee`, `paymentholdingdeposit`, `paymentsecuritydeposit`, `paymenttotal`, `paymentresponsedate`, `paymentresponsereference`, `paymentcardtype`, `paymentcardnumber`, `paymentstatus`, `paymentrespjson`, `paidbyapplicantid`, `paymentmethod`) VALUES
(1, '2018-02-21 19:08:53', 'CCR', 'CLICKPAY', NULL, 'sZLYPeCx7Secp9tUjNF9|1|T1FULxOC1zXgfPqjyx4K', 'TSP', '000001', '0', '79c4b53c-4bc4-4e01-acbe-c6e6c855bc2e', NULL, '0', 'tspdemo', '1.00', '1.00', '0.00', '0.00', '2.00', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL),
(2, '2018-02-21 19:14:09', 'CCR', 'CLICKPAY', NULL, 'IZYuKjk77Ln2WwZdNku6|1|MpJFvt4o2JkeYURGqdvG', 'TSP', '000001', '0', 'ac26274f-d110-4f8d-8479-43399056a5cc', NULL, '0', 'tspdemo', '2.00', '2.00', '0.00', '0.00', '4.00', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL),
(3, '2018-04-16 13:56:14', 'CCR', 'CLICKPAY', NULL, 'B9Diu7cBEGh2UOslDXOI|6|F7YTlJ04wNwZwKBRcAQo', 'TSP', '000001', '0', '44cccb9a-369c-4344-ab45-9756844bad41', NULL, '0', 'tspdemo', '1.00', '1.00', '5000.00', '5000.00', '2.00', NULL, NULL, NULL, NULL, 'P', NULL, NULL, NULL),
(4, '2018-04-16 18:18:09', 'CCR', 'CLICKPAY', 12, '', 'DSR', '285988', '', '', 'John  Smith', 'xxxxx', 'tspdemo', '1.00', '1.00', '5000.00', '5000.00', '2.00', '2018-04-16 18:18:12', NULL, NULL, NULL, 'P', NULL, 13, 'a:1:{i:0;s:2:\"13\";}'),
(5, '2018-04-16 18:47:54', 'CCR', 'CLICKPAY', 13, '', 'DSR', '285988', '', '', 'Shikhar Dhawan', 'xxxxx', 'tspdemo', '1.00', '1.00', '5000.00', '5000.00', '2.00', '2018-04-16 18:47:56', NULL, NULL, NULL, 'P', NULL, 14, 'a:1:{i:0;s:2:\"14\";}'),
(6, '2018-04-17 18:40:24', 'CCR', 'CLICKPAY', 17, '', 'DSR', '285988', '', '', 'Mike David', 'xxxxx', 'tspdemo', '2.00', '2.00', '5000.00', '5000.00', '4.00', '2018-04-17 18:40:26', NULL, NULL, NULL, 'P', NULL, 18, 'a:2:{i:0;s:2:\"18\";i:1;s:2:\"19\";}');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `idprofile` int(15) NOT NULL,
  `profilename` varchar(100) NOT NULL,
  `mastermemberid` char(3) NOT NULL,
  `mastermemberno` char(6) NOT NULL,
  `prevaddressreq` char(1) DEFAULT NULL,
  `minprevaddress` int(3) DEFAULT NULL,
  `reasonforleavingreq` char(1) DEFAULT NULL,
  `minemploymnthistreq` int(3) DEFAULT NULL,
  `includebankaccount` char(1) DEFAULT NULL,
  `minbankaccountreq` int(3) DEFAULT NULL,
  `includecreditref` char(1) DEFAULT NULL,
  `mincreditrefreq` int(3) DEFAULT NULL,
  `includepersoanalref` char(1) DEFAULT NULL,
  `minpersonalrefreq` int(3) DEFAULT NULL,
  `requiredmarketsource` char(1) DEFAULT NULL,
  `requiredquestions` char(1) DEFAULT NULL,
  `questionsetid` int(15) DEFAULT NULL,
  `emphistoryreq` char(1) DEFAULT NULL,
  `policytext` longtext,
  `disclosuretext` longtext,
  `ispetallowed` char(1) DEFAULT NULL,
  `maximumpetsallowed` int(3) DEFAULT NULL,
  `leaseterm12` char(1) DEFAULT NULL,
  `leaseterm24` char(24) DEFAULT NULL,
  `leaseterm36` char(36) DEFAULT NULL,
  `leasetermm2m` char(1) DEFAULT NULL,
  `leasetermother` char(1) DEFAULT NULL,
  `occtypeminor` char(1) DEFAULT NULL,
  `occtypeadult` char(1) DEFAULT NULL,
  `occtypecaretaker` char(1) DEFAULT NULL,
  `minimumage` int(3) DEFAULT NULL,
  `includeaddress` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table contains the customer defaults and standard system. The profile record links to membership or property level.';

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`idprofile`, `profilename`, `mastermemberid`, `mastermemberno`, `prevaddressreq`, `minprevaddress`, `reasonforleavingreq`, `minemploymnthistreq`, `includebankaccount`, `minbankaccountreq`, `includecreditref`, `mincreditrefreq`, `includepersoanalref`, `minpersonalrefreq`, `requiredmarketsource`, `requiredquestions`, `questionsetid`, `emphistoryreq`, `policytext`, `disclosuretext`, `ispetallowed`, `maximumpetsallowed`, `leaseterm12`, `leaseterm24`, `leaseterm36`, `leasetermm2m`, `leasetermother`, `occtypeminor`, `occtypeadult`, `occtypecaretaker`, `minimumage`, `includeaddress`) VALUES
(1, '*Default Profile', 'DSR', '454356', 'Y', 1, 'N', 0, '', 0, '', 0, '', 0, '', '', 0, '', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', '', 0, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(12, 'default4', 'DSR', '454356', 'N', 0, 'N', 3, 'Y', 2, 'Y', 3, '', 0, 'Y', 'Y', NULL, 'Y', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', '', 0, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(13, '*Default Profile', 'RMM', '612572', 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 0, 'Y', 0, 'Y', 'Y', 0, 'Y', '<ol><li><p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p></li><li><p>No one with an Eviction will be accepted.</p></li><li><p>Combined income must be 3 X the rent.</p></li><li><p>Must show proof of income with last three (3) pay check stubs or W2.</p></li><li><p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p></li><li><p>Government issued ID that establishes employment authorization.</p></li><li><p>Current Utility Bill with applicants name on it.</p></li><li><p>We will be checking all references on Application, including current landlord reference and employment reference.</p></li><li><p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p></li></ol>', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br /><br /><br />In connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br /><br /><br />I authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br /><br /><br />AS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>', NULL, NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, NULL),
(14, '*Default Profile', 'TSP', '000001', 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 2, 'Y', 1, 'Y', '', 0, 'Y', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 1, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, 'Y'),
(15, 'test_user', 'DSR', '454356', 'Y', NULL, 'Y', 0, 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 'Y', NULL, '', '<p>hello</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', NULL, NULL, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, NULL),
(16, 'test32', 'DSR', '454356', 'Y', 1, 'Y', 0, 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 'Y', NULL, '', '<p>hello</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', '', 0, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(17, 'test_user_1', 'DSR', '454356', 'Y', 2, 'N', 3, 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 'Y', NULL, 'Y', '<p>how r u??</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 2, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(18, 'trail111aa', 'DSR', '454356', 'Y', 2, 'Y', 1, '', 0, '', 0, '', 0, 'Y', 'Y', NULL, 'Y', '', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', '', 0, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(19, 'default3', 'DSR', '454356', 'Y', 1, 'Y', 2, '', 0, 'Y', 1, 'Y', 1, '', '', NULL, 'Y', '<p>hello<strong> guys...</strong></p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', '', 0, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(44, 'one_test321', 'DSR', '454356', 'Y', 1, 'Y', 0, 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 'Y', NULL, '', '<p>hello</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', '', 0, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(45, 'dan smith', 'DSR', '454356', 'N', 0, 'Y', 2, 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 'Y', NULL, 'Y', '<p>how r u??</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 1, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(46, 'smith johnson', 'DSR', '454356', 'Y', 1, 'N', 0, '', 0, '', 0, '', 0, '', '', NULL, '', '<p>hello how are you??</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', '', 0, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(50, 'smith john david', 'DSR', '454356', 'Y', 3, 'N', 3, 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 'Y', NULL, 'Y', '<p>how r u??</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 2, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(51, 'samul david', 'DSR', '454356', 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 'Y', NULL, 'Y', '<p>Hey I am in <strong>buildyourapplication.php</strong> page.Here you can create <strong>new profile</strong> and<strong> update</strong> exisiting profile too.</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 2, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(52, 'samul david1', 'DSR', '454356', 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 2, 'Y', 'Y', NULL, 'Y', '<p>Hey I am in <strong>buildyourapplication.php</strong> page.you can create <strong>new profile</strong> and<strong> update</strong> exisiting profile too.</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 2, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(53, '*Default Profile', 'RWN', '906904', 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 1, 'Y', 'Y', 0, 'Y', '<ol>\r\n	<li>\r\n	<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>\r\n	</li>\r\n	<li>\r\n	<p>No one with an Eviction will be accepted.</p>\r\n	</li>\r\n	<li>\r\n	<p>Combined income must be 3 X the rent.</p>\r\n	</li>\r\n	<li>\r\n	<p>Must show proof of income with last three (3) pay check stubs or W2.</p>\r\n	</li>\r\n	<li>\r\n	<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>\r\n	</li>\r\n	<li>\r\n	<p>Government issued ID that establishes employment authorization.</p>\r\n	</li>\r\n	<li>\r\n	<p>Current Utility Bill with applicants name on it.</p>\r\n	</li>\r\n	<li>\r\n	<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>\r\n	</li>\r\n	<li>\r\n	<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>\r\n	</li>\r\n</ol>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.</p>\r\n\r\n<p>In connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 3, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, NULL),
(54, 'james', 'DSR', '454356', 'Y', 1, 'Y', 2, 'Y', 2, 'Y', 3, 'Y', 2, '', '', NULL, 'Y', '<p>chekcing modified terms&amp;conditions</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 2, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(55, 'new14', 'DSR', '454356', 'Y', 1, 'Y', 0, '', 0, '', 0, '', 0, '', '', NULL, '', '', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 1, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(56, 'new15', 'DSR', '454356', 'Y', 2, 'Y', 0, '', 0, '', 0, '', 0, 'O', 'Y', NULL, '', '', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 3, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, ''),
(57, 'new 16', 'DSR', '454356', 'Y', 2, 'Y', 2, '', 0, '', 0, '', 0, '', 'Y', NULL, 'Y', '<p>gegrsg</p>\r\n', '<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />\r\n<br />\r\n<br />\r\nIn connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />\r\n<br />\r\n<br />\r\nI authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />\r\n<br />\r\n<br />\r\nAS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>\r\n', 'Y', 3, 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 18, '');

-- --------------------------------------------------------

--
-- Table structure for table `profiledocuments`
--

CREATE TABLE `profiledocuments` (
  `iddocument` int(11) NOT NULL,
  `mastermemberid` char(3) NOT NULL,
  `mastermemberno` char(6) NOT NULL,
  `profileid` int(15) NOT NULL,
  `profiledocuments` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiledocuments`
--

INSERT INTO `profiledocuments` (`iddocument`, `mastermemberid`, `mastermemberno`, `profileid`, `profiledocuments`) VALUES
(1, 'MSL', '647524', 86, 'W-2'),
(4, 'MSL', '647524', 99, 'New file 2'),
(5, 'MSL', '647524', 86, 'W-2 2nd line'),
(6, 'PRC', '452301', 93, 'Valid government issued photo ID'),
(7, 'PRC', '452301', 93, 'Employment letter'),
(8, 'PRC', '452301', 93, 'Copies of your last two paystubs'),
(9, 'PRC', '452301', 93, 'First page of your latest 1040 tax return'),
(10, 'PRC', '452301', 93, 'Adult student must provide enrollment certification'),
(11, 'PRC', '452301', 93, 'A copy of your latest bank statement'),
(13, 'IMG', '384154', 102, 'Paystub from the last 30 days'),
(14, 'AMU', '259121', 89, 'Two (most recent) consecutive pay stubs , Per Applicant'),
(15, 'AMU', '259121', 89, 'Offer Letter - Employment Verification'),
(16, 'AMU', '259121', 107, 'Please contact the leasing office regarding needed documents'),
(17, 'ACR', '119390', 91, 'Two (most recent) consecutive pay stubs, Per Applicant'),
(19, 'ACR', '119390', 91, 'Offer Letter - Employment Verification'),
(20, 'ARZ', '473695', 92, 'Two (most recent) consecutive pay stubs, Per Applicant'),
(21, 'ARZ', '473695', 92, 'Offer Letter - Employment Verification'),
(22, 'MSL', '647524', 100, 'photo ID'),
(23, 'MSL', '647524', 100, 'tax return'),
(24, 'GMG', '000001', 110, 'Bank Statement'),
(25, 'GMG', '000001', 110, 'Valid Photo ID'),
(26, 'GMG', '000001', 111, 'Current Bank Statement'),
(27, 'IHP', '033565', 109, 'Two Current Consecutive  Pay Stubs'),
(28, 'PMC', '938417', 113, 'Government issued photo ID'),
(29, 'PMC', '938417', 113, 'last 2 primary bank statements'),
(31, 'PMC', '938417', 113, 'Recent pay stub or offer letter from new employer'),
(33, 'PMC', '938417', 113, '(if easily available) supply recent W2 form '),
(35, 'GMG', '000001', 117, 'Most Recent Pay Stub (Example)'),
(36, 'GMG', '000001', 117, 'Example 2'),
(37, 'GMG', '000001', 117, 'Example 3'),
(39, 'GMG', '000001', 122, 'Pay Stub'),
(40, 'GMG', '000001', 122, 'Marriage Certificate'),
(41, 'GMG', '000001', 122, 'Drivers License'),
(42, 'DSR', '454356', 1, 'SSN '),
(43, 'DSR', '454356', 1, 'DL COPY'),
(44, 'DSR', '454356', 1, 'Other Docs');

-- --------------------------------------------------------

--
-- Table structure for table `profilestyle`
--

CREATE TABLE `profilestyle` (
  `idprofilestyle` int(15) UNSIGNED NOT NULL,
  `stylemastermemberid` char(3) NOT NULL,
  `stylemastermemberno` char(6) NOT NULL,
  `stylename` varchar(100) NOT NULL,
  `logoname` varchar(100) NOT NULL,
  `logoheight` char(4) NOT NULL,
  `logowidth` char(4) NOT NULL,
  `colorcodewelcome` char(7) NOT NULL,
  `colorcodefooter` char(7) NOT NULL,
  `colorcodebutton` char(7) NOT NULL,
  `colorcodebuttonhover` char(7) NOT NULL,
  `colorcodeurllink` char(7) NOT NULL,
  `storedimage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table contains the various style elements that would be available to be used for members';

--
-- Dumping data for table `profilestyle`
--

INSERT INTO `profilestyle` (`idprofilestyle`, `stylemastermemberid`, `stylemastermemberno`, `stylename`, `logoname`, `logoheight`, `logowidth`, `colorcodewelcome`, `colorcodefooter`, `colorcodebutton`, `colorcodebuttonhover`, `colorcodeurllink`, `storedimage`) VALUES
(1, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(2, 'DSR', '454356', 'new_default', 'Penguins.jpg', '271', '262', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'DSR-665824339-Penguins.jpg'),
(3, 'DSR', '454356', 'new_default2', 'tsp-default-home-logo.png', '166', '214', '5ad668', '4cd132', '2fafeb', 'F58220', 'F58220', 'DSR-569228613-tsp-default-home-logo.png'),
(4, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(5, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(6, 'DSR', '454356', 'default_style1', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(7, 'DSR', '454356', 'default_style1', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(8, 'DSR', '454356', 'default_style3', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(9, 'DSR', '454356', 'default_style3', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(10, 'RMM', '612572', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BF45E', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(11, 'TSP', '000001', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(12, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(13, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(14, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(15, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(16, 'DSR', '454356', 'default_style1', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(17, 'DSR', '454356', 'default_style1', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(26, 'DSR', '454356', 'New_default3', 'Hydrangeas.jpg', '391', '500', '9BC7DD', '006398', '006395', 'F58220', 'F58220', ''),
(27, 'DSR', '454356', 'New_default3', 'Hydrangeas.jpg', '158', '195', '9BC7DD', '006398', '006395', 'F58220', 'F58220', ''),
(28, 'DSR', '454356', 'my 15th style', '', '128', '133', 'f018f0', '370ce6', '26f713', 'f51616', 'db07db', ''),
(29, 'DSR', '454356', 'my 6th style', 'sample-1.jpg', '176', '187', 'e635e6', '050505', '0cd162', 'f0cef0', '1527e8', 'DSR-2289211061-sample-1.jpg'),
(30, 'DSR', '454356', 'my 7th style', 'Chrysanthemum.jpg', '224', '224', '621ab5', 'd1cad1', '524f52', 'c782c7', 'de25de', 'DSR-2480426957-Chrysanthemum.jpg'),
(31, 'DSR', '454356', 'my 8th style', 'sample-1.jpg', '185', '157', 'edc5ed', '1dc7f2', 'd47420', 'eb1e1e', '3dcc93', 'DSR-206157092-sample-1.jpg'),
(32, 'DSR', '454356', 'my 8th style', 'sample-1.jpg', '185', '157', 'edc5ed', '1dc7f2', 'd47420', 'eb1e1e', '3dcc93', 'DSR-2146915186-sample-1.jpg'),
(33, 'DSR', '454356', 'my 8th style', 'sample-1.jpg', '185', '157', 'edc5ed', '1dc7f2', 'd47420', 'eb1e1e', '3dcc93', 'DSR-2819516160-sample-1.jpg'),
(34, 'DSR', '454356', 'my 8th style', 'sample-1.jpg', '185', '157', 'edc5ed', '1dc7f2', 'd47420', 'eb1e1e', '3dcc93', 'DSR-2069715006-sample-1.jpg'),
(35, 'RWN', '906904', '*Default Style', 'TSP Logo re-size.jpg', '105', '134', '39db5f', 'ebb215', '006395', 'F58220', 'F58220', 'RWN-86105295236417693-TSP Logo re-size.jpg'),
(36, '', '', '', 'Lighthouse.jpg', '200', '300', 'f01ff0', '4d19bf', 'eb0000', '000000', '20e026', '-580121550-Lighthouse.jpg'),
(37, 'DSR', '454356', '', 'Lighthouse.jpg', '200', '300', '9BC7DD', '006398', '006395', 'F58220', 'F58220', 'DSR-2015010167-Lighthouse.jpg'),
(38, '', '', 'hgxfhgf', 'Desert.jpg', '106', '143', '2181c2', 'eb09eb', '1cafdb', 'e32626', '075c36', '-96728148-Desert.jpg'),
(39, '', '', 'test style', 'Tulips.jpg', '136', '197', 'a619a6', '237c99', '30b0e3', 'f59df5', '577d1e', '-2281330610-Tulips.jpg'),
(40, '', '', 'DAdSA', 'Lighthouse.jpg', '182', '222', '000000', '000000', '000000', '000000', '000000', '-2438710688-Lighthouse.jpg'),
(41, 'RWN', '906904', 'NY test Property', 'images.jpg', '167', '210', '88c0f0', 'db1818', 'eb9d15', 'e036e0', '2d83bd', 'RWN-4382154771802199791-images.jpg'),
(42, 'RWN', '906904', 'PRC Management', 'PRC Mgmt Corp.jpg', '134', '400', '418fa3', '000000', 'e6cb1c', '7b2abd', '1325f0', 'RWN-20690153451876879268-PRC Mgmt Corp.jpg'),
(43, 'AOL', '230717', 'Claradon Village', 'ClaradonVill.gif', '97', '236', '7fa860', 'ffffff', '5bb9f0', '12b5eb', '0f0e0d', 'AOL-8699159461950911633-ClaradonVill.gif'),
(44, 'AOL', '230717', 'PRC Management', 'PRC Mgmt Corp.jpg', '80', '400', '3590cc', '65dae0', 'd6a81e', '4458c4', 'de7518', 'AOL-3464841751705459138-PRC Mgmt Corp.jpg'),
(45, 'TSP', '000001', 'The Pierce Style', 'ThePierce-Logo_Navy.jpg', '154', '318', '052f33', '909090', 'f2870c', '000000', '000000', 'TSP-12188091481771910260-ThePierce-Logo_Navy.jpg'),
(46, 'TSP', '000001', 'PRC Management Style', 'PRC Mgmt Corp.jpg', '93', '296', '387fc2', '909090', 'f57e0e', 'e30d3f', '000000', 'TSP-20594049571314253147-PRC Mgmt Corp.jpg'),
(47, 'AOL', '230717', 'The Pierce Style', 'ThePierce-Logo_Navy.jpg', '152', '259', '3ec96d', '264f99', 'f2610c', 'f0d50c', 'f50847', 'AOL-1990181621184646209-ThePierce-Logo_Navy.jpg'),
(48, 'AOL', '230717', 'Manhattan Skyline', 'Man Sky logo.png', '201', '182', '091085', '090f85', '470447', 'bd0202', '166b05', 'AOL-7868395721302128839-Man Sky logo.png'),
(49, 'AOL', '230717', 'Eastchester Heights', 'ESS logo.png', '139', '368', 'ed4f1f', 'ed4f1f', 'ed4f1f', '6699b5', '1b16ad', 'AOL-17541969932053892326-ESS logo.png'),
(50, 'MSL', '647524', 'GSM', 'GSM logo.PNG', '93', '239', '11435c', '006395', 'f58320', 'f58320', 'f58320', 'MSL-1377798439224361317-GSM logo.PNG'),
(51, 'AOL', '230717', 'Eastchester Heights', 'ESS logo.png', '96', '386', 'eb4e05', 'd0dee0', '094594', 'edf50c', '421cdb', 'AOL-770216574610589678-ESS logo.png'),
(52, 'MSL', '647524', 'MSL ', 'Man Sky logo.png', '99', '172', '4590d6', '4590d6', 'f03d22', 'e6e610', 'e66800', 'MSL-4595221351048587950-Man Sky logo.png'),
(53, '', '', 'my test style', 'Lighthouse.jpg', '187', '199', '362dd6', 'b3b3b3', 'e819cc', 'b7d460', '000000', '-1412226181965265939-Lighthouse.jpg'),
(54, '*HQ', '*HQNO', 'ICO', 'AstonLogo.JPG', '147', '178', '14b39e', '23dbcc', 'eb5c28', 'db1fdb', '224dcc', '*HQ-1216388786406342549-AstonLogo.JPG'),
(55, 'MSL', '647524', 'ICO', 'AstonLogo.JPG', '144', '154', '524c52', '24b3a2', '3056c7', 'a14e1b', 'c21970', 'MSL-20545233192037402712-AstonLogo.JPG'),
(56, 'DMP', '437952', '*Default Style', 'NY-apartments.PNG', '97', '353', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'DMP-830140187697319201-NY-apartments.PNG'),
(57, 'DMP', '437952', 'DMP Main', 'dmp logo.png', '74', '388', '96928d', '96928d', 'fafdff', 'd91f25', '286eb5', 'DMP-15931400261394022513-dmp logo.png'),
(58, 'DMP', '437952', '', 'dmp logo.png', '74', '388', 'db1c23', 'db1d24', '7ba6d1', 'd91f25', '286eb5', ''),
(59, 'AMC', '025269', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(60, 'AMU', '259121', '*Default AMC Style', 'AMC logo.gif', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-2053693064864942025-AMC logo.gif'),
(61, 'AMU', '259121', 'Claradon Village', '6686_claradon_village_logo.jpg', '95', '347', 'f4bf4d', '7e823f', 'ed7f44', 'bd7855', '231f20', 'AMU-937087962765398090-6686_claradon_village_logo.jpg'),
(62, 'ACR', '119390', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(63, 'ARZ', '473695', 'Ventana Palms', 'Ventana_logo.png', '159', '358', 'BDD897', 'c0c494', 'c0c494', '957841', '000007', 'ARZ-75266069657344601-Ventana_logo.png'),
(64, 'PRC', '452301', 'The Pierce', 'ThePierce-Logo_Navy.jpg', '108', '271', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'PRC-7618568011655084485-ThePierce-Logo_Navy.jpg'),
(65, 'PRC', '452301', 'PRC Management', 'PRC Mgmt Corp.jpg', '98', '280', '9bc7dd', '1793d1', '87bcd6', '96e7ed', '232df5', 'PRC-14118786491819590640-PRC Mgmt Corp.jpg'),
(66, 'IMG', '384154', 'ICO District', 'District.png', '300', '490', '383838', '383838', 'ec1c23', '383838', 'ec1c23', 'IMG-17361597572122469295-District.png'),
(67, 'ARZ', '473695', 'Woodstream Village', 'logo_woodstreamvillage.png', '93', '301', 'Bebbbd', '828081', '8dc439', 'Bebbbd', '8dc439', 'ARZ-1534416741505162955-logo_woodstreamvillage.png'),
(68, 'ARZ', '473695', 'Falcon Glen', 'logo.png', '64', '294', 'b9a080', '543019', 'bd9360', 'b9a080', '050708', 'ARZ-4835896701662320186-logo.png'),
(69, 'ACR', '119390', 'Franklin Flats', 'FFLOGO.jpg', '95', '423', 'b85a00', '595959', '595959', '403740', '000000', 'ACR-1102205621572798778-FFLOGO.jpg'),
(70, 'AMU', '259121', 'Settlers Landing', 'SET Logo NEW.jpg', '99', '347', 'd9c892', '71644c', 'dbb953', 'd1b768', 'dac993', 'AMU-1709965931540651351-SET Logo NEW.jpg'),
(71, 'AMU', '259121', 'Coventry Cove', 'CoventryCove.gif', '98', '344', 'E0EF7D', '779f3d', 'aeb83d', 'a1bd34', '231f20', 'AMU-16539543501113443453-CoventryCove.gif'),
(72, 'AMU', '259121', 'Goldstone', 'Goldstone.gif', '99', '329', 'c3aa42', 'ddbc33', 'ddbc33', 'dfc03f', '71644c', 'AMU-8114126341353069106-Goldstone.gif'),
(73, 'AMU', '259121', 'Green Grove', 'logo1000003982.jpg', '97', '290', '8b8d09', 'ffd000', 'ffd200', 'd1d11f', 'ffd200', 'AMU-1173157184676713113-logo1000003982.jpg'),
(74, 'IMG', '384154', 'The Aston', 'Aston Logo (002).png', '300', '490', '17baba', 'e35522', 'cc8925', 'd19643', '2b282b', 'IMG-703738861309131209-Aston Logo (002).png'),
(75, 'FDC', '427925', 'Harbour Lights', 'Harbour Lights Logo.jpg', '98', '314', '787876', '787876', '70706e', '4786de', '4786de', 'FDC-1618913694194661417-Harbour Lights Logo.jpg'),
(76, 'FDC', '427925', 'FDC', 'FDC_Logo_Update2016_Embossed_FINAL.JPG', '200', '200', '4f5152', '4f5152', '4786de', '4786de', '4786de', 'FDC-14227137311637995535-FDC_Logo_Update2016_Embossed_FINAL.JPG'),
(77, 'PRC', '452301', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(78, 'IMG', '384154', 'TRAINING PROPERTY', 'logo-new[1].png', '300', '490', 'cf2323', 'cf2323', '80331a', 'cf2323', 'db1b31', 'IMG-66661928221178677-logo-new[1].png'),
(79, 'ARZ', '473695', 'Park Village', '301e18a347908f8b4c4cd73846eec99c.png', '98', '317', '6f601b', 'cc9622', 'c27925', 'cfb14f', 'a86d16', 'ARZ-10856707701089643363-301e18a347908f8b4c4cd73846eec99c.png'),
(80, 'ARZ', '473695', 'Waterstone', '99f582a1307de03a21a626be56a6e1cb.png', '99', '388', 'bd6e24', 'd5490c', 'bd6e24', 'de5224', '944521', 'ARZ-1306033816367917210-99f582a1307de03a21a626be56a6e1cb.png'),
(81, 'ACR', '119390', 'Cheyenne Crossing', 'Cheyenne Crossing Logo Rectangle.png', '80', '360', '2a5277', '1d4c25', '518018', '40bd68', '000000', 'ACR-5880592511813598407-Cheyenne Crossing Logo Rectangle.png'),
(82, 'AMU', '259121', 'Aspenwood', 'AspenwoodUT.png', '99', '390', 'd48622', '531522', 'c28851', 'd48622', '000000', 'AMU-1016735244838601477-AspenwoodUT.png'),
(83, 'AMU', '259121', 'Hidden Cove', 'HiddenCove.gif', '99', '345', '6e6c6e', '6e6c6e', 'e86f55', 'b83d32', '000000', 'AMU-9887601271539730823-HiddenCove.gif'),
(84, 'AMU', '259121', 'Holladay on 9th', 'Holladayfe3f17444785d5e82153562b721c1e9e.png', '99', '354', '97999c', '97999c', '868a83', '7e7f82', '000000', 'AMU-8867495792008171446-Holladayfe3f17444785d5e82153562b721c1e9e.png'),
(85, 'GMG', '000001', 'Apartments.com', 'apt_t_rgb_grn_pos 2.png', '159', '411', '77b800', '77b800', 'bcc0c2', '77b800', '77b800', 'GMG-1944036258146047566-apt_t_rgb_grn_pos 2.png'),
(86, 'IHP', '033565', '*Default Style', 'imajn-modified.png', '98', '159', '9BC7DD', '006395', '379dbf', '140b07', '2331f5', 'IHP-1898351798547279584-imajn-modified.png'),
(87, 'GMG', '000001', 'Progress Residential', 'progress logo.png', '98', '292', '1b838f', '65995a', '65995a', '65995a', '65995a', 'GMG-17405555681381591830-progress logo.png'),
(88, 'GMG', '000001', 'Lease Lock', 'LeaseLock Logo.png', '90', '267', '8c8c8c', '3999d4', '3999d4', '3999d4', 'f58320', 'GMG-19084570361097295003-LeaseLock Logo.png'),
(89, 'GMG', '000001', 'AAGLA', 'aagle application header.jpg', '95', '500', '6889f2', '6889f2', 'ffffff', '4768de', '000000', 'GMG-13351985831431940721-aagle application header.jpg'),
(90, 'PMC', '938417', '*PRC Style', 'NY Skyline.png', '97', '353', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'PMC-518333244541264667-NY Skyline.png'),
(91, 'SGM', '733037', '*Default Style', 'herbertlogo1.jpg', '100', '142', '1c1c3d', '1c1c3d', '0bb8b8', '0bb8b8', '0bb8b8', 'SGM-7416264181915914293-herbertlogo1.jpg'),
(92, 'IMG', '384154', 'ICO Ridge', 'Ridge.png', '300', '490', '383838', '383838', 'ec1c23', '383838', 'ec1c23', 'IMG-11769363641748753763-Ridge.png'),
(93, 'PNC', '710076', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(94, 'IMG', '384154', '*Default Style', 'tsp-default-home-logo.png', '156', '309', '383838', '383838', 'ec1c23', '383838', 'ec1c23', ''),
(95, 'IMG', '384154', 'ICO Mayfield', 'Mayfield.png', '300', '490', '383838', '383838', 'ec1c23', '383838', 'ec1c23', 'IMG-877139129392284169-Mayfield.png'),
(96, 'IMG', '384154', 'ICO Orchard', 'Orchard Farms.png', '300', '490', '383838', '383838', 'ec1c23', '383838', 'ec1c23', 'IMG-11545510141604647313-Orchard Farms.png'),
(97, 'IMG', '384154', 'ICO Fairbourne', 'Fairbourne.png', '300', '490', '383838', '383838', 'ec1c23', '383838', 'ec1c23', 'IMG-10479012741877750702-Fairbourne.png'),
(98, 'IMG', '384154', 'ICO Monteval', 'Monteval.png', '300', '490', '383838', '383838', 'ec1c23', '383838', 'ec1c23', 'IMG-775935820325850677-Monteval.png'),
(99, 'ARZ', '473695', 'Sonoran Palms', 'Sonoran Palms.JPG', '110', '347', '807480', '807480', '807480', '807480', '807480', 'ARZ-4235606461803398464-Sonoran Palms.JPG'),
(100, 'AMC', '025269', 'Crystal Creek', 'crystallogo.png', '214', '500', '798091', '798091', '8ec539', '4d525b', '8b919e', 'AMC-1109424301592061008-crystallogo.png'),
(101, 'GMG', '000001', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(102, 'AMU', '259121', '21 And View', '21-and-view-logo.png', '137', '492', '22801b', '2ca828', 'a5eb3b', '3da881', '11732d', 'AMU-14294466451841625745-21-and-view-logo.png'),
(103, 'AMU', '259121', '644 City Station', '644 City Station.png', '179', '365', 'DB5C4A', '898A8D', 'B5BE64', '185758', '863341', 'AMU-8641746931853293197-644 City Station.png'),
(104, 'AMU', '259121', 'Palladio', 'palladio.png', '137', '402', 'BF1E2E', 'BF1E2E', 'C01E2E', 'CF6F78', '786678', 'AMU-6093772931532241902-palladio.png'),
(105, 'AMU', '259121', 'Calaveras ', 'calaveras.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '000000', 'AMU-13072802201442039974-calaveras.png'),
(106, 'AMU', '259121', 'Park Central', 'Park Central.png', '179', '420', 'FDA150', 'E3924B', 'B26D3F', 'FDA150', '000000', 'AMU-934718239574991672-Park Central.png'),
(107, 'AMU', '259121', 'Mulberry', 'Mulberry.png', '138', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '000000', 'AMU-16396118931849512716-Mulberry.png'),
(108, 'AMU', '259121', 'Acadia', 'Acadia.jpg', '159', '358', '5E6E65', '5E6E65', '7d707d', '36664b', '000000', 'AMU-73033371566572381-Acadia.jpg'),
(109, 'AMU', '259121', 'Calaveras  South', 'calaveras.png', '159', '358', 'bdd897', 'C0C494', 'C0C494', '957741', '000000', 'AMU-3607854241953650881-calaveras.png'),
(110, 'MGR', '194227', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(111, 'MGR', '194227', 'MGR Default', 'mgr logo.jpg', '167', '499', '234999', '798cb0', 'ed9b0c', '234999', 'ed9b0c', 'MGR-11649148631352769321-mgr logo.jpg'),
(112, 'MGR', '194227', 'MGR Default', 'mgr logo.jpg', '167', '499', '234999', '234999', 'ed9b0c', '234999', 'ed9b0c', ''),
(113, 'AMU', '259121', 'Alpine Meadows', 'AlpineMeadows.jpg', '159', '358', '8cc13f', '8cc13f', '7E7E7E', 'C0C0C7', '7E7E7E', 'AMU-179558387804530071-AlpineMeadows.jpg'),
(114, 'AMU', '259121', 'Fairstone', 'Fairstone.jpg', '159', '358', '8CC13F', '8CC13F', '7E7E7E', 'C0C0C7', '7E7E7E', 'AMU-1924834959818026052-Fairstone.jpg'),
(115, 'AMU', '259121', 'Village Park', 'VillagePark.png', '159', '358', 'BDD897', 'C0C494', 'coc494', '957741', '7E7E7E', 'AMU-12878083411883981874-VillagePark.png'),
(116, 'AMU', '259121', 'Meadows At Park Avenue', 'MeadowsAtParkAvenue.png', '143', '353', '8cc13f', '8cc13f', '7E7E7E', 'C0C0C7', '7E7E7E', 'AMU-1398933918714475592-MeadowsAtParkAvenue.png'),
(117, 'AMU', '259121', 'Wasatch Club', 'WasatchClub.jpg', '204', '412', '8cc13f', '8cc13f', '7E7E7E', 'C0C0C7', '7E7E7E', 'AMU-1526695907403272259-WasatchClub.jpg'),
(118, 'AMU', '259121', 'Hunters Woods', 'Hunters Woods.png', '159', '358', '8cc13f', '8cc13f', '7E7E7E', 'C0C0C7', '7E7E7E', 'AMU-13110475681682557052-Hunters Woods.png'),
(119, 'AMU', '259121', 'Irving Schoolhouse', 'IrvingSchoolhouse.jpg', '185', '398', '8cc13f', '8cc13f', '7E7E7E', 'C0C0C7', '7E7E7E', 'AMU-464120603371141132-IrvingSchoolhouse.jpg'),
(120, 'AMU', '259121', 'Lakeside Village', 'LakesideVillage.jpg', '159', '358', '8cc13f', '8cc13f', '7E7E7E', 'C0C0C7', '7E7E7E', 'AMU-75707227689807643-LakesideVillage.jpg'),
(121, 'AMU', '259121', 'Apartments at Decker Lake', 'Apartments at Decker Lake fka; Westpointejpg.jpg', '107', '335', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-18672476881071693929-Apartments at Decker Lake fka; Westpointejpg.jpg'),
(122, 'AMU', '259121', 'Highland East', 'Highland East.png', '132', '307', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-2852962211399795523-Highland East.png'),
(123, 'AMU', '259121', 'Meadows At American Fork', 'MeadowsatAmericanFork.png', '87', '276', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1653693071880874774-MeadowsatAmericanFork.png'),
(124, 'AMU', '259121', 'Tapestry', 'Tapestry.png', '116', '302', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1111901746892738636-Tapestry.png'),
(125, 'AMU', '259121', 'The 500', 'The 500.jpg', '92', '341', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-12538046381642034022-The 500.jpg'),
(126, 'AMU', '259121', 'The Hills at Renaissance', 'Hills at Renaissance.png', '165', '405', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-2032158409458413486-Hills at Renaissance.png'),
(127, 'AMU', '259121', 'Arches', 'Arches.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1315627201557404339-Arches.jpg'),
(128, 'AMU', '259121', 'The Arches South', 'ArchesSouth.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-4654014931770175248-ArchesSouth.jpg'),
(129, 'AMU', '259121', 'Atherton Park', 'AthertonPark.png', '193', '269', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-704407731499848617-AthertonPark.png'),
(130, 'AMU', '259121', 'Barbara Worth', 'BarbaraWorth.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-7787754631632649930-BarbaraWorth.png'),
(131, 'AMU', '259121', 'Braxton', 'Braxton.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-54264472008519145-Braxton.png'),
(132, 'AMU', '259121', 'Brighton Place', 'BrightonPlace.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-9975465911474580095-BrightonPlace.png'),
(133, 'AMU', '259121', 'Bella Grace', 'BellaGrace.png', '159', '359', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-4700083632029473110-BellaGrace.png'),
(134, 'AMU', '259121', 'Candlestick Lane', 'Candlestick.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-20237723041240299550-Candlestick.png'),
(135, 'AMU', '259121', 'Canyon View Crossing', 'CanyonViewCrossing.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-871137184575194659-CanyonViewCrossing.png'),
(136, 'AMU', '259121', 'Center Court', 'CenterCourt.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1568962535398169206-CenterCourt.png'),
(137, 'AMU', '259121', 'City Line', 'CityLine.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1174681749825537340-CityLine.png'),
(138, 'AMU', '259121', 'Clearfield Station', 'ClearfiledStation.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-28469770360515078-ClearfiledStation.png'),
(139, 'AMU', '259121', 'Cove at Pleasant View', 'Cove at Pleasant View.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-95653470517072049-Cove at Pleasant View.png'),
(140, 'AMU', '259121', 'Creekview', 'Creekview.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-710198054392325447-Creekview.png'),
(141, 'AMU', '259121', 'Cresthaven', 'Cresthaven.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1829150084591118628-Cresthaven.png'),
(142, 'AMU', '259121', 'Crossing At Daybreak', 'CrossingAtDaybreak.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1007623240549369555-CrossingAtDaybreak.png'),
(143, 'AMU', '259121', 'Driftwood Park', 'DriftwoodPark.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-7981847413292620-DriftwoodPark.png'),
(144, 'AMU', '259121', 'Eastbrook', 'Eastbrook.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-13056085971795457956-Eastbrook.png'),
(145, 'AMU', '259121', 'Elmwood', 'Elmwood.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-4450117991295082507-Elmwood.png'),
(146, 'AMU', '259121', 'Greyhawk Townhomes', 'Greyhawk.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1306793171620272072-Greyhawk.png'),
(147, 'AMU', '259121', 'Grovecrest Villas', 'Grovecrest.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-17356036791224837607-Grovecrest.png'),
(148, 'AMU', '259121', 'Joshua Tree', 'Joshua Tree.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1558528143366948523-Joshua Tree.jpg'),
(149, 'AMU', '259121', 'LeVail Chateau', 'LeVail.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-16738301031946075272-LeVail.png'),
(150, 'AMU', '259121', 'Legacy Cottages South Jordan', 'LegacyCottages.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-779372491614528175-LegacyCottages.png'),
(151, 'AMU', '259121', 'Legacy Crossing', 'LegacyCrossing.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-891255556463944345-LegacyCrossing.png'),
(152, 'AMU', '259121', 'Legacy Village', 'LegacyVillage.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-8511731441690282302-LegacyVillage.jpg'),
(153, 'AMU', '259121', 'Logan Landing', 'LoganLanding.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-839735457521286820-LoganLanding.png'),
(154, 'AMU', '259121', 'Marmalade Hill', 'Marmalade.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-5315709621983935312-Marmalade.png'),
(155, 'AMU', '259121', 'Mountain Ridge Manor', 'MountainRidgeManor.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-13495491751241769017-MountainRidgeManor.png'),
(156, 'AMU', '259121', 'Mountain Shadows', 'MountainShadows.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-2287771111031215611-MountainShadows.png'),
(157, 'AMU', '259121', 'New Broadmoore', 'New Broadmoor.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-18328876451236400352-New Broadmoor.jpg'),
(158, 'AMU', '259121', 'Oquirrh Hills', 'Oquirrh.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1580585166483588739-Oquirrh.png'),
(159, 'AMU', '259121', 'Parkway Commons', 'Parkway Commons.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1239692972738710116-Parkway Commons.png'),
(160, 'AMU', '259121', 'Pleasant Springs', 'PleasantSprings.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1315630471684704771-PleasantSprings.png'),
(161, 'AMU', '259121', 'Ridgeview', 'Ridgeview.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-20337926231438356218-Ridgeview.png'),
(162, 'AMU', '259121', 'Riverfront', 'Riverfront.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1574931951621912655-Riverfront.png'),
(163, 'AMU', '259121', 'Royal Farms', 'RoyalFarms.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-5157101771716021338-RoyalFarms.jpg'),
(164, 'AMU', '259121', 'Royal Ridge', 'RoyalRidge.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-198886117842056632-RoyalRidge.jpg'),
(165, 'AMU', '259121', 'Santa Fe', 'SantaFe.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-15146129622066798427-SantaFe.png'),
(166, 'AMU', '259121', 'Shadowbrook', 'Shadowbrook.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1656584807258384870-Shadowbrook.jpg'),
(167, 'AMU', '259121', 'Shenandoah', 'Shenandoah.jpg', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-383259124360274304-Shenandoah.jpg'),
(168, 'AMU', '259121', 'Sunnyvale', 'Sunnyvale.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-19486671721222994581-Sunnyvale.png'),
(169, 'AMU', '259121', 'Townhomes At Mountain Ridge', 'Townhomes at Mountain Ridge.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-881561124332754487-Townhomes at Mountain Ridge.png'),
(170, 'AMU', '259121', 'Village At Raintree', 'Villages at Raintree.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-10631975351279529057-Villages at Raintree.png'),
(171, 'AMU', '259121', 'Wasatch Commons', 'WasatchCommons.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-6981931391291363323-WasatchCommons.png'),
(172, 'AMU', '259121', 'Willow Cove', 'WillowCove.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-8362496741124532056-WillowCove.png'),
(173, 'AMU', '259121', 'Wilshire Place', 'WilshirePlace.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-748808072860094898-WilshirePlace.png'),
(174, 'AMU', '259121', 'Windgate', 'Windgate.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-14311370591060267615-Windgate.png'),
(175, 'AMU', '259121', 'Woodgate', 'Woodgate.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-1418054573134420181-Woodgate.png'),
(176, 'AMU', '259121', 'Woods Crossing', 'WoodsCrossing.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-605167829298470851-WoodsCrossing.png'),
(177, 'AMU', '259121', 'Hightower', 'Hightower.png', '99', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-10989321421981869609-Hightower.png'),
(178, 'AMU', '259121', 'Apartments On The Green', 'Apartments on the Green.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-8874876871707219835-Apartments on the Green.png'),
(179, 'AMU', '259121', 'Blue Koi', 'BlueKoi.png', '159', '358', '53B4D7', '53B4D7', '6F6E6F', 'CFCFCF', '000000', 'AMU-8022061621350064806-BlueKoi.png'),
(180, 'AMU', '259121', 'Lotus', 'Lotus.png', '159', '358', '53B4D7', '53B4D7', '6F6E6F', 'CFCFCF', '000000', 'AMU-5239505532084393784-Lotus.png'),
(181, 'AMU', '259121', 'Madrona', 'Madrona.png', '159', '358', '53B4D7', '53B4D7', '6F6E6F', 'CFCFCF', '000000', 'AMU-832716872115423117-Madrona.png'),
(182, 'AMU', '259121', 'Monaco', 'Monaco.png', '159', '358', '688FC5', '1752A5', '6F6E6F', 'CFCFCF', '000000', 'AMU-66368351846641950-Monaco.png'),
(183, 'AMU', '259121', 'Avalon Senior', 'Avalon.png', '159', '358', '688FC5', '1752A5', '6F6E6F', 'CFCFCF', '000000', 'AMU-110072240141383569-Avalon.png'),
(184, 'AMU', '259121', 'Country Lake', 'CountryLake.png', '159', '358', 'CABEA0', '688FC5', '6F6E6F', 'CFCFCF', '000000', 'AMU-10916521801428017240-CountryLake.png'),
(185, 'AMU', '259121', 'Foothill Place', 'Monaco.png', '159', '358', '184866', '184866', '6F6E6F', 'CFCFCF', '000000', ''),
(186, 'AMU', '259121', 'Draper Village', 'DraperVillage.png', '159', '358', '688FC5', '1752A5', '6F6E6F', 'CFCFCF', '000000', 'AMU-1339615812701445061-DraperVillage.png'),
(187, 'AMU', '259121', 'Redwood', 'Redwood.png', '159', '358', '8A1E04', '8A1E04', '816655', '816655', '000000', 'AMU-711682742603527044-Redwood.png'),
(188, 'AMU', '259121', 'Callaway', 'Callaway.jpg', '159', '358', '8A1E04', '8A1E04', '816655', '816655', '000000', 'AMU-1040343856727762061-Callaway.jpg'),
(189, 'AMU', '259121', 'Christopher Village', 'ChristopherVillage.png', '159', '358', 'CEB98D', '087A7D', 'ad925c', 'CFCFCF', '000000', 'AMU-1935727244269117496-ChristopherVillage.png'),
(190, 'AMU', '259121', 'Country Springs', 'CountrySprings.jpg', '159', '358', 'DBA34E', '3E5050', 'ad925c', 'CFCFCF', '000000', 'AMU-19015768761655409641-CountrySprings.jpg'),
(191, 'AMU', '259121', 'Layton Meadows', 'LaytonMeadows.jpg', '159', '358', '688FC5', '1752A5', '6F6E6F', 'CFCFCF', '000000', 'AMU-566407765591992717-LaytonMeadows.jpg'),
(192, 'AMU', '259121', 'Liberty Heights', 'LibertyHeights.png', '159', '358', '8A1E04', '8A1E04', '816655', '816655', '000000', 'AMU-1405603704521572881-LibertyHeights.png'),
(193, 'AMU', '259121', 'Prana', 'Prana.png', '159', '358', '53B4D7', '53B4D7', '6F6E6F', 'CFCFCF', '000000', 'AMU-10029049731327130431-Prana.png'),
(194, 'AMU', '259121', 'Lookout Pointe', 'LookoutPointe.png', '159', '358', 'A6D3EE', '1752A5', 'A1C370', 'CFCFCF', '000000', 'AMU-4981909511263773615-LookoutPointe.png'),
(195, 'AMU', '259121', 'Preston Hollow', 'PrestonHollow.png', '159', '358', '8A1E04', '8A1E04', '816655', '816655', '000000', 'AMU-11178216351969745623-PrestonHollow.png'),
(196, 'AMU', '259121', 'Riverwalk', 'RiverWalk.png', '159', '358', '688FC5', '1752A5', '6F6E6F', 'CFCFCF', '000000', 'AMU-19251627091562690657-RiverWalk.png'),
(197, 'AMU', '259121', 'Sandpiper', 'Sandpiper.png', '159', '358', 'E71939', '5E6E66', '5E6E66', '816655', '000000', 'AMU-21203102746487565-Sandpiper.png'),
(198, 'AMU', '259121', 'South Ridge', 'SouthRidge.png', '159', '358', 'C46D52', '957741', 'E2BD87', '957741', '754B0E', 'AMU-6333090581574049240-SouthRidge.png'),
(199, 'AMU', '259121', 'Springs Of Country Woods', 'SpringsofCountryWoods.jpg', '159', '358', 'D25429', '864419', 'C0C494', '957741', '754B0E', 'AMU-1028047807791129084-SpringsofCountryWoods.jpg'),
(200, 'AMU', '259121', 'Training Property', 'AMC logo.gif', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-374860848162917869-AMC logo.gif'),
(201, 'GMG', '000001', 'HomeForRent', 'Home1.jpg', '184', '232', '170a17', '261926', '1f131f', '996599', '4d204d', 'GMG-46404897632790102-Home1.jpg'),
(202, 'AMU', '259121', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', 'tsp-default-home-logo.png'),
(203, 'AMU', '259121', 'West Pointe', 'West Pointe.gif', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-17045624412133616885-West Pointe.gif'),
(204, 'AMU', '259121', 'Yellowstone', 'Yellowstone.gif', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-19125422691656191769-Yellowstone.gif'),
(205, 'AMU', '259121', 'Ridgeview II', 'Ridgeview.png', '159', '358', 'BDD897', 'C0C494', 'C0C494', '957741', '754B0E', 'AMU-818061202691758781-Ridgeview.png'),
(206, 'AMU', '259121', 'Cyndi Test2', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', '1a1612', ''),
(207, 'AMU', '259121', 'Cyndi Test2', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', '1a1612', ''),
(211, 'TSP', '000001', '', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(213, 'AOL', '230717', 'New style', 'ClaradonVill.gif', '97', '78', '7fa860', 'ffffff', '5bb9f0', 'd48217', '0f0e0d', ''),
(214, 'DSR', '454356', 'mhn', 'favicon.ico', '182', '181', '000000', '946994', '705470', '996499', 'b596b5', ''),
(215, 'DSR', '454356', 'mhn', 'favicon.ico', '182', '181', '000000', '946994', '705470', '996499', 'b596b5', ''),
(216, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(217, 'DSR', '454356', '*Default Style', 'tsp-default-home-logo.png', '100', '200', '9BC7DD', '006395', '006395', 'F58220', 'F58220', ''),
(218, 'DSR', '454356', 'rrrr', 'tsp-logo-transparent.png', '160', '170', 'eb6aeb', '5484cc', 'b8b23f', '571a57', 'b88123', 'DSR-2006714944-tsp-logo-transparent.png');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `idproperty` int(15) UNSIGNED NOT NULL,
  `propertymemberid` char(3) NOT NULL,
  `propertymemberno` char(6) NOT NULL,
  `propertycode` char(10) NOT NULL,
  `Propertyname` varchar(100) NOT NULL,
  `propertyaddress` varchar(100) DEFAULT NULL,
  `propertycity` varchar(50) DEFAULT NULL,
  `propertystate` char(2) DEFAULT NULL,
  `propertyzip` char(5) DEFAULT NULL,
  `propertyofficehours` varchar(100) DEFAULT NULL,
  `propertyoffemail` varchar(100) DEFAULT NULL,
  `propertynotifyemail1` varchar(100) DEFAULT NULL,
  `propertynotifyemail2` varchar(100) DEFAULT NULL,
  `propertynotifyemail3` varchar(100) DEFAULT NULL,
  `propertynotifyemail4` varchar(100) DEFAULT NULL,
  `propertynotifyemail5` varchar(100) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `styleid` int(15) DEFAULT NULL,
  `profileid` int(15) DEFAULT NULL,
  `paymentsubmit` varchar(20) DEFAULT NULL COMMENT 'Report submission option ',
  `paymentprovider` varchar(10) DEFAULT NULL,
  `tspclickpaylandlordid` varchar(255) DEFAULT NULL,
  `tspclickpayllcid` varchar(255) DEFAULT NULL,
  `clickpaylandlordid` varchar(255) DEFAULT NULL,
  `clickpayllcid` varchar(255) DEFAULT NULL,
  `applicationfee` decimal(7,2) DEFAULT NULL,
  `pmsintegrationisactive` char(1) DEFAULT NULL COMMENT 'Activate the Property Management System Integration',
  `pmspartner` varchar(10) DEFAULT NULL COMMENT 'RESMAN, YARDI, MRI, ENTRATA etc',
  `resmanaccountid` varchar(25) DEFAULT NULL,
  `resmanpropertyid` varchar(100) DEFAULT NULL,
  `resmanagentid` varchar(100) DEFAULT NULL,
  `resmanagentfirstname` varchar(50) DEFAULT NULL,
  `resmanagentlastname` varchar(50) DEFAULT NULL,
  `resmanrentchargecode` varchar(100) DEFAULT NULL,
  `resmansecdepositchargecode` varchar(100) DEFAULT NULL,
  `resmanholdepositchargecode` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Members property table';

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`idproperty`, `propertymemberid`, `propertymemberno`, `propertycode`, `Propertyname`, `propertyaddress`, `propertycity`, `propertystate`, `propertyzip`, `propertyofficehours`, `propertyoffemail`, `propertynotifyemail1`, `propertynotifyemail2`, `propertynotifyemail3`, `propertynotifyemail4`, `propertynotifyemail5`, `createdate`, `updatedate`, `styleid`, `profileid`, `paymentsubmit`, `paymentprovider`, `tspclickpaylandlordid`, `tspclickpayllcid`, `clickpaylandlordid`, `clickpayllcid`, `applicationfee`, `pmsintegrationisactive`, `pmspartner`, `resmanaccountid`, `resmanpropertyid`, `resmanagentid`, `resmanagentfirstname`, `resmanagentlastname`, `resmanrentchargecode`, `resmansecdepositchargecode`, `resmanholdepositchargecode`) VALUES
(1, 'DSR', '454356', 'L100', 'LONGEST NAME THAT IS POSS', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'DSR', '454356', 'PROPERTY5', 'PROPERTY5', '321 MAIN STREET', 'CANOGA PARRK', 'CA', '93101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'DSR', '454356', 'PROP2', 'PROPERTY 2', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'DSR', '454356', 'PR1TEST', 'PROPERTY ONE', '1234 MAIN STREET', 'CANOGA PARK', 'CA', '91300', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'DSR', '454356', 'QQTESTPR30', 'QQPROPERTY 30', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'DSR', '454356', 'TESTPR10', 'PROPERTY 10', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'DSR', '454356', 'TESTPR100', 'TEST PROPERTY 100', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'DSR', '454356', 'TESTPR101', 'PROPERTY 101', '321 MAPLE AVE', 'GLENDALE', 'CA', '91405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'DSR', '454356', 'TESTPR11', 'TEST PROPERTY 11', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'DSR', '454356', 'TESTPR12', 'PROPERTY 12', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'DSR', '454356', 'TESTPR13', 'PROPERTY 13', '123 MAIN STREET', 'CULVER CITY', 'CA', '90230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'DSR', '454356', 'TESTPR14', 'PROPERTY 14', '7301 TOPANGA CANYON BLVD', 'CANOGA PARK', 'CA', '93031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'DSR', '454356', 'TESTPR15', 'PROPERTY 15', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'DSR', '454356', 'TESTPR16', 'PROPERTY 16', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'DSR', '454356', 'TESTPR17', 'PROPERTY 17', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'DSR', '454356', 'TESTPR18', 'PROPERTY 18', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'DSR', '454356', 'TESTPR19', 'PROPERTY 19', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'DSR', '454356', 'TESTPR2', 'PROPERTY 2', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'DSR', '454356', 'TESTPR20', 'PROPERTY 20', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'DSR', '454356', 'TESTPR22', 'PROPERTY 22', '100 MAIN STREET', 'VAN NUYS', 'CA', '90230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'DSR', '454356', 'TESTPR23', 'PROPERTY 23', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'DSR', '454356', 'TESTPR24', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'DSR', '454356', 'TESTPR25', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'DSR', '454356', 'TESTPR26', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'DSR', '454356', 'TESTPR27', 'TESTPR27', '123 MAIN', 'DENVER', 'CO', '80221', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'DSR', '454356', 'TESTPR28', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'DSR', '454356', 'TESTPR29', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'DSR', '454356', 'TESTPR3', 'PROPERTY 3', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'DSR', '454356', 'TESTPR30', 'PROPERTY 30', '123 ELM STREET', 'CULVER CITY', 'CA', '90230', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'DSR', '454356', 'TESTPR31', 'TEST PROPERTY 31', '7301 TOPANGA CANYON BLVD', 'CANOGA PARK', 'CA', '91303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'DSR', '454356', 'TESTPR32', '', 'PROPERTY 32', 'ADAMS', 'ND', '58210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'DSR', '454356', 'TESTPR33', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'DSR', '454356', 'TESTPR34', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'DSR', '454356', 'TESTPR35', 'TESTPR35', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'DSR', '454356', 'TESTPR36', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'DSR', '454356', 'TESTPR37', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'DSR', '454356', 'TESTPR38', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'DSR', '454356', 'TESTPR39', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'DSR', '454356', 'TESTPR4', 'PROPERTY 4', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'DSR', '454356', 'TESTPR40', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'DSR', '454356', 'TESTPR41', 'TESTPR41', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'DSR', '454356', 'TESTPR43', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'DSR', '454356', 'TESTPR44', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'DSR', '454356', 'TESTPR45', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'DSR', '454356', 'TESTPR46', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'DSR', '454356', 'TESTPR47', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'DSR', '454356', 'TESTPR48', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'DSR', '454356', 'TESTPR49', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'DSR', '454356', 'TESTPR50', 'TESTPR50', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'DSR', '454356', 'TESTPR51', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'DSR', '454356', 'TESTPR53', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'DSR', '454356', 'TESTPR54', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'DSR', '454356', 'TESTPR55', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'DSR', '454356', 'TESTPR56', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'DSR', '454356', 'TESTPR57', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'DSR', '454356', 'TESTPR58', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'DSR', '454356', 'TESTPR59', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'DSR', '454356', 'TESTPR6', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'DSR', '454356', 'TESTPR60', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'DSR', '454356', 'TESTPR61', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'DSR', '454356', 'TESTPR63', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'DSR', '454356', 'TESTPR64', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'DSR', '454356', 'TESTPR65', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'DSR', '454356', 'TESTPR66', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'DSR', '454356', 'TESTPR67', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'DSR', '454356', 'TESTPR68', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'DSR', '454356', 'TESTPR69', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'DSR', '454356', 'TESTPR7', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'DSR', '454356', 'TESTPR70', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'DSR', '454356', 'TESTPR71', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'DSR', '454356', 'TESTPR73', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'DSR', '454356', 'TESTPR74', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'DSR', '454356', 'TESTPR75', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'DSR', '454356', 'TESTPR76', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'DSR', '454356', 'TESTPR77', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'DSR', '454356', 'TESTPR78', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'DSR', '454356', 'TESTPR79', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'DSR', '454356', 'TESTPR8', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'DSR', '454356', 'TESTPR80', '', '1234 OAK STREET', 'VAN NUYS', 'CA', '91405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'DSR', '454356', 'TESTPR81', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'DSR', '454356', 'TESTPR83', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'DSR', '454356', 'TESTPR84', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'DSR', '454356', 'TESTPR85', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:57', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'DSR', '454356', 'TESTPR86', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'DSR', '454356', 'TESTPR87', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'DSR', '454356', 'TESTPR88', 'PROPERTY 88', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'DSR', '454356', 'TESTPR89', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'DSR', '454356', 'TESTPR9', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'DSR', '454356', 'TESTPR98', '', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'DSR', '454356', 'TESTPR99', 'TESTPR99', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:34', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'DSR', '454356', 'XPROP', 'X PROPERTY', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:35', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'DSR', '454356', '20PROP1', '20PROPERTY', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:35', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'DSR', '454356', '52TESTPR21', '52PROPERTY 21', '100 MAIN STREET', 'VAN NUYS', 'CA', '91020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-29 17:02:58', '2016-12-31 18:22:35', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'DSR', '905057', 'BLDG2', 'PROPERTY 1', '4321 SOME STREET', 'LAS VEGAS', 'NV', '90034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-30 11:43:04', '2016-12-31 18:22:35', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'DSR', '905057', 'DAV1', 'DAVID PROPERTY 1', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-30 11:43:04', '2016-12-31 18:22:35', 1, 1, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '29.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'RMM', '612572', '1000', 'PROPERTY 3', '15300 VANOWEN BLVD', 'VAN NUYS', 'CA', '91405', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-30 12:39:05', '2016-12-31 18:23:15', 10, 13, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '24.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'RMM', '612572', '1234', 'PROPERTY 1', '1234 OAK STREET', 'GLENDALE', 'CA', '90345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-30 12:39:05', '2016-12-31 18:23:15', 10, 13, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '24.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'RMM', '612572', '9876', 'PROPERTY 2', '321 ELM STREET', 'PASADENA', 'CA', '93034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-12-30 12:39:05', '2016-12-31 18:23:15', 10, 13, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '24.99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'TSP', '000001', '0001', 'DOTESTPROP', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-01-01 15:11:48', NULL, 11, 14, '', 'REPORTRUN', NULL, NULL, 'xxxxx', 'tspdemo', '23.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'DSR', '223339', 'test3', 'trail3jan', NULL, NULL, NULL, NULL, '10AM-5PM', 'techinfo@hotmail.com', 'sarfaraz@yahoo.com', 'pradeep@gmail.com', 'john1@hotmail.com', 'samul1@rediff.com', 'notification5@gmail.com', '2017-01-03 04:16:26', '2017-01-03 04:16:26', 1, 1, 'NOREPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', '600.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'DSR', '223339', 'trail3', 'test3jan', NULL, NULL, NULL, NULL, '10AM-5PM', 'techinfo@hotmail.com', 'sarfaraz@yahoo.com', 'pradeep@gmail.com', 'john1@hotmail.com', 'samul1@rediff.com', 'notification5@gmail.com', '2017-01-03 04:18:20', '2017-01-03 04:18:20', 1, 1, 'NOREPORTRUN', 'CLICKPAY', NULL, NULL, 'xxxxx', 'tspdemo', '600.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'RWN', '875678', 'PROP1', 'PROP 1', '111 PLACE ROAD', 'DURHAM', 'NC', '27707', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-04 11:05:44', NULL, 35, 53, 'REPORTRUN', '', NULL, NULL, 'xxxxx', 'tspdemo', '35.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'RWN', '967073', 'EMEAST1', 'MARYLAND PRIDE', '2001 FLOWER HILL AV', 'ROCKVILLE', 'MD', '20855', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-02-04 11:05:44', NULL, 35, 53, 'REPORTRUN', '', NULL, NULL, 'xxxxx', 'tspdemo', '35.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'GMG', '000001', 'AGGI', 'AG GLOBAL, INC', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(112, 'GMG', '000001', 'ARNEL', 'ARNEL TEST', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-06-06 15:08:58', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(113, 'GMG', '000001', 'BRIDGE', 'BRIDGE DEMO', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-06-06 15:08:58', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(114, 'GMG', '000001', 'ELLIES', 'ELLIE\'S TEST ACCOUNT', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-06-06 15:08:58', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(115, 'GMG', '000001', 'GLA', 'GLA BILL TEST', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-06-06 15:08:58', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(116, 'GMG', '000001', 'GMG001', 'GMG TEST #1', '123 MAIN', 'CANOGA PARK', 'CA', '91303', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(117, 'GMG', '000001', 'GMG002', 'GMG TEST #2', '1331 L STREET NW', 'WASHINGTON', 'DC', '20005', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(118, 'GMG', '000001', 'JZ', 'J ZIDE', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-06-06 15:08:58', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(119, 'GMG', '000001', 'PAC', 'PAC PROPERTIES', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-06-06 15:08:58', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(120, 'GMG', '000001', 'TRES', 'TRE\'S DEMO ACCOUNT', '', '', '', '00000', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 15:44:39', '2017-11-02 15:27:53', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(121, 'GMG', '000001', 'LL', 'LEASE LOCK', '475 WASHINGTON BLVD.', 'MARINA DEL REY', 'CA', '90292', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 16:07:46', '2017-11-02 15:27:53', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(122, 'GMG', '000001', 'PROGRESS', 'PROGRESS RESIDENTIAL', '7301 TOPANGA CANYON BLVD.', 'CANOGA PARK', 'CA', '91303', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-05 16:07:46', '2017-11-02 15:27:53', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(123, 'GMG', '000001', 'AAGLA', 'AAGLA APARTMENTS', '621 SOUTH WESTMORELAN AVE.', 'LOS ANGELES', 'CA', '90005', '9 to 5 Mon - Fri and 10-3 Sat', 'leasing@progress.com', 'garyg@thescreeningpros.com', 'cdhenderson@costar.com', 'sseth@costar.com ', 'awilliams2@costar.com', 'sbudhawani@costar.com', '2017-06-08 13:13:54', '2017-11-02 15:27:53', 87, 110, 'REPORTRUN', 'TSP', NULL, NULL, '', '', '45.00', 'N', '', '', '', '', '', '', NULL, NULL, NULL),
(124, 'SGM', '199935', 'HERBC', 'HERBERT APTS/CONVENTIONAL', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-16 09:43:38', NULL, 91, 114, 'REPORTRUN', '', NULL, NULL, '', '', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'SGM', '199935', 'HERB8', 'HERBERT APTS/SECTION 8', '', '', '', '00000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-08-16 09:43:38', NULL, 91, 114, 'REPORTRUN', '', NULL, NULL, '', '', '0.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `propertyunit`
--

CREATE TABLE `propertyunit` (
  `idpropertyunit` int(11) NOT NULL,
  `unitmemberid` char(3) NOT NULL,
  `unitmemberno` char(6) NOT NULL,
  `unitpropertyno` char(10) DEFAULT NULL,
  `unitextpropertyid` varchar(100) NOT NULL,
  `unitextpropertyname` varchar(100) DEFAULT NULL,
  `unitextpropertyaddress` varchar(100) DEFAULT NULL,
  `unitextpropertycity` varchar(60) DEFAULT NULL,
  `unitextpropertystate` char(2) DEFAULT NULL,
  `unitextpropertyzip` char(10) DEFAULT NULL,
  `unitid` varchar(25) DEFAULT NULL,
  `unitfloorplanid` varchar(25) DEFAULT NULL,
  `unitbuildingid` varchar(25) DEFAULT NULL,
  `floorlevel` varchar(5) DEFAULT NULL,
  `unitfloorplanname` varchar(50) DEFAULT NULL,
  `propertymarketingname` varchar(100) DEFAULT NULL,
  `unitbedrooms` char(5) DEFAULT NULL,
  `unitbathrooms` char(5) DEFAULT NULL,
  `minsquarefeet` char(10) DEFAULT NULL,
  `maxsquarefeet` char(10) DEFAULT NULL,
  `marketrent` decimal(10,2) DEFAULT NULL,
  `uniteconomicstatus` char(15) DEFAULT NULL,
  `unitoccupancystatus` char(15) DEFAULT NULL,
  `unitleasedstatus` char(15) DEFAULT NULL,
  `securitydeposit` decimal(10,2) DEFAULT NULL,
  `holdingdeposit` decimal(10,2) DEFAULT NULL,
  `petspermitted` char(1) DEFAULT NULL,
  `availabilitydate` date DEFAULT NULL,
  `ameneties` varchar(1000) DEFAULT NULL,
  `leasetermoffer` char(5) DEFAULT NULL,
  `effectiverent` decimal(10,2) DEFAULT NULL,
  `lastupdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Unit Information table gathered the data from Property management software like RESMAN or Yardi etc.';

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `idquestions` int(15) NOT NULL,
  `questionlinkprofileid` int(15) NOT NULL,
  `questionid` int(10) NOT NULL COMMENT 'LInk to master question id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Questions set hat link to profile';

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`idquestions`, `questionlinkprofileid`, `questionid`) VALUES
(1, 12, 3),
(2, 12, 8),
(3, 12, 14),
(4, 12, 2),
(5, 12, 12),
(6, 12, 11),
(7, 12, 6),
(8, 12, 7),
(9, 12, 10),
(10, 12, 9),
(11, 12, 5),
(12, 12, 1),
(13, 12, 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `question_view`
-- (See below for the actual view)
--
CREATE TABLE `question_view` (
`idquestions` int(15)
,`questionlinkprofileid` int(15)
,`questionid` int(10)
,`mastermemberid` char(3)
,`mastermemberno` char(6)
);

-- --------------------------------------------------------

--
-- Table structure for table `statecodes`
--

CREATE TABLE `statecodes` (
  `idstatecodes` int(11) NOT NULL,
  `statecode` char(2) NOT NULL,
  `statename` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statecodes`
--

INSERT INTO `statecodes` (`idstatecodes`, `statecode`, `statename`) VALUES
(1, 'AK', 'Alaska'),
(2, 'AZ', 'Arizona'),
(3, 'AR', 'Arkansas'),
(4, 'CA', 'California'),
(5, 'CO', 'Colorado'),
(6, 'CT', 'Connecticut'),
(7, 'DE', 'Delaware'),
(8, 'DC', 'District of Columbia'),
(9, 'FL', 'Florida'),
(10, 'GA', 'Georgia'),
(11, 'HI', 'Hawaii'),
(12, 'ID', 'Idaho'),
(13, 'IL', 'Illinois'),
(14, 'IN', 'Indiana'),
(15, 'IA', 'Iowa'),
(16, 'KS', 'Kansas'),
(17, 'KY', 'Kentucky'),
(18, 'LA', 'Louisiana'),
(19, 'ME', 'Maine'),
(20, 'MD', 'Maryland'),
(21, 'MA', 'Massachusetts'),
(22, 'MI', 'Michigan'),
(23, 'MN', 'Minnesota'),
(24, 'MS', 'Mississippi'),
(25, 'MO', 'Missouri'),
(26, 'MT', 'Montana'),
(27, 'NE', 'Nebraska'),
(28, 'NV', 'Nevada'),
(29, 'NH', 'New Hampshire'),
(30, 'NJ', 'New Jersey'),
(31, 'NM', 'New Mexico'),
(32, 'NY', 'New York'),
(33, 'NC', 'North Carolina'),
(34, 'ND', 'North Dakota'),
(35, 'OH', 'Ohio'),
(36, 'OK', 'Oklahoma'),
(37, 'OR', 'Oregon'),
(38, 'PA', 'Pennsylvania'),
(39, 'RI', 'Rhode Island'),
(40, 'SC', 'South Carolina'),
(41, 'SD', 'South Dakota'),
(42, 'TN', 'Tennessee'),
(43, 'TX', 'Texas'),
(44, 'UT', 'Utah'),
(45, 'VT', 'Vermont'),
(46, 'VA', 'Virginia'),
(47, 'WA', 'Washington'),
(48, 'WV', 'West Virginia'),
(49, 'WI', 'Wisconsin'),
(50, 'WY', 'Wyoming'),
(51, 'AS', 'American Samoa'),
(52, 'GU', 'Guam'),
(53, 'PR', 'Puerto Rico'),
(54, 'VI', 'Virgin Islands'),
(55, 'AL', 'Alabama');

-- --------------------------------------------------------

--
-- Table structure for table `stylecustomizingtable`
--

CREATE TABLE `stylecustomizingtable` (
  `id` int(13) UNSIGNED NOT NULL,
  `StyleName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Selectedlogopath` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `imageName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `LogoName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LogoHeight` int(13) DEFAULT NULL,
  `LogoWidth` int(13) DEFAULT NULL,
  `WelcomeColor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `footercolor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `buttoncolor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `buttonhovercolor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkcolor` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stylecustomizingtable`
--

INSERT INTO `stylecustomizingtable` (`id`, `StyleName`, `Selectedlogopath`, `imageName`, `LogoName`, `LogoHeight`, `LogoWidth`, `WelcomeColor`, `footercolor`, `buttoncolor`, `buttonhovercolor`, `linkcolor`) VALUES
(38, 'my style1', 'assets/uploads/tsp-default-home-logo.png', 'tsp-default-home-logo.png', 'new logo', 120, 130, '#0f0a0a', '#964d4d', '#a6298a', '#7d8f83', 'rgba(18,14,14,1)'),
(39, 'my style2', 'assets/uploads/', '', 'new logo2', 129, 129, '#000000', '#f01c81', '#f2086b', '#17db1f', '#49557d'),
(40, 'default', 'assets/uploads/tsp-new-logo.png', 'tsp-new-logo.png', 'MyL:ogo', 145, 135, '#692c2c', '#ba7b31', '#2b916c', '#bd9f9f', '#4f3e3e'),
(41, 'default2', 'assets/uploads/tsp-default-home-logo.png', 'tsp-default-home-logo.png', 'original logo', 125, 125, '#c28181', '#5e0750', 'rgba(56,173,152,0.79)', 'rgba(23,17,17,0.27)', '#e0bebe'),
(42, 'default3', 'assets/uploads/tsp-new-logo.png', 'tsp-new-logo.png', 'logo6', 102, 122, '#bfa5a5', '#306b44', '#ed5f22', '#4253ab', '#000000'),
(43, 'india', 'assets/uploads/tsp-default-home-logo.png', 'tsp-default-home-logo.png', 'new logo2', 135, 135, '#6b3344', '#1f1b1b', '#e31346', '#17db1f', '#e6f71c'),
(44, 'india2', 'assets/uploads/tsp-new-logo.png', 'tsp-new-logo.png', 'MyL:ogo', 145, 135, '#692c2c', '#ba7b31', '#2b916c', '#bd9f9f', '#4f3e3e'),
(45, 'bnglr', 'assets/uploads/tsp-logo-transparent.png', 'tsp-logo-transparent.png', 'new logo', 152, 160, '#0f0a0a', '#964d4d', '#a6298a', '#7d8f83', 'rgba(18,14,14,1)'),
(46, 'usa', 'assets/uploads/tsp-new-logo.png', 'tsp-new-logo.png', 'MyL:ogo', 145, 135, '#692c2c', '#ba7b31', '#2b916c', '#bd9f9f', '#4f3e3e'),
(47, 'uae', 'assets/uploads/tsp-default-home-logo.png', 'tsp-default-home-logo.png', 'MyL:ogo', 106, 135, '#692c2c', '#ba7b31', '#2b916c', '#bd9f9f', '#4f3e3e'),
(48, 'vxc', 'assets/uploads/tsp-default-home-logo.png', 'tsp-default-home-logo.png', 'xcvx', 132, 137, '#940e0e', '#000000', '#2e47cc', '#17d970', '#ec23f0');

-- --------------------------------------------------------

--
-- Table structure for table `vendormarketsource`
--

CREATE TABLE `vendormarketsource` (
  `idvendormarketsource` int(15) NOT NULL,
  `vendorid` varchar(10) NOT NULL,
  `vendormarketsourceid` varchar(50) NOT NULL,
  `vendormarketsourcename` varchar(100) NOT NULL,
  `vendormemberid` char(3) NOT NULL,
  `vendormemberno` char(6) NOT NULL,
  `updatedate` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table holds the vendor marketing sources that we will need to setup for cross refrence';

-- --------------------------------------------------------

--
-- Table structure for table `vendor_push_log`
--

CREATE TABLE `vendor_push_log` (
  `idvendorpushlog` int(11) NOT NULL,
  `logapplicationid` int(11) NOT NULL,
  `vendormemberid` char(3) DEFAULT NULL,
  `vendormemberno` char(6) DEFAULT NULL,
  `vendorpropertycode` varchar(10) DEFAULT NULL,
  `eventdate` datetime DEFAULT NULL,
  `eventtype` varchar(50) NOT NULL,
  `eventsubtype` char(50) DEFAULT NULL,
  `eventdescription` varchar(255) DEFAULT NULL,
  `eventdatapush` varchar(5000) DEFAULT NULL,
  `eventdataresponse` varchar(5000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vendor data transmission log';

--
-- Dumping data for table `vendor_push_log`
--

INSERT INTO `vendor_push_log` (`idvendorpushlog`, `logapplicationid`, `vendormemberid`, `vendormemberno`, `vendorpropertycode`, `eventdate`, `eventtype`, `eventsubtype`, `eventdescription`, `eventdatapush`, `eventdataresponse`) VALUES
(1, 733, 'DSR', '454356', '', '2017-06-15 16:17:38', 'GUEST-CARD SEARCH', 'New', 'Successfully search the guest card transaction and update the ids', 'NONE', '<ResMan>\r\n  <MethodName>SearchProspects</MethodName>\r\n  <Status>Success</Status>\r\n  <AccountID>800</AccountID>\r\n  <PropertyID>d3f567a1-2132-466f-ba24-4e4da1cd48eb</PropertyID>\r\n  <Response>\r\n    <LeadManagement>\r\n      <Prospects>\r\n        <Prospect>\r\n          <Customers>\r\n            <Customer Type=\"applicant\">\r\n              <Identification IDType=\"ProspectID\" IDValue=\"90455af9-1011-4ccb-a09b-2b83a664070d\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"PersonID\" IDValue=\"6c4b0c68-b2bf-4149-862b-08e3dab1fa0f\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"LeaseID\" IDValue=\"80107676-535d-45c8-a55d-de94af9e61b0\" OrganizationName=\"ResMan\" />\r\n              <Name>\r\n                <FirstName>David </FirstName>\r\n                <MiddleName>J</MiddleName>\r\n                <LastName>Murphy</LastName>\r\n              </Name>\r\n              <Address AddressType=\"current\">\r\n                <AddressLine1>7301 Calhoun Pl 201</AddressLine1>\r\n                <City>Rockville</City>\r\n                <State>MD</State>\r\n                <PostalCode>20855</PostalCode>\r\n              </Address>\r\n              <Phone>\r\n                <PhoneNumber>(301) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(240) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(881) 990-1234</PhoneNumber>\r\n              </Phone>\r\n              <Email>david.murphy@google.com</Email>\r\n            </Customer>\r\n          </Customers>\r\n          <CustomerPreferences>\r\n            <TargetMoveInDate>2017-05-01</TargetMoveInDate>\r\n            <DesiredRent Max=\"900\" />\r\n            <DesiredNumBedrooms Exact=\"1\" />\r\n          </CustomerPreferences>\r\n          <Events>\r\n            <Event EventType=\"Application\" EventDate=\"2017-04-11T12:00:00+00:00\">\r\n              <EventID IDType=\"EventID\" IDValue=\"a31b2d63-22c4-4f4d-93af-c18e00bfe72b\" OrganizationName=\"ResMan\" />\r\n              <Agent>\r\n                <AgentID IDValue=\"03d71449-69b4-432c-9053-71824e01a260\" />\r\n                <AgentName>\r\n                  <FirstName>Roi</FirstName>\r\n                  <LastName>ResMan</LastName>\r\n                </AgentName>\r\n              </Agent>\r\n              <FirstContact>true</FirstContact>\r\n              <Comments></Comments>\r\n              <TransactionSource>bc78e068-6f6f-4331-9301-62fea48fad51</TransactionSource>\r\n            </Event>\r\n          </Events>\r\n        </Prospect>\r\n        <Prospect>\r\n          <Customers>\r\n            <Customer Type=\"applicant\">\r\n              <Identification IDType=\"ProspectID\" IDValue=\"37574c62-7c9c-4426-ba2c-2647f8ea1386\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"PersonID\" IDValue=\"e87c3d98-9f0c-4c5d-a63c-dce903470a50\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"LeaseID\" IDValue=\"db3f11aa-0e27-41d9-8a2f-6441221bf915\" OrganizationName=\"ResMan\" />\r\n              <Name>\r\n                <FirstName>David </FirstName>\r\n                <MiddleName>J</MiddleName>\r\n                <LastName>Murphy</LastName>\r\n              </Name>\r\n              <Address AddressType=\"current\">\r\n                <AddressLine1>7301 Calhoun Pl 201</AddressLine1>\r\n                <City>Rockville</City>\r\n                <State>MD</State>\r\n                <PostalCode>20855</PostalCode>\r\n              </Address>\r\n              <Phone>\r\n                <PhoneNumber>(301) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(240) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(881) 990-1234</PhoneNumber>\r\n              </Phone>\r\n              <Email>david.murphy@google.com</Email>\r\n            </Customer>\r\n          </Customers>\r\n          <CustomerPreferences>\r\n            <TargetMoveInDate>2017-05-01</TargetMoveInDate>\r\n            <DesiredUnit>\r\n              <MarketingName>203</MarketingName>\r\n            </DesiredUnit>\r\n            <DesiredRent Max=\"900\" />\r\n            <DesiredNumBedrooms Exact=\"1\" />\r\n          </CustomerPreferences>\r\n          <Events>\r\n            <Event EventType=\"Application\" EventDate=\"2017-04-11T12:00:00+00:00\">\r\n              <EventID IDType=\"EventID\" IDValue=\"0c11cb96-f171-4edc-a210-02ee8577dffc\" OrganizationName=\"ResMan\" />\r\n              <Agent>\r\n                <AgentID IDValue=\"03d71449-69b4-432c-9053-71824e01a260\" />\r\n                <AgentName>\r\n                  <FirstName>Roi</FirstName>\r\n                  <LastName>ResMan</LastName>\r\n                </AgentName>\r\n              </Agent>\r\n              <FirstContact>true</FirstContact>\r\n              <Comments></Comments>\r\n              <TransactionSource>bc78e068-6f6f-4331-9301-62fea48fad51</TransactionSource>\r\n            </Event>\r\n          </Events>\r\n        </Prospect>\r\n      </Prospects>\r\n    </LeadManagement>\r\n  </Response>\r\n</ResMan>'),
(2, 733, 'DSR', '454356', '', '2017-06-15 16:17:38', 'GUEST-CARD SEARCH', 'New', 'Successfully search the guest card transaction and update the ids', 'NONE', '<ResMan>\r\n  <MethodName>SearchProspects</MethodName>\r\n  <Status>Success</Status>\r\n  <AccountID>800</AccountID>\r\n  <PropertyID>d3f567a1-2132-466f-ba24-4e4da1cd48eb</PropertyID>\r\n  <Response>\r\n    <LeadManagement>\r\n      <Prospects>\r\n        <Prospect>\r\n          <Customers>\r\n            <Customer Type=\"applicant\">\r\n              <Identification IDType=\"ProspectID\" IDValue=\"90455af9-1011-4ccb-a09b-2b83a664070d\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"PersonID\" IDValue=\"6c4b0c68-b2bf-4149-862b-08e3dab1fa0f\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"LeaseID\" IDValue=\"80107676-535d-45c8-a55d-de94af9e61b0\" OrganizationName=\"ResMan\" />\r\n              <Name>\r\n                <FirstName>David </FirstName>\r\n                <MiddleName>J</MiddleName>\r\n                <LastName>Murphy</LastName>\r\n              </Name>\r\n              <Address AddressType=\"current\">\r\n                <AddressLine1>7301 Calhoun Pl 201</AddressLine1>\r\n                <City>Rockville</City>\r\n                <State>MD</State>\r\n                <PostalCode>20855</PostalCode>\r\n              </Address>\r\n              <Phone>\r\n                <PhoneNumber>(301) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(240) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(881) 990-1234</PhoneNumber>\r\n              </Phone>\r\n              <Email>david.murphy@google.com</Email>\r\n            </Customer>\r\n          </Customers>\r\n          <CustomerPreferences>\r\n            <TargetMoveInDate>2017-05-01</TargetMoveInDate>\r\n            <DesiredRent Max=\"900\" />\r\n            <DesiredNumBedrooms Exact=\"1\" />\r\n          </CustomerPreferences>\r\n          <Events>\r\n            <Event EventType=\"Application\" EventDate=\"2017-04-11T12:00:00+00:00\">\r\n              <EventID IDType=\"EventID\" IDValue=\"a31b2d63-22c4-4f4d-93af-c18e00bfe72b\" OrganizationName=\"ResMan\" />\r\n              <Agent>\r\n                <AgentID IDValue=\"03d71449-69b4-432c-9053-71824e01a260\" />\r\n                <AgentName>\r\n                  <FirstName>Roi</FirstName>\r\n                  <LastName>ResMan</LastName>\r\n                </AgentName>\r\n              </Agent>\r\n              <FirstContact>true</FirstContact>\r\n              <Comments></Comments>\r\n              <TransactionSource>bc78e068-6f6f-4331-9301-62fea48fad51</TransactionSource>\r\n            </Event>\r\n          </Events>\r\n        </Prospect>\r\n        <Prospect>\r\n          <Customers>\r\n            <Customer Type=\"applicant\">\r\n              <Identification IDType=\"ProspectID\" IDValue=\"37574c62-7c9c-4426-ba2c-2647f8ea1386\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"PersonID\" IDValue=\"e87c3d98-9f0c-4c5d-a63c-dce903470a50\" OrganizationName=\"ResMan\" />\r\n              <Identification IDType=\"LeaseID\" IDValue=\"db3f11aa-0e27-41d9-8a2f-6441221bf915\" OrganizationName=\"ResMan\" />\r\n              <Name>\r\n                <FirstName>David </FirstName>\r\n                <MiddleName>J</MiddleName>\r\n                <LastName>Murphy</LastName>\r\n              </Name>\r\n              <Address AddressType=\"current\">\r\n                <AddressLine1>7301 Calhoun Pl 201</AddressLine1>\r\n                <City>Rockville</City>\r\n                <State>MD</State>\r\n                <PostalCode>20855</PostalCode>\r\n              </Address>\r\n              <Phone>\r\n                <PhoneNumber>(301) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(240) 881-1234</PhoneNumber>\r\n              </Phone>\r\n              <Phone>\r\n                <PhoneNumber>(881) 990-1234</PhoneNumber>\r\n              </Phone>\r\n              <Email>david.murphy@google.com</Email>\r\n            </Customer>\r\n          </Customers>\r\n          <CustomerPreferences>\r\n            <TargetMoveInDate>2017-05-01</TargetMoveInDate>\r\n            <DesiredUnit>\r\n              <MarketingName>203</MarketingName>\r\n            </DesiredUnit>\r\n            <DesiredRent Max=\"900\" />\r\n            <DesiredNumBedrooms Exact=\"1\" />\r\n          </CustomerPreferences>\r\n          <Events>\r\n            <Event EventType=\"Application\" EventDate=\"2017-04-11T12:00:00+00:00\">\r\n              <EventID IDType=\"EventID\" IDValue=\"0c11cb96-f171-4edc-a210-02ee8577dffc\" OrganizationName=\"ResMan\" />\r\n              <Agent>\r\n                <AgentID IDValue=\"03d71449-69b4-432c-9053-71824e01a260\" />\r\n                <AgentName>\r\n                  <FirstName>Roi</FirstName>\r\n                  <LastName>ResMan</LastName>\r\n                </AgentName>\r\n              </Agent>\r\n              <FirstContact>true</FirstContact>\r\n              <Comments></Comments>\r\n              <TransactionSource>bc78e068-6f6f-4331-9301-62fea48fad51</TransactionSource>\r\n            </Event>\r\n          </Events>\r\n        </Prospect>\r\n      </Prospects>\r\n    </LeadManagement>\r\n  </Response>\r\n</ResMan>');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_propertymembers`
-- (See below for the actual view)
--
CREATE TABLE `view_propertymembers` (
`propertymemberid` char(3)
,`propertymemberno` char(6)
,`Propertyname` varchar(100)
,`prpopertyprofileid` int(15)
,`prpopertystyleid` int(15)
,`membermasterid` char(3)
,`membermasterno` char(6)
);

-- --------------------------------------------------------

--
-- Structure for view `applicationandapplicants`
--
DROP TABLE IF EXISTS `applicationandapplicants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aolresident`@`localhost` SQL SECURITY DEFINER VIEW `applicationandapplicants`  AS  select `a`.`idapplication` AS `idapplication`,`a`.`applicationmemberid` AS `applicationmemberid`,`a`.`applicationmemberno` AS `applicationmemberno`,`a`.`applicationmastermemberid` AS `applicationmastermemberid`,`a`.`applicationmastermemberno` AS `applicationmastermemberno`,`a`.`applicationproperty` AS `applicationproperty`,`a`.`applicationdate` AS `applicationdate`,`a`.`applicationtoken` AS `applicationtoken`,`a`.`applicationstatus` AS `applicationstatus`,`a`.`applicationcompletiondate` AS `applicationcompletiondate`,`a`.`applicationtotalapplicant` AS `applicationtotalapplicant`,`a`.`applicationtotalresidents` AS `applicationtotalresidents`,`a`.`applicationpendapplicant` AS `applicationpendapplicant`,`a`.`applicationtotaloccupant` AS `applicationtotaloccupant`,`a`.`applicationlastactivitydate` AS `applicationlastactivitydate`,`a`.`applicationholdingdeposit` AS `applicationholdingdeposit`,`a`.`applicationsecuritydeposit` AS `applicationsecuritydeposit`,`a`.`applicationunitno` AS `applicationunitno`,`a`.`bedroomtype` AS `bedroomtype`,`a`.`otherfee` AS `otherfee`,`a`.`futurerent` AS `futurerent`,`a`.`moveindate` AS `moveindate`,`a`.`leaseterm` AS `leaseterm`,`a`.`ispetincluded` AS `ispetincluded`,`a`.`isvehicleincluded` AS `isvehicleincluded`,`a`.`isbankincluded` AS `isbankincluded`,`a`.`iscreditrefincluded` AS `iscreditrefincluded`,`a`.`ispersonalrefincluded` AS `ispersonalrefincluded`,`a`.`marketsourceid` AS `marketsourceid`,`a`.`marketsourcename` AS `marketsourcename`,`a`.`marketsourceother` AS `marketsourceother`,`a`.`applicationscreeningsubmitdate` AS `applicationscreeningsubmitdate`,`a`.`applicationscreeningstatus` AS `applicationscreeningstatus`,`a`.`applicationscreeningdecision` AS `applicationscreeningdecision`,`a`.`applicationprimaryzip` AS `applicationprimaryzip`,`a`.`applicationaverageincome` AS `applicationaverageincome`,`a`.`applicationsubmittype` AS `applicationsubmittype`,`a`.`otherleaseterms` AS `otherleaseterms`,`a`.`screeningerror` AS `screeningerror`,`a`.`screeningdecisiontext` AS `screeningdecisiontext`,`a`.`screeninginquiryno` AS `screeninginquiryno`,`a`.`screeningreportlink` AS `screeningreportlink`,`a`.`screeningupdatedate` AS `screeningupdatedate`,`a`.`screeningcrimstatus` AS `screeningcrimstatus`,`a`.`guestcardvendor` AS `guestcardvendor`,`a`.`guestcardvendorid` AS `guestcardvendorid`,`a`.`guestcardfirstpost` AS `guestcardfirstpost`,`a`.`applicationfirstpost` AS `applicationfirstpost`,`a`.`guestfloorplanid` AS `guestfloorplanid`,`a`.`guestmarketingname` AS `guestmarketingname`,`a`.`vendorleaseid` AS `vendorleaseid`,`a`.`screeningposttovendor` AS `screeningposttovendor`,`a`.`screeningposttovendresp` AS `screeningposttovendresp`,`b`.`applicantsidapplication` AS `applicantsidapplication`,`b`.`idapplicants` AS `idapplicants`,`b`.`applicantsmemberid` AS `applicantsmemberid`,`b`.`applicantsmemberno` AS `applicantsmemberno`,`b`.`applicantsproperty` AS `applicantsproperty`,`b`.`applicantstype` AS `applicantstype`,`b`.`applicantsfirtsname` AS `applicantsfirtsname`,`b`.`applicantmidname` AS `applicantmidname`,`b`.`applicantslastname` AS `applicantslastname`,`b`.`applicantsemail` AS `applicantsemail`,`b`.`applicantphoneno` AS `applicantphoneno`,`b`.`applicanthomephone` AS `applicanthomephone`,`b`.`appreasonforleaving` AS `appreasonforleaving`,`b`.`applicantsuffix` AS `applicantsuffix`,aes_decrypt(`b`.`applicantdrivinglicenseencrypt`,'yrtx65t4j-46h$5rh@749-ij78mb3q1k') AS `applicantdrivinglicense`,`b`.`applicantdrivinglicstate` AS `applicantdrivinglicstate`,aes_decrypt(`b`.`applicantdobencrypt`,'yrtx65t4j-46h$5rh@749-ij78mb3q1k') AS `applicantdob`,aes_decrypt(`b`.`applicantssnencrypt`,'yrtx65t4j-46h$5rh@749-ij78mb3q1k') AS `applicantssn`,`b`.`applicantempstatus` AS `applicantempstatus`,`b`.`applicantsinvited` AS `applicantsinvited`,`b`.`applicantsinvitationdate` AS `applicantsinvitationdate`,`b`.`applicantsempincome` AS `applicantsempincome`,`b`.`applicantsothincome` AS `applicantsothincome`,`b`.`applicantsstatus` AS `applicantsstatus`,`b`.`applicantsstatusdate` AS `applicantsstatusdate`,`b`.`applicantsscreeningdecision` AS `applicantsscreeningdecision`,`b`.`applicantscurrentrent` AS `applicantscurrentrent`,`b`.`applicantscurrentrestype` AS `applicantscurrentrestype`,`b`.`Applicantcurntlyemplyd` AS `Applicantcurntlyemplyd`,`b`.`screeningfee` AS `screeningfee`,`b`.`processingfee` AS `processingfee`,`b`.`holdingdeposit` AS `holdingdeposit`,`b`.`paymentid` AS `paymentid`,`b`.`paymentdate` AS `paymentdate`,`b`.`paidamount` AS `paidamount`,`b`.`paidby` AS `paidby`,`b`.`paymentapprovalreference` AS `paymentapprovalreference`,`b`.`paymentstatus` AS `paymentstatus`,`b`.`termsagreeddate` AS `termsagreeddate`,`b`.`disclosureagreeddate` AS `disclosureagreeddate`,`b`.`appincometype` AS `appincometype`,`b`.`appconsent` AS `appconsent`,`b`.`appconsentdate` AS `appconsentdate`,`b`.`appconsentfromip` AS `appconsentfromip`,`b`.`guestcardpersonid` AS `guestcardpersonid` from (`application` `a` left join `applicants` `b` on(((`b`.`applicantsidapplication` = `a`.`idapplication`) and (`b`.`applicantsmemberid` = `a`.`applicationmemberid`) and (`b`.`applicantsmemberno` = `a`.`applicationmemberno`)))) where (`b`.`applicantstype` in ('P','A','G')) order by `a`.`idapplication` desc ;

-- --------------------------------------------------------

--
-- Structure for view `app_applicants`
--
DROP TABLE IF EXISTS `app_applicants`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aolresident`@`localhost` SQL SECURITY DEFINER VIEW `app_applicants`  AS  select `a`.`idapplication` AS `idapplication`,`a`.`applicationmemberid` AS `applicationmemberid`,`a`.`applicationmemberno` AS `applicationmemberno`,`a`.`applicationproperty` AS `applicationproperty`,`a`.`applicationmastermemberid` AS `applicationmastermemberid`,`a`.`applicationmastermemberno` AS `applicationmastermemberno`,`a`.`applicationdate` AS `applicationdate`,`a`.`applicationstatus` AS `applicationstatus`,`a`.`applicationcompletiondate` AS `applicationcompletiondate`,`a`.`applicationlastactivitydate` AS `applicationlastactivitydate`,`a`.`applicationscreeningsubmitdate` AS `applicationscreeningsubmitdate`,`a`.`applicationscreeningstatus` AS `applicationscreeningstatus`,`a`.`applicationscreeningdecision` AS `applicationscreeningdecision`,`a`.`applicationsubmittype` AS `applicationsubmittype`,`b`.`applicantsidapplication` AS `applicantsidapplication`,`b`.`idapplicants` AS `idapplicants`,`b`.`applicantsmemberid` AS `applicantsmemberid`,`b`.`applicantsmemberno` AS `applicantsmemberno`,`b`.`applicantsproperty` AS `applicantsproperty`,`b`.`applicantstype` AS `applicantstype`,`b`.`applicantsfirtsname` AS `applicantsfirtsname`,`b`.`applicantmidname` AS `applicantmidname`,`b`.`applicantslastname` AS `applicantslastname`,`b`.`applicantsemail` AS `applicantsemail`,`b`.`applicantpassword` AS `applicantpassword`,`b`.`applicantphoneno` AS `applicantphoneno`,`b`.`applicanthomephone` AS `applicanthomephone`,`b`.`applicantworkphone` AS `applicantworkphone`,`b`.`appreasonforleaving` AS `appreasonforleaving`,`b`.`applicantsuffix` AS `applicantsuffix`,`b`.`applicantdrivinglicense` AS `applicantdrivinglicense`,`b`.`applicantdrivinglicstate` AS `applicantdrivinglicstate`,`b`.`applicantdob` AS `applicantdob`,`b`.`applicantssn` AS `applicantssn`,aes_decrypt(`b`.`applicantssnencrypt`,'yrtx65t4j-46h$5rh@749-ij78mb3q1k') AS `applicantssnencrypt`,aes_decrypt(`b`.`applicantdobencrypt`,'yrtx65t4j-46h$5rh@749-ij78mb3q1k') AS `applicantdobencrypt`,aes_decrypt(`b`.`applicantdrivinglicenseencrypt`,'yrtx65t4j-46h$5rh@749-ij78mb3q1k') AS `applicantdrivinglicenseencryptencrypt`,`b`.`applicantempstatus` AS `applicantempstatus`,`b`.`applicantsinvited` AS `applicantsinvited`,`b`.`applicantsinvitationdate` AS `applicantsinvitationdate`,`b`.`invitationmessage` AS `invitationmessage`,`b`.`applicantsempincome` AS `applicantsempincome`,`b`.`applicantsothincome` AS `applicantsothincome`,`b`.`applicantsstatus` AS `applicantsstatus`,`b`.`applicantsstatusdate` AS `applicantsstatusdate`,`b`.`applicantsscreeningdecision` AS `applicantsscreeningdecision`,`b`.`applicantscurrentrent` AS `applicantscurrentrent`,`b`.`applicantscurrentrestype` AS `applicantscurrentrestype`,`b`.`Applicantcurntlyemplyd` AS `Applicantcurntlyemplyd`,`b`.`screeningfee` AS `screeningfee`,`b`.`processingfee` AS `processingfee`,`b`.`holdingdeposit` AS `holdingdeposit`,`b`.`paymentid` AS `paymentid`,`b`.`paymentdate` AS `paymentdate`,`b`.`paidamount` AS `paidamount`,`b`.`paidby` AS `paidby`,`b`.`paymentapprovalreference` AS `paymentapprovalreference`,`b`.`paymentstatus` AS `paymentstatus`,`b`.`termsagreeddate` AS `termsagreeddate`,`b`.`disclosureagreeddate` AS `disclosureagreeddate`,`b`.`appincometype` AS `appincometype`,`b`.`otherleaseterms` AS `otherleaseterms`,`b`.`appconsentdate` AS `appconsentdate`,`b`.`appconsentfromip` AS `appconsentfromip`,`b`.`appconsent` AS `appconsent` from (`application` `a` join `applicants` `b`) where ((`a`.`idapplication` = `b`.`applicantsidapplication`) and (`a`.`applicationmemberid` = `b`.`applicantsmemberid`) and (`a`.`applicationmemberno` = `b`.`applicantsmemberno`)) order by `a`.`applicationdate` ;

-- --------------------------------------------------------

--
-- Structure for view `market_view`
--
DROP TABLE IF EXISTS `market_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aolresident`@`localhost` SQL SECURITY DEFINER VIEW `market_view`  AS  select `mastermarketsource`.`idmastermarketsource` AS `idmastermarketsource`,`mastermarketsource`.`sourcemastermemberid` AS `sourcemastermemberid`,`mastermarketsource`.`sourcemastermemberno` AS `sourcemastermemberno`,`mastermarketsource`.`sourceid` AS `sourceid`,`mastermarketsource`.`sourcedescription` AS `sourcedescription`,`mastermarketsource`.`createdate` AS `createdate`,`mastermarketsource`.`updatedate` AS `updatedate`,`marketsource`.`idmarketsource` AS `idmarketsource`,`marketsource`.`linkidprofile` AS `linkidprofile`,`marketsource`.`mastersourceid` AS `mastersourceid`,`marketsource`.`recordstatus` AS `recordstatus` from (`marketsource` left join `mastermarketsource` on((`mastermarketsource`.`sourceid` = `marketsource`.`mastersourceid`))) ;

-- --------------------------------------------------------

--
-- Structure for view `question_view`
--
DROP TABLE IF EXISTS `question_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aolresident`@`localhost` SQL SECURITY DEFINER VIEW `question_view`  AS  select `questions`.`idquestions` AS `idquestions`,`questions`.`questionlinkprofileid` AS `questionlinkprofileid`,`questions`.`questionid` AS `questionid`,`profile`.`mastermemberid` AS `mastermemberid`,`profile`.`mastermemberno` AS `mastermemberno` from (`questions` left join `profile` on((`questions`.`questionlinkprofileid` = `profile`.`idprofile`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_propertymembers`
--
DROP TABLE IF EXISTS `view_propertymembers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aolresident`@`localhost` SQL SECURITY DEFINER VIEW `view_propertymembers`  AS  select `property`.`propertymemberid` AS `propertymemberid`,`property`.`propertymemberno` AS `propertymemberno`,`property`.`Propertyname` AS `Propertyname`,`property`.`profileid` AS `prpopertyprofileid`,`property`.`styleid` AS `prpopertystyleid`,`members`.`membermasterid` AS `membermasterid`,`members`.`membermasterno` AS `membermasterno` from (`property` join `members` on(((`property`.`propertymemberid` = `members`.`memberid`) and (`property`.`propertymemberno` = `members`.`memberno`)))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminsession`
--
ALTER TABLE `adminsession`
  ADD PRIMARY KEY (`idadminsession`),
  ADD UNIQUE KEY `idadminsession_UNIQUE` (`idadminsession`);

--
-- Indexes for table `appbank`
--
ALTER TABLE `appbank`
  ADD PRIMARY KEY (`idappbank`),
  ADD UNIQUE KEY `idappbank_UNIQUE` (`idappbank`);

--
-- Indexes for table `appcontacts`
--
ALTER TABLE `appcontacts`
  ADD PRIMARY KEY (`idappcontacts`),
  ADD UNIQUE KEY `idappcontacts_UNIQUE` (`idappcontacts`);

--
-- Indexes for table `appcreditref`
--
ALTER TABLE `appcreditref`
  ADD PRIMARY KEY (`idappcreditref`),
  ADD UNIQUE KEY `idappcreditref_UNIQUE` (`idappcreditref`);

--
-- Indexes for table `applicantaddress`
--
ALTER TABLE `applicantaddress`
  ADD PRIMARY KEY (`idapplicantaddress`),
  ADD UNIQUE KEY `idapplicantaddress_UNIQUE` (`idapplicantaddress`);

--
-- Indexes for table `applicantdocuments`
--
ALTER TABLE `applicantdocuments`
  ADD PRIMARY KEY (`idapplicantdocuments`),
  ADD UNIQUE KEY `idapplicantdocuments_UNIQUE` (`idapplicantdocuments`),
  ADD UNIQUE KEY `docinternalname_UNIQUE` (`docinternalname`);

--
-- Indexes for table `applicantemployment`
--
ALTER TABLE `applicantemployment`
  ADD PRIMARY KEY (`idapplicantemployment`),
  ADD UNIQUE KEY `idapplicantemployment_UNIQUE` (`idapplicantemployment`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`applicantsidapplication`,`idapplicants`),
  ADD UNIQUE KEY `idapplicants_UNIQUE` (`idapplicants`),
  ADD KEY `application_key_idx` (`applicantsidapplication`);

--
-- Indexes for table `applicantssignature`
--
ALTER TABLE `applicantssignature`
  ADD PRIMARY KEY (`idapplicantssignature`),
  ADD UNIQUE KEY `idapplicantssignature_UNIQUE` (`idapplicantssignature`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`idapplication`),
  ADD UNIQUE KEY `idapplication_UNIQUE` (`idapplication`),
  ADD KEY `application_date` (`applicationdate`,`applicationmemberid`,`applicationmastermemberno`) COMMENT 'Date and Member No',
  ADD KEY `mastermemberanddate` (`applicationmastermemberid`,`applicationmastermemberno`,`applicationdate`,`applicationmemberid`,`applicationmemberno`);

--
-- Indexes for table `apppersonalref`
--
ALTER TABLE `apppersonalref`
  ADD PRIMARY KEY (`idapppersonalref`),
  ADD UNIQUE KEY `idapppersonalref_UNIQUE` (`idapppersonalref`);

--
-- Indexes for table `apppets`
--
ALTER TABLE `apppets`
  ADD PRIMARY KEY (`idpets`),
  ADD UNIQUE KEY `idpets_UNIQUE` (`idpets`);

--
-- Indexes for table `appquestions`
--
ALTER TABLE `appquestions`
  ADD PRIMARY KEY (`idappquestions`),
  ADD UNIQUE KEY `idappquestions_UNIQUE` (`idappquestions`);

--
-- Indexes for table `apptermslog`
--
ALTER TABLE `apptermslog`
  ADD PRIMARY KEY (`idapptermslog`),
  ADD UNIQUE KEY `idapptermslog_UNIQUE` (`idapptermslog`),
  ADD KEY `IDX_ONIDSANDTYPE` (`apptermslogapplicationid`,`apptermslogapplicantid`,`apptermslogtype`);

--
-- Indexes for table `appvehicles`
--
ALTER TABLE `appvehicles`
  ADD PRIMARY KEY (`idvehicles`),
  ADD UNIQUE KEY `idvehicles_UNIQUE` (`idvehicles`);

--
-- Indexes for table `emailverify`
--
ALTER TABLE `emailverify`
  ADD PRIMARY KEY (`idemailverify`);

--
-- Indexes for table `marketsource`
--
ALTER TABLE `marketsource`
  ADD PRIMARY KEY (`idmarketsource`),
  ADD UNIQUE KEY `idmarketsource_UNIQUE` (`idmarketsource`);

--
-- Indexes for table `marketsourcexref`
--
ALTER TABLE `marketsourcexref`
  ADD PRIMARY KEY (`idmarketsourcexref`),
  ADD UNIQUE KEY `idmarketsourcexref_UNIQUE` (`idmarketsourcexref`);

--
-- Indexes for table `mastermarketsource`
--
ALTER TABLE `mastermarketsource`
  ADD PRIMARY KEY (`idmastermarketsource`);

--
-- Indexes for table `mastermember`
--
ALTER TABLE `mastermember`
  ADD PRIMARY KEY (`idmastermember`),
  ADD UNIQUE KEY `idmastermember_UNIQUE` (`idmastermember`);

--
-- Indexes for table `masterquestions`
--
ALTER TABLE `masterquestions`
  ADD PRIMARY KEY (`idmasterquestions`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`idmembers`),
  ADD UNIQUE KEY `idmembers_UNIQUE` (`idmembers`),
  ADD KEY `index_memberidandmemberno` (`memberid`,`memberno`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`idnotifications`),
  ADD UNIQUE KEY `idnotifications_UNIQUE` (`idnotifications`);

--
-- Indexes for table `paymentprovider`
--
ALTER TABLE `paymentprovider`
  ADD PRIMARY KEY (`idpaymentprovider`),
  ADD UNIQUE KEY `idpaymentprovider_UNIQUE` (`idpaymentprovider`);

--
-- Indexes for table `paymenttransactions`
--
ALTER TABLE `paymenttransactions`
  ADD PRIMARY KEY (`idpaymenttransactions`),
  ADD UNIQUE KEY `idpaymenttransactions_UNIQUE` (`idpaymenttransactions`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`idprofile`),
  ADD UNIQUE KEY `idprofile_UNIQUE` (`idprofile`);

--
-- Indexes for table `profiledocuments`
--
ALTER TABLE `profiledocuments`
  ADD PRIMARY KEY (`iddocument`),
  ADD UNIQUE KEY `iddocument_UNIQUE` (`iddocument`);

--
-- Indexes for table `profilestyle`
--
ALTER TABLE `profilestyle`
  ADD PRIMARY KEY (`idprofilestyle`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`idproperty`);

--
-- Indexes for table `propertyunit`
--
ALTER TABLE `propertyunit`
  ADD PRIMARY KEY (`idpropertyunit`),
  ADD UNIQUE KEY `idpropertyunit_UNIQUE` (`idpropertyunit`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idquestions`);

--
-- Indexes for table `statecodes`
--
ALTER TABLE `statecodes`
  ADD PRIMARY KEY (`idstatecodes`),
  ADD UNIQUE KEY `idstatecodes_UNIQUE` (`idstatecodes`);

--
-- Indexes for table `stylecustomizingtable`
--
ALTER TABLE `stylecustomizingtable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendormarketsource`
--
ALTER TABLE `vendormarketsource`
  ADD PRIMARY KEY (`idvendormarketsource`,`vendormarketsourceid`),
  ADD UNIQUE KEY `idvendormarketsource_UNIQUE` (`idvendormarketsource`);

--
-- Indexes for table `vendor_push_log`
--
ALTER TABLE `vendor_push_log`
  ADD PRIMARY KEY (`idvendorpushlog`),
  ADD UNIQUE KEY `idvendorpushlog_UNIQUE` (`idvendorpushlog`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminsession`
--
ALTER TABLE `adminsession`
  MODIFY `idadminsession` bigint(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `appbank`
--
ALTER TABLE `appbank`
  MODIFY `idappbank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1392;

--
-- AUTO_INCREMENT for table `appcontacts`
--
ALTER TABLE `appcontacts`
  MODIFY `idappcontacts` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `appcreditref`
--
ALTER TABLE `appcreditref`
  MODIFY `idappcreditref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1944;

--
-- AUTO_INCREMENT for table `applicantaddress`
--
ALTER TABLE `applicantaddress`
  MODIFY `idapplicantaddress` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `applicantdocuments`
--
ALTER TABLE `applicantdocuments`
  MODIFY `idapplicantdocuments` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1009;

--
-- AUTO_INCREMENT for table `applicantemployment`
--
ALTER TABLE `applicantemployment`
  MODIFY `idapplicantemployment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `idapplicants` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `applicantssignature`
--
ALTER TABLE `applicantssignature`
  MODIFY `idapplicantssignature` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `idapplication` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `apppersonalref`
--
ALTER TABLE `apppersonalref`
  MODIFY `idapppersonalref` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1942;

--
-- AUTO_INCREMENT for table `apppets`
--
ALTER TABLE `apppets`
  MODIFY `idpets` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appquestions`
--
ALTER TABLE `appquestions`
  MODIFY `idappquestions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `apptermslog`
--
ALTER TABLE `apptermslog`
  MODIFY `idapptermslog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `appvehicles`
--
ALTER TABLE `appvehicles`
  MODIFY `idvehicles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emailverify`
--
ALTER TABLE `emailverify`
  MODIFY `idemailverify` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marketsource`
--
ALTER TABLE `marketsource`
  MODIFY `idmarketsource` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketsourcexref`
--
ALTER TABLE `marketsourcexref`
  MODIFY `idmarketsourcexref` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- AUTO_INCREMENT for table `mastermarketsource`
--
ALTER TABLE `mastermarketsource`
  MODIFY `idmastermarketsource` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;

--
-- AUTO_INCREMENT for table `mastermember`
--
ALTER TABLE `mastermember`
  MODIFY `idmastermember` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `masterquestions`
--
ALTER TABLE `masterquestions`
  MODIFY `idmasterquestions` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `idmembers` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `idnotifications` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24479;

--
-- AUTO_INCREMENT for table `paymentprovider`
--
ALTER TABLE `paymentprovider`
  MODIFY `idpaymentprovider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymenttransactions`
--
ALTER TABLE `paymenttransactions`
  MODIFY `idpaymenttransactions` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `idprofile` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `profiledocuments`
--
ALTER TABLE `profiledocuments`
  MODIFY `iddocument` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `profilestyle`
--
ALTER TABLE `profilestyle`
  MODIFY `idprofilestyle` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `idproperty` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `propertyunit`
--
ALTER TABLE `propertyunit`
  MODIFY `idpropertyunit` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `idquestions` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `statecodes`
--
ALTER TABLE `statecodes`
  MODIFY `idstatecodes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `stylecustomizingtable`
--
ALTER TABLE `stylecustomizingtable`
  MODIFY `id` int(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `vendormarketsource`
--
ALTER TABLE `vendormarketsource`
  MODIFY `idvendormarketsource` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=908;

--
-- AUTO_INCREMENT for table `vendor_push_log`
--
ALTER TABLE `vendor_push_log`
  MODIFY `idvendorpushlog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicant_application_foreignkey` FOREIGN KEY (`applicantsidapplication`) REFERENCES `application` (`idapplication`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
