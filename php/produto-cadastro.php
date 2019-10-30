<?php 
include 'db.php';

$nome = $_POST['nome'];
$valor = $_POST['valor'];
$estoque = $_POST['estoque'];
$barras = $_POST['barras'];

$db = new db($dbhost, $dbuser, $dbpass, $dbname);

$insert = $db->query('INSERT INTO produtos (nome,valor,estoque,barras,lixeira) VALUES (?,?,?,?,?)', $nome, $valor, $estoque, $barras, 'false');
$insert->affectedRows();

header('Location: ../produtos.php');

?>