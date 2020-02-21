<<<<<<< HEAD
-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Serverversion:                5.7.29-log - MySQL Community Server (GPL)
-- Server-OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumpar data för tabell holidaymaker.accommodations: ~5 rows (ungefär)
/*!40000 ALTER TABLE `accommodations` DISABLE KEYS */;
INSERT INTO `accommodations` (`id`, `destination`, `facility_profile_id`) VALUES
	(1, 'Stockholm', 1),
	(2, 'Göteborg', 2),
	(3, 'Malmö', 4),
	(4, 'Åre', 3),
	(5, 'Kiruna', 5);
/*!40000 ALTER TABLE `accommodations` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.facility_profiles: ~5 rows (ungefär)
/*!40000 ALTER TABLE `facility_profiles` DISABLE KEYS */;
INSERT INTO `facility_profiles` (`id`, `pool`, `kids_club`, `restaurant`, `late_night_entertainment`, `arcade_hall`) VALUES
	(1, b'1', b'1', b'1', b'1', b'1'),
	(2, b'1', b'1', b'0', b'0', b'1'),
	(3, b'0', b'0', b'1', b'1', b'0'),
	(4, b'0', b'1', b'0', b'1', b'1'),
	(5, b'0', b'0', b'1', b'0', b'0');
/*!40000 ALTER TABLE `facility_profiles` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.guests: ~3 rows (ungefär)
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` (`id`, `first_name`, `last_name`, `security_number`) VALUES
	(1, 'Per', 'Persson', '1988-01-01-1234'),
	(2, 'Janne', 'Jansson', '1999-01-02-4321'),
	(3, 'Kajsa', 'Olofsson', '1974-04-12-3344'),
	(4, 'Nanna', 'Haraldsdotter', '1993-04-22-6789'),
	(5, 'Jessica', 'Larssen', '1995-11-04-7443'),
	(6, 'Elin', 'Carlzon', '1981-06-06-4221'),
	(7, 'Maja', 'Carlzon', '1999-02-01-1123'),
	(8, 'Nicklas', 'Andersson', '1979-12-24-7889'),
	(9, 'Yvonne', 'Tykvist', '1968-04-20-9112'),
	(10, 'Urban', 'Jansson', '1976-05-16-4339');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.reservations: ~3 rows (ungefär)
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` (`id`, `booking_start`, `booking_end`, `room_id`, `num_of_company`, `guest_id`) VALUES
	(1, '2020-06-01', '2020-06-06', 3, 2, 3),
	(2, '2020-06-02', '2020-06-21', 6, 5, 2),
	(3, '2020-07-03', '2020-07-09', 8, 2, 1),
	(4, '2020-07-10', '2020-07-18', 7, 3, 5),
	(5, '2020-07-10', '2020-07-15', 8, 2, 5),
	(6, '2020-06-01', '2020-06-02', 1, 1, 6),
	(7, '2020-06-04', '2020-06-09', 15, 4, 8),
	(8, '2020-07-23', '2020-07-28', 9, 5, 7),
	(9, '2020-06-10', '2020-06-17', 9, 4, 7),
	(10, '2020-06-05', '2020-06-28', 2, 2, 5),
	(11, '2020-06-22', '2020-06-23', 10, 1, 4),
	(12, '2020-07-01', '2020-07-06', 10, 1, 6),
	(13, '2020-06-29', '2020-07-05', 11, 2, 10),
	(14, '2020-07-06', '2020-07-13', 12, 6, 9),
	(15, '2020-07-12', '2020-07-20', 13, 1, 4),
	(16, '2020-06-12', '2020-06-13', 1, 1, 6),
	(17, '2020-07-20', '2020-07-30', 15, 7, 3),
	(18, '2020-06-15', '2020-06-21', 15, 4, 5),
	(19, '2020-07-02', '2020-07-14', 14, 2, 8),
	(20, '2020-07-30', '2020-07-31', 13, 1, 2);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.rooms: ~9 rows (ungefär)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` (`id`, `room_size`, `accommodation_id`, `price_per_night`) VALUES
	(1, 'single_room', 1, 600),
	(2, 'double_room', 1, 950),
	(3, 'suit_room', 1, 1290),
	(4, 'single_room', 2, 600),
	(5, 'double_room', 2, 950),
	(6, 'suit_room', 2, 1290),
	(7, 'single_room', 3, 600),
	(8, 'double_room', 3, 950),
	(9, 'suit_room', 3, 1290),
	(10, 'single_room', 4, 600),
	(11, 'double_room', 4, 950),
	(12, 'suit_room', 4, 1250),
	(13, 'single_room', 5, 600),
	(14, 'double_room', 5, 950),
	(15, 'suit_room', 5, 1250);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
=======
-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Serverversion:                5.7.29-log - MySQL Community Server (GPL)
-- Server-OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumpar data för tabell holidaymaker.accommodations: ~5 rows (ungefär)
/*!40000 ALTER TABLE `accommodations` DISABLE KEYS */;
INSERT INTO `accommodations` (`id`, `destination`, `facility_profile_id`) VALUES
	(1, 'Stockholm', 1),
	(2, 'Göteborg', 2),
	(3, 'Malmö', 4),
	(4, 'Åre', 3),
	(5, 'Kiruna', 5);
/*!40000 ALTER TABLE `accommodations` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.facility_profiles: ~5 rows (ungefär)
/*!40000 ALTER TABLE `facility_profiles` DISABLE KEYS */;
INSERT INTO `facility_profiles` (`id`, `pool`, `kids_club`, `restaurant`, `late_night_entertainment`, `arcade_hall`) VALUES
	(1, b'1', b'1', b'1', b'1', b'1'),
	(2, b'1', b'1', b'0', b'0', b'1'),
	(3, b'0', b'0', b'1', b'1', b'0'),
	(4, b'0', b'1', b'0', b'1', b'1'),
	(5, b'0', b'0', b'1', b'0', b'0');
/*!40000 ALTER TABLE `facility_profiles` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.guests: ~3 rows (ungefär)
/*!40000 ALTER TABLE `guests` DISABLE KEYS */;
INSERT INTO `guests` (`id`, `first_name`, `last_name`, `security_number`) VALUES
	(1, 'Per', 'Persson', '1988-01-01-1234'),
	(2, 'Janne', 'Jansson', '1999-01-02-4321'),
	(3, 'Kajsa', 'Olofsson', '1974-04-12-3344');
/*!40000 ALTER TABLE `guests` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.reservations: ~3 rows (ungefär)
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` (`id`, `booking_start`, `booking_end`, `room_id`, `num_of_company`, `guest_id`) VALUES
	(1, '2020-06-01', '2020-06-06', 3, 2, 3),
	(2, '2020-06-02', '2020-06-21', 6, 5, 2),
	(3, '2020-07-03', '2020-07-30', 8, 2, 1);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;

-- Dumpar data för tabell holidaymaker.rooms: ~9 rows (ungefär)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` (`id`, `room_size`, `accommodation_id`, `price_per_night`) VALUES
	(1, 'single_room', 1, 600),
	(2, 'double_room', 1, 950),
	(3, 'suit_room', 1, 1290),
	(4, 'single_room', 2, 600),
	(5, 'double_room', 2, 950),
	(6, 'suit_room', 2, 1290),
	(7, 'single_room', 3, 600),
	(8, 'double_room', 3, 950),
	(9, 'suit_room', 3, 1290);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
>>>>>>> master
