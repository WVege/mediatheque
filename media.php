<?php
require_once __DIR__ .'/back.php';
require_once __DIR__. '/CONNECT/database.php'
$monalbum= new ALBUM();

$monalbum ->getAllClasses();    

foreach($monalbum as $row) {
    <tr>
    <td>&nbsp; <?php echo $row['idAlb']; ?> &nbsp;</td>
    <td>&nbsp; <?php echo $row['idArt']; ?> &nbsp;</td>
    <td>&nbsp; <?php echo $row['idGp']; ?> &nbsp;</td>
    <td>&nbsp; <?php echo $row['nomA']; ?> &nbsp;</td>
    <td>&nbsp; <?php echo $row['dtSortieA']; ?> &nbsp;</td>
    <td>&nbsp; <?php echo $row['nomLabelA']; ?> &nbsp;</td>

    
    <br />

    </tr>
}

