<?php
?>

<body>
      <form action="<?= htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
            <input type="text" name="name"> <!--Ici le nom de notre zone de texte est name-->
            <input type="submit" value="Ajouter">
      </form>
</body>