<?php 
include 'db.php';

$idProduto = $_POST['id'];
$quantidade = $_POST['quantidade'];
$valor = $_POST['valor'];
$atualizaValor = $_POST['atualizaValor'];

$db = new db($dbhost, $dbuser, $dbpass, $dbname);

if(isset($atualizaValor)){
  $atualiza = $db->query('UPDATE produtos SET valor = ? WHERE id = ?', $valor, $idProduto);
  $atualiza->affectedRows();
}else{
    
}

$insert = $db->query('INSERT INTO vendas (id_produto,quantidade,valor) VALUES (?,?,?)', $idProduto, $quantidade, $valor);
$insert->affectedRows();

header('Location: ../form-venda.php');

?>