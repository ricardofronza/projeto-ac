<?php 
include 'db.php';

$id = $_GET['id'];

$db = new db($dbhost, $dbuser, $dbpass, $dbname);

$delete = $db->query('DELETE FROM produtos WHERE id = ?', $id);
$delete->affectedRows();

//header('Location: ../produtos.php');

?>