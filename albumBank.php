<?php
require_once __DIR__.'/back.php';

if($_SERVER["REQUEST_METHOD"] === "POST") {
    createAlbum($_POST['nom'], $_POST['date'], $_POST['nomlabel']);
}

?>

<body>
    <h1> <strong>Publication de votre album</strong> </h1>

      <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
            
            <label for="name">Entrez le nom de votre album: </label>
             <input type="text" name="nom" value=""> </br>

            <label for="name">Entrez sa date de sortie: </label>
            <input type="text" name="date" value=""> </br>

            <label for="name">Entrez le nom du label: </label>
            <input type="text" name="nomlabel" value=""> </br>

            <input type="submit" name="validation" value="Valider">
      </form>
</body>
