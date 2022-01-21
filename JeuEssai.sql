/*************************************************/
/* mediatheq22 (MySQL)
//
// Jeu d'essai SQL de la médiathèque
//
//
*/
/*************************************************/
/*
--
--
*/
--
--
--
USE mediatheq22;

/*
--
-- Table ALBUM
--
-- (<numClas, char(6),>, <libClas, char(60),>)
*/
INSERT INTO album (idAlb, idArt, idGp, nomA, dtSortieA, nomLabelA) 
VALUES ("0", "0", "0", "Sans Chantilly", "20/10/2010", "Universeul");


/*
--
-- Table ARTISTE
--
-- (<numEtu, char(10),>, <numClas, char(6),>, <nomEtu, char(30),>, <prenomEtu, char(30),>, <dtNaisEtu, datetime,>
 ,<libRueEtu, char(32),>, <cdPostEtu, char(5),>, <libVilEtu, char(26),>, <tailleEtu, numeric(3,0),>)
*/
INSERT INTO artiste (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(001, 'CLAS0005', 'BOIS', 'Mimi', '2005-03-11 00:00:00', "Bat D Rue des copains d'abord", "02000", "SOISSONS",169);
/*
--
-- Table GROUPE
--
-- (<dtCtrl, datetime,>)
*/
INSERT INTO DATE (dtCtrl) VALUES ('2012-11-09 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-01 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-12 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-12 09:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-12 11:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-13 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-17 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-18 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2013-01-11 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2013-01-13 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2013-01-17 00:00:00');
INSERT INTO DATE (dtCtrl) VALUES ('2013-02-22 14:30:00');
INSERT INTO DATE (dtCtrl) VALUES ('2013-12-12 00:00:00');
--
INSERT INTO DATE (dtCtrl) VALUES ('2012-11-09 00:45:40');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-01 05:00:40');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-12 22:20:59');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-12 09:00:12');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-12 11:00:17');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-13 05:05:05');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-17 07:00:33');
INSERT INTO DATE (dtCtrl) VALUES ('2012-12-18 03:00:04');
INSERT INTO DATE (dtCtrl) VALUES ('2013-01-11 08:10:18');
INSERT INTO DATE (dtCtrl) VALUES ('2013-01-13 14:06:19');
INSERT INTO DATE (dtCtrl) VALUES ('2013-01-17 13:00:35');
INSERT INTO DATE (dtCtrl) VALUES ('2013-02-22 14:30:56');
INSERT INTO DATE (dtCtrl) VALUES ('2013-12-12 20:04:07');

/*
--
-- Table LIKEALBUM
--
-- (<numEns, char(4),>, <nomEns, char(30),>, <prenomEns, char(30),>, <dtNaisEns, datetime,>,
<libRueEns, char(32),>, <cdPostEns, char(5),>, <libVilEns, char(26),>)
*/
INSERT INTO ENSEIGNANT (numEns, nomEns, prenomEns, dtNaisEns, libRueEns, cdPostEns, libVilEns) VALUES
(001, 'DUPONT', 'Jean', '1978-12-12 00:00:00', '3, rue des Roses', '75010', 'PARIS');
-- ('2ZQ4', 'DUPONT', 'Jean', '1978-12-12 00:00:00', '3, rue des Roses', '75010', 'PARIS');


/*
--
-- Table TITRE
--
-- (<cdUe, char(3),>, <libUe, char(90),>)
*/
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) 
VALUES ("0", "0", "Papaye", "3.50");


/*
--
-- Table USER
--
-- (<cdMod, char(4),>, <cdUe, char(3),>, <libMod, char(90),>)
*/
INSERT INTO user (eMailUser, nomEUser, prenomUser) VALUES
("qwegera@gmail.com", "Wegera", "Quentin");           

--
-- --------------------------------------------------------
--
