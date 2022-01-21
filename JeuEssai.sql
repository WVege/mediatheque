/*************************************************/
/* mediatheq22 (MySQL)
//
// Jeu d'essai SQL de la médiathèque
//
//
*/
/*************************************************/
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
--
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
INSERT INTO titre (idTit, idAlb, nomTit, dureeTit) 
VALUES ("0", "0", "Papaye", "3.50");


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
