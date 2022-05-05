<?php
$bd = new PDO('mysql:host=localhost;dbname=bdd_cours', 'root', '', array(
    PDO::ATTR_PERSISTENT => true
));

	
        $bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $bd->query("SET nameS 'utf8'");
?>