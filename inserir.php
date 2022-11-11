<?php
session_start();
include_once("conexao.php");

$nome = filter_input(INPUT_POST,'produto_nome', FILTER_SANITIZE_STRING);
$quantidade = filter_input(INPUT_POST,'produto_quantidade', FILTER_SANITIZE_NUMBER_INT);
$validade = filter_input(INPUT_POST,'produto_validade', FILTER_SANITIZE_URL);
$categoria = $_POST['IDcategoria'];

$result_produto = " INSERT INTO produto (produto_nome, produto_quantidade, produto_validade, IDcategoria) VALUES ('$nome', '$quantidade', '$validade', '$categoria')";
$resultado_produto = mysqli_query($conn, $result_produto);

if(mysqli_insert_id($conn)){
    $_SESSION['msg'] = "<p style='color: green'>Produto cadastrado com sucesso! :)</p>";
    header("Location: 4-cadastrop.php");
}else{
    $_SESSION['msg'] = "Erro ao cadastrar produto! :(";
    header("Location: 4-cadastrop.php");
}
?>