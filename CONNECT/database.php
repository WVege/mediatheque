<?php
	// CONNEXION BDD
  // Variables connexion
  require_once __DIR__.'/config.php'; //On insère le script

  try {
    $db = new PDO($serverBD, $userBD, $passBD, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION )); //Ici on veut accéder aux infos qui sont dans une bdd, on l'ouvre, on s'y connecte
  } catch (PDOException $err) {
    die('Echec connexion mediatheque : ' . $err->getMessage());
  }

//Database et config permettent de relier la base de données (phpmyadmin) à nos scripts (php)