CREATE DATABASE IF NOT EXISTS `gringotts` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gringotts`;


CREATE TABLE IF NOT EXISTS `wizzard_deposits` (
  `id` int(10) PRIMARY KEY,
  `first_name` varchar(50),
  `last_name` varchar(60),
  `notes` text,
  `age` int(10),
  `magic_wand_creator` varchar(100),
  `magic_wand_size` smallint(6),
  `deposit_group` varchar(20),
  `deposit_start_date` date,
  `deposit_amount` decimal(8,2),
  `deposit_interest` decimal(5,2),
  `deposit_charge` decimal(8,2),
  `deposit_expiration_date` date,
  `is_deposit_expired` bit(1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*!40000 ALTER TABLE `wizzard_deposits` DISABLE KEYS */;
INSERT INTO `wizzard_deposits` (`id`, `first_name`, `last_name`, `notes`, `age`, `magic_wand_creator`, `magic_wand_size`, `deposit_group`, `deposit_start_date`, `deposit_amount`, `deposit_interest`, `deposit_charge`, `deposit_expiration_date`, `is_deposit_expired`) VALUES
	(1, 'Hannah', 'Abbott', 'Hufflepuff student in Harry\'s year and member of Dumbledore\'s Army.', 71, 'Antioch Peverell', 19, 'Troll Chest', '1990-09-27', 47443.03, 29.28, 73.00, '1991-04-08', b'0'),
	(2, 'Bathsheda', 'Babbling', 'Ancient Runes teacher at Hogwarts', 63, 'Ollivander family', 20, 'Human Pride', '1986-03-27', 46597.40, 26.64, 64.00, '1986-05-16', b'1'),
	(3, 'Ludo', 'Bagman', 'Quidditch Beater for the Wimbourne Wasps and Head of the Department of Magical Games and Sports within the Ministry of Magic', 19, 'Mykew Gregorovitch', 18, 'Venomous Tongue', '1990-07-04', 23190.94, 14.92, 30.00, '1990-12-27', b'0'),
	(4, 'Bathilda', 'Bagshot', 'Author of A History of Magic, great aunt of Gellert Grindelwald.', 52, 'Jimmy Kiddell', 15, 'Blue Phoenix', '1993-06-07', 687.67, 18.18, 62.00, '1993-09-10', b'0'),
	(5, 'Katie', 'Bell', 'Gryffindor student one year above Harry Potter; Chaser on the Gryffindor Quidditch team.', 40, 'Arturo Cephalopos', 14, 'Troll Chest', '1981-05-08', 8092.93, 16.58, 11.00, '1982-02-03', b'1'),
	(6, 'Cuthbert', 'Binns', 'Ghost, History of Magic professor.', 28, 'Death', 23, 'Human Pride', '1985-10-26', 11902.72, 24.84, 95.00, '1985-12-27', b'1'),
	(7, 'Phineas', 'Nigellus', 'deceased great-great-grandfather of Sirius Black and former headmaster of Hogwarts, whose painting still hangs in the office and helps out the current headmaster.', 47, 'Mykew Gregorovitch', 18, 'Venomous Tongue', '1985-12-05', 11248.58, 12.31, 32.00, '1986-11-12', b'1'),
	(8, 'Regulus', 'Arcturus', 'Late brother of Sirius Black, a Death Eater who had turned against Lord Voldemort.', 46, 'Ollivander family', 22, 'Blue Phoenix', '1989-05-31', 1173.12, 9.68, 56.00, '1989-10-13', b'0'),
	(9, 'Sirius', 'Black', 'Harry Potter\'s godfather, a member of the Order of the Phoenix and prisoner on the run.', 25, 'Mykew Gregorovitch', 30, 'Troll Chest', '1993-08-29', 15793.54, 26.34, 17.00, '1994-05-21', b'0'),
	(10, 'Amelia', 'Bones', 'Head of the Department of Magical Law Enforcement, aunt of Susan Bones.', 16, 'Antioch Peverell', 30, 'Human Pride', '1981-05-15', 18778.37, 7.85, 54.00, '1982-05-06', b'1'),
	(11, 'Susan', 'Bones', 'Hufflepuff student in Harry\'s year, a member of Dumbledore\'s Army.', 72, 'Ollivander family', 11, 'Venomous Tongue', '1992-05-03', 26463.40, 30.54, 30.00, '1993-03-11', b'0'),
	(12, 'Terry', 'Boot', 'Ravenclaw student in Harry\'s year, a member of Dumbledore\'s Army.', 69, 'Mykew Gregorovitch', 28, 'Blue Phoenix', '1989-09-09', 31029.60, 27.98, 10.00, '1990-02-15', b'0'),
	(13, 'Lavender', 'Brown', 'Gryffindor student in Harry\'s year, a member of Dumbledore\'s Army, briefly Ron Weasley\'s girlfriend.', 31, 'Jimmy Kiddell', 24, 'Troll Chest', '1992-03-26', 26572.86, 26.64, 94.00, '1992-08-21', b'0'),
	(14, 'Millicent', 'Bulstrode', 'Slytherin student in Harry\'s year, a member of Umbridge\'s Inquisitorial Squad.', 65, 'Arturo Cephalopos', 17, 'Human Pride', '1988-08-16', 33309.81, 25.43, 44.00, '1988-08-21', b'1'),
	(15, 'Charity', 'Burbage', 'Professor of Muggle Studies at Hogwarts during Harry\'s time at school.', 38, 'Death', 30, 'Venomous Tongue', '1994-07-21', 33508.64, 17.14, 31.00, '1995-04-06', b'0'),
	(16, 'Frank', 'Bryce', 'Muggle gardener for the Riddle family.', 24, 'Antioch Peverell', 29, 'Blue Phoenix', '1991-12-20', 19955.71, 6.52, 30.00, '1992-07-22', b'0'),
	(17, 'Alecto', 'Carrow', 'Sister of Amycus Carrow, Death Eater and professor of Muggle Studies for one year, Deputy Headmistress of Hogwarts under Severus Snape', 52, 'Jimmy Kiddell', 24, 'Troll Chest', '1982-03-28', 25434.21, 14.96, 36.00, '1982-09-17', b'1'),
	(18, 'Amycus', 'Carrow', 'Brother of Alecto Carrow, Death Eater and professor of Defence Against the Dark Arts for one year, even though he changed it to just "Dark Arts", Deputy Headmaster of Hogwarts under Severus Snape', 23, 'Arturo Cephalopos', 30, 'Human Pride', '1988-04-18', 46943.10, 5.08, 6.00, '1988-08-05', b'1'),
	(19, 'Reginald', 'Cattermole', 'Employee of the Magical Maintenance Department for the Ministry of Magic, impersonated by Ron Weasley', 25, 'Death', 28, 'Venomous Tongue', '1981-08-14', 39864.33, 15.75, 8.00, '1981-11-24', b'1'),
	(20, 'Mary', 'Cattermole', 'Muggle-born wife of Reginald Cattermole, saved by Harry Potter from the Muggle-born Registration Commission.', 53, 'Antioch Peverell', 25, 'Blue Phoenix', '1981-08-18', 34176.09, 12.34, 71.00, '1982-04-21', b'1'),
	(21, 'Cho', 'Chang', 'Ravenclaw student one year above Harry, Quidditch Seeker, member of Dumbledore\'s Army and Harry\'s first Love interest', 64, 'Ollivander family', 20, 'Troll Chest', '1984-01-31', 49964.03, 10.83, 53.00, '1984-03-29', b'1'),
	(22, 'Penelope', 'Clearwater', 'Ravenclaw prefect and girlfriend of Percy Weasley', 58, 'Mykew Gregorovitch', 17, 'Human Pride', '1983-05-06', 5130.24, 11.04, 42.00, '1983-06-11', b'1'),
	(23, 'Michael', 'Corner', 'Ravenclaw student in Harry\'s year, member of Dumbledore\'s Army', 56, 'Jimmy Kiddell', 15, 'Venomous Tongue', '1985-03-23', 23295.97, 20.97, 35.00, '1985-04-13', b'1'),
	(24, 'Vincent', 'Crabbe,', 'Death Eater, father of Vincent Crabbe', 37, 'Arturo Cephalopos', 24, 'Blue Phoenix', '1993-03-30', 35436.82, 26.54, 17.00, '1993-04-07', b'0'),
	(25, 'Vincent', 'Crabbe', 'Slytherin student in Harry\'s year, son of Death Eater, Slytherin Quidditch team Beater, a member of the Inquisitorial Squad, a friend of Draco Malfoy.', 37, 'Death', 12, 'Troll Chest', '1986-07-18', 8597.40, 20.09, 97.00, '1986-10-18', b'1'),
	(26, 'Colin', 'Creevey', 'Muggle-born Gryffindor student one year below Harry, brother of Dennis Creevey, member of Dumbledore\'s Army, killed during the Battle of Hogwarts, after sneaking away from the younger evacuated students in the seventh book', 38, 'Antioch Peverell', 15, 'Human Pride', '1991-02-19', 27282.08, 11.82, 76.00, '1992-01-08', b'0'),
	(27, 'Dennis', 'Creevey', 'Muggle-born Gryffindor student three years below Harry, brother of Colin Creevey, member of Dumbledore\'s Army', 61, 'Ollivander family', 24, 'Venomous Tongue', '1992-07-13', 10649.78, 1.77, 23.00, '1992-09-24', b'0'),
	(28, 'Dirk', 'Cresswell', 'Muggle-born Head of the Goblin Liaison Office, went on the run in Deathly Hallows with fellow muggle-born Ted Tonks, Dean Thomas and goblins Gornuk and Griphook.', 65, 'Mykew Gregorovitch', 26, 'Blue Phoenix', '1985-02-14', 11481.54, 25.13, 23.00, '1985-04-22', b'1'),
	(29, 'Bartemius', 'Barty', 'Head of the Department of International Magical Cooperation, killed by his son Barty Crouch Jr, Transfigurated into a bone before being buried', 48, 'Jimmy Kiddell', 20, 'Troll Chest', '1992-01-24', 11137.18, 3.48, 74.00, '1992-02-17', b'0'),
	(30, 'Bartemius', 'Barty', 'Death Eater, credited with facilitating the return of Lord Voldemort, received a Dementor\'s Kiss, used Polyjuice Potion to impersonate Alastor Moody', 69, 'Arturo Cephalopos', 25, 'Human Pride', '1984-08-03', 615.09, 29.72, 36.00, '1984-11-18', b'1'),
	(31, 'John', 'Dawlish', '', 30, 'Death', 19, 'Venomous Tongue', '1984-09-14', 45046.67, 9.80, 93.00, '1985-07-11', b'1'),
	(32, 'Fleur', 'Delacour', 'French student who participated in the Triwizard Tournament representing Beauxbatons, later wed Bill Weasley.', 49, 'Antioch Peverell', 13, 'Blue Phoenix', '1982-07-24', 33063.59, 23.49, 67.00, '1982-12-08', b'1'),
	(33, 'Gabrielle', 'Delacour', 'Younger sister of Fleur Delacour, saved by Harry in the Triwizard Tournament', 66, 'Ollivander family', 14, 'Troll Chest', '1993-11-24', 9488.33, 19.45, 22.00, '1994-06-21', b'0'),
	(34, 'Dedalus', 'Diggle', 'Member of the Order of the Phoenix who took the Dursleys into hiding', 39, 'Mykew Gregorovitch', 26, 'Human Pride', '1980-10-10', 45456.26, 15.85, 85.00, '1981-06-02', b'1'),
	(35, 'Amos', 'Diggory', 'Works for the Department for the Regulation and Control of Magical Creatures, father of Cedric Diggory', 54, 'Jimmy Kiddell', 17, 'Venomous Tongue', '1985-01-27', 17997.81, 9.87, 41.00, '1985-02-20', b'1'),
	(36, 'Cedric', 'Diggory', 'Hufflepuff student two years above Harry, school prefect, Quidditch Seeker and captain, co-winner of the Triwizard Tournament', 19, 'Arturo Cephalopos', 27, 'Blue Phoenix', '1981-01-13', 16443.96, 1.12, 37.00, '1982-01-14', b'1'),
	(37, 'Elphias', 'Doge', 'School friend of Albus Dumbledore', 59, 'Death', 24, 'Troll Chest', '1982-07-07', 32356.08, 9.68, 37.00, '1983-06-11', b'1'),
	(38, 'Antonin', 'Dolohov', 'Death Eater who killed Fabian Prewett, Gideon Prewett, and Remus Lupin.', 28, 'Antioch Peverell', 23, 'Human Pride', '1991-02-28', 5585.72, 21.16, 36.00, '1991-04-16', b'0'),
	(39, 'Aberforth', 'Dumbledore', 'Brother of Albus and Ariana Dumbledore, owner of the Hog\'s Head', 49, 'Ollivander family', 11, 'Venomous Tongue', '1991-04-02', 22349.31, 9.72, 81.00, '1992-02-21', b'0'),
	(40, 'Albus', 'Dumbledore', 'Hogwarts Headmaster in Harry Potter\'s time, Transfiguration professor in Tom Riddle\'s time, founder of the Order of the Phoenix.', 50, 'Mykew Gregorovitch', 10, 'Blue Phoenix', '1992-12-18', 21106.66, 15.75, 93.00, '1993-12-07', b'0'),
	(41, 'Ariana', 'Dumbledore', '', 27, 'Jimmy Kiddell', 22, 'Troll Chest', '1980-07-26', 27191.21, 11.67, 13.00, '1981-06-12', b'1'),
	(42, 'Dudley', 'Dursley', 'Muggle son of Vernon Dursley and Petunia Evans, first cousin of Harry Potter', 15, 'Arturo Cephalopos', 29, 'Human Pride', '1994-10-07', 49767.47, 21.73, 40.00, '1995-04-01', b'0'),
	(43, 'Marjorie', 'Marge', 'Muggle sister of Vernon Dursley, breeds bulldogs, her favourite one named Ripper.', 65, 'Death', 25, 'Venomous Tongue', '1994-01-05', 909.41, 13.29, 14.00, '1994-04-14', b'0'),
	(44, 'Petunia', 'Dursley', 'Harry\'s aunt, the sister of his mother Lily. Married to Vernon Dursley and mother of Dudley Dursley', 27, 'Ollivander family', 12, 'Blue Phoenix', '1994-05-15', 36558.54, 19.54, 57.00, '1994-09-02', b'0'),
	(45, 'Vernon', 'Dursley', 'Harry Potter\'s muggle uncle, married to his aunt Petunia and father of Dudley Dursley.', 22, 'Mykew Gregorovitch', 22, 'Troll Chest', '1983-07-28', 6498.38, 11.41, 44.00, '1984-01-08', b'1'),
	(46, 'Marietta', 'Edgecombe', 'Ravenclaw student one year above Harry, member of Dumbledore\'s Army', 17, 'Jimmy Kiddell', 16, 'Human Pride', '1993-06-10', 13938.86, 9.44, 16.00, '1993-07-16', b'0'),
	(47, 'Everard', '', 'Former Headmaster of Hogwarts, a particularly famous wizard, whose portrait hangs in many institutions, including the Ministry of Magic', 54, 'Arturo Cephalopos', 30, 'Venomous Tongue', '1984-03-31', 31293.40, 9.00, 77.00, '1984-08-31', b'1'),
	(48, 'Arabella', 'Figg', 'Squib neighbour of the Dursleys\', member of the Order of the Phoenix.', 59, 'Death', 28, 'Blue Phoenix', '1986-05-09', 40953.48, 12.53, 71.00, '1986-05-15', b'1'),
	(49, 'Argus', 'Filch', 'Squib caretaker of Hogwarts', 67, 'Ollivander family', 10, 'Troll Chest', '1982-07-12', 21519.32, 6.94, 28.00, '1983-01-18', b'1'),
	(50, 'Justin', 'Finch-Fletchley', 'Muggle-born Hufflepuff student in Harry\'s year, a member of Dumbledore\'s Army.', 61, 'Mykew Gregorovitch', 28, 'Human Pride', '1987-04-02', 40613.55, 0.93, 67.00, '1987-04-04', b'1'),
	(51, 'Seamus', 'Finnigan', 'Irish Gryffindor student in Harry\'s year, a member of Dumbledore\'s Army best friend of Dean Thomas.', 35, 'Jimmy Kiddell', 25, 'Venomous Tongue', '1993-12-26', 43680.93, 30.44, 66.00, '1994-07-08', b'0'),
	(52, 'Marcus', 'Flint', 'Slytherin sixth year Quidditch captain', 57, 'Arturo Cephalopos', 30, 'Blue Phoenix', '1988-02-06', 346.16, 30.17, 20.00, '1988-07-31', b'1'),
	(53, 'Nicolas', 'Flamel', 'alchemist, the only known creator of the Philosopher\'s Stone.', 42, 'Death', 27, 'Troll Chest', '1990-01-02', 31483.33, 23.72, 26.00, '1990-08-27', b'0'),
	(54, 'Mundungus', 'Fletcher', 'Common thief and shifty member of the Order of the Phoenix', 73, 'Antioch Peverell', 29, 'Human Pride', '1993-11-02', 42130.06, 17.24, 68.00, '1994-03-21', b'0'),
	(55, 'Filius', 'Flitwick', 'Charms professor at Hogwarts and Head of Ravenclaw', 34, 'Ollivander family', 28, 'Venomous Tongue', '1990-07-14', 33656.19, 21.72, 24.00, '1990-08-17', b'0'),
	(56, 'Cornelius', 'Fudge', 'Minister for Magic in the first five books, sacked when he denied Lord Voldemort\'s return for a year.', 15, 'Mykew Gregorovitch', 22, 'Blue Phoenix', '1990-03-08', 48394.70, 1.00, 46.00, '1991-02-06', b'0'),
	(57, 'Marvolo', 'Gaunt', 'Pure-blood father of Merope and Morfin Gaunt, grandfather of Tom Marvolo Riddle.', 41, 'Antioch Peverell', 14, 'Troll Chest', '1981-04-12', 22895.49, 0.15, 89.00, '1981-09-20', b'1'),
	(58, 'Merope', 'Gaunt', 'Daughter of Marvolo Gaunt, sister of Morfin Gaunt, wife of Tom Riddle Sr, mother of Tom Marvolo Riddle/Lord Voldemort, died after childbirth, named for Merope, one of the Pleiades, who married a mortal[1]', 15, 'Ollivander family', 25, 'Human Pride', '1992-03-13', 20809.21, 18.62, 19.00, '1993-02-08', b'0'),
	(59, 'Morfin', 'Gaunt', 'Son of Marvolo Gaunt, brother of Merope Gaunt, uncle of Tom Marvolo Riddle, framed by his nephew for Muggle killings.', 45, 'Mykew Gregorovitch', 25, 'Venomous Tongue', '1994-05-03', 33175.63, 20.71, 14.00, '1995-03-24', b'0'),
	(60, 'Anthony', 'Goldstein', 'Ravenclaw student in Harry\'s year, member of Dumbledore\'s Army', 34, 'Jimmy Kiddell', 26, 'Blue Phoenix', '1980-05-11', 5264.16, 29.66, 4.00, '1980-05-22', b'1'),
	(61, 'Goyle', 'Sr', 'Death Eater, father of Gregory Goyle', 65, 'Arturo Cephalopos', 31, 'Troll Chest', '1981-05-01', 42520.28, 4.72, 75.00, '1982-03-30', b'1'),
	(62, 'Gregory', 'Goyle', 'Slytherin student in Harry\'s year, Slytherin Quidditch Beater, a member of the Inquisitorial Squad.', 51, 'Death', 25, 'Human Pride', '1983-04-06', 22014.91, 21.61, 33.00, '1984-02-20', b'1'),
	(63, 'Hermione', 'Granger', 'Muggle-born Gryffindor student in Harry\'s year, one of Harry\'s best friends, founder of Dumbledore\'s Army, Gryffindor Prefect', 18, 'Antioch Peverell', 16, 'Venomous Tongue', '1980-11-17', 20232.87, 17.54, 27.00, '1981-01-13', b'1'),
	(64, 'Gregorovitch', '', 'highly regarded East European wand-maker.', 28, 'Death', 22, 'Blue Phoenix', '1992-07-18', 44377.51, 22.05, 80.00, '1992-09-01', b'0'),
	(65, 'Fenrir', 'Greyback', 'Werewolf, infected Remus Lupin, maimed Bill Weasley and wounded Lavender Brown.', 72, 'Antioch Peverell', 11, 'Troll Chest', '1991-09-05', 15747.72, 18.22, 94.00, '1992-05-21', b'0'),
	(66, 'Gellert', 'Grindelwald', 'Dark Wizard, friend, and later rival, of Albus Dumbledore who defeated him in the 1940s.', 52, 'Ollivander family', 20, 'Human Pride', '1985-04-16', 12681.80, 14.28, 19.00, '1985-12-27', b'1'),
	(67, 'Wilhelmina', 'Grubbly-Plank', 'Substitute Care of Magical Creatures professor during Harry\'s fourth year', 29, 'Mykew Gregorovitch', 18, 'Venomous Tongue', '1980-08-19', 21263.21, 5.66, 76.00, '1980-08-21', b'1'),
	(68, 'Godric', 'Gryffindor', 'One of the four founders of Hogwarts', 24, 'Jimmy Kiddell', 16, 'Blue Phoenix', '1991-06-06', 30425.03, 22.28, 89.00, '1991-09-13', b'0'),
	(69, 'Rubeus', 'Hagrid', 'Half-giant keeper of Keys and Grounds at Hogwarts, Care of Magical Creatures professor starting from Harry\'s third year, a member of the Order of the Phoenix. Once a Hogwarts student, Hagrid was expelled in his third year.', 15, 'Death', 14, 'Troll Chest', '1983-02-04', 29087.26, 19.94, 94.00, '1983-02-18', b'1'),
	(70, 'Rolanda', 'Hooch', 'Hogwarts flying instructor, Quidditch referee', 38, 'Antioch Peverell', 29, 'Human Pride', '1989-05-05', 30985.51, 8.64, 33.00, '1989-07-03', b'0'),
	(71, 'Mafalda', 'Hopkirk', 'Witch who works in the Ministry of Magic, impersonated by Hermione Granger in Deathly Hallows.', 63, 'Ollivander family', 23, 'Venomous Tongue', '1980-08-27', 39189.95, 12.73, 46.00, '1981-07-26', b'1'),
	(72, 'Helga', 'Hufflepuff', 'One of the four founders of Hogwarts, ancestor of Hepzibah Smith', 72, 'Mykew Gregorovitch', 16, 'Blue Phoenix', '1987-02-12', 25971.83, 23.85, 74.00, '1987-06-02', b'1'),
	(73, 'Angelina', 'Johnson', 'Gryffindor student two years above Harry, Quidditch Chaser and later captain', 70, 'Jimmy Kiddell', 21, 'Troll Chest', '1984-04-04', 17479.62, 3.20, 39.00, '1984-08-25', b'1'),
	(74, 'Lee', 'Jordan', 'Gryffindor student two years above Harry, Hogwarts Quidditch commentator, good friend of Fred and George Weasley at Hogwarts', 67, 'Arturo Cephalopos', 26, 'Human Pride', '1994-07-28', 11937.54, 17.30, 39.00, '1994-12-23', b'0'),
	(75, 'Bertha', 'Jorkins', '', 58, 'Death', 11, 'Venomous Tongue', '1987-07-25', 42482.75, 30.46, 51.00, '1988-03-20', b'1'),
	(76, 'Igor', 'Karkaroff', 'Reformed Death Eater, Headmaster of Durmstrang.', 31, 'Mykew Gregorovitch', 25, 'Blue Phoenix', '1986-12-30', 21847.43, 12.66, 88.00, '1987-09-24', b'1'),
	(77, 'Viktor', 'Krum', 'Durmstrang student, Bulgarian Quidditch Seeker, participated in the Triwizard Tournament.', 37, 'Jimmy Kiddell', 28, 'Troll Chest', '1980-12-28', 31596.15, 21.29, 35.00, '1981-09-02', b'1'),
	(78, 'Bellatrix', 'Lestrange', 'Death Eater, sister of Narcissa Malfoy and Andromeda Tonks, cousin of Sirius and Regulus Black, she tortured Frank and Alice Longbottom into insanity.', 14, 'Arturo Cephalopos', 12, 'Human Pride', '1983-05-09', 37635.01, 5.85, 43.00, '1983-08-21', b'1'),
	(79, 'Rabastan', 'Lestrange', 'Death Eater, brother of Rodolphus Lestrange', 55, 'Death', 29, 'Venomous Tongue', '1984-10-22', 39468.45, 23.33, 69.00, '1985-04-23', b'1'),
	(80, 'Rodolphus', 'Lestrange', 'Death Eater, brother of Rabastan Lestrange, husband of Bellatrix Lestrange', 71, 'Antioch Peverell', 23, 'Blue Phoenix', '1982-03-26', 1302.18, 0.02, 75.00, '1982-08-25', b'1'),
	(81, 'Gilderoy', 'Lockhart', 'Fraudulent celebrity author, Defence Against the Dark Arts teacher.', 60, 'Death', 18, 'Troll Chest', '1980-10-19', 15745.69, 23.18, 16.00, '1981-07-06', b'1'),
	(82, 'Alice', 'Longbottom', 'Wife of Frank Longbottom, mother of Neville Longbottom, member of the original Order of the Phoenix, Auror, tortured into insanity by Bellatrix Lestrange along with her husband', 40, 'Antioch Peverell', 17, 'Human Pride', '1985-01-26', 4817.78, 29.58, 79.00, '1985-02-10', b'1'),
	(83, 'Augusta', 'Longbottom', 'Mother of Frank Longbottom and grandmother of Neville Longbottom', 29, 'Ollivander family', 22, 'Venomous Tongue', '1982-08-17', 28036.29, 16.55, 87.00, '1983-07-27', b'1'),
	(84, 'Frank', 'Longbottom', 'Father of Neville Longbottom, a member of the original Order of the Phoenix, Auror, tortured into insanity by Bellatrix Lestrange along with his wife.', 24, 'Mykew Gregorovitch', 31, 'Blue Phoenix', '1991-06-23', 31439.10, 11.55, 57.00, '1991-09-09', b'0'),
	(85, 'Neville', 'Longbottom', 'Gryffindor student in Harry\'s year, a member of Dumbledore\'s Army.', 47, 'Jimmy Kiddell', 20, 'Troll Chest', '1992-07-19', 1369.52, 21.04, 1.00, '1993-05-13', b'0'),
	(86, 'Luna', 'Lovegood', 'Ravenclaw student one year below Harry, a member of Dumbledore\'s Army.', 14, 'Arturo Cephalopos', 21, 'Human Pride', '1986-12-21', 9014.64, 2.83, 24.00, '1987-10-29', b'1'),
	(87, 'Xenophilius', 'Lovegood', 'Father of Luna Lovegood, and editor of The Quibbler.', 25, 'Death', 16, 'Venomous Tongue', '1992-08-09', 5908.36, 6.99, 1.00, '1992-11-19', b'0'),
	(88, 'Remus', 'Lupin', 'Gryffindor student before Harry\'s time, Marauder, a friend of James Potter, werewolf, Professor of Defence Against the Dark Arts in Harry\'s third year, a member of the Order of the Phoenix.', 19, 'Death', 11, 'Blue Phoenix', '1982-05-08', 17821.66, 19.64, 45.00, '1982-06-04', b'1'),
	(89, 'Walden', 'Macnair', 'The Committee of Disposal of Dangerous Creatures\'s executioner, also a Death-Eater', 48, 'Antioch Peverell', 29, 'Troll Chest', '1986-09-22', 23216.19, 29.39, 46.00, '1986-11-01', b'1'),
	(90, 'Draco', 'Malfoy', 'Slytherin student in Harry\'s year, Slytherin Quidditch Seeker, school prefect, member of the Inquisitorial Squad, Death Eater', 18, 'Ollivander family', 14, 'Human Pride', '1989-12-02', 33253.04, 8.37, 7.00, '1990-05-07', b'0'),
	(91, 'Lucius', 'Malfoy', 'Draco Malfoy\'s father, an influential Death-Eater, and, early in the series, governor of Hogwarts', 25, 'Mykew Gregorovitch', 22, 'Venomous Tongue', '1981-07-29', 36572.61, 2.45, 5.00, '1981-11-19', b'1'),
	(92, 'Narcissa', 'Malfoy', 'Lucius Malfoy\'s wife and Draco Malfoy\'s mother, sister of Bellatrix Lestrange.', 17, 'Jimmy Kiddell', 18, 'Blue Phoenix', '1988-06-16', 1169.86, 25.09, 98.00, '1988-07-17', b'1'),
	(93, 'Madam', 'Malkin', 'Clothes shop owner at Diagon Alley', 23, 'Arturo Cephalopos', 15, 'Troll Chest', '1985-07-17', 40137.28, 8.17, 45.00, '1986-06-13', b'1'),
	(94, 'Olympe', 'Maxime', 'Half-giantess, Headmistress of Beauxbatons', 56, 'Death', 22, 'Human Pride', '1986-02-22', 27473.95, 22.31, 39.00, '1986-05-22', b'1'),
	(95, 'Ernie', 'Macmillan', 'Hufflepuff student in Harry\'s year, school prefect, member of Dumbledore\'s Army', 63, 'Arturo Cephalopos', 13, 'Venomous Tongue', '1989-04-15', 18960.62, 13.15, 22.00, '1989-12-12', b'0'),
	(96, 'Minerva', 'McGonagall', 'Hogwarts Transfiguration professor, Head of Gryffindor House, Deputy Headmistress of Hogwarts, a member of the Order of the Phoenix.', 29, 'Death', 16, 'Blue Phoenix', '1988-07-08', 7298.35, 15.19, 39.00, '1988-12-24', b'1'),
	(97, 'Alastor', 'Mad-Eye', 'Retired Auror, member of the Order of the Phoenix, impersonated by Barty Crouch Jr. in \'The Goblet of Fire\'', 27, 'Mykew Gregorovitch', 21, 'Troll Chest', '1987-02-17', 8294.06, 18.27, 90.00, '1988-01-08', b'1'),
	(98, 'Theodore', 'Nott', 'Slytherin student in the same year as Harry Potter. Nott is one of the few students who can see Thestrals, suggesting that he has witnessed a death at some point. His father is a Death Eater and described as an elderly widower.', 17, 'Jimmy Kiddell', 26, 'Human Pride', '1982-01-20', 49041.09, 26.22, 15.00, '1982-04-14', b'1'),
	(99, 'Garrick', 'Ollivander', 'Wandmaker, owner of Ollivanders shop.', 72, 'Arturo Cephalopos', 27, 'Venomous Tongue', '1994-07-01', 41627.25, 30.61, 22.00, '1994-10-11', b'0'),
	(100, 'Pansy', 'Parkinson', 'Slytherin student in Harry\'s year, school prefect, a member of the Inquisitorial Squad, Draco Malfoy\'s girlfriend for some time.', 35, 'Death', 21, 'Blue Phoenix', '1994-01-20', 11941.54, 29.19, 71.00, '1994-05-29', b'0'),
	(101, 'Padma', 'Patil', 'Ravenclaw student in Harry\'s year, identical twin sister of Gryffindor Parvati Patil, a member of Dumbledore\'s Army.', 37, 'Antioch Peverell', 22, 'Troll Chest', '1980-05-09', 26117.57, 9.05, 47.00, '1981-03-30', b'1'),
	(102, 'Parvati', 'Patil', 'Gryffindor student in Harry\'s year, identical twin sister of Ravenclaw Padma Patil, a member of Dumbledore\'s Army.', 55, 'Death', 25, 'Human Pride', '1990-01-12', 11798.51, 1.00, 71.00, '1990-03-19', b'0'),
	(103, 'Peter', 'Pettigrew', 'Former school friend of James Potter, Sirius Black and Remus Lupin. Betrays James and Lily Potter. Death Eater, an unregistered animagus, Pettigrew is first introduced as a rat known as Scabbers.', 41, 'Jimmy Kiddell', 29, 'Venomous Tongue', '1993-03-12', 43424.70, 19.06, 87.00, '1993-07-06', b'0'),
	(104, 'Antioch', 'Peverell', 'Original owner of The Elder Wand in The Tale of the Three Brothers.', 49, 'Arturo Cephalopos', 26, 'Blue Phoenix', '1989-01-19', 36394.90, 20.56, 18.00, '1989-08-09', b'0'),
	(105, 'Cadmus', 'Peverell', 'Original owner of The Resurrection Stone in The Tale of the Three Brothers', 36, 'Death', 20, 'Troll Chest', '1983-12-16', 22327.50, 30.46, 82.00, '1984-03-20', b'1'),
	(106, 'Ignotus', 'Peverell', 'Original owner of The Invisibility Cloak in The Tale of the Three Brothers.', 43, 'Ollivander family', 29, 'Human Pride', '1983-06-10', 35261.39, 9.39, 68.00, '1983-10-05', b'1'),
	(107, 'Irma', 'Pince', 'Hogwarts librarian', 19, 'Mykew Gregorovitch', 17, 'Venomous Tongue', '1984-05-03', 12766.45, 17.02, 85.00, '1984-08-05', b'1'),
	(108, 'Sturgis', 'Podmore', 'Member of the Order of the Phoenix, imprisoned in Azkaban', 64, 'Jimmy Kiddell', 24, 'Blue Phoenix', '1980-04-07', 22485.06, 15.05, 67.00, '1981-03-22', b'1'),
	(109, 'Poppy', 'Pomfrey', 'Hogwarts school nurse', 32, 'Arturo Cephalopos', 23, 'Troll Chest', '1988-04-19', 27957.52, 6.77, 68.00, '1988-06-12', b'1'),
	(110, 'Harry', 'Potter', 'Main character of the series, son of James Potter and Lily Evans, Gryffindor student, Gryffindor Quidditch Seeker and captain, leader of Dumbledore\'s Army.', 68, 'Death', 18, 'Human Pride', '1986-09-21', 44889.88, 23.09, 10.00, '1986-11-15', b'1'),
	(111, 'James', 'Potter', 'Harry Potter\'s father, a member of the Order of the Phoenix, murdered by Lord Voldemort before the series begins.', 47, 'Ollivander family', 31, 'Venomous Tongue', '1993-06-16', 27296.66, 1.22, 86.00, '1993-11-16', b'0'),
	(112, 'Lily', 'Potter', 'Harry Potter\'s mother, a member of the Order of the Phoenix, murdered by Lord Voldemort before the series begins.', 28, 'Antioch Peverell', 13, 'Blue Phoenix', '1984-02-27', 21972.24, 26.11, 49.00, '1984-06-16', b'1'),
	(113, 'Ernest', 'Ernie', '(fl. 1993-1997), also called Ern by Stanley Shunpike, was the driver of the Knight Bus.', 58, 'Ollivander family', 20, 'Troll Chest', '1991-11-05', 11948.37, 16.85, 99.00, '1992-07-10', b'0'),
	(114, 'Quirinus', 'Quirrell', 'Defence Against the Dark Arts professor in Harry\'s first year, possessed by Lord Voldemort in Philosopher\'s Stone.', 34, 'Mykew Gregorovitch', 15, 'Human Pride', '1992-10-17', 13212.49, 5.67, 55.00, '1992-12-26', b'0'),
	(115, 'Helena', 'Ravenclaw/The', 'Daughter of Rowena Ravenclaw, stole her mother\'s diadem and hid it, killed by the Bloody Baron and became Ravenclaw\'s house ghost.', 62, 'Jimmy Kiddell', 18, 'Venomous Tongue', '1985-10-13', 1238.51, 10.17, 57.00, '1985-12-30', b'1'),
	(116, 'Rowena', 'Ravenclaw', 'Co-founder of Hogwarts, mother of Helena Ravenclaw', 40, 'Arturo Cephalopos', 28, 'Blue Phoenix', '1994-10-16', 16236.00, 11.11, 26.00, '1995-04-25', b'0'),
	(117, 'Mary', 'Riddle', 'Muggle wife of Thomas Riddle, mother of Tom Riddle Sr, mother-in-law of Merope Gaunt, grandmother of Tom Marvolo Riddle/Lord Voldemort, killed by her grandson', 24, 'Death', 12, 'Troll Chest', '1982-06-14', 43375.01, 23.97, 82.00, '1982-08-30', b'1'),
	(118, 'Thomas', 'Riddle', 'Muggle husband of Mary Riddle, father of Tom Riddle Sr, grandfather of Tom Marvolo Riddle/Lord Voldemort, killed by his grandson.', 36, 'Arturo Cephalopos', 28, 'Human Pride', '1989-05-14', 24304.57, 21.47, 86.00, '1989-12-04', b'0'),
	(119, 'Tom', 'Riddle', 'Muggle husband of Merope Gaunt, father of Tom Marvolo Riddle/Lord Voldemort, son of Thomas and Mary Riddle, killed by his son', 26, 'Death', 23, 'Venomous Tongue', '1990-04-22', 44456.65, 25.24, 76.00, '1990-08-03', b'0'),
	(120, 'Tom', 'Marvolo', 'see Lord Voldemort', 33, 'Mykew Gregorovitch', 30, 'Blue Phoenix', '1986-05-20', 23897.12, 29.66, 23.00, '1987-01-27', b'1'),
	(121, 'Demelza', 'Robins', '', 45, 'Mykew Gregorovitch', 24, 'Troll Chest', '1988-09-19', 8523.42, 5.34, 40.00, '1989-02-21', b'0'),
	(122, 'Augustus', 'Rookwood', 'Death Eater, spy working in the Department of Mysteries', 26, 'Death', 28, 'Human Pride', '1994-12-06', 43137.27, 13.09, 61.00, '1995-01-01', b'0'),
	(123, 'Albert', 'Runcorn', '', 23, 'Jimmy Kiddell', 12, 'Venomous Tongue', '1982-12-06', 47140.32, 3.77, 35.00, '1983-01-13', b'1'),
	(124, 'Scabior', '', 'Snatcher who captures Harry Potter, Ron Weasley and Hermione Granger in Deathly Hallows.', 23, 'Arturo Cephalopos', 21, 'Blue Phoenix', '1992-06-06', 25342.73, 14.88, 27.00, '1993-05-07', b'0'),
	(125, 'Newt', 'Scamander', 'Author of Fantastic Beasts and Where to Find Them, among other books. Headmaster and, Hufflepuff student at Hogwarts.', 49, 'Death', 24, 'Troll Chest', '1988-02-08', 36247.69, 28.85, 22.00, '1988-12-31', b'1'),
	(126, 'Rufus', 'Scrimgeour', 'Head of the Auror Office, replaces Cornelius Fudge as Minister for Magic.', 61, 'Ollivander family', 13, 'Human Pride', '1987-07-31', 39764.02, 25.14, 10.00, '1988-04-03', b'1'),
	(127, 'Kingsley', 'Shacklebolt', 'Auror, replaces Pius Thicknesse as Minister for Magic, member of the Order of the Phoenix', 33, 'Mykew Gregorovitch', 26, 'Venomous Tongue', '1992-03-06', 31218.37, 8.53, 42.00, '1993-01-30', b'0'),
	(128, 'Stan', 'Shunpike', 'Conductor of the Knight Bus, later jailed in Azkaban on suspicions of being a death-eater.', 30, 'Jimmy Kiddell', 22, 'Blue Phoenix', '1992-09-21', 19775.78, 0.14, 61.00, '1992-12-07', b'0'),
	(129, 'Aurora', 'Sinistra', 'Professor and member of the Astronomy Department at Hogwarts, a witch with dark skin, hair, and eyes.', 47, 'Arturo Cephalopos', 22, 'Troll Chest', '1991-06-28', 17257.17, 30.67, 45.00, '1992-01-25', b'0'),
	(130, 'Rita', 'Skeeter', 'Reporter for the Daily Prophet, author of The Life and Lies of Albus Dumbledore, unregistered animagus.', 38, 'Death', 13, 'Human Pride', '1990-04-18', 22876.54, 17.02, 3.00, '1990-07-06', b'0'),
	(131, 'Horace', 'Slughorn', 'Former Potions professor at Hogwarts and Head of Slytherin House who taught Tom Marvolo Riddle and returns to Hogwarts in Harry\'s sixth year.', 32, 'Ollivander family', 10, 'Venomous Tongue', '1986-10-30', 19165.02, 7.95, 76.00, '1987-09-27', b'1'),
	(132, 'Salazar', 'Slytherin', 'Co-founder of Hogwarts, Parseltongue, ancestor of the Gaunt family and Lord Voldemort.', 59, 'Antioch Peverell', 28, 'Blue Phoenix', '1980-10-26', 1168.22, 26.55, 71.00, '1981-01-30', b'1'),
	(133, 'Hepzibah', 'Smith', 'Elderly, wealthy antique collector, descendant of Helga Hufflepuff, murdered and robbed by Tom Marvolo Riddle', 30, 'Ollivander family', 12, 'Troll Chest', '1983-05-25', 33665.13, 7.98, 21.00, '1983-08-17', b'1'),
	(134, 'Zacharias', 'Smith', 'Hufflepuff student, a member of Dumbledore\'s Army.', 39, 'Antioch Peverell', 15, 'Human Pride', '1985-12-01', 45543.40, 24.78, 98.00, '1986-10-29', b'1'),
	(135, 'Severus', 'Snape', 'Hogwarts, Potions and later Defence Against the Dark Arts professor, Head of Slytherin House, a member of both the Death Eaters and the Order of the Phoenix.', 53, 'Mykew Gregorovitch', 15, 'Venomous Tongue', '1992-11-06', 17820.90, 16.53, 38.00, '1992-12-20', b'0'),
	(136, 'Alicia', 'Spinnet', 'Chaser on the Gryffindor Quidditch team, two years above Harry Potter at Hogwarts. Member of Dumbledore\'s Army.', 65, 'Jimmy Kiddell', 16, 'Blue Phoenix', '1980-02-06', 6269.39, 3.66, 77.00, '1980-03-04', b'1'),
	(137, 'Pomona', 'Sprout', 'Hogwarts Herbology professor, Head of Hufflepuff House.', 46, 'Arturo Cephalopos', 24, 'Troll Chest', '1993-06-10', 16789.73, 30.80, 58.00, '1993-10-07', b'0'),
	(138, 'Pius', 'Thicknesse', 'Minister for Magic while under the Imperius Curse, later replaced by Kingsley Shacklebolt.', 47, 'Death', 24, 'Human Pride', '1982-06-01', 8359.46, 26.64, 59.00, '1983-01-04', b'1'),
	(139, 'Dean', 'Thomas', 'Gryffindor student in Harry\'s year, a member of Dumbledore\'s Army, briefly Ginny Weasley\'s boyfriend, Gryffindor Quidditch Chaser.', 69, 'Antioch Peverell', 18, 'Venomous Tongue', '1992-12-04', 6579.08, 7.43, 69.00, '1993-04-09', b'0'),
	(140, 'Andromeda', 'Tonks', 'Sister of Bellatrix Lestrange and Narcissa Malfoy, disowned by her family for marrying Muggle-born Ted Tonks, mother of Nymphadora Tonks.', 68, 'Death', 28, 'Blue Phoenix', '1993-02-18', 30024.64, 8.80, 36.00, '1993-06-14', b'0'),
	(141, 'Nymphadora', 'Tonks', 'Daughter of Ted and Andromeda Tonks, Auror and member of the Order of the Phoenix. She marries Remus Lupin, and become the mother of Teddy Lupin.', 18, 'Jimmy Kiddell', 13, 'Troll Chest', '1982-11-25', 16724.98, 22.83, 37.00, '1983-09-21', b'1'),
	(142, 'Ted', 'Tonks', 'Muggle-born husband of Andromeda and father of Nymphadora Tonks.', 19, 'Arturo Cephalopos', 13, 'Human Pride', '1984-03-07', 39096.67, 25.20, 82.00, '1984-10-04', b'1'),
	(143, 'Travers', '', '', 53, 'Death', 24, 'Venomous Tongue', '1984-01-05', 25085.58, 1.95, 91.00, '1984-05-27', b'1'),
	(144, 'Sybill', 'Patricia', 'Hogwarts Divination professor, predicted the prophecy that prompted Lord Voldemort to go after the Potters', 25, 'Ollivander family', 17, 'Blue Phoenix', '1994-07-05', 15237.30, 7.31, 21.00, '1994-07-21', b'0'),
	(145, 'Dolores', 'Jane', 'Senior Undersecretary to the Minister for Magic, Defence Against the Dark Arts professor, Hogwarts High Inquisitor, Headmistress of Hogwarts, who enthusiastically joins in the persecution of half-bloods under Voldermort.', 34, 'Mykew Gregorovitch', 30, 'Troll Chest', '1982-09-25', 10628.58, 12.08, 50.00, '1983-01-22', b'1'),
	(146, 'Emmeline', 'Vance', 'a member of the party that brings Harry to Grimmauld Place, a member of the Order of the Phoenix. Described as "A stately looking witch in an emerald green shawl".', 57, 'Jimmy Kiddell', 25, 'Human Pride', '1992-10-30', 34993.10, 29.94, 82.00, '1992-11-03', b'0'),
	(147, 'Romilda', 'Vane', 'Hogwarts student who tried to romance Harry with Chocolate Cauldrons containing a love potion from Weasley\'s Wizard Wheezes', 17, 'Mykew Gregorovitch', 16, 'Venomous Tongue', '1983-09-06', 26267.34, 16.63, 100.00, '1984-04-15', b'1'),
	(148, 'Septima', 'Vector', 'Arithmancy professor at Hogwarts.', 43, 'Arturo Cephalopos', 26, 'Blue Phoenix', '1981-01-23', 6146.94, 6.57, 66.00, '1982-01-22', b'1'),
	(149, 'Lord', 'Voldemort', 'The villain of the series, the murderer of Harry Potter\'s parents and many others in his quest for immortality and absolute power.', 25, 'Death', 31, 'Troll Chest', '1989-04-28', 38085.84, 22.53, 88.00, '1989-08-01', b'0'),
	(150, 'Arthur', 'Weasley', 'Muggle-obsessed Ministry of Magic employee. Husband of Molly Weasley, father of Bill, Charlie, Percy, Fred, George, Ron, and Ginny Weasley, member of the Order of the Phoenix', 65, 'Antioch Peverell', 26, 'Human Pride', '1989-09-05', 6647.70, 15.82, 23.00, '1989-09-28', b'0'),
	(151, 'Bill', 'Weasley', 'Oldest son of Arthur and Molly Weasley, Gringotts employee.', 51, 'Death', 30, 'Venomous Tongue', '1988-04-01', 11346.57, 2.63, 98.00, '1988-08-03', b'1'),
	(152, 'Charlie', 'Weasley', 'Second son of Arthur and Molly Weasley, and a member of the Order of the Phoenix, works with dragons in Romania.', 21, 'Jimmy Kiddell', 16, 'Blue Phoenix', '1988-11-14', 7831.46, 26.31, 20.00, '1989-07-26', b'0'),
	(153, 'Fred', 'Weasley', 'Son of Arthur and Molly Weasley and identical twin brother of George Weasley, a member of Dumbledore\'s Army, Gryffindor Quidditch Beater, co-owner of Weasleys\' Wizard Wheezes, killed in an explosion caused by Augustus Rookwood in the Battle of Hogwarts.', 48, 'Arturo Cephalopos', 18, 'Troll Chest', '1992-02-22', 23860.37, 28.37, 39.00, '1992-05-06', b'0'),
	(154, 'George', 'Weasley', 'Son of Arthur and Molly Weasley and identical twin brother of Fred Weasley, member of Dumbledore\'s Army, Gryffindor Quidditch Beater, co-owner of Weasleys\' Wizard Wheezes, marries Angelina Johnson', 48, 'Death', 13, 'Human Pride', '1994-11-16', 16556.88, 2.82, 19.00, '1994-12-13', b'0'),
	(155, 'Ginny', 'Weasley', 'Only daughter and youngest child of Arthur and Molly Weasley, Gryffindor student one year under Harry, Gryffindor Quidditch Seeker and Chaser, a member of Dumbledore\'s Army.', 47, 'Ollivander family', 12, 'Venomous Tongue', '1990-03-21', 9347.41, 28.27, 78.00, '1990-03-31', b'0'),
	(156, 'Molly', 'Weasley', 'Wife of Arthur Weasley, mother of Bill, Charlie, Percy, Fred, George, Ron and Ginny Weasley, a member of the Order of the Phoenix.', 14, 'Mykew Gregorovitch', 18, 'Blue Phoenix', '1992-02-03', 39815.04, 9.43, 53.00, '1992-08-30', b'0'),
	(157, 'Percy', 'Weasley', 'Third son of Arthur and Molly Weasley, Gryffindor prefect and Head Boy then Ministry of Magic employee, long estranged from his family before joining them against the Death Eaters in Deathly Hallows,', 54, 'Arturo Cephalopos', 14, 'Troll Chest', '1985-04-24', 25537.20, 3.05, 12.00, '1985-05-16', b'1'),
	(158, 'Ron', 'Weasley', 'Harry\'s close friend, youngest Son of Arthur and Molly Weasley, Gryffindor Quidditch Keeper, school prefect, a member of Dumbledore\'s Army.', 51, 'Death', 26, 'Human Pride', '1985-07-16', 4085.37, 25.25, 32.00, '1985-09-29', b'1'),
	(159, 'Oliver', 'Wood', 'Hogwarts student, Gryffindor Quidditch Keeper and captain.', 26, 'Ollivander family', 10, 'Venomous Tongue', '1985-06-29', 40902.03, 10.82, 68.00, '1985-08-01', b'1'),
	(160, 'Kennilworthy', 'Whisp', 'author of "Quidditch Through the Ages"', 57, 'Mykew Gregorovitch', 31, 'Blue Phoenix', '1989-03-11', 17335.62, 21.72, 7.00, '1989-10-09', b'0'),
	(161, 'Yaxley', '', 'Death Eater, Head of Magical Law Enforcement under Voldemort\'s regime.', 38, 'Jimmy Kiddell', 16, 'Troll Chest', '1988-01-03', 26638.92, 7.11, 74.00, '1988-02-21', b'1'),
	(162, 'Blaise', 'Zabini', 'Slytherin student in Harry\'s year, friends with Draco Malfoy.', 16, 'Mykew Gregorovitch', 11, 'Human Pride', '1990-03-28', 3049.06, 6.27, 61.00, '1990-07-04', b'0');

SELECT * FROM `wizzard_deposits`;

-- records' count 
SELECT COUNT(`id`)
AS `count`
FROM `wizzard_deposits`;

-- longest magic wand
SELECT MAX(`magic_wand_size`)
AS `longest_magic_wand` 
FROM `wizzard_deposits`; 

-- longest magic wand per deposit groups
SELECT DISTINCT `deposit_group`, MAX(`magic_wand_size`)
AS `longest_magic_wand` 
FROM `wizzard_deposits`
GROUP BY `deposit_group`
ORDER BY `longest_magic_wand`, `deposit_group`; 

-- smallest deposit group per magic wand size
SELECT `deposit_group` FROM `wizzard_deposits`
GROUP BY `deposit_group`
ORDER BY MIN(`magic_wand_size`)
LIMIT 1;
 
-- deposits sum
SELECT `deposit_group`,
SUM(`deposit_amount`) AS `total_sum` 
FROM `wizzard_deposits`
GROUP BY `deposit_group`
ORDER BY `total_sum`;

-- deposits sum for ollivander family
SELECT `deposit_group`, 
SUM(`deposit_amount`) AS `total_sum` 
FROM `wizzard_deposits`
WHERE `magic_wand_creator` = 'Ollivander family'
GROUP BY `deposit_group`
ORDER BY `deposit_group`;

-- deposits filter
SELECT `deposit_group`, 
SUM(`deposit_amount`) AS `total_sum` 
FROM `wizzard_deposits`
WHERE `magic_wand_creator` = 'Ollivander family'
GROUP BY `deposit_group`
HAVING `total_sum` < 150000
ORDER BY `total_sum` DESC;

-- deposit charge
SELECT `deposit_group`, `magic_wand_creator`, 
MIN(`deposit_charge`) AS `min_deposit_charge`
FROM `wizzard_deposits`
GROUP BY `deposit_group`, `magic_wand_creator`
ORDER BY `magic_wand_creator` ASC, `deposit_group` ASC;

-- age groups
SELECT (CASE 
WHEN `age` BETWEEN 0 AND 10 THEN '[0-10]'
WHEN `age` BETWEEN 11 AND 20 THEN '[11-20]'
WHEN `age` BETWEEN 21 AND 30 THEN '[21-30]'
WHEN `age` BETWEEN 31 AND 40 THEN '[31-40]'
WHEN `age` BETWEEN 41 AND 50 THEN '[41-50]'
WHEN `age` BETWEEN 51 AND 60 THEN '[51-60]'
ELSE '[61+]'
END) AS `age_group`,
COUNT(*) AS `wizard_count`
FROM `wizzard_deposits`
GROUP BY `age_group`
ORDER BY `age_group`;
 
-- first letter
SELECT LEFT(`first_name`, 1) AS 'first_letter'
FROM `wizzard_deposits`
WHERE `deposit_group` = 'Troll Chest'
GROUP BY `first_letter`
ORDER BY `first_letter`; 

-- average interest
SELECT `deposit_group`, `is_deposit_expired`,
AVG(`deposit_interest`) AS `average_interest`
FROM `wizzard_deposits`
WHERE `deposit_start_date` > '1985-01-01'
GROUP BY `deposit_group`, `is_deposit_expired`
ORDER BY `deposit_group` DESC, `is_deposit_expired` ASC;