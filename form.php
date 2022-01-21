<?php

setcookie('connection', $_POST['email'], time() + 365*24*3600, null, null, false, true); // On créé le cookie, c'est IMPORTANT !
// echo(urldecode($_COOKIE["connection"]));
setcookie('pseudo', $_POST['firstname'], time() + 365*24*3600, null, null, false, true);

setcookie('name', $_POST['name'], time() + 365*24*3600, null, null, false, true);
?>

<body>
      <form action="<?= htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
            
            <label for="name">Entrez votre prénom: </label>
             <input type="text" name="firstname" value="<?php if(isset($_COOKIE['firstname']));?>"> </br>  <!--Ici le nom de notre zone de texte est name-->

            <label for="name">Entrez votre nom: </label>
            <input type="text" name="name" value="<?php if(isset($_COOKIE['name']));?>"> </br>  <!--Ici le nom de notre zone de texte est name-->

            <label for="name">Entrez votre email: </label>
            <input type="text" name="email" value="<?php if(isset($_COOKIE['email']));?>"> </br>  <!--Ici le nom de notre zone de texte est name-->

            <input type="submit" name="validation" value="Valider">
      </form>
</body>

<?php
if (isset($_POST['validation']) == "Valider" && !empty($_POST['validation'])){
    
    header("Location: index.php");
  
 }
?>