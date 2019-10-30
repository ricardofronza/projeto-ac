<?php 
include 'db.php';

$id = $_GET['id'];

$db = new db($dbhost, $dbuser, $dbpass, $dbname);

$update = $db->query('UPDATE produtos SET lixeira = ? WHERE id = ?', 'true', $id);
$update->affectedRows();

header('Location: ../produtos.php');

?>