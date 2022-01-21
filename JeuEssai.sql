/*************************************************/
/* mediatheq22 (MySQL)
//
// Jeu d'essai SQL de la médiathèque
//
//
*/
/*************************************************/
<<<<<<< HEAD


/* Base de données: mediatheq22 */

=======
--
-- Base de données: mediatheq22
--
>>>>>>> 758c9bfcb693a27d31672a0b96f336862a5788a0
USE mediatheq22;
/*
--
-- Table GROUPE

<<<<<<< HEAD
*/
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (100, 'Footprintsonthemoon', "2003-03-01");
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (200, 'none', "2010-03-31");
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (300, 'Beatles', "1840-09-16");
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (400, 'RedHot', "1970-05-17");
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (500, 'SpiceGirls', "1840-06-27");
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (600, 'OMGLAFOLIE', "1540-04-17");

=======
>>>>>>> 758c9bfcb693a27d31672a0b96f336862a5788a0
/*
--
-- Table ARTISTE
--

--
*/
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (666, 100, 'AZNAVOUR', 'Choucou');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (777, 200, 'SOFIANE', 'Bibi');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (888, 300, 'GIMS', 'Maître');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (999, 400, 'BENT', 'Amel');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (111, 500, 'MAPIOUX', 'Sosomanes');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (222, 600, 'MARIA', 'Choucou');
--



/*
--
-- Table ALBUM
--
-- (<numClas, char(6),>, <libClas, char(60),>)
*/
INSERT INTO album (idAlb, idArt, idGp, nomA, dtSortieA, nomLabelA) VALUES (123, 666, 100, "Sans Chantilly", "2010-03-23", "Universeul");
INSERT INTO album (idAlb, idArt, idGp, nomA, dtSortieA, nomLabelA) VALUES (234, 777, 200, "Sans Chantilly", "2010-03-23", "Universeul");
INSERT INTO album (idAlb, idArt, idGp, nomA, dtSortieA, nomLabelA) VALUES (345, 888, 300, "Sans Chantilly", "2010-03-23", "Universeul");
INSERT INTO album (idAlb, idArt, idGp, nomA, dtSortieA, nomLabelA) VALUES (456, 999, 400, "Sans Chantilly", "2010-03-23", "Universeul");
INSERT INTO album (idAlb, idArt, idGp, nomA, dtSortieA, nomLabelA) VALUES (567, 111, 500, "Sans Chantilly", "2010-03-23", "Universeul");
INSERT INTO album (idAlb, idArt, idGp, nomA, dtSortieA, nomLabelA) VALUES (678, 222, 600, "Sans Chantilly", "2010-03-23", "Universeul");





/*
--
-- Table LIKEALBUM
--
--
*/
INSERT INTO likealbum (eMailUser, idAlb) VALUES
("qwegera@gmail", "7");


/*
--
-- Table TITRE
--
-- 
*/
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) VALUES (1, 123, "Papaye", 3.50);
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) VALUES (2, 234, "Papaye", 3.50);
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) VALUES (3, 345, "Papaye", 3.50);
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) VALUES (4, 456, "Papaye", 3.50);
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) VALUES (5, 567, "Papaye", 3.50);
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) VALUES (6, 678, "Papaye", 3.50);



/*
--
-- Table USER
--
--
*/
INSERT INTO user (eMailUser, nomEUser, prenomUser) VALUES
("qwegera@gmail.com", "Wegera", "Quentin");
INSERT INTO user (eMailUser, nomEUser, prenomUser) VALUES
("auriane-mirana@gmail.com", "Sicard", "Auriane");      

--
-- --------------------------------------------------------
--
