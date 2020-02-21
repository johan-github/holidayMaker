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
