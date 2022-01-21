/*************************************************/
/* mediatheq22 (MySQL)
//
// Jeu d'essai SQL de la médiathèque
//
// 							Le 16/01/22 23:37:00
*/
/*************************************************/
/* 
--	Gestion des notes en ne respectant pas les CIR
--	BDD MySQL
*/
--
-- Base de données: `GESTIONNOTES`
--
USE mediatheq22;

/*
-- Ne Respectant Pas les contraintes d'intégrité référentielle
*/

/*
--
-- Table ALBUM
--
-- (<numClas, char(6),>, <libClas, char(60),>)
*/
INSERT INTO CLASSE (numClas, libClas) VALUES ("CLAS0001", "1ère année INFO Talence");
INSERT INTO CLASSE (numClas, libClas) VALUES ("CLAS0002", "2ème année INFO Talence");
INSERT INTO CLASSE (numClas, libClas) VALUES ("CLAS0003", "1ère année MMI Bordeaux");
INSERT INTO CLASSE (numClas, libClas) VALUES ("CLAS0004", "2ème année MMI Bordeaux");
INSERT INTO CLASSE (numClas, libClas) VALUES ("CLAS0005", "LP Média Planning Bordeaux");
INSERT INTO CLASSE (numClas, libClas) VALUES ("CLAS0006", "LP MIAMI Tarbes");

/*
--
-- Table ARTISTE
--
-- (<numEtu, char(10),>, <numClas, char(6),>, <nomEtu, char(30),>, <prenomEtu, char(30),>, <dtNaisEtu, datetime,>
 ,<libRueEtu, char(32),>, <cdPostEtu, char(5),>, <libVilEtu, char(26),>, <tailleEtu, numeric(3,0),>)
*/
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(001, 'CLAS0005', 'BOIS', 'Mimi', '2005-03-11 00:00:00', "Bat D Rue des copains d'abord", "02000", "SOISSONS",169);
-- ('3DH4UN', 'CLAS0005', 'BOIS', 'Mimi', '2005-03-11 00:00:00', "Bat D Rue des copains d'abord", "02000", "SOISSONS",169);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(002, 'CLAS0003', 'MAUROIZ', 'Pierre', '2004-01-01 00:00:00', "Avenue de la progression", "33000", "BORDEAUX", 178);
-- ('A01267', 'CLAS0003', 'MAUROIZ', 'Pierre', '2004-01-01 00:00:00', "Avenue de la progression", "33000", "BORDEAUX", 178);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(003, 'CLAS0004', 'MICHOAL', 'Albert', '2005-02-22 00:00:00', "Rue des tulipes rouges", "33000", "BORDEAUX", 167);
-- ('D3XM09', 'CLAS0004', 'MICHOAL', 'Albert', '2005-02-22 00:00:00', "Rue des tulipes rouges", "33000", "BORDEAUX", 167);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(004, NULL, 'COLLINS', 'Phil', '2005-09-04 00:00:00', "Place de la musique", "75003", "PARIS", 183);
-- ('GHPLQ1', NULL, 'COLLINS', 'Phil', '2005-09-04 00:00:00', "Place de la musique", "75003", "PARIS", 183);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(005, 'CLAS0003', 'DUFOUR', 'Michel', '2005-08-08 00:00:00', "Rue des Roses", "33700", "MÉRIGNAC", NULL);
-- ('H23KK1', 'CLAS0003', 'DUFOUR', 'Michel', '2005-08-08 00:00:00', "Rue des Roses", "33700", "MÉRIGNAC", NULL);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(006, 'CLAS0004', 'CHAUROND', 'Wiefried', '2004-02-20 00:00:00', "23, avenue des aiguilles", "33320", "BRUGES", 176);
-- ('KV7N03', 'CLAS0004', 'CHAUROND', 'Wiefried', '2004-02-20 00:00:00', "23, avenue des aiguilles", "33320", "BRUGES", 176);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(007, 'CLAS0004', 'MOUCHOUD', 'Xavier', '2005-04-14 00:00:00', "Rue des roses jaunes", "33000", "BORDEAUX", NULL);
-- ('LK33D2', 'CLAS0004', 'MOUCHOUD', 'Xavier', '2005-04-14 00:00:00', "Rue des roses jaunes", "33000", "BORDEAUX", NULL);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(008, 'CLAS0003', 'QUINAZ', 'Peter', '2004-09-09 00:00:00', "Rue des poissons", "33110", "LE BOUSCAT", 169);
-- ('QR5P09', 'CLAS0003', 'QUINAZ', 'Peter', '2004-09-09 00:00:00', "Rue des poissons", "33110", "LE BOUSCAT", 169);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(009, 'CLAS0005', 'KOUAZ', 'Alan', '2004-02-03 00:00:00', "Impasse Filibert", "75011", "PARIS", 174);
-- ('SQ980A', 'CLAS0005', 'KOUAZ', 'Alan', '2004-02-03 00:00:00', "Impasse Filibert", "75011", "PARIS", 174);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(010, 'CLAS0004', 'ROUX', 'Raymond', '2003-07-23 00:00:00', "Rue des roses roses", "33110","LE BOUSCAT", 172);
-- ('WM56J0', 'CLAS0004', 'ROUX', 'Raymond', '2003-07-23 00:00:00', "Rue des roses roses", "33110","LE BOUSCAT", 172);
--
-- Etudiant aussi enseignant
--
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(013, 'CLAS0002', 'La GAFFE', 'Gaston', '2030-01-01 00:00:00', "Rue des dormeurs", "75000","La Ville qui dort", 169);
-- ('WL45G', 'CLAS0002', 'La GAFFE', 'Gaston', '2030-01-01 00:00:00', "Rue des dormeurs", "75000","La Ville qui dort", 169);
--
-- Etudiant : next id à partir de la classe
--
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(011, 'CLAS0002', 'Dubois', 'Tom', '2000-06-06 00:00:00', "Rue des Loulous", "75010","Paris", 179);
-- ('INFO001', 'CLAS0002', 'Dubois', 'Tom', '2000-06-06 00:00:00', "Rue des Loulous", "75010","Paris", 179);
INSERT INTO ETUDIANT (numEtu, numClas, nomEtu, prenomEtu, dtNaisEtu, libRueEtu, cdPostEtu, libVilEtu, tailleEtu)
		VALUES
