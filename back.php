<?php 

require_once __DIR__.'/CONNECT/database.php';

function createUser(string $eMailUser, string $nameEUser, string $prenomUser){
    global $db;

    try {
        $db->beginTransaction();
        $query = 'INSERT INTO user (eMailUser, nomEUSer, prenomUser) VALUES (? ,? ,?);';
        $request = $db -> prepare($query); 
        $request -> execute([$eMailUser, $nameEUser, $prenomUser]); 
        $db->commit();
        $request->closeCursor();
    }
    catch (PDOException $e) {
        $db->rollBack();
        $request->closeCursor();
        die('Erreur insert user : ' . $e->getMessage());
    }
}

function connectionUser(string $eMailUser) {
    global $db;
    $query = 'SELECT * FROM user WHERE eMailUser = ?;';
    $result = $db->prepare($query);
    $result->execute([$eMailUser]);
    $user = $result->fetch();

    if($user) {
        setcookie('user', $user['email']);
        header('Location: index.php');
    }
    print_r($user);
}

function createAlbum($idAlb, $nomA, $dtSortieA, $nomLabelA){
    global $db;

    try {
        $db->beginTransaction();
        $query = 'INSERT INTO album (idAlb, nomA, dtSortieA, nomLabelA) VALUES (? ,? ,? ,?);';
        $request = $db -> prepare($query); 
        $request -> execute([$idAlb, $nomA, $dtSortieA, $nomLabelA]); 
        $db->commit();
        $request->closeCursor();
    }
    catch (PDOException $e) {
        $db->rollBack();
        $request->closeCursor();
        die('Erreur insert album : ' . $e->getMessage());
    }
}

function createArtist($idArt, $nomArt, $prenomArt){
    global $db;

    try {
        $db->beginTransaction();
        $query = 'INSERT INTO artiste (idArt, nomArt, prenomArt) VALUES (? ,? ,?);';
        $request = $db -> prepare($query); 
        $request -> execute([$idArt, $nomArt, $prenomArt]); 
        $db->commit();
        $request->closeCursor();
    }
    catch (PDOException $e) {
        $db->rollBack();
        $request->closeCursor();
        die('Erreur insert artist : ' . $e->getMessage());
    }
}

function createGroupe($idGp, $nomGp, $dtCreaGp){
    global $db;

    try {
        $db->beginTransaction();
        $query = 'INSERT INTO groupe (idGp, nomGp, dtCreaGp) VALUES (? ,? ,?);';
        $request = $db -> prepare($query); 
        $request -> execute([$idGp, $nomGp, $dtCreaGp]); 
        $db->commit();
        $request->closeCursor();
    }
    catch (PDOException $e) {
        $db->rollBack();
        $request->closeCursor();
        die('Erreur insert groupe : ' . $e->getMessage());
    }
}