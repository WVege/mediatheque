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
-- Base de données: mediatheq22
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
INSERT INTO ARTISTE (idArt, idGp, nomArt, prenomArt) VALUES (001, 100, 'AZNAVOUR', 'Choucou');
INSERT INTO ARTISTE (idArt, idGp, nomArt, prenomArt) VALUES (002, 200, 'SOFIANE', 'Bibi');
INSERT INTO ARTISTE (idArt, idGp, nomArt, prenomArt) VALUES (003, 300, 'GIMS', 'Maître');
INSERT INTO ARTISTE (idArt, idGp, nomArt, prenomArt) VALUES (004, 400, 'BENT', 'Amel');
INSERT INTO ARTISTE (idArt, idGp, nomArt, prenomArt) VALUES (005, 500, 'MAPIOUX', 'Sosomanes');
INSERT INTO ARTISTE (idArt, idGp, nomArt, prenomArt) VALUES (006, 600, 'MARIA', 'Choucou');
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