(012, 'CLAS0003', 'Dumalin', 'Tim', '2000-11-11 00:00:00', "Rue des Riris", "75010","Paris", 171);
-- ('SRCB001', 'CLAS0003', 'Dumalin', 'Tim', '2000-11-11 00:00:00', "Rue des Riris", "75010","Paris", 171);

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
INSERT INTO ENSEIGNANT (numEns, nomEns, prenomEns, dtNaisEns, libRueEns, cdPostEns, libVilEns) VALUES
(002, 'SMITH', 'Adams', '1976-06-06 00:00:00','33, rue des requêtes', '33000', 'BORDEAUX');
-- ('76D1', 'SMITH', 'Adams', '1976-06-06 00:00:00','33, rue des requêtes', '33000', 'BORDEAUX');
INSERT INTO ENSEIGNANT (numEns, nomEns, prenomEns, dtNaisEns, libRueEns, cdPostEns, libVilEns) VALUES
(003, 'DURANT', 'Julie', '1970-12-22 00:00:00','Rue des tulipes vertes', '33000', 'BORDEAUX');
-- ('CH91', 'DURANT', 'Julie', '1970-12-22 00:00:00','Rue des tulipes vertes', '33000', 'BORDEAUX');
INSERT INTO ENSEIGNANT (numEns, nomEns, prenomEns, dtNaisEns, libRueEns, cdPostEns, libVilEns) VALUES
(004, 'DUBOIS', 'Jules', '1980-11-11 00:00:00','Place des Fêtes', '75019', 'PARIS');
-- ('F67A', 'DUBOIS', 'Jules', '1980-11-11 00:00:00','Place des Fêtes', '75019', 'PARIS');
INSERT INTO ENSEIGNANT (numEns, nomEns, prenomEns, dtNaisEns, libRueEns, cdPostEns, libVilEns) VALUES
(005, 'FILIBERT', 'Alex', '1999-09-09 00:00:00','2, Boulevard des essais', '33110', 'LE BOUSCAT');
-- ('MM77', 'FILIBERT', 'Alex', '1999-09-09 00:00:00','2, Boulevard des essais', '33110', 'LE BOUSCAT');
INSERT INTO ENSEIGNANT (numEns, nomEns, prenomEns, dtNaisEns, libRueEns, cdPostEns, libVilEns) VALUES
(006, 'La ROUSSE', 'Julie', '1981-05-05 00:00:00','Avenue de la BD', '33700', 'MÉRIGNAC');
-- ('W8L9', 'La ROUSSE', 'Julie', '1981-05-05 00:00:00','Avenue de la BD', '33700', 'MÉRIGNAC');
--
-- Enseignant qui deviendra etudiant
--
INSERT INTO ENSEIGNANT (numEns, nomEns, prenomEns, dtNaisEns, libRueEns, cdPostEns, libVilEns) VALUES
(013, 'La Belle', 'Cathy', '1930-12-12 00:00:00','Avenue de la Belle Cathy', '75010', 'PARIS');
-- ('WL45G', 'La Belle', 'Cathy', '1930-12-12 00:00:00','Avenue de la Belle Cathy', '75010', 'PARIS');

/*
--
-- Table TITRE
--
-- (<cdUe, char(3),>, <libUe, char(90),>)
*/
INSERT INTO UE (cdUe, libUe) VALUES
('UE1', "Communication, culture et connaissance de l'environnement socio-économique");             
INSERT INTO UE (cdUe, libUe) VALUES
('UE2', "Culture technologique et développement multimédia");             
INSERT INTO UE (cdUe, libUe) VALUES
('UE3', "Mise en situation professionnelle");

/*
--
-- Table USER
--
-- (<cdMod, char(4),>, <cdUe, char(3),>, <libMod, char(90),>)
*/
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('CIM', "UE2", "Création et intégration des médias numériques");             
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('ECR', "UE1", "Esthétique, écritures, langages et communication");      
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('INF', "UE2", "Outils et méthodes informatiques pour le multimédia");         
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('LCI', "UE1", "Langues et communication interculturelle");                    
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('PRJ', "UE1", "Conduite de projet, connaissance des organisations, PPP");   
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('RES', "UE2", "Réseaux et services sur réseaux");                             
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('SCI', "UE2", "Culture scientifique et traitement de l'information");         
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('STA', "UE3", "Stages");                                                     
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('TIC', "UE1", "Théories de l'information de la communication");               
INSERT INTO MODULE (cdMod, cdUe, libMod) VALUES
('TUT', "UE3", "Projet tuteuré");                       

--
-- --------------------------------------------------------
--
