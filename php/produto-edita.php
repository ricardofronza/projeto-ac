<?php 
include 'db.php';

$id = $_POST['id'];
$nome = $_POST['nome'];
$valor = $_POST['valor'];
$estoque = $_POST['estoque'];
$barras = $_POST['barras'];

$db = new db($dbhost, $dbuser, $dbpass, $dbname);

$update = $db->query('UPDATE produtos SET nome = ?,valor = ?,estoque = ?,barras = ? WHERE id = ?', $nome, $valor, $estoque, $barras, $id);
$update->affectedRows();

header('Location: ../produtos.php');

?>