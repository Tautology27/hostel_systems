-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2025 at 07:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$13WjH8q56meA.OjCzEDmC.7Y5KWupngHedJYLaLJJZt3ySO7MCJAu');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `block` varchar(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `gender` enum('Male','Female','Both') NOT NULL,
  `is_taken` tinyint(1) DEFAULT 0,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `block`, `room_no`, `gender`, `is_taken`, `student_id`) VALUES
(517, '6A', 'G01', 'Male', 0, NULL),
(518, '6A', 'G02', 'Male', 0, NULL),
(519, '6A', 'G03', 'Male', 0, NULL),
(520, '6A', 'G04', 'Male', 0, NULL),
(521, '6A', 'G05', 'Male', 0, NULL),
(522, '6A', 'G06', 'Male', 0, NULL),
(523, '6A', 'G07', 'Male', 0, NULL),
(524, '6A', 'G08', 'Male', 0, NULL),
(525, '6A', 'G09', 'Male', 0, NULL),
(526, '6A', 'G10', 'Male', 0, NULL),
(527, '6A', 'G11', 'Male', 0, NULL),
(528, '6A', 'G12', 'Male', 0, NULL),
(529, '6A', 'G13', 'Male', 0, NULL),
(530, '6A', 'G14', 'Male', 0, NULL),
(531, '6A', 'G15', 'Male', 0, NULL),
(532, '6A', 'G16', 'Male', 0, NULL),
(533, '6A', 'G17', 'Male', 0, NULL),
(534, '6A', 'G18', 'Male', 0, NULL),
(535, '6A', 'G19', 'Male', 0, NULL),
(536, '6A', 'G20', 'Male', 0, NULL),
(537, '6A', 'G21', 'Male', 0, NULL),
(538, '6A', 'G22', 'Male', 0, NULL),
(539, '6A', 'G23', 'Male', 0, NULL),
(540, '6A', 'G24', 'Male', 0, NULL),
(541, '6A', 'G25', 'Male', 0, NULL),
(542, '6A', 'G26', 'Male', 0, NULL),
(543, '6A', 'G27', 'Male', 0, NULL),
(544, '6A', 'G28', 'Male', 0, NULL),
(545, '6A', 'G29', 'Male', 0, NULL),
(546, '6A', 'G30', 'Male', 0, NULL),
(547, '6A', '101', 'Male', 0, NULL),
(548, '6A', '102', 'Male', 0, NULL),
(549, '6A', '103', 'Male', 0, NULL),
(550, '6A', '104', 'Male', 0, NULL),
(551, '6A', '105', 'Male', 0, NULL),
(552, '6A', '106', 'Male', 0, NULL),
(553, '6A', '107', 'Male', 0, NULL),
(554, '6A', '108', 'Male', 0, NULL),
(555, '6A', '109', 'Male', 0, NULL),
(556, '6A', '110', 'Male', 0, NULL),
(557, '6A', '111', 'Male', 0, NULL),
(558, '6A', '112', 'Male', 0, NULL),
(559, '6A', '113', 'Male', 0, NULL),
(560, '6A', '114', 'Male', 0, NULL),
(561, '6A', '115', 'Male', 0, NULL),
(562, '6A', '116', 'Male', 0, NULL),
(563, '6A', '117', 'Male', 0, NULL),
(564, '6A', '118', 'Male', 0, NULL),
(565, '6A', '119', 'Male', 0, NULL),
(566, '6A', '120', 'Male', 0, NULL),
(567, '6A', '121', 'Male', 0, NULL),
(568, '6A', '122', 'Male', 0, NULL),
(569, '6A', '123', 'Male', 0, NULL),
(570, '6A', '124', 'Male', 0, NULL),
(571, '6A', '125', 'Male', 0, NULL),
(572, '6A', '126', 'Male', 0, NULL),
(573, '6A', '127', 'Male', 0, NULL),
(574, '6A', '128', 'Male', 0, NULL),
(575, '6A', '129', 'Male', 0, NULL),
(576, '6A', '130', 'Male', 0, NULL),
(577, '6A', '201', 'Male', 0, NULL),
(578, '6A', '202', 'Male', 0, NULL),
(579, '6A', '203', 'Male', 0, NULL),
(580, '6A', '204', 'Male', 0, NULL),
(581, '6A', '205', 'Male', 0, NULL),
(582, '6A', '206', 'Male', 0, NULL),
(583, '6A', '207', 'Male', 0, NULL),
(584, '6A', '208', 'Male', 0, NULL),
(585, '6A', '209', 'Male', 0, NULL),
(586, '6A', '210', 'Male', 0, NULL),
(587, '6A', '211', 'Male', 0, NULL),
(588, '6A', '212', 'Male', 0, NULL),
(589, '6A', '213', 'Male', 0, NULL),
(590, '6A', '214', 'Male', 0, NULL),
(591, '6A', '215', 'Male', 0, NULL),
(592, '6A', '216', 'Male', 1, 4),
(593, '6A', '217', 'Male', 0, NULL),
(594, '6A', '218', 'Male', 0, NULL),
(595, '6A', '219', 'Male', 0, NULL),
(596, '6A', '220', 'Male', 0, NULL),
(597, '6A', '221', 'Male', 0, NULL),
(598, '6A', '222', 'Male', 0, NULL),
(599, '6A', '223', 'Male', 0, NULL),
(600, '6A', '224', 'Male', 0, NULL),
(601, '6A', '225', 'Male', 0, NULL),
(602, '6A', '226', 'Male', 0, NULL),
(603, '6A', '227', 'Male', 0, NULL),
(604, '6A', '228', 'Male', 0, NULL),
(605, '6A', '229', 'Male', 0, NULL),
(606, '6A', '230', 'Male', 0, NULL),
(607, '6B', 'G01', 'Male', 0, NULL),
(608, '6B', 'G02', 'Male', 0, NULL),
(609, '6B', 'G03', 'Male', 0, NULL),
(610, '6B', 'G04', 'Male', 0, NULL),
(611, '6B', 'G05', 'Male', 0, NULL),
(612, '6B', 'G06', 'Male', 0, NULL),
(613, '6B', 'G07', 'Male', 0, NULL),
(614, '6B', 'G08', 'Male', 0, NULL),
(615, '6B', 'G09', 'Male', 0, NULL),
(616, '6B', 'G10', 'Male', 0, NULL),
(617, '6B', 'G11', 'Male', 0, NULL),
(618, '6B', 'G12', 'Male', 0, NULL),
(619, '6B', 'G13', 'Male', 0, NULL),
(620, '6B', 'G14', 'Male', 0, NULL),
(621, '6B', 'G15', 'Male', 0, NULL),
(622, '6B', 'G16', 'Male', 0, NULL),
(623, '6B', 'G17', 'Male', 0, NULL),
(624, '6B', 'G18', 'Male', 0, NULL),
(625, '6B', 'G19', 'Male', 0, NULL),
(626, '6B', 'G20', 'Male', 0, NULL),
(627, '6B', 'G21', 'Male', 0, NULL),
(628, '6B', 'G22', 'Male', 0, NULL),
(629, '6B', 'G23', 'Male', 0, NULL),
(630, '6B', 'G24', 'Male', 0, NULL),
(631, '6B', 'G25', 'Male', 0, NULL),
(632, '6B', 'G26', 'Male', 0, NULL),
(633, '6B', 'G27', 'Male', 0, NULL),
(634, '6B', 'G28', 'Male', 0, NULL),
(635, '6B', 'G29', 'Male', 0, NULL),
(636, '6B', 'G30', 'Male', 0, NULL),
(637, '6B', '101', 'Male', 0, NULL),
(638, '6B', '102', 'Male', 0, NULL),
(639, '6B', '103', 'Male', 0, NULL),
(640, '6B', '104', 'Male', 0, NULL),
(641, '6B', '105', 'Male', 0, NULL),
(642, '6B', '106', 'Male', 0, NULL),
(643, '6B', '107', 'Male', 0, NULL),
(644, '6B', '108', 'Male', 0, NULL),
(645, '6B', '109', 'Male', 0, NULL),
(646, '6B', '110', 'Male', 0, NULL),
(647, '6B', '111', 'Male', 0, NULL),
(648, '6B', '112', 'Male', 0, NULL),
(649, '6B', '113', 'Male', 0, NULL),
(650, '6B', '114', 'Male', 0, NULL),
(651, '6B', '115', 'Male', 0, NULL),
(652, '6B', '116', 'Male', 0, NULL),
(653, '6B', '117', 'Male', 0, NULL),
(654, '6B', '118', 'Male', 0, NULL),
(655, '6B', '119', 'Male', 0, NULL),
(656, '6B', '120', 'Male', 0, NULL),
(657, '6B', '121', 'Male', 0, NULL),
(658, '6B', '122', 'Male', 0, NULL),
(659, '6B', '123', 'Male', 0, NULL),
(660, '6B', '124', 'Male', 0, NULL),
(661, '6B', '125', 'Male', 0, NULL),
(662, '6B', '126', 'Male', 0, NULL),
(663, '6B', '127', 'Male', 0, NULL),
(664, '6B', '128', 'Male', 0, NULL),
(665, '6B', '129', 'Male', 0, NULL),
(666, '6B', '130', 'Male', 0, NULL),
(667, '6B', '201', 'Male', 0, NULL),
(668, '6B', '202', 'Male', 0, NULL),
(669, '6B', '203', 'Male', 0, NULL),
(670, '6B', '204', 'Male', 0, NULL),
(671, '6B', '205', 'Male', 0, NULL),
(672, '6B', '206', 'Male', 0, NULL),
(673, '6B', '207', 'Male', 0, NULL),
(674, '6B', '208', 'Male', 0, NULL),
(675, '6B', '209', 'Male', 0, NULL),
(676, '6B', '210', 'Male', 0, NULL),
(677, '6B', '211', 'Male', 0, NULL),
(678, '6B', '212', 'Male', 0, NULL),
(679, '6B', '213', 'Male', 0, NULL),
(680, '6B', '214', 'Male', 0, NULL),
(681, '6B', '215', 'Male', 0, NULL),
(682, '6B', '216', 'Male', 0, NULL),
(683, '6B', '217', 'Male', 0, NULL),
(684, '6B', '218', 'Male', 0, NULL),
(685, '6B', '219', 'Male', 0, NULL),
(686, '6B', '220', 'Male', 0, NULL),
(687, '6B', '221', 'Male', 0, NULL),
(688, '6B', '222', 'Male', 0, NULL),
(689, '6B', '223', 'Male', 0, NULL),
(690, '6B', '224', 'Male', 0, NULL),
(691, '6B', '225', 'Male', 0, NULL),
(692, '6B', '226', 'Male', 0, NULL),
(693, '6B', '227', 'Male', 0, NULL),
(694, '6B', '228', 'Male', 0, NULL),
(695, '6B', '229', 'Male', 0, NULL),
(696, '6B', '230', 'Male', 0, NULL),
(697, '8C', 'F1R01', 'Female', 0, NULL),
(698, '8C', 'F1R02', 'Female', 0, NULL),
(699, '8C', 'F1R03', 'Female', 0, NULL),
(700, '8C', 'F1R04', 'Female', 0, NULL),
(701, '8C', 'F1R05', 'Female', 0, NULL),
(702, '8C', 'F1R06', 'Female', 0, NULL),
(703, '8C', 'F1R07', 'Female', 0, NULL),
(704, '8C', 'F1R08', 'Female', 0, NULL),
(705, '8C', 'F1R09', 'Female', 0, NULL),
(706, '8C', 'F1R10', 'Female', 0, NULL),
(707, '8C', 'F1R11', 'Female', 0, NULL),
(708, '8C', 'F1R12', 'Female', 0, NULL),
(709, '8C', 'F1R13', 'Female', 0, NULL),
(710, '8C', 'F1R14', 'Female', 0, NULL),
(711, '8C', 'F1R15', 'Female', 0, NULL),
(712, '8C', 'F1R16', 'Female', 0, NULL),
(713, '8C', 'F1R17', 'Female', 0, NULL),
(714, '8C', 'F1R18', 'Female', 0, NULL),
(715, '8C', 'F1R19', 'Female', 0, NULL),
(716, '8C', 'F1R20', 'Female', 0, NULL),
(717, '8C', 'F1R21', 'Female', 0, NULL),
(718, '8C', 'F1R22', 'Female', 0, NULL),
(719, '8C', 'F1R23', 'Female', 0, NULL),
(720, '8C', 'F1R24', 'Female', 0, NULL),
(721, '8C', 'F1R25', 'Female', 0, NULL),
(722, '8C', 'F1R26', 'Female', 0, NULL),
(723, '8C', 'F1R27', 'Female', 0, NULL),
(724, '8C', 'F1R28', 'Female', 0, NULL),
(725, '8C', 'F2R29', 'Female', 0, NULL),
(726, '8C', 'F2R30', 'Female', 0, NULL),
(727, '8C', 'F2R31', 'Female', 0, NULL),
(728, '8C', 'F2R32', 'Female', 0, NULL),
(729, '8C', 'F2R33', 'Female', 0, NULL),
(730, '8C', 'F2R34', 'Female', 0, NULL),
(731, '8C', 'F2R35', 'Female', 0, NULL),
(732, '8C', 'F2R36', 'Female', 0, NULL),
(733, '8C', 'F2R37', 'Female', 0, NULL),
(734, '8C', 'F2R38', 'Female', 0, NULL),
(735, '8C', 'F2R39', 'Female', 0, NULL),
(736, '8C', 'F2R40', 'Female', 0, NULL),
(737, '8C', 'F2R41', 'Female', 0, NULL),
(738, '8C', 'F2R42', 'Female', 0, NULL),
(739, '8C', 'F2R43', 'Female', 0, NULL),
(740, '8C', 'F2R44', 'Female', 0, NULL),
(741, '8C', 'F2R45', 'Female', 0, NULL),
(742, '8C', 'F2R46', 'Female', 0, NULL),
(743, '8C', 'F2R47', 'Female', 0, NULL),
(744, '8C', 'F2R48', 'Female', 0, NULL),
(745, '8C', 'F2R49', 'Female', 0, NULL),
(746, '8C', 'F2R50', 'Female', 0, NULL),
(747, '8C', 'F2R51', 'Female', 0, NULL),
(748, '8C', 'F2R52', 'Female', 0, NULL),
(749, '8C', 'F2R53', 'Female', 0, NULL),
(750, '8C', 'F2R54', 'Female', 0, NULL),
(751, '8C', 'F2R55', 'Female', 0, NULL),
(752, '8C', 'F2R56', 'Female', 0, NULL),
(753, '8C', 'F3R57', 'Female', 0, NULL),
(754, '8C', 'F3R58', 'Female', 0, NULL),
(755, '8C', 'F3R59', 'Female', 0, NULL),
(756, '8C', 'F3R60', 'Female', 0, NULL),
(757, '8C', 'F3R61', 'Female', 0, NULL),
(758, '8C', 'F3R62', 'Female', 0, NULL),
(759, '8C', 'F3R63', 'Female', 0, NULL),
(760, '8C', 'F3R64', 'Female', 0, NULL),
(761, '8C', 'F3R65', 'Female', 0, NULL),
(762, '8C', 'F3R66', 'Female', 0, NULL),
(763, '8C', 'F3R67', 'Female', 0, NULL),
(764, '8C', 'F3R68', 'Female', 0, NULL),
(765, '8C', 'F3R69', 'Female', 0, NULL),
(766, '8C', 'F3R70', 'Female', 0, NULL),
(767, '8C', 'F3R71', 'Female', 0, NULL),
(768, '8C', 'F3R72', 'Female', 0, NULL),
(769, '8C', 'F3R73', 'Female', 0, NULL),
(770, '8C', 'F3R74', 'Female', 0, NULL),
(771, '8C', 'F3R75', 'Female', 0, NULL),
(772, '8C', 'F3R76', 'Female', 0, NULL),
(773, '8C', 'F3R77', 'Female', 0, NULL),
(774, '8C', 'F3R78', 'Female', 0, NULL),
(775, '8C', 'F3R79', 'Female', 0, NULL),
(776, '8C', 'F3R80', 'Female', 0, NULL),
(777, '8C', 'F3R81', 'Female', 0, NULL),
(778, '8C', 'F3R82', 'Female', 0, NULL),
(779, '8C', 'F3R83', 'Female', 0, NULL),
(780, '8C', 'F3R84', 'Female', 0, NULL),
(781, '8C', 'F4R85', 'Female', 0, NULL),
(782, '8C', 'F4R86', 'Female', 0, NULL),
(783, '8C', 'F4R87', 'Female', 0, NULL),
(784, '8C', 'F4R88', 'Female', 0, NULL),
(785, '8C', 'F4R89', 'Female', 0, NULL),
(786, '8C', 'F4R90', 'Female', 0, NULL),
(787, '8C', 'F4R91', 'Female', 0, NULL),
(788, '8C', 'F4R92', 'Female', 0, NULL),
(789, '8C', 'F4R93', 'Female', 0, NULL),
(790, '8C', 'F4R94', 'Female', 0, NULL),
(791, '8C', 'F4R95', 'Female', 0, NULL),
(792, '8C', 'F4R96', 'Female', 0, NULL),
(793, '8C', 'F4R97', 'Female', 0, NULL),
(794, '8C', 'F4R98', 'Female', 0, NULL),
(795, '8C', 'F4R99', 'Female', 0, NULL),
(796, '8C', 'F4R100', 'Female', 0, NULL),
(797, '8C', 'F4R101', 'Female', 0, NULL),
(798, '8C', 'F4R102', 'Female', 0, NULL),
(799, '8C', 'F4R103', 'Female', 0, NULL),
(800, '8C', 'F4R104', 'Female', 0, NULL),
(801, '8C', 'F4R105', 'Female', 0, NULL),
(802, '8C', 'F4R106', 'Female', 0, NULL),
(803, '8C', 'F4R107', 'Female', 0, NULL),
(804, '8C', 'F4R108', 'Female', 0, NULL),
(805, '8C', 'F4R109', 'Female', 0, NULL),
(806, '8C', 'F4R110', 'Female', 0, NULL),
(807, '8D', 'F1R01', 'Female', 0, NULL),
(808, '8D', 'F1R02', 'Female', 0, NULL),
(809, '8D', 'F1R03', 'Female', 0, NULL),
(810, '8D', 'F1R04', 'Female', 0, NULL),
(811, '8D', 'F1R05', 'Female', 0, NULL),
(812, '8D', 'F1R06', 'Female', 0, NULL),
(813, '8D', 'F1R07', 'Female', 0, NULL),
(814, '8D', 'F1R08', 'Female', 0, NULL),
(815, '8D', 'F1R09', 'Female', 0, NULL),
(816, '8D', 'F1R10', 'Female', 0, NULL),
(817, '8D', 'F1R11', 'Female', 0, NULL),
(818, '8D', 'F1R12', 'Female', 0, NULL),
(819, '8D', 'F1R13', 'Female', 0, NULL),
(820, '8D', 'F1R14', 'Female', 0, NULL),
(821, '8D', 'F1R15', 'Female', 0, NULL),
(822, '8D', 'F1R16', 'Female', 0, NULL),
(823, '8D', 'F1R17', 'Female', 0, NULL),
(824, '8D', 'F1R18', 'Female', 0, NULL),
(825, '8D', 'F1R19', 'Female', 0, NULL),
(826, '8D', 'F1R20', 'Female', 0, NULL),
(827, '8D', 'F1R21', 'Female', 0, NULL),
(828, '8D', 'F1R22', 'Female', 0, NULL),
(829, '8D', 'F1R23', 'Female', 0, NULL),
(830, '8D', 'F1R24', 'Female', 0, NULL),
(831, '8D', 'F1R25', 'Female', 0, NULL),
(832, '8D', 'F2R26', 'Female', 0, NULL),
(833, '8D', 'F2R27', 'Female', 0, NULL),
(834, '8D', 'F2R28', 'Female', 0, NULL),
(835, '8D', 'F2R29', 'Female', 0, NULL),
(836, '8D', 'F2R30', 'Female', 0, NULL),
(837, '8D', 'F2R31', 'Female', 0, NULL),
(838, '8D', 'F2R32', 'Female', 0, NULL),
(839, '8D', 'F2R33', 'Female', 0, NULL),
(840, '8D', 'F2R34', 'Female', 0, NULL),
(841, '8D', 'F2R35', 'Female', 0, NULL),
(842, '8D', 'F2R36', 'Female', 0, NULL),
(843, '8D', 'F2R37', 'Female', 0, NULL),
(844, '8D', 'F2R38', 'Female', 0, NULL),
(845, '8D', 'F2R39', 'Female', 0, NULL),
(846, '8D', 'F2R40', 'Female', 0, NULL),
(847, '8D', 'F2R41', 'Female', 0, NULL),
(848, '8D', 'F2R42', 'Female', 0, NULL),
(849, '8D', 'F2R43', 'Female', 0, NULL),
(850, '8D', 'F2R44', 'Female', 0, NULL),
(851, '8D', 'F2R45', 'Female', 0, NULL),
(852, '8D', 'F2R46', 'Female', 0, NULL),
(853, '8D', 'F2R47', 'Female', 0, NULL),
(854, '8D', 'F2R48', 'Female', 0, NULL),
(855, '8D', 'F2R49', 'Female', 0, NULL),
(856, '8D', 'F2R50', 'Female', 0, NULL),
(857, '8D', 'F3R51', 'Female', 0, NULL),
(858, '8D', 'F3R52', 'Female', 0, NULL),
(859, '8D', 'F3R53', 'Female', 0, NULL),
(860, '8D', 'F3R54', 'Female', 0, NULL),
(861, '8D', 'F3R55', 'Female', 0, NULL),
(862, '8D', 'F3R56', 'Female', 0, NULL),
(863, '8D', 'F3R57', 'Female', 0, NULL),
(864, '8D', 'F3R58', 'Female', 0, NULL),
(865, '8D', 'F3R59', 'Female', 0, NULL),
(866, '8D', 'F3R60', 'Female', 0, NULL),
(867, '8D', 'F3R61', 'Female', 0, NULL),
(868, '8D', 'F3R62', 'Female', 0, NULL),
(869, '8D', 'F3R63', 'Female', 0, NULL),
(870, '8D', 'F3R64', 'Female', 0, NULL),
(871, '8D', 'F3R65', 'Female', 0, NULL),
(872, '8D', 'F3R66', 'Female', 0, NULL),
(873, '8D', 'F3R67', 'Female', 0, NULL),
(874, '8D', 'F3R68', 'Female', 0, NULL),
(875, '8D', 'F3R69', 'Female', 0, NULL),
(876, '8D', 'F3R70', 'Female', 0, NULL),
(877, '8D', 'F3R71', 'Female', 0, NULL),
(878, '8D', 'F3R72', 'Female', 0, NULL),
(879, '8D', 'F3R73', 'Female', 0, NULL),
(880, '8D', 'F3R74', 'Female', 0, NULL),
(881, '8D', 'F3R75', 'Female', 0, NULL),
(882, '8D', 'F4R76', 'Female', 0, NULL),
(883, '8D', 'F4R77', 'Female', 0, NULL),
(884, '8D', 'F4R78', 'Female', 0, NULL),
(885, '8D', 'F4R79', 'Female', 0, NULL),
(886, '8D', 'F4R80', 'Female', 0, NULL),
(887, '8D', 'F4R81', 'Female', 0, NULL),
(888, '8D', 'F4R82', 'Female', 0, NULL),
(889, '8D', 'F4R83', 'Female', 0, NULL),
(890, '8D', 'F4R84', 'Female', 0, NULL),
(891, '8D', 'F4R85', 'Female', 0, NULL),
(892, '8D', 'F4R86', 'Female', 0, NULL),
(893, '8D', 'F4R87', 'Female', 0, NULL),
(894, '8D', 'F4R88', 'Female', 0, NULL),
(895, '8D', 'F4R89', 'Female', 0, NULL),
(896, '8D', 'F4R90', 'Female', 0, NULL),
(897, '8D', 'F4R91', 'Female', 0, NULL),
(898, '8D', 'F4R92', 'Female', 0, NULL),
(899, '8D', 'F4R93', 'Female', 0, NULL),
(900, '8D', 'F4R94', 'Female', 0, NULL),
(901, '8D', 'F4R95', 'Female', 0, NULL),
(902, '8D', 'F4R96', 'Female', 0, NULL),
(903, '8D', 'F4R97', 'Female', 0, NULL),
(904, '8D', 'F4R98', 'Female', 0, NULL),
(905, '8D', 'F4R99', 'Female', 0, NULL),
(906, '8D', 'F4R100', 'Female', 0, NULL),
(907, 'NewBlock', 'F1R01', 'Both', 0, NULL),
(908, 'NewBlock', 'F1R02', 'Both', 0, NULL),
(909, 'NewBlock', 'F1R03', 'Both', 0, NULL),
(910, 'NewBlock', 'F1R04', 'Both', 0, NULL),
(911, 'NewBlock', 'F1R05', 'Both', 0, NULL),
(912, 'NewBlock', 'F1R06', 'Both', 0, NULL),
(913, 'NewBlock', 'F1R07', 'Both', 0, NULL),
(914, 'NewBlock', 'F1R08', 'Both', 0, NULL),
(915, 'NewBlock', 'F1R09', 'Both', 0, NULL),
(916, 'NewBlock', 'F1R10', 'Both', 0, NULL),
(917, 'NewBlock', 'F1R11', 'Both', 0, NULL),
(918, 'NewBlock', 'F1R12', 'Both', 0, NULL),
(919, 'NewBlock', 'F1R13', 'Both', 0, NULL),
(920, 'NewBlock', 'F1R14', 'Both', 0, NULL),
(921, 'NewBlock', 'F1R15', 'Both', 0, NULL),
(922, 'NewBlock', 'F1R16', 'Both', 0, NULL),
(923, 'NewBlock', 'F1R17', 'Both', 0, NULL),
(924, 'NewBlock', 'F1R18', 'Both', 0, NULL),
(925, 'NewBlock', 'F1R19', 'Both', 0, NULL),
(926, 'NewBlock', 'F1R20', 'Both', 0, NULL),
(927, 'NewBlock', 'F1R21', 'Both', 0, NULL),
(928, 'NewBlock', 'F1R22', 'Both', 0, NULL),
(929, 'NewBlock', 'F1R23', 'Both', 0, NULL),
(930, 'NewBlock', 'F2R24', 'Both', 0, NULL),
(931, 'NewBlock', 'F2R25', 'Both', 0, NULL),
(932, 'NewBlock', 'F2R26', 'Both', 0, NULL),
(933, 'NewBlock', 'F2R27', 'Both', 0, NULL),
(934, 'NewBlock', 'F2R28', 'Both', 0, NULL),
(935, 'NewBlock', 'F2R29', 'Both', 0, NULL),
(936, 'NewBlock', 'F2R30', 'Both', 0, NULL),
(937, 'NewBlock', 'F2R31', 'Both', 0, NULL),
(938, 'NewBlock', 'F2R32', 'Both', 0, NULL),
(939, 'NewBlock', 'F2R33', 'Both', 0, NULL),
(940, 'NewBlock', 'F2R34', 'Both', 0, NULL),
(941, 'NewBlock', 'F2R35', 'Both', 0, NULL),
(942, 'NewBlock', 'F2R36', 'Both', 0, NULL),
(943, 'NewBlock', 'F2R37', 'Both', 0, NULL),
(944, 'NewBlock', 'F2R38', 'Both', 0, NULL),
(945, 'NewBlock', 'F2R39', 'Both', 0, NULL),
(946, 'NewBlock', 'F2R40', 'Both', 0, NULL),
(947, 'NewBlock', 'F2R41', 'Both', 0, NULL),
(948, 'NewBlock', 'F2R42', 'Both', 0, NULL),
(949, 'NewBlock', 'F2R43', 'Both', 0, NULL),
(950, 'NewBlock', 'F2R44', 'Both', 0, NULL),
(951, 'NewBlock', 'F2R45', 'Both', 0, NULL),
(952, 'NewBlock', 'F2R46', 'Both', 0, NULL),
(953, 'NewBlock', 'F3R47', 'Both', 0, NULL),
(954, 'NewBlock', 'F3R48', 'Both', 0, NULL),
(955, 'NewBlock', 'F3R49', 'Both', 0, NULL),
(956, 'NewBlock', 'F3R50', 'Both', 0, NULL),
(957, 'NewBlock', 'F3R51', 'Both', 0, NULL),
(958, 'NewBlock', 'F3R52', 'Both', 0, NULL),
(959, 'NewBlock', 'F3R53', 'Both', 0, NULL),
(960, 'NewBlock', 'F3R54', 'Both', 0, NULL),
(961, 'NewBlock', 'F3R55', 'Both', 0, NULL),
(962, 'NewBlock', 'F3R56', 'Both', 0, NULL),
(963, 'NewBlock', 'F3R57', 'Both', 0, NULL),
(964, 'NewBlock', 'F3R58', 'Both', 0, NULL),
(965, 'NewBlock', 'F3R59', 'Both', 0, NULL),
(966, 'NewBlock', 'F3R60', 'Both', 0, NULL),
(967, 'NewBlock', 'F3R61', 'Both', 0, NULL),
(968, 'NewBlock', 'F3R62', 'Both', 0, NULL),
(969, 'NewBlock', 'F3R63', 'Both', 0, NULL),
(970, 'NewBlock', 'F3R64', 'Both', 0, NULL),
(971, 'NewBlock', 'F3R65', 'Both', 0, NULL),
(972, 'NewBlock', 'F3R66', 'Both', 0, NULL),
(973, 'NewBlock', 'F3R67', 'Both', 0, NULL),
(974, 'NewBlock', 'F3R68', 'Both', 0, NULL),
(975, 'NewBlock', 'F3R69', 'Both', 0, NULL),
(976, 'NewBlock', 'F4R70', 'Both', 0, NULL),
(977, 'NewBlock', 'F4R71', 'Both', 0, NULL),
(978, 'NewBlock', 'F4R72', 'Both', 0, NULL),
(979, 'NewBlock', 'F4R73', 'Both', 0, NULL),
(980, 'NewBlock', 'F4R74', 'Both', 0, NULL),
(981, 'NewBlock', 'F4R75', 'Both', 0, NULL),
(982, 'NewBlock', 'F4R76', 'Both', 0, NULL),
(983, 'NewBlock', 'F4R77', 'Both', 0, NULL),
(984, 'NewBlock', 'F4R78', 'Both', 0, NULL),
(985, 'NewBlock', 'F4R79', 'Both', 0, NULL),
(986, 'NewBlock', 'F4R80', 'Both', 0, NULL),
(987, 'NewBlock', 'F4R81', 'Both', 0, NULL),
(988, 'NewBlock', 'F4R82', 'Both', 0, NULL),
(989, 'NewBlock', 'F4R83', 'Both', 0, NULL),
(990, 'NewBlock', 'F4R84', 'Both', 0, NULL),
(991, 'NewBlock', 'F4R85', 'Both', 0, NULL),
(992, 'NewBlock', 'F4R86', 'Both', 0, NULL),
(993, 'NewBlock', 'F4R87', 'Both', 0, NULL),
(994, 'NewBlock', 'F4R88', 'Both', 0, NULL),
(995, 'NewBlock', 'F4R89', 'Both', 0, NULL),
(996, 'NewBlock', 'F4R90', 'Both', 0, NULL),
(997, 'NewBlock', 'F4R91', 'Both', 0, NULL),
(998, 'NewBlock', 'F4R92', 'Both', 0, NULL),
(999, 'NewBlock', 'F5R93', 'Both', 0, NULL),
(1000, 'NewBlock', 'F5R94', 'Both', 0, NULL),
(1001, 'NewBlock', 'F5R95', 'Both', 0, NULL),
(1002, 'NewBlock', 'F5R96', 'Both', 0, NULL),
(1003, 'NewBlock', 'F5R97', 'Both', 0, NULL),
(1004, 'NewBlock', 'F5R98', 'Both', 0, NULL),
(1005, 'NewBlock', 'F5R99', 'Both', 0, NULL),
(1006, 'NewBlock', 'F5R100', 'Both', 0, NULL),
(1007, 'NewBlock', 'F5R101', 'Both', 0, NULL),
(1008, 'NewBlock', 'F5R102', 'Both', 0, NULL),
(1009, 'NewBlock', 'F5R103', 'Both', 0, NULL),
(1010, 'NewBlock', 'F5R104', 'Both', 0, NULL),
(1011, 'NewBlock', 'F5R105', 'Both', 0, NULL),
(1012, 'NewBlock', 'F5R106', 'Both', 0, NULL),
(1013, 'NewBlock', 'F5R107', 'Both', 0, NULL),
(1014, 'NewBlock', 'F5R108', 'Both', 0, NULL),
(1015, 'NewBlock', 'F5R109', 'Both', 0, NULL),
(1016, 'NewBlock', 'F5R110', 'Both', 0, NULL),
(1017, 'NewBlock', 'F5R111', 'Both', 0, NULL),
(1018, 'NewBlock', 'F5R112', 'Both', 0, NULL),
(1019, 'NewBlock', 'F5R113', 'Both', 0, NULL),
(1020, 'NewBlock', 'F5R114', 'Both', 0, NULL),
(1021, 'NewBlock', 'F5R115', 'Both', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `is_approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `reg_no`, `name`, `password`, `gender`, `is_approved`) VALUES
(4, '22100523050044', 'Abel Julius', '$2y$10$.z/c.JBzIkPGduxh1eZTuurmPMlW51dtSocwl39.d4zLzqPApr./q', 'Male', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reg_no` (`reg_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
