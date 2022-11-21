<?php
session_start();
include_once("conexao.php");
$id=filter_input(INPUT_GET,'id', FILTER_SANITIZE_NUMBER_INT);
$result_produto = "SELECT * FROM produto where IDproduto = '$id'";
$resultado_produto = mysqli_query($conn, $result_produto);
$row_produto = mysqli_fetch_assoc($resultado_produto);
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style4.css">
    <link rel="shortcut icon" href="img/2-Icon.png"> 
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SigEstoq-Edição</title>
</head>

<body>
    <div id="fundo">
        <div id="barra">
            <div class="reta">
                <div class="superior">
                    <h1 class="nome">SIGESTOQ</h1>
                </div>
                <div class="superior">
                    <h3>- Sistema de Gerenciamento de Estoque</h3>
                </div>
            <div class="superior">
                <form action="1-login.html">
                    <input type="submit" value="SAIR" id="out"/>
                </form>
            </div>
            </div>
        </div>
        
        <p>
        <h1 class="titulo"> Edição de Produtos</h1>
       
        </p>
        <center>
            <p>
                <form method="POST" action='edit.php'>
                <input type="hidden" name="IDproduto" value="<?php echo $row_produto['IDproduto']; ?>">

                <input type="text" placeholder="Nome do Produto" value="<?php echo $row_produto['produto_nome']; ?>" id="nome" name="produto_nome" required>

                <select id="nome2" name="IDcategoria">
                <?php 
            $result_categoria = "SELECT * FROM categoria";
            $resultado_categoria = mysqli_query($conn, $result_categoria);
            while($row_categoria = mysqli_fetch_assoc($resultado_categoria)){ ?>
            <option value="<?php echo $row_categoria['IDcategoria']; ?>"> <?php echo $row_categoria['categoria_nome']; ?>

            <?php } ?>
        
                </select>

                <input type="text" name="produto_quantidade" placeholder="quantidade" id="nome2" value="<?php echo $row_produto['produto_quantidade']?>" required>

                <input type="date" placeholder="Validade"  id="nome2" name="produto_validade"  value="<?php echo $row_produto['produto_validade']?>"><br><br>

                <button name="inserir" id="cadastrar">EDITAR</button>
            </form>
            <form action="5-armazenamento.php">
                    <input type="submit" value="↩" id="back"/>
                </form>
            </p>
            <div class="msg">
        <?php 
        if(isset($_SESSION['msg'])){
            echo $_SESSION['msg'];
            unset($_SESSION['msg']);
        }
        ?>
        </div>
        </center>
    </div>
