<?php
session_start();
include_once("conexao.php");

$id= 3;
$result_produto= "DELETE FROM produto WHERE IDproduto = '$id'";
$resultado_produto = mysqli_query($conn, $result_produto);

if(mysqli_affected_rows($conn)){
    $_SESSION['msg'] = "<p style='color:green;'>Produto apagado com sucesso ʕ•́ᴥ•̀ʔっ</p>";
    header("Location: 5-armazenamento.php");
}else{
    $_SESSION['msg'] = "<p style='color:red;'>Erro ao apagar produto (╥﹏╥)</p>";
    header("Location: 5-armazenamento.php");
}