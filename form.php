<?php
require_once __DIR__.'/back.php';

if($_SERVER["REQUEST_METHOD"] === "POST") {
    createUser($_POST['email'], $_POST['name'], $_POST['firstname']);
}

?>

<body>
    <h1> <strong>Création de votre compte</strong> </h1>

      <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
            
            <label for="name">Entrez votre prénom: </label>
             <input type="text" name="firstname" value=""> </br>

            <label for="name">Entrez votre nom: </label>
            <input type="text" name="name" value=""> </br>

            <label for="name">Entrez votre email: </label>
            <input type="text" name="email" value=""> </br>

            <input type="submit" name="validation" value="Valider">
      </form>
</body>

<?php

// if (isset($_POST["firstname"])) {
//     setcookie('prenom', $_POST['firstname'], time() + 365*25*3600, null, null, false, true);
//     echo(urldecode($_COOKIE['prenom']));
// }

if (isset($_POST['validation']) == "Valider" && !empty($_POST['validation'])){
    
    header("Location: index.php");
}
?>