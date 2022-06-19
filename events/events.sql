--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `color` int(11) NOT NULL DEFAULT '1',
  `location` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `image`, `start_date`, `end_date`, `time`, `color`, `location`, `description`) VALUES
(1, 'Corrido Fest 2016', 'events/images/corrido_fest_2016.jpg', '2016-09-08', '2016-09-09', '08:00', 1, 'Celebrity Theatre, Phoenix, United States, 85008', 'Rigo Entertainment presents <br>Corrido Fest 2016<br> Hijos de Barron<br> Los Cachorros de Juan Villarreal<br> Legado 7<br><br> Saturday, May 14, 2016<br> Sábado, 14 de Mayo de 2016<br><br> Showtime – 8:00 PM<br> Theatre Doors Open – 7:00 PM<br> Club Doors Open – 6:00 PM<br><br> El Show Comenzara a las 8:00<br> Las Puertas del teatro se abrirán a las 7:00<br> y las puertas del club abrirán a las 6:00<br><br> Ticket Prices: Rows 1-8 = $80 Rows 9-13 = $45 GA/B-Ring = $25 All ticket prices increase $10 on 5/7/16 Los precios de los boletos son de $80 de la fila 1-8 $45 de la fila 9-13 $25 La entrada general/B-Ring Todos los boletos aumentaran $10 5/7/16 All tickets subject to service charge. Se agrega un cobro adicional por servicios a cada boleto. Seating is in the round. Los asientos estarán en la ronda. Tickets purchased within 10 days of show will be held in Will Call. Los boletos adquiridos 10 días antes del show serán puestos en Will Call. Early arrival is suggested to allow for parking and security check. Lleque Temprano para chequeo de seguridad y estacionamiento.'),
(2, 'RuPaul''s Drag Race: Battle of the Seasons', 'events/images/rupauls_drag_race.jpg', '2016-09-21', '2016-09-21', '10:00 - 11:30', 2, 'Celebrity Theatre, Phoenix, United States, 85008', 'AEG Live and Danny Zelisko Presents RuPaul''s Drag Race: Battle of the Seasons 2016 Extravaganza Tour Wednesday, April 27, 2016 Showtime – 9:00 PM Theatre Doors Open – 8:00 PM Club Doors Open – 7:00 PM Ticket Prices: Rows 1-25 = $37.50 ALL tickets subject to service charge. 3/4 House - stage will NOT rotate. Tickets purchased within 10 days of show will be held in Will Call. Print @ Home option only available until 2 hours prior to show time. Early arrival is suggested to allow for parking and security check.');