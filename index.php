<?php
require_once __DIR__. '/back.php';
echo("Bonjour");
?>
<body>
    <h2>Etes-vous un artiste ? Voulez-vous publier votre dernier album ?</h2>
    <form action="albumBank.php">
        <button type="submit">Déposer un album</button>
    </form>

    <h2>Ou Voulez-vous consulter la médiathèque ?</h2>
    <form action="media.php">
        <button type="submit">Découvrir</button>
    </form>

</body>