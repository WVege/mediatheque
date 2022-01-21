<?php
require_once __DIR__.'/back.php';

if($_SERVER["REQUEST_METHOD"] === "POST") {
    createGroupe($_POST['idGp'], $_POST['nomGp'], $_POST['dtCreaGp']);
}
?>
<body>
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">

                <h1> <strong>Dépôt du groupe</strong> </h1>

    
            <label for="name">Entrez le n° d'identifiant du groupe : </label>
            <input type="text" name="idGp" value=""> </br>

            <label for="name">Entrez le nom du groupe: </label>
            <input type="text" name="nomGp" value=""> </br>

            <label for="name">Entrez la date de création du groupe (sous la forme ANNE-MOIS-JOUR): </label>
            <input type="text" name="dtCreaGp" value=""> </br>

            <!-- <?php

                if($_SERVER["REQUEST_METHOD"] === "POST") {
                    createArtist($_POST['idArt'], $_POST['nomArt'], $_POST['prenomArt']);
                }
            ?>
                <h1> <strong>Dépôt du profil d'artiste</strong> </h1>

                    
            <label for="name">Entrez le n° d'identifiant d'artiste': </label>
            <input type="text" name="idArt" value=""> </br>

            <label for="name">Entrez le nom d'artiste: </label>
            <input type="text" name="nomArt" value=""> </br>

            <label for="name">Entrez le prénom d'artiste: </label>
            <input type="text" name="prenomArt" value=""> </br>
                 -->


            <!-- <?php
                if($_SERVER["REQUEST_METHOD"] === "POST") {
                    createAlbum($_POST['idAlb'], $_POST['nomA'], $_POST['dtSortieA'], $_POST['nomLabelA']);
                }
            ?>

                <h1> <strong>Publication de votre album</strong> </h1>

            <label for="name">Entrez le n° d'identifiant de votre album: </label>
            <input type="text" name="idAlb" value=""> </br>

            <label for="name">Entrez le nom de votre album: </label>
            <input type="text" name="nomA" value=""> </br>

            <label for="name">Entrez sa date de sortie (Sous la forme ANNEE-MOIS-JOUR en chiffres): </label>
            <input type="text" name="dtSortieA" value=""> </br>

            <label for="name">Entrez le nom du label: </label>
            <input type="text" name="nomLabelA" value=""> </br> -->

            <input type="submit" name="validation" value="Valider">
    </form>
</body>