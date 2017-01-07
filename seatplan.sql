-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2017 at 08:19 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seatplan`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `SPLIT_STR` (`x` VARCHAR(255), `delim` VARCHAR(12), `pos` INT) RETURNS VARCHAR(255) CHARSET latin1 RETURN REPLACE(SUBSTRING(SUBSTRING_INDEX(x, delim, pos),
CHAR_LENGTH(SUBSTRING_INDEX(x, delim, pos -1)) + 1),
delim, '')$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `arrangement`
--

CREATE TABLE `arrangement` (
  `arr_id` int(100) NOT NULL,
  `Room_No` int(100) NOT NULL,
  `Shift` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `Section` int(100) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `Column_no` int(100) NOT NULL,
  `row_no` int(11) NOT NULL,
  `Time` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arrangement`
--

INSERT INTO `arrangement` (`arr_id`, `Room_No`, `Shift`, `Date`, `course_code`, `Section`, `ID`, `Column_no`, `row_no`, `Time`, `semester`, `year`) VALUES
(695, 502, 'Day', '30/12/2016', 'CSE 103', 1, '142800024', 1, 1, '10:00am-12:00pm', 'Fall', '2016'),
(696, 502, 'Day', '30/12/2016', 'CSE 103', 1, '143800032', 1, 2, '10:00am-12:00pm', 'Fall', '2016'),
(697, 502, 'Day', '30/12/2016', 'CSE 103', 1, '151400045', 1, 3, '10:00am-12:00pm', 'Fall', '2016'),
(698, 502, 'Day', '30/12/2016', 'CSE 103', 1, '152400028', 1, 4, '10:00am-12:00pm', 'Fall', '2016'),
(699, 502, 'Day', '30/12/2016', 'CSE 103', 1, '152800011', 1, 5, '10:00am-12:00pm', 'Fall', '2016'),
(700, 502, 'Day', '30/12/2016', 'CSE 103', 1, '153400003', 1, 6, '10:00am-12:00pm', 'Fall', '2016'),
(701, 502, 'Day', '30/12/2016', 'CSE 103', 1, '153800001', 1, 7, '10:00am-12:00pm', 'Fall', '2016'),
(702, 502, 'Day', '30/12/2016', 'CSE 103', 1, '153800011', 1, 8, '10:00am-12:00pm', 'Fall', '2016'),
(703, 502, 'Day', '30/12/2016', 'CSE 103', 1, '153800016', 1, 9, '10:00am-12:00pm', 'Fall', '2016'),
(704, 502, 'Day', '30/12/2016', 'CSE 103', 1, '153800021', 3, 1, '10:00am-12:00pm', 'Fall', '2016'),
(705, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161400015', 3, 2, '10:00am-12:00pm', 'Fall', '2016'),
(706, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161400028', 3, 3, '10:00am-12:00pm', 'Fall', '2016'),
(707, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161400079', 3, 4, '10:00am-12:00pm', 'Fall', '2016'),
(708, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161800002', 3, 5, '10:00am-12:00pm', 'Fall', '2016'),
(709, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161800003', 3, 6, '10:00am-12:00pm', 'Fall', '2016'),
(710, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161800005', 3, 7, '10:00am-12:00pm', 'Fall', '2016'),
(711, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161800006', 3, 8, '10:00am-12:00pm', 'Fall', '2016'),
(712, 502, 'Day', '30/12/2016', 'CSE 103', 1, '161800007', 3, 9, '10:00am-12:00pm', 'Fall', '2016'),
(713, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800008', 1, 1, '10:00am-12:00pm', 'Fall', '2016'),
(714, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800009', 1, 2, '10:00am-12:00pm', 'Fall', '2016'),
(715, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800011', 1, 3, '10:00am-12:00pm', 'Fall', '2016'),
(716, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800012', 1, 4, '10:00am-12:00pm', 'Fall', '2016'),
(717, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800015', 1, 5, '10:00am-12:00pm', 'Fall', '2016'),
(718, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800016', 1, 6, '10:00am-12:00pm', 'Fall', '2016'),
(719, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800018', 1, 7, '10:00am-12:00pm', 'Fall', '2016'),
(720, 503, 'Day', '30/12/2016', 'CSE 103', 1, '161800022', 1, 8, '10:00am-12:00pm', 'Fall', '2016'),
(721, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800002', 1, 9, '10:00am-12:00pm', 'Fall', '2016'),
(722, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800004', 3, 1, '10:00am-12:00pm', 'Fall', '2016'),
(723, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800005', 3, 2, '10:00am-12:00pm', 'Fall', '2016'),
(724, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800006', 3, 3, '10:00am-12:00pm', 'Fall', '2016'),
(725, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800007', 3, 4, '10:00am-12:00pm', 'Fall', '2016'),
(726, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800010', 3, 5, '10:00am-12:00pm', 'Fall', '2016'),
(727, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800011', 3, 6, '10:00am-12:00pm', 'Fall', '2016'),
(728, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800012', 3, 7, '10:00am-12:00pm', 'Fall', '2016'),
(729, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800014', 3, 8, '10:00am-12:00pm', 'Fall', '2016'),
(730, 503, 'Day', '30/12/2016', 'CSE 103', 1, '162800015', 3, 9, '10:00am-12:00pm', 'Fall', '2016'),
(731, 504, 'Day', '30/12/2016', 'CSE 103', 1, '162800016', 1, 1, '10:00am-12:00pm', 'Fall', '2016'),
(732, 504, 'Day', '30/12/2016', 'CSE 103', 3, '102800044', 1, 2, '10:00am-12:00pm', 'Fall', '2016'),
(733, 504, 'Day', '30/12/2016', 'CSE 103', 3, '131800003', 1, 3, '10:00am-12:00pm', 'Fall', '2016'),
(734, 504, 'Day', '30/12/2016', 'CSE 103', 3, '133400009', 1, 4, '10:00am-12:00pm', 'Fall', '2016'),
(735, 504, 'Day', '30/12/2016', 'CSE 103', 3, '141800012', 1, 5, '10:00am-12:00pm', 'Fall', '2016'),
(736, 504, 'Day', '30/12/2016', 'CSE 103', 3, '151400010', 1, 6, '10:00am-12:00pm', 'Fall', '2016'),
(737, 504, 'Day', '30/12/2016', 'CSE 103', 3, '151400040', 1, 7, '10:00am-12:00pm', 'Fall', '2016'),
(738, 504, 'Day', '30/12/2016', 'CSE 103', 3, '151400056', 1, 8, '10:00am-12:00pm', 'Fall', '2016'),
(739, 504, 'Day', '30/12/2016', 'CSE 103', 3, '152400031', 1, 9, '10:00am-12:00pm', 'Fall', '2016'),
(740, 504, 'Day', '30/12/2016', 'CSE 103', 3, '152800015', 3, 1, '10:00am-12:00pm', 'Fall', '2016'),
(741, 504, 'Day', '30/12/2016', 'CSE 103', 3, '153400009', 3, 2, '10:00am-12:00pm', 'Fall', '2016'),
(742, 504, 'Day', '30/12/2016', 'CSE 103', 3, '161400012', 3, 3, '10:00am-12:00pm', 'Fall', '2016'),
(743, 504, 'Day', '30/12/2016', 'CSE 103', 3, '161400016', 3, 4, '10:00am-12:00pm', 'Fall', '2016'),
(744, 504, 'Day', '30/12/2016', 'CSE 103', 3, '161400023', 3, 5, '10:00am-12:00pm', 'Fall', '2016'),
(745, 504, 'Day', '30/12/2016', 'CSE 103', 3, '161400032', 3, 6, '10:00am-12:00pm', 'Fall', '2016'),
(746, 504, 'Day', '30/12/2016', 'CSE 103', 3, '161400037', 3, 7, '10:00am-12:00pm', 'Fall', '2016'),
(747, 504, 'Day', '30/12/2016', 'CSE 103', 3, '161400082', 3, 8, '10:00am-12:00pm', 'Fall', '2016'),
(748, 504, 'Day', '30/12/2016', 'CSE 103', 3, '162400001', 3, 9, '10:00am-12:00pm', 'Fall', '2016'),
(749, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400002', 1, 1, '10:00am-12:00pm', 'Fall', '2016'),
(750, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400003', 1, 2, '10:00am-12:00pm', 'Fall', '2016'),
(751, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400004', 1, 3, '10:00am-12:00pm', 'Fall', '2016'),
(752, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400005', 1, 4, '10:00am-12:00pm', 'Fall', '2016'),
(753, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400007', 1, 5, '10:00am-12:00pm', 'Fall', '2016'),
(754, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400008', 1, 6, '10:00am-12:00pm', 'Fall', '2016'),
(755, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400009', 1, 7, '10:00am-12:00pm', 'Fall', '2016'),
(756, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400010', 1, 8, '10:00am-12:00pm', 'Fall', '2016'),
(757, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400011', 1, 9, '10:00am-12:00pm', 'Fall', '2016'),
(758, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400012', 3, 1, '10:00am-12:00pm', 'Fall', '2016'),
(759, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400013', 3, 2, '10:00am-12:00pm', 'Fall', '2016'),
(760, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400014', 3, 3, '10:00am-12:00pm', 'Fall', '2016'),
(761, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400015', 3, 4, '10:00am-12:00pm', 'Fall', '2016'),
(762, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400016', 3, 5, '10:00am-12:00pm', 'Fall', '2016'),
(763, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400017', 3, 6, '10:00am-12:00pm', 'Fall', '2016'),
(764, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400018', 3, 7, '10:00am-12:00pm', 'Fall', '2016'),
(765, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400019', 3, 8, '10:00am-12:00pm', 'Fall', '2016'),
(766, 505, 'Day', '30/12/2016', 'CSE 103', 3, '162400020', 3, 9, '10:00am-12:00pm', 'Fall', '2016'),
(767, 522, 'Day', '30/12/2016', 'CSE 103', 3, '162400023', 1, 1, '10:00am-12:00pm', 'Fall', '2016'),
(768, 522, 'Day', '30/12/2016', 'CSE 103', 3, '162800013', 1, 2, '10:00am-12:00pm', 'Fall', '2016'),
(769, 522, 'Day', '30/12/2016', 'CSE 103', 3, '163400021', 1, 3, '10:00am-12:00pm', 'Fall', '2016'),
(770, 522, 'Day', '30/12/2016', 'CSE 103', 3, '163800020', 1, 4, '10:00am-12:00pm', 'Fall', '2016'),
(771, 502, 'Day', '30/12/2016', 'EEE 111', 1, '132800001', 2, 1, '10:00am-12:00pm', 'Fall', '2016'),
(772, 502, 'Day', '30/12/2016', 'EEE 111', 1, '151400025', 2, 2, '10:00am-12:00pm', 'Fall', '2016'),
(773, 502, 'Day', '30/12/2016', 'EEE 111', 1, '151400028', 2, 3, '10:00am-12:00pm', 'Fall', '2016'),
(774, 502, 'Day', '30/12/2016', 'EEE 111', 1, '152400055', 2, 4, '10:00am-12:00pm', 'Fall', '2016'),
(775, 502, 'Day', '30/12/2016', 'EEE 111', 1, '153400036', 2, 5, '10:00am-12:00pm', 'Fall', '2016'),
(776, 502, 'Day', '30/12/2016', 'EEE 111', 1, '153800018', 2, 6, '10:00am-12:00pm', 'Fall', '2016'),
(777, 502, 'Day', '30/12/2016', 'EEE 111', 1, '161400008', 2, 7, '10:00am-12:00pm', 'Fall', '2016'),
(778, 502, 'Day', '30/12/2016', 'EEE 111', 1, '161800019', 2, 8, '10:00am-12:00pm', 'Fall', '2016'),
(779, 502, 'Day', '30/12/2016', 'EEE 111', 1, '162800001', 2, 9, '10:00am-12:00pm', 'Fall', '2016'),
(780, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800003', 4, 1, '10:00am-12:00pm', 'Fall', '2016'),
(781, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800005', 4, 2, '10:00am-12:00pm', 'Fall', '2016'),
(782, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800006', 4, 3, '10:00am-12:00pm', 'Fall', '2016'),
(783, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800008', 4, 4, '10:00am-12:00pm', 'Fall', '2016'),
(784, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800009', 4, 5, '10:00am-12:00pm', 'Fall', '2016'),
(785, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800010', 4, 6, '10:00am-12:00pm', 'Fall', '2016'),
(786, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800011', 4, 7, '10:00am-12:00pm', 'Fall', '2016'),
(787, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800012', 4, 8, '10:00am-12:00pm', 'Fall', '2016'),
(788, 502, 'Day', '30/12/2016', 'EEE 111', 1, '163800013', 4, 9, '10:00am-12:00pm', 'Fall', '2016'),
(789, 503, 'Day', '30/12/2016', 'EEE 111', 1, '163800014', 2, 1, '10:00am-12:00pm', 'Fall', '2016'),
(790, 503, 'Day', '30/12/2016', 'EEE 111', 1, '163800015', 2, 2, '10:00am-12:00pm', 'Fall', '2016'),
(791, 503, 'Day', '30/12/2016', 'EEE 111', 1, '163800016', 2, 3, '10:00am-12:00pm', 'Fall', '2016'),
(792, 503, 'Day', '30/12/2016', 'EEE 111', 1, '163800017', 2, 4, '10:00am-12:00pm', 'Fall', '2016'),
(793, 503, 'Day', '30/12/2016', 'EEE 111', 1, '163800019', 2, 5, '10:00am-12:00pm', 'Fall', '2016'),
(794, 503, 'Day', '30/12/2016', 'EEE 111', 1, '163800021', 2, 6, '10:00am-12:00pm', 'Fall', '2016'),
(795, 503, 'Day', '30/12/2016', 'EEE 111', 1, '163800022', 2, 7, '10:00am-12:00pm', 'Fall', '2016'),
(796, 503, 'Day', '30/12/2016', 'EEE 111', 3, '121400017', 2, 8, '10:00am-12:00pm', 'Fall', '2016'),
(797, 503, 'Day', '30/12/2016', 'EEE 111', 3, '131800001', 2, 9, '10:00am-12:00pm', 'Fall', '2016'),
(798, 503, 'Day', '30/12/2016', 'EEE 111', 3, '143400052', 4, 1, '10:00am-12:00pm', 'Fall', '2016'),
(799, 503, 'Day', '30/12/2016', 'EEE 111', 3, '151400040', 4, 2, '10:00am-12:00pm', 'Fall', '2016'),
(800, 503, 'Day', '30/12/2016', 'EEE 111', 3, '152400019', 4, 3, '10:00am-12:00pm', 'Fall', '2016'),
(801, 503, 'Day', '30/12/2016', 'EEE 111', 3, '152400020', 4, 4, '10:00am-12:00pm', 'Fall', '2016'),
(802, 503, 'Day', '30/12/2016', 'EEE 111', 3, '152400021', 4, 5, '10:00am-12:00pm', 'Fall', '2016'),
(803, 503, 'Day', '30/12/2016', 'EEE 111', 3, '152400027', 4, 6, '10:00am-12:00pm', 'Fall', '2016'),
(804, 503, 'Day', '30/12/2016', 'EEE 111', 3, '152800016', 4, 7, '10:00am-12:00pm', 'Fall', '2016'),
(805, 503, 'Day', '30/12/2016', 'EEE 111', 3, '153400024', 4, 8, '10:00am-12:00pm', 'Fall', '2016'),
(806, 503, 'Day', '30/12/2016', 'EEE 111', 3, '161400042', 4, 9, '10:00am-12:00pm', 'Fall', '2016'),
(807, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400043', 2, 1, '10:00am-12:00pm', 'Fall', '2016'),
(808, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400044', 2, 2, '10:00am-12:00pm', 'Fall', '2016'),
(809, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400045', 2, 3, '10:00am-12:00pm', 'Fall', '2016'),
(810, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400047', 2, 4, '10:00am-12:00pm', 'Fall', '2016'),
(811, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400049', 2, 5, '10:00am-12:00pm', 'Fall', '2016'),
(812, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400052', 2, 6, '10:00am-12:00pm', 'Fall', '2016'),
(813, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400053', 2, 7, '10:00am-12:00pm', 'Fall', '2016'),
(814, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400054', 2, 8, '10:00am-12:00pm', 'Fall', '2016'),
(815, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400055', 2, 9, '10:00am-12:00pm', 'Fall', '2016'),
(816, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400056', 4, 1, '10:00am-12:00pm', 'Fall', '2016'),
(817, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400057', 4, 2, '10:00am-12:00pm', 'Fall', '2016'),
(818, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400058', 4, 3, '10:00am-12:00pm', 'Fall', '2016'),
(819, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400060', 4, 4, '10:00am-12:00pm', 'Fall', '2016'),
(820, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400061', 4, 5, '10:00am-12:00pm', 'Fall', '2016'),
(821, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400062', 4, 6, '10:00am-12:00pm', 'Fall', '2016'),
(822, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400063', 4, 7, '10:00am-12:00pm', 'Fall', '2016'),
(823, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400064', 4, 8, '10:00am-12:00pm', 'Fall', '2016'),
(824, 504, 'Day', '30/12/2016', 'EEE 111', 3, '161400065', 4, 9, '10:00am-12:00pm', 'Fall', '2016'),
(825, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400067', 2, 1, '10:00am-12:00pm', 'Fall', '2016'),
(826, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400068', 2, 2, '10:00am-12:00pm', 'Fall', '2016'),
(827, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400069', 2, 3, '10:00am-12:00pm', 'Fall', '2016'),
(828, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400071', 2, 4, '10:00am-12:00pm', 'Fall', '2016'),
(829, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400072', 2, 5, '10:00am-12:00pm', 'Fall', '2016'),
(830, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400073', 2, 6, '10:00am-12:00pm', 'Fall', '2016'),
(831, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400074', 2, 7, '10:00am-12:00pm', 'Fall', '2016'),
(832, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400080', 2, 8, '10:00am-12:00pm', 'Fall', '2016'),
(833, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400081', 2, 9, '10:00am-12:00pm', 'Fall', '2016'),
(834, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400082', 4, 1, '10:00am-12:00pm', 'Fall', '2016'),
(835, 505, 'Day', '30/12/2016', 'EEE 111', 3, '161400084', 4, 2, '10:00am-12:00pm', 'Fall', '2016'),
(836, 505, 'Day', '30/12/2016', 'EEE 111', 3, '163400011', 4, 3, '10:00am-12:00pm', 'Fall', '2016'),
(837, 505, 'Day', '30/12/2016', 'EEE 111', 5, '161400001', 4, 4, '10:00am-12:00pm', 'Fall', '2016'),
(838, 505, 'Day', '30/12/2016', 'EEE 111', 5, '161400003', 4, 5, '10:00am-12:00pm', 'Fall', '2016'),
(839, 505, 'Day', '30/12/2016', 'EEE 111', 5, '161400005', 4, 6, '10:00am-12:00pm', 'Fall', '2016'),
(840, 505, 'Day', '30/12/2016', 'EEE 111', 5, '161400006', 4, 7, '10:00am-12:00pm', 'Fall', '2016'),
(841, 505, 'Day', '30/12/2016', 'EEE 111', 5, '161400007', 4, 8, '10:00am-12:00pm', 'Fall', '2016'),
(842, 505, 'Day', '30/12/2016', 'EEE 111', 5, '161400009', 4, 9, '10:00am-12:00pm', 'Fall', '2016'),
(843, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400011', 2, 1, '10:00am-12:00pm', 'Fall', '2016'),
(844, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400013', 2, 2, '10:00am-12:00pm', 'Fall', '2016'),
(845, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400014', 2, 3, '10:00am-12:00pm', 'Fall', '2016'),
(846, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400017', 2, 4, '10:00am-12:00pm', 'Fall', '2016'),
(847, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400018', 2, 5, '10:00am-12:00pm', 'Fall', '2016'),
(848, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400020', 2, 6, '10:00am-12:00pm', 'Fall', '2016'),
(849, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400022', 2, 7, '10:00am-12:00pm', 'Fall', '2016'),
(850, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400025', 4, 1, '10:00am-12:00pm', 'Fall', '2016'),
(851, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400026', 4, 2, '10:00am-12:00pm', 'Fall', '2016'),
(852, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400029', 4, 3, '10:00am-12:00pm', 'Fall', '2016'),
(853, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400030', 4, 4, '10:00am-12:00pm', 'Fall', '2016'),
(854, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400031', 4, 5, '10:00am-12:00pm', 'Fall', '2016'),
(855, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400033', 4, 6, '10:00am-12:00pm', 'Fall', '2016'),
(856, 522, 'Day', '30/12/2016', 'EEE 111', 5, '161400034', 4, 7, '10:00am-12:00pm', 'Fall', '2016'),
(857, 527, 'Day', '30/12/2016', 'EEE 111', 5, '161400035', 2, 1, '10:00am-12:00pm', 'Fall', '2016'),
(858, 527, 'Day', '30/12/2016', 'EEE 111', 5, '161400038', 2, 2, '10:00am-12:00pm', 'Fall', '2016'),
(859, 527, 'Day', '30/12/2016', 'EEE 111', 5, '161400039', 2, 3, '10:00am-12:00pm', 'Fall', '2016');

-- --------------------------------------------------------

--
-- Table structure for table `course_table`
--

CREATE TABLE `course_table` (
  `course_id` int(100) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_table`
--

INSERT INTO `course_table` (`course_id`, `course_code`, `course_title`) VALUES
(1, 'ACT 201 ', 'Principles of Accounting'),
(2, 'CEN 210 ', 'Engineering Drawing'),
(3, 'CHM 101 ', 'Chemistry'),
(4, 'CHM 102', 'Chemistry Laboratory'),
(5, 'CHM 201 ', 'Chemistry'),
(6, 'CHM 202', 'Chemistry Lab'),
(7, 'CSE 103', 'Structured Programming'),
(8, 'CSE 104', 'Structured Programming Laboratory'),
(9, 'CSE 109', 'Computer Fundamental'),
(10, 'CSE 110', 'Computer Fundamentals Laboratory'),
(11, 'CSE 201', 'Numerical Methods'),
(12, 'CSE 202', 'Numerical Methods Laboratory'),
(13, 'CSE 211', 'Discrete Mathematics'),
(14, 'CSE 223', 'Object Oriented Programming'),
(15, 'CSE 224', 'Object Oriented Programming Laboratory'),
(16, 'CSE 227', 'Logic Design and Digital Systems'),
(17, 'CSE 228', ' Logic Design and Digital Systems Laboratory '),
(18, 'CSE 231', 'Data Structures'),
(19, 'CSE 232', 'Data Structures Laboratory'),
(20, 'CSE 311', 'Operating System'),
(21, 'CSE 312', 'Operating System Lab'),
(22, 'CSE 321', 'Computer Architecture and Organization'),
(23, 'CSE 325', 'Computer Peripherals and Interfacing'),
(24, 'CSE 326', 'Computer Peripherals and Interfacing Lab'),
(25, 'CSE 327', 'Design and Analysis of Algorithm'),
(26, 'CSE 328', 'Design and Analysis of Algorithm Lab'),
(27, 'CSE 331', 'Data Communication'),
(28, 'CSE 413', 'Compiler Design'),
(29, 'CSE 414', 'Compiler Design Laboratory'),
(30, 'CSE 415', 'Computer Networks'),
(31, 'CSE 416', 'Computer Networks Laboratory'),
(32, 'CSE 421', 'Wireless Networks'),
(33, 'CSE 451', 'Bioinformatics'),
(34, 'CSE 455', 'Digital Singal Processing '),
(35, 'CSE 471', 'Graph Theory'),
(36, 'CSE 481', 'Cryptography and Network Security'),
(37, 'CSE 485', 'Distributed Systems'),
(38, 'CSE 487', 'Machine Learning'),
(39, 'CSE 491', 'Pattern Recognition'),
(40, 'CSE 493', 'Computer Vision'),
(41, 'CSE 495', 'Digital Image Processing'),
(42, 'ECO 301', 'Principles of Economics'),
(43, 'EEE 252 ', 'Electrical Machines I Laboratory'),
(44, 'EEE 111', 'Basic Electrical Circuits'),
(45, 'EEE 112', 'Basic Electrical Circuits Laboratory'),
(46, 'EEE 113', 'Alternating Current Circuits'),
(47, 'EEE 114', 'Alternating Current Circuits Laboratory'),
(48, 'EEE 201', 'Numerical Methods'),
(49, 'EEE 202', 'Numerical Methods Laboratory'),
(50, 'EEE 210', 'Circuits Simulation Laboratory'),
(51, 'EEE 221', 'Signals and Linear System'),
(52, 'EEE 231', 'Electronics I'),
(53, 'EEE 232', 'Electronics I Laboratory'),
(54, 'EEE 234', 'Electronics II Laboratory'),
(55, 'EEE 251', 'Electrical Machines I'),
(56, 'EEE 315', 'Digital Singal Processing I'),
(57, 'EEE 316', 'Digital Singal Processing I Laboratory'),
(58, 'EEE 330', 'Electrical and Electronic Shop'),
(59, 'EEE 331', 'Digital Electronics'),
(60, 'EEE 332', 'Digital Electronics Laboratory'),
(61, 'EEE 351', 'Electrical Machines II'),
(62, 'EEE 352', 'Electrical Machines II Laboratory'),
(63, 'EEE 353', 'Measurement and Instrumentation'),
(64, 'EEE 354', 'Measurement and Instrumentation Laboratory'),
(65, 'EEE 371', 'Electric and Magnetic Fields'),
(66, 'EEE 373', 'Engineering Materials'),
(67, 'EEE 375', 'Communication Theory'),
(68, 'EEE 376', 'Commnucation Laboratory'),
(69, 'EEE 391', 'Power System Analysis'),
(70, 'EEE 392', 'Power System Analysis Laboratory'),
(71, 'EEE 400', 'Thesis/project'),
(72, 'EEE 411', 'Control System I'),
(73, 'EEE 412', 'Control System I Laboratory'),
(74, 'EEE 413', 'Control System II'),
(75, 'EEE 414', 'Control System II Laboratory'),
(76, 'EEE 415', 'Biomedical Instrumentation'),
(77, 'EEE 416', 'Biomedical Instrumentation Laboratory'),
(78, 'EEE 417', 'Digital Singal Processing II'),
(79, 'EEE 418', 'Digital Singal Processing II Laboratory'),
(80, 'EEE 431', 'Microprocessors and Interfacing'),
(81, 'EEE 432', 'Microprocessors and Interfacing Laboratory'),
(82, 'EEE 433', 'Solid State Devices'),
(83, 'EEE 435', 'VLSI I'),
(84, 'EEE 436', 'VLSI I Laboratory'),
(85, 'EEE 437', 'VLSI II'),
(86, 'EEE 438', 'VLSI II Laboratory'),
(87, 'EEE 439', 'Analog Integrated Circuits'),
(88, 'EEE 440', 'Electronic Project Design'),
(89, 'EEE 441', 'Processing and Fabrication Technology'),
(90, 'EEE 473', 'Microwave Engineering'),
(91, 'EEE 474', ' Microwave Engineering Laboratory'),
(92, 'EEE 475', 'Digital Communication'),
(93, 'EEE 476', 'Digital Communication Laboratory'),
(94, 'EEE 479', 'Communication Engineering'),
(95, 'EEE 481', 'Industrial and Power Electronics'),
(96, 'EEE 482', 'Industrial and Power Electronics Laboratory'),
(97, 'EEE 491', 'Electrical Power Transmission and Distribution'),
(98, 'EEE 493', 'Power Plant Engineering'),
(99, 'EEE 495', 'High Voltage Engineering'),
(100, 'EEE 496', 'High Voltage Engineering Lab'),
(101, 'EEE 497', 'Power System Protection'),
(102, 'EEE 498', 'Power System Protection Laboratory'),
(103, 'ENG 111 ', 'Writing '),
(104, 'ENG 103', 'Listening and Speaking'),
(105, 'ENG 107', 'Reading and Grammar'),
(106, 'ENG 112', 'Basic Electrical Circuits Laboratory'),
(107, 'HUM 201', 'Value and Ethics'),
(108, 'MAT 101', 'Calculus I'),
(109, 'MAT 103', 'Calculus II'),
(110, 'MAT 105', 'Geometry and Complex Variables'),
(111, 'MAT 201', 'Differential Equations'),
(112, 'MAT 203', 'Linear Algebra'),
(113, 'MAT 205', 'Linear Algebra,Geometry and Complex Variables'),
(114, 'MEN 201', 'Fundamentals of Mechanical Engineering'),
(115, 'MGT 201', 'Industrial Management '),
(116, 'PHY 101 ', 'Physics I'),
(117, 'PHY 102 ', 'Physics I Lab'),
(118, 'PHY 103 ', 'Physics II'),
(119, 'SOC 101 ', 'Introduction to Sociology'),
(120, 'STS 301', 'Fundamentals of Statistics');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Name` varchar(100) NOT NULL,
  `ID_Dept` int(100) NOT NULL,
  `dept_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_info`
--

CREATE TABLE `exam_info` (
  `exam_id` int(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Batch` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Sec` varchar(100) NOT NULL,
  `Time` varchar(100) NOT NULL,
  `Shift` varchar(100) NOT NULL,
  `Year` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `exam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_info`
--

INSERT INTO `exam_info` (`exam_id`, `Date`, `Batch`, `course_code`, `Faculty`, `Sec`, `Time`, `Shift`, `Year`, `semester`, `title`, `exam`) VALUES
(391, '30/12/2016               (Friday)', '1614', 'EEE 111', 'NI', '3', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Basic Electrical Circuits ', 'Final'),
(392, '30/12/2016               (Friday)', '1614', 'EEE 111', 'NI', '5', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Basic Electrical Circuits ', 'Final'),
(393, '30/12/2016               (Friday)', '1638', 'EEE 111', 'MGR', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Basic Electrical Circuits ', 'Final'),
(394, '30/12/2016               (Friday)', '1624; 1628; 1618', 'CSE 103', 'DMR', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Structured Programming ', 'Final'),
(395, '30/12/2016               (Friday)', '1624; 1628; 1618', 'CSE 103', 'DMR', '3', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Structured Programming ', 'Final'),
(396, '30/12/2016               (Friday)', '1518; 1514', 'EEE/CSE 201/MAT 209', 'MGR ', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Numerical Methods', 'Final'),
(397, '30/12/2016               (Friday)', '1518; 1514', 'EEE/CSE 201/MAT 209', 'FH', '3', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Numerical Methods', 'Final'),
(398, '30/12/2016               (Friday)', 'Reading Course', 'EEE 391', 'RIR', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Power System Analysis', 'Final'),
(399, '30/12/2016               (Friday)', 'Combined Batch', 'MAT 105', 'GK', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Geomatry & Complex Variables', 'Final'),
(400, '01/01/2017                        (Sunday)', '1624', 'ENG 107', '', '', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Reading and Grammar (Follow GED Schedule)', 'Final'),
(401, '01/01/2017                        (Sunday)', '1538', 'EEE 231', 'KRH', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Electronics I', 'Final'),
(402, '01/01/2017                        (Sunday)', '1534', 'EEE 231', 'FH', '3', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Electronics I', 'Final'),
(403, '01/01/2017                        (Sunday)', '1514', 'CSE 231', 'MMH', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Data Structures', 'Final'),
(404, '01/01/2017                        (Sunday)', '1514', 'CSE 231', 'MMH', '3', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Data Structures', 'Final'),
(405, '01/01/2017                        (Sunday)', '1424; 1434', 'CSE 327', 'NH', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Design and Analysis of Algorithm', 'Final'),
(406, '01/01/2017                        (Sunday)', '1528; 1524', 'MAT 205', 'AF', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Linear Algebbra; geomatry& complex Variables', 'Final'),
(407, '01/01/2017                        (Sunday)', '1528; 1524', 'MAT 205', 'AF', '3', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Linear Algebbra; geomatry& complex Variables', 'Final'),
(408, '01/01/2017                        (Sunday)', '1518', 'EEE211', 'AH', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Signals and Linear Systems', 'Final'),
(409, '01/01/2017                        (Sunday)', '1328; 1318', 'EEE 433', 'DMA', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Solid State Devices', 'Final'),
(410, '01/01/2017                        (Sunday)', '1314; 1324; 1334; 1414', 'CSE 413', 'AIT', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Compiler Design', 'Final'),
(411, '02/01/2017 (Monday)', '1618;1628; 1614', 'SOC 101', '', '', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Introduction to Sociology (Follow GED Schedule)', 'Final'),
(412, '02/01/2017 (Monday)', '1428; 1438', 'EEE 331/ETE 331', 'MMI', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Digital Electronics ', 'Final'),
(413, '02/01/2017 (Monday)', '1418; 1338', 'EEE 411/ETE 411', 'MHS', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Control System I', 'Final'),
(414, '02/01/2017 (Monday)', '1434', 'STS 301', 'AF', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Fundamentals of  Statistics', 'Final'),
(415, '02/01/2017 (Monday)', '1634; 1638', 'PHY 101', 'DZB', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Physics I', 'Final'),
(416, '02/01/2017 (Monday)', '1634; 1638', 'PHY 101', 'DZB', '3', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Physics I', 'Final'),
(417, '03/01/2017                       (Tuesday)', '1538; 1514', 'HUM 201', '', '', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Value and Eithics (Follow GED Schedule)', 'Final'),
(418, '03/01/2017                       (Tuesday)', '1634; 1638', 'ENG 103', '', '', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Listening and Speaking (Follow GED Schedule) ', 'Final'),
(419, '03/01/2017                       (Tuesday)', '1528', 'EEE 233', 'RIR', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Electronics II', 'Final'),
(420, '03/01/2017                       (Tuesday)', '1524', 'EEE 233', 'KMA', '3', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Electronics II', 'Final'),
(421, '03/01/2017                       (Tuesday)', '1624', 'MAT 103', 'GK', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Calculus II', 'Final'),
(422, '03/01/2017                       (Tuesday)', '1534', 'CSE 211', 'AM', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Discrete Mathematics', 'Final'),
(423, '03/01/2017                       (Tuesday)', '1518', 'EEE 251', 'KRH', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Electrical Machines I', 'Final'),
(424, '03/01/2017                       (Tuesday)', '1318; 1328', 'EEE 493', 'RIR', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Power Plant Engineering', 'Final'),
(425, '03/01/2017                       (Tuesday)', '1424; 1334', 'CSE 321', 'EH', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Computer Arch. and Organization', 'Final'),
(426, '03/01/2017                       (Tuesday)', '1324; 1314', 'CSE 423', 'NH', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Software Engineering', 'Final'),
(427, '04/01/2017   (Wednesday)', '1628; 1618; 1614', 'ENG 111', '', '', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Writing (Follow GED Schedule)', 'Final'),
(428, '04/01/2017   (Wednesday)', '1428; 1438', 'EEE 353/ETE 353', 'NSK', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Measurements & Instrumentation', 'Final'),
(429, '04/01/2017   (Wednesday)', '1338; 1418', 'EEE 431', 'EHN', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Microprocessors & Interfacing', 'Final'),
(430, '04/01/2017   (Wednesday)', '1434', 'CSE 313', 'JAJ ', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Microprocessor; Microcontrollers and Assembly Language Programming', 'Final'),
(431, '05/01/2017                              (Thursday)', '1534; 1538', 'MAT 201', 'GK', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Differential Equation', 'Final'),
(432, '05/01/2017                              (Thursday)', '1624', 'PHY 103', 'DZB', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Physics II', 'Final'),
(433, '05/01/2017                              (Thursday)', '1634; 1638', 'MAT 101', 'GK', '1', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Calculus I', 'Final'),
(434, '05/01/2017                              (Thursday)', '1634; 1638', 'MAT 101', 'AR', '3', '10:00am-12:00pm', 'Day', '2016', 'Fall', 'Calculus I', 'Final'),
(435, '05/01/2017                              (Thursday)', '1528', 'MGT 201', 'NRD', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Industrial Management', 'Final'),
(436, '05/01/2017                              (Thursday)', '1518; 1514', 'ACT 201', 'MA', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Principles of Accounting', 'Final'),
(437, '05/01/2017                              (Thursday)', '1518; 1514', 'ACT 201', 'SA', '3', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Principles of Accounting', 'Final'),
(438, '05/01/2017                              (Thursday)', '1318; 1328', 'EEE 497', 'MHS', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Power System Protection', 'Final'),
(439, '05/01/2017                              (Thursday)', '1524', 'CSE 227', 'MT', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Logic Design and Digital Systems', 'Final'),
(440, '05/01/2017                              (Thursday)', '1524', 'CSE 227', 'JF', '3', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Logic Design and Digital Systems', 'Final'),
(441, '05/01/2017                              (Thursday)', '1414; 1424; 1334 ', 'CSE 325', 'JF', '1', '2:30pm-4:30pm      ', 'Day', '2016', 'Fall', 'Computer Peripherals and Interfacing', 'Final'),
(442, '06/01/2017                                       (Friday)', '1428; 1438; 1418; 1338', 'ECO 301', 'AJ', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Priciple of Economics', 'Final'),
(443, '06/01/2017                                       (Friday)', '1428; 1438; 1418; 1338', 'ECO 301', 'NS', '3', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Priciple of Economics', 'Final'),
(444, '06/01/2017                                       (Friday)', '1334; 1324', 'CSE 421', 'MT', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Wireless Networks', 'Final'),
(445, '06/01/2017                                       (Friday)', '1434', 'CSE 315', 'RR', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Theory of Computation', 'Final'),
(446, '06/01/2017                                       (Friday)', '1538', 'MEN 201', 'MA', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Fundamental of Mechanical Engineering', 'Final'),
(447, '06/01/2017                                       (Friday)', '1618; 1628; 1534', 'CHM 101/CHM 201', 'DIM', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Chemistry', 'Final'),
(448, '06/01/2017                                       (Friday)', '1618; 1628; 1534', 'CHM 101/CHM 201', 'DIM', '3', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Chemistry', 'Final'),
(449, '06/01/2017                                       (Friday)', '1614', 'BUS 105', 'PI', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Introduction to Business', 'Final'),
(450, '06/01/2017                                       (Friday)', '1614', 'BUS 105', 'FK', '3', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Introduction to Business', 'Final'),
(451, '06/01/2017                                       (Friday)', '1524', 'CSE 223', 'IBA', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Object Oriented Programming', 'Final'),
(452, '06/01/2017                                       (Friday)', '1634', 'CSE 109', 'DR', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Computer Fundamentals ', 'Final'),
(453, '08/01/2017                                       (Sunday)', 'Combined Batch', 'MAT 203', 'AF', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Linear Algebra ', 'Final'),
(454, '08/01/2017                                       (Sunday)', 'Reading Course', 'EEE 473', 'FH', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Microwave Engineering', 'Final'),
(455, '08/01/2017                                       (Sunday)', 'Reading Course', 'EEE 351', 'MHS', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Electrical Machine II', 'Final'),
(456, '08/01/2017                                       (Sunday)', 'Reading Course', 'EEE 371', 'MSI', '1', '2:30pm-4:30pm', 'Day', '2016', 'Fall', 'Electric and Magnetic Field', 'Final');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `User_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Confirm_Password` varchar(100) DEFAULT NULL,
  `reg_code` int(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`User_Name`, `Email`, `Password`, `Confirm_Password`, `reg_code`, `type`) VALUES
('Nahid', 'Nahid', 'nahid', NULL, 8, 'Admin'),
('urmi', 'urmi', 'urmi', NULL, 9, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `room_info`
--

CREATE TABLE `room_info` (
  `Room_No` int(10) NOT NULL,
  `Bench` int(10) NOT NULL,
  `Row_no` int(10) NOT NULL,
  `Column_no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_info`
--

INSERT INTO `room_info` (`Room_No`, `Bench`, `Row_no`, `Column_no`) VALUES
(502, 36, 9, 4),
(503, 36, 9, 4),
(504, 36, 9, 4),
(505, 36, 9, 4),
(522, 28, 7, 4),
(527, 28, 7, 4),
(528, 28, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester` varchar(100) NOT NULL,
  `ID_Semi` int(100) NOT NULL,
  `Year` int(100) NOT NULL,
  `exam` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `code_std` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `year` varchar(100) NOT NULL,
  `course_code` varchar(100) NOT NULL,
  `Sec` int(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`code_std`, `Name`, `ID`, `year`, `course_code`, `Sec`, `semester`) VALUES
(70, 'Md. Nasimul Hoque', '132800001', '2016', 'EEE 111', 1, 'Fall'),
(71, 'Shaikh Md. Ashiqur Shahed', '151400025', '2016', 'EEE 111', 1, 'Fall'),
(72, 'Abdur Rahman', '151400028', '2016', 'EEE 111', 1, 'Fall'),
(73, 'Md. Nahid Jahan Anik', '152400055', '2016', 'EEE 111', 1, 'Fall'),
(74, 'Asma Akter Akhi', '153400036', '2016', 'EEE 111', 1, 'Fall'),
(75, 'Md. Korban Ali', '153800018', '2016', 'EEE 111', 1, 'Fall'),
(76, 'Abdullah Al-Hasib', '161400008', '2016', 'EEE 111', 1, 'Fall'),
(77, 'Muhammed Moinul Islam', '161800019', '2016', 'EEE 111', 1, 'Fall'),
(78, 'Md. Shahriar', '162800001', '2016', 'EEE 111', 1, 'Fall'),
(79, 'Md. Renju Ahmmed', '163800003', '2016', 'EEE 111', 1, 'Fall'),
(80, 'Mustafiz Chowdhury', '163800005', '2016', 'EEE 111', 1, 'Fall'),
(81, 'Md. Neyamul Islam Howlader', '163800006', '2016', 'EEE 111', 1, 'Fall'),
(82, 'Sanjoy Gharami', '163800008', '2016', 'EEE 111', 1, 'Fall'),
(83, 'Mohi Uddin', '163800009', '2016', 'EEE 111', 1, 'Fall'),
(84, 'Md. Minar Mahmood', '163800010', '2016', 'EEE 111', 1, 'Fall'),
(85, 'Md. Robiul Islam Shuvo Sarker', '163800011', '2016', 'EEE 111', 1, 'Fall'),
(86, 'Usha Rani Das', '163800012', '2016', 'EEE 111', 1, 'Fall'),
(87, 'Mostafa Asif', '163800013', '2016', 'EEE 111', 1, 'Fall'),
(88, 'Md Fateh Uddin', '163800014', '2016', 'EEE 111', 1, 'Fall'),
(89, 'Sajib', '163800015', '2016', 'EEE 111', 1, 'Fall'),
(90, 'Arif', '163800016', '2016', 'EEE 111', 1, 'Fall'),
(91, 'Al Mahmud Wakil', '163800017', '2016', 'EEE 111', 1, 'Fall'),
(92, 'Md. Shafiqur Rahman Khan', '163800019', '2016', 'EEE 111', 1, 'Fall'),
(93, 'Md. Hossainul Amin', '163800021', '2016', 'EEE 111', 1, 'Fall'),
(94, 'Al- Imran', '163800022', '2016', 'EEE 111', 1, 'Fall'),
(106, 'Husain Imam Shanto', '161400001', '2016', 'EEE 111', 5, 'Fall'),
(107, 'Zerin Sultana Laboni', '161400003', '2016', 'EEE 111', 5, 'Fall'),
(108, 'Samina Akter Mou', '161400005', '2016', 'EEE 111', 5, 'Fall'),
(109, 'Kaniz Afrin', '161400006', '2016', 'EEE 111', 5, 'Fall'),
(110, 'Md. Mosharof Hossain', '161400007', '2016', 'EEE 111', 5, 'Fall'),
(111, 'Jannatul Ferdous Mary', '161400009', '2016', 'EEE 111', 5, 'Fall'),
(112, 'Sayed Mohammad Mahamudur Rahman', '161400011', '2016', 'EEE 111', 5, 'Fall'),
(113, 'Rani Baul', '161400013', '2016', 'EEE 111', 5, 'Fall'),
(114, 'Abu Horaira Mobin', '161400014', '2016', 'EEE 111', 5, 'Fall'),
(115, 'Md. Rasif Ismam Siddiqi', '161400017', '2016', 'EEE 111', 5, 'Fall'),
(116, 'Md. Amir Hamza', '161400018', '2016', 'EEE 111', 5, 'Fall'),
(117, 'Zannatul Mubashira Megh', '161400020', '2016', 'EEE 111', 5, 'Fall'),
(118, 'Kudrut- E- Elahi Chowdhury', '161400022', '2016', 'EEE 111', 5, 'Fall'),
(119, 'Uzzal Sikder', '161400025', '2016', 'EEE 111', 5, 'Fall'),
(120, 'Afsana Munni', '161400026', '2016', 'EEE 111', 5, 'Fall'),
(121, 'Md. Omar Faruq', '161400029', '2016', 'EEE 111', 5, 'Fall'),
(122, 'Sayeda Sabrina Esha', '161400030', '2016', 'EEE 111', 5, 'Fall'),
(123, 'Md. Shafayet Hossain', '161400031', '2016', 'EEE 111', 5, 'Fall'),
(124, 'Ahsan Habib', '161400033', '2016', 'EEE 111', 5, 'Fall'),
(125, 'Md. Mehedi Imam', '161400034', '2016', 'EEE 111', 5, 'Fall'),
(126, 'Azmeen Nisha Mitu', '161400035', '2016', 'EEE 111', 5, 'Fall'),
(127, 'Mumtahina Tarannum Busra', '161400038', '2016', 'EEE 111', 5, 'Fall'),
(128, 'Md. Mobassher Rashedi', '161400039', '2016', 'EEE 111', 5, 'Fall'),
(136, 'Tahera Sumaiya', '121400017', '2016', 'EEE 111', 3, 'Fall'),
(137, 'Anupam Ghosh', '131800001', '2016', 'EEE 111', 3, 'Fall'),
(138, 'Amit Bhowmik Dipu', '143400052', '2016', 'EEE 111', 3, 'Fall'),
(139, 'Md. Alauddin', '151400040', '2016', 'EEE 111', 3, 'Fall'),
(140, 'Mohi Uddin Shamim', '152400019', '2016', 'EEE 111', 3, 'Fall'),
(141, 'Mohd. Adnatull Al Masum', '152400020', '2016', 'EEE 111', 3, 'Fall'),
(142, 'Abdullah Rizvi Reza', '152400021', '2016', 'EEE 111', 3, 'Fall'),
(143, 'Md. Omar Khaiyam', '152400027', '2016', 'EEE 111', 3, 'Fall'),
(144, 'Sujal Kumar Sarker', '152800016', '2016', 'EEE 111', 3, 'Fall'),
(145, 'Md. Nur Alam', '153400024', '2016', 'EEE 111', 3, 'Fall'),
(146, 'Marzia Rashid', '161400042', '2016', 'EEE 111', 3, 'Fall'),
(147, 'Shuvo Biswas Srejon', '161400043', '2016', 'EEE 111', 3, 'Fall'),
(148, 'Sihab Hossain', '161400044', '2016', 'EEE 111', 3, 'Fall'),
(149, 'Alif Hossain Saurab', '161400045', '2016', 'EEE 111', 3, 'Fall'),
(150, 'Jamil Hosen', '161400047', '2016', 'EEE 111', 3, 'Fall'),
(151, 'Md. Zillur Rahman', '161400049', '2016', 'EEE 111', 3, 'Fall'),
(152, 'Mst. Fariya Ferdous', '161400052', '2016', 'EEE 111', 3, 'Fall'),
(153, 'Tanim Mahmudur Rahman', '161400053', '2016', 'EEE 111', 3, 'Fall'),
(154, 'Md. Shahin Alam', '161400054', '2016', 'EEE 111', 3, 'Fall'),
(155, 'Mst. Tasmiah Dilshad', '161400055', '2016', 'EEE 111', 3, 'Fall'),
(156, 'Halima Akter', '161400056', '2016', 'EEE 111', 3, 'Fall'),
(157, 'Md. Abdul Hady', '161400057', '2016', 'EEE 111', 3, 'Fall'),
(158, 'Md. Jahirul Islam', '161400058', '2016', 'EEE 111', 3, 'Fall'),
(159, 'Omar Faruk', '161400060', '2016', 'EEE 111', 3, 'Fall'),
(160, 'S0Nia Akter', '161400061', '2016', 'EEE 111', 3, 'Fall'),
(161, 'Tahmim Jerin Shornil', '161400062', '2016', 'EEE 111', 3, 'Fall'),
(162, 'Md Shaon Ahmmed', '161400063', '2016', 'EEE 111', 3, 'Fall'),
(163, 'Md. Sajib Mahmud', '161400064', '2016', 'EEE 111', 3, 'Fall'),
(164, 'Mithun Das', '161400065', '2016', 'EEE 111', 3, 'Fall'),
(165, 'S M Hemel', '161400067', '2016', 'EEE 111', 3, 'Fall'),
(166, 'Habibur Rahman Habib', '161400068', '2016', 'EEE 111', 3, 'Fall'),
(167, 'Shanjida Akter', '161400069', '2016', 'EEE 111', 3, 'Fall'),
(168, 'Abdullah-Al-Noman', '161400071', '2016', 'EEE 111', 3, 'Fall'),
(169, 'Fariha Majid Jeba', '161400072', '2016', 'EEE 111', 3, 'Fall'),
(170, 'Md. Tanvir Ahmed', '161400073', '2016', 'EEE 111', 3, 'Fall'),
(171, 'Nayan Biswas', '161400074', '2016', 'EEE 111', 3, 'Fall'),
(172, 'Redwan Islam', '161400080', '2016', 'EEE 111', 3, 'Fall'),
(173, 'Md. Kamrul Hassan Fahim', '161400081', '2016', 'EEE 111', 3, 'Fall'),
(174, 'Sohada Akter', '161400082', '2016', 'EEE 111', 3, 'Fall'),
(175, 'Francis Kisku', '161400084', '2016', 'EEE 111', 3, 'Fall'),
(176, 'Arif Faysal', '163400011', '2016', 'EEE 111', 3, 'Fall'),
(181, 'Khalid Ash Shaba', '142800024', '2016', 'CSE 103', 1, 'Fall'),
(182, 'Ariful Islam', '143800032', '2016', 'CSE 103', 1, 'Fall'),
(183, 'M. N. Bashit Khan', '151400045', '2016', 'CSE 103', 1, 'Fall'),
(184, 'Sharif Nur Samy', '152400028', '2016', 'CSE 103', 1, 'Fall'),
(185, 'Mridul Kanti Ghosh', '152800011', '2016', 'CSE 103', 1, 'Fall'),
(186, 'Tahmina Akhter', '153400003', '2016', 'CSE 103', 1, 'Fall'),
(187, 'Md. Mafikul Islam', '153800001', '2016', 'CSE 103', 1, 'Fall'),
(188, 'Himel Ahmed', '153800011', '2016', 'CSE 103', 1, 'Fall'),
(189, 'Mahdi Muhammad Kafi', '153800016', '2016', 'CSE 103', 1, 'Fall'),
(190, 'Rifat Mahmud Sakil', '153800021', '2016', 'CSE 103', 1, 'Fall'),
(191, 'Sanchita Sarder', '161400015', '2016', 'CSE 103', 1, 'Fall'),
(192, 'Prapti Acharjya', '161400028', '2016', 'CSE 103', 1, 'Fall'),
(193, 'Shoumik Deb Argha', '161400079', '2016', 'CSE 103', 1, 'Fall'),
(194, 'Sibli Sadik', '161800002', '2016', 'CSE 103', 1, 'Fall'),
(195, 'Md. Sajjad Hossain Pavel', '161800003', '2016', 'CSE 103', 1, 'Fall'),
(196, 'Md. Shihab Uddin', '161800005', '2016', 'CSE 103', 1, 'Fall'),
(197, 'Murad Hossain Tamal', '161800006', '2016', 'CSE 103', 1, 'Fall'),
(198, 'Md. Masudur Rahman', '161800007', '2016', 'CSE 103', 1, 'Fall'),
(199, 'Sabuj Chakma Bappa', '161800008', '2016', 'CSE 103', 1, 'Fall'),
(200, 'Md. Nymul Hasan', '161800009', '2016', 'CSE 103', 1, 'Fall'),
(201, 'Najmul Hasan', '161800011', '2016', 'CSE 103', 1, 'Fall'),
(202, 'Md. Shakil Ahmed', '161800012', '2016', 'CSE 103', 1, 'Fall'),
(203, 'Md. Mizanur Rahman Manu', '161800015', '2016', 'CSE 103', 1, 'Fall'),
(204, 'Md. Rakibul Hasan', '161800016', '2016', 'CSE 103', 1, 'Fall'),
(205, 'Rezaul Hasan', '161800018', '2016', 'CSE 103', 1, 'Fall'),
(206, 'Salman Sakib', '161800022', '2016', 'CSE 103', 1, 'Fall'),
(207, 'Tanvir Hasan', '162800002', '2016', 'CSE 103', 1, 'Fall'),
(208, 'Mohammad Mamun Miah', '162800004', '2016', 'CSE 103', 1, 'Fall'),
(209, 'Mohammad Habibur Rahman', '162800005', '2016', 'CSE 103', 1, 'Fall'),
(210, 'Md. Moshiur Rahman', '162800006', '2016', 'CSE 103', 1, 'Fall'),
(211, 'Md. Mostafizur Rahman', '162800007', '2016', 'CSE 103', 1, 'Fall'),
(212, 'Biplob Chandra Sarker', '162800010', '2016', 'CSE 103', 1, 'Fall'),
(213, 'Md. Kamrul Hasan', '162800011', '2016', 'CSE 103', 1, 'Fall'),
(214, 'Md. Anisur Rahman', '162800012', '2016', 'CSE 103', 1, 'Fall'),
(215, 'Md. Toaha', '162800014', '2016', 'CSE 103', 1, 'Fall'),
(216, 'Syed Anwar Hossain', '162800015', '2016', 'CSE 103', 1, 'Fall'),
(217, 'Md. Hasibul Hasan', '162800016', '2016', 'CSE 103', 1, 'Fall'),
(224, 'Md. Iktiar Hassan', '102800044', '2016', 'CSE 103', 3, 'Fall'),
(225, 'Md. Soybur Rahman', '131800003', '2016', 'CSE 103', 3, 'Fall'),
(226, 'Al-Mamunur Rashid Pulok', '133400009', '2016', 'CSE 103', 3, 'Fall'),
(227, 'Asraful Islam', '141800012', '2016', 'CSE 103', 3, 'Fall'),
(228, 'Md. Raja Chowdhury Badal', '151400010', '2016', 'CSE 103', 3, 'Fall'),
(229, 'Md. Alauddin', '151400040', '2016', 'CSE 103', 3, 'Fall'),
(230, 'Md. Rashedul Islam Rashed', '151400056', '2016', 'CSE 103', 3, 'Fall'),
(231, 'Md. Nazrul Islam', '152400031', '2016', 'CSE 103', 3, 'Fall'),
(232, 'Md. Rashed Parvez', '152800015', '2016', 'CSE 103', 3, 'Fall'),
(233, 'Ashfeka Rahman Mim', '153400009', '2016', 'CSE 103', 3, 'Fall'),
(234, 'Md. Abdul Mannan', '161400012', '2016', 'CSE 103', 3, 'Fall'),
(235, 'Tanzil Mahmud', '161400016', '2016', 'CSE 103', 3, 'Fall'),
(236, 'Abdul Kadir Raihan', '161400023', '2016', 'CSE 103', 3, 'Fall'),
(237, 'Raihan Khan Choudhury', '161400032', '2016', 'CSE 103', 3, 'Fall'),
(238, 'Azizul Haque', '161400037', '2016', 'CSE 103', 3, 'Fall'),
(239, 'Sohada Akter', '161400082', '2016', 'CSE 103', 3, 'Fall'),
(240, 'Md. Mamunur Rashid', '162400001', '2016', 'CSE 103', 3, 'Fall'),
(241, 'Md. Jabed Omar', '162400002', '2016', 'CSE 103', 3, 'Fall'),
(242, 'Kauser Ahmed', '162400003', '2016', 'CSE 103', 3, 'Fall'),
(243, 'Emdadul Haque', '162400004', '2016', 'CSE 103', 3, 'Fall'),
(244, 'Kazi Samsul Alam Rahi', '162400005', '2016', 'CSE 103', 3, 'Fall'),
(246, 'Tusar Sarker', '162400007', '2016', 'CSE 103', 3, 'Fall'),
(247, 'Sukdeb Biswas', '162400008', '2016', 'CSE 103', 3, 'Fall'),
(248, 'Md. Sazzad Hossain', '162400009', '2016', 'CSE 103', 3, 'Fall'),
(249, 'Farah Tasnim Ani', '162400010', '2016', 'CSE 103', 3, 'Fall'),
(250, 'Syed Mahide Karim', '162400011', '2016', 'CSE 103', 3, 'Fall'),
(251, 'Tasfiqul Hasan', '162400012', '2016', 'CSE 103', 3, 'Fall'),
(252, 'Most. Asmaul Husna', '162400013', '2016', 'CSE 103', 3, 'Fall'),
(253, 'Md. Shahjada Bishal', '162400014', '2016', 'CSE 103', 3, 'Fall'),
(254, 'Md. Touhidul Islam', '162400015', '2016', 'CSE 103', 3, 'Fall'),
(255, 'Md. Muniruzzaman', '162400016', '2016', 'CSE 103', 3, 'Fall'),
(256, 'Md. Rasel', '162400017', '2016', 'CSE 103', 3, 'Fall'),
(257, 'Susmita Paul', '162400018', '2016', 'CSE 103', 3, 'Fall'),
(258, 'Md. Fazlul Islam', '162400019', '2016', 'CSE 103', 3, 'Fall'),
(259, 'Md. Kamrul Islam', '162400020', '2016', 'CSE 103', 3, 'Fall'),
(260, 'Mehedi Hasan Tanvir', '162400023', '2016', 'CSE 103', 3, 'Fall'),
(261, 'Shamsuddin Ahmed Babu', '162800013', '2016', 'CSE 103', 3, 'Fall'),
(262, 'Mahedi Hasan', '163400021', '2016', 'CSE 103', 3, 'Fall'),
(263, 'Golam Mostofa Shahid', '163800020', '2016', 'CSE 103', 3, 'Fall'),
(270, 'Md. Hasan Mahmud Anik', '151800003', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(271, 'Udbodhon Roy', '151800005', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(272, 'Sanjida Afiate Raine', '151800006', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(273, 'Md. Ragib Hasan', '151800010', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(274, 'Md. Al Jamee', '151800012', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(275, 'Md. Abdul Mottalib', '151800016', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(276, 'Abdullah Al Noman Toukir', '151800018', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(277, 'Bablu Chakma', '151800019', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(278, 'Abu Md Mishan Ibne Akhter', '151800021', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(279, 'Imran Hosen', '151800026', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(280, 'Sabrina Hossain', '151800027', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(281, 'Abdullah Al Noman', '152800008', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(282, 'Md. Morshadur Rahman', '152800035', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(283, 'Mahamudur Rahman', '163800001', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(284, 'Sharmin Farzana', '163800004', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(285, 'Md. Jobayer Rahman', '163800007', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(286, 'Zahid Hasan', '163800018', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(287, 'Tahera Sumaiya', '121400017', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(288, 'Mousumi Akter Urmi', '131400008', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(289, 'Shanuma Afrin Meghla', '142400011', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(290, 'Shayla Shabnam Shatabdi', '151400014', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(291, 'Md. Mehadi Hasan', '133400012', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(292, 'Aysha Akter', '151400037', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(293, 'Abdul Kader', '151400038', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(294, 'Iqrum Hossen', '151400039', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(295, 'Tamanna-E-Jahan Khan', '151400041', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(296, 'Farhana Rahman', '151400042', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(297, 'Monisha Barmon', '151400043', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(298, 'Jannatul Mawya', '151400044', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(299, 'Syed Tanvir Chowdhury', '151400048', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(300, 'Susmita Sen', '151400051', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(301, 'Miltan Kumar Roy', '151400057', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(302, 'Shah Nawas Chowdhury', '151400059', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(303, 'Md. Mojadded Alam', '151400061', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(304, 'Shammi Akter Eva', '151400062', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(305, 'Fairooz Fariha', '151400064', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(306, 'Md. Nayeem Hossain', '151400065', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(307, 'Sabrina Afroz Shova', '151400067', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(308, 'Shakil Ahmed', '153400014', '2016', 'EEE/CSE 201/MAT 209', 1, 'Fall'),
(309, 'Mafroza Sultana', '102820002', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(310, 'Ashsan Ahmed', '123800003', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(311, 'Md. Rashed Ur Rahman', '141400005', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(312, 'Merina Kawser', '143400003', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(313, 'Anika Tabassum', '143400023', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(314, 'Rajon Hossain', '143400031', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(315, 'Md. Akaid Khan Akash', '151400001', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(316, 'Md. Ashadulla All Galib', '151400004', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(317, 'Md. Mahabub Alam', '151400005', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(318, 'Md. Ashek Elahi', '151400006', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(319, 'Samira Rahman', '151400008', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(320, 'Md. Abdullah Al Mamun Raihan', '151400009', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(321, 'Israt Jahan Mokta', '151400011', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(322, 'Anik Mahmud', '151400012', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(323, 'Md. Shahed Chowdhury', '151400013', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(324, 'Jannatul Fardouse', '151400015', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(325, 'Sirajum Munira', '151400016', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(326, 'Sharif Mohammad Asiiqur Rahman', '151400020', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(327, 'Tapas Chandra Das', '151400024', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(328, 'Mst. Bushra Bente Rashid', '151400027', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(329, 'Most. Ummay Zahura Zinia', '151400029', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(330, 'Sumaiya Ahamed Bentay', '151400030', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(331, 'Md. Mohaimin Ul Islam', '151400031', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(332, 'Tofayel Hossain', '151400033', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(333, 'Md. Emran Parvez', '151400034', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(334, 'Khandaker Abdul Alim', '151400035', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(335, 'Md. Morshedul Islam', '151400053', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(336, 'Samiha Islam', '152400013', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(337, 'Mahfuza Umme Mazid', '153400010', '2016', 'EEE/CSE 201/MAT 209', 3, 'Fall'),
(338, 'Md. Touhidul Amin', '113800040', '2016', 'EEE 391', 1, 'Fall'),
(339, 'Ayanle Mohamed Ali', '152800007', '2016', 'EEE 391', 1, 'Fall'),
(340, '', '', '2016', 'EEE 391', 1, 'Fall'),
(341, '', '', '2016', 'EEE 391', 1, 'Fall'),
(342, '', '', '2016', 'EEE 391', 1, 'Fall'),
(343, 'Fazlul Haque Md. Faruk', '72800039', '2016', 'MAT 105', 1, 'Fall'),
(344, 'Md. Zahirul Islam', '92800051', '2016', 'MAT 105', 1, 'Fall'),
(345, 'Md. Sheik Shadi', '93400006', '2016', 'MAT 105', 1, 'Fall'),
(346, 'Towfiqur Rayan', '122800026', '2016', 'MAT 105', 1, 'Fall'),
(347, 'Khondoker Salahuddin Ahmed', '123800009', '2016', 'MAT 105', 1, 'Fall'),
(348, 'Hasan Al Mamun', '123800020', '2016', 'MAT 105', 1, 'Fall'),
(349, 'Saimun Hossain', '132400003', '2016', 'MAT 105', 1, 'Fall'),
(350, 'Md. Shimul Miah', '132800029', '2016', 'MAT 105', 1, 'Fall'),
(351, 'Md. Mehadi Hasan', '133400012', '2016', 'MAT 105', 1, 'Fall'),
(352, 'Monika Binte Mahfuz', '133400013', '2016', 'MAT 105', 1, 'Fall'),
(353, 'Md.Woliul Hasan', '133400017', '2016', 'MAT 105', 1, 'Fall'),
(354, 'Taslim Karim', '133800008', '2016', 'MAT 105', 1, 'Fall'),
(355, 'Md. Asaduzzaman', '133800009', '2016', 'MAT 105', 1, 'Fall'),
(356, 'Sonjay Kumer Shome', '133800012', '2016', 'MAT 105', 1, 'Fall'),
(357, 'Md. Ashiqur Rahman', '133800013', '2016', 'MAT 105', 1, 'Fall'),
(358, 'Al Amin Habib', '133800024', '2016', 'MAT 105', 1, 'Fall'),
(359, 'S.M. Mahmood Ismail', '133800026', '2016', 'MAT 105', 1, 'Fall'),
(360, 'Md. Mostafizur Rahman', '133800036', '2016', 'MAT 105', 1, 'Fall'),
(361, 'Md. Redouanur Rahman', '133800044', '2016', 'MAT 105', 1, 'Fall'),
(362, 'Susmita Halder', '141400010', '2016', 'MAT 105', 1, 'Fall'),
(363, 'Abu Huraira', '141400013', '2016', 'MAT 105', 1, 'Fall'),
(364, 'Tusar Sarker', '162400007', '2016', 'MAT 105', 1, 'Fall'),
(365, 'Sukdeb Biswas', '162400008', '2016', 'MAT 105', 1, 'Fall'),
(366, 'Md. Sazzad Hossain', '162400009', '2016', 'MAT 105', 1, 'Fall'),
(367, 'Farah Tasnim Ani', '162400010', '2016', 'MAT 105', 1, 'Fall'),
(368, 'Syed Mahide Karim', '162400011', '2016', 'MAT 105', 1, 'Fall'),
(369, 'Tasfiqul Hasan', '162400012', '2016', 'MAT 105', 1, 'Fall'),
(370, 'Most. Asmaul Husna', '162400013', '2016', 'MAT 105', 1, 'Fall'),
(371, 'Md. Shahjada Bishal', '162400014', '2016', 'MAT 105', 1, 'Fall'),
(372, 'Md. Touhidul Islam', '162400015', '2016', 'MAT 105', 1, 'Fall'),
(373, 'Md. Muniruzzaman', '162400016', '2016', 'MAT 105', 1, 'Fall'),
(374, 'Md. Rasel', '162400017', '2016', 'MAT 105', 1, 'Fall'),
(375, 'Susmita Paul', '162400018', '2016', 'MAT 105', 1, 'Fall'),
(376, 'Md. Fazlul Islam', '162400019', '2016', 'MAT 105', 1, 'Fall'),
(377, 'Md. Kamrul Islam', '162400020', '2016', 'MAT 105', 1, 'Fall'),
(378, 'Mehedi Hasan Tanvir', '162400023', '2016', 'MAT 105', 1, 'Fall'),
(379, 'Shamsuddin Ahmed Babu', '162800013', '2016', 'MAT 105', 1, 'Fall'),
(380, 'Mahedi Hasan', '163400021', '2016', 'MAT 105', 1, 'Fall'),
(381, 'Golam Mostofa Shahid', '163800020', '2016', 'MAT 105', 1, 'Fall'),
(382, '', '', '2016', 'MAT 105', 1, 'Fall'),
(383, '', '', '2016', 'MAT 105', 1, 'Fall'),
(384, '', '', '2016', 'MAT 105', 1, 'Fall'),
(385, '', '', '2016', 'MAT 105', 1, 'Fall'),
(386, '', '', '2016', 'MAT 105', 1, 'Fall'),
(387, '', '', '2016', 'MAT 105', 1, 'Fall');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrangement`
--
ALTER TABLE `arrangement`
  ADD PRIMARY KEY (`arr_id`);

--
-- Indexes for table `course_table`
--
ALTER TABLE `course_table`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`ID_Dept`);

--
-- Indexes for table `exam_info`
--
ALTER TABLE `exam_info`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`reg_code`);

--
-- Indexes for table `room_info`
--
ALTER TABLE `room_info`
  ADD PRIMARY KEY (`Room_No`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`ID_Semi`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`code_std`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arrangement`
--
ALTER TABLE `arrangement`
  MODIFY `arr_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=860;
--
-- AUTO_INCREMENT for table `course_table`
--
ALTER TABLE `course_table`
  MODIFY `course_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `ID_Dept` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_info`
--
ALTER TABLE `exam_info`
  MODIFY `exam_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=457;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `reg_code` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `ID_Semi` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentinfo`
--
ALTER TABLE `studentinfo`
  MODIFY `code_std` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
