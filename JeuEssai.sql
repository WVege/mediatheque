/*************************************************/
/* mediatheq22 (MySQL)
//
// Jeu d'essai SQL de la médiathèque
//
// 					   		Le 16/01/22 23:37:00
*/
/*************************************************/
/*
--
--
*/
--
-- Base de données: mediatheq22
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
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (001, 100, 'AZNAVOUR', 'Choucou');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (002, 200, 'SOFIANE', 'Bibi');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (003, 300, 'GIMS', 'Maître');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (004, 400, 'BENT', 'Amel');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (005, 500, 'MAPIOUX', 'Sosomanes');
INSERT INTO artiste (idArt, idGp, nomArt, prenomArt) VALUES (006, 600, 'MARIA', 'Choucou');
--

/*
--
-- Table GROUPE
--
-- (<dtCtrl, datetime,>)
*/
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (100);
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (200);
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (300);
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (400);
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (500);
INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (600);


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
