<?php
session_start();
include_once("conexao.php");

$id = filter_input(INPUT_POST,'IDproduto', FILTER_SANITIZE_NUMBER_INT);
$nome = filter_input(INPUT_POST,'produto_nome', FILTER_SANITIZE_STRING);
$quantidade = filter_input(INPUT_POST,'produto_quantidade', FILTER_SANITIZE_NUMBER_INT);
$validade = filter_input(INPUT_POST,'produto_validade', FILTER_SANITIZE_URL);
$categoria = $_POST['IDcategoria'];

$result_produto = " UPDATE produto SET produto_nome='$nome', produto_quantidade='$quantidade', produto_validade='$validade', IDcategoria='$categoria' WHERE IDproduto='$id'";
$resultado_produto = mysqli_query($conn, $result_produto);

if(mysqli_affected_rows($conn)){
    $_SESSION['msg'] = "<p style='color: green'>Produto atualizado com sucesso! ʕ•́ᴥ•̀ʔっ</p>";
    header("Location: 5-armazenamento.php");
}else{
    $_SESSION['msg'] = "<p style='color: red'>Erro ao atualizar produto! (╥﹏╥) </p>";
    header("Location: 6-edicao.php?id=$id");
}
?>