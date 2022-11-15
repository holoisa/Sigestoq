<?php
session_start();
include_once("conexao.php");

$consulta = "SELECT * FROM produto";
$resuldado_consulta = mysqli_query($conn, $consulta);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style5.css">
    <link rel="shortcut icon" href="img/2-Icon.png"> 

    <title>SigEstoq-Armazen</title>
</head>
<body>
    <div id="fundo">
        <div id="barra">
            <div class="reta">
                <div class="superior">
                    <h1 class="titulo">SIGESTOQ</h1>
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
        <div>
            <div class="reta">
                <div class="superior">
                    <h4 id="estoque">Estoque</h4>
                </div>
                <div class="superior">
                    <form action="4-cadastrop.php">
                        <input id="cadastro" type="submit" value="Cadastro de Produtos">
                    </form>
                </div>
                <div class="superior">
                    <form action="">
                        <input id="calculo" type="submit" value="Calculo da Merenda">
                    </form>
                </div>
            </div>
        </div>
            <center>
                
            <div>
            <table id="tab">
        <tr>
            <td id="baba">#</td>
            <td id="baba">Nome</td>
            <td id="baba">Quantidade</td>
            <td id="baba">Validade</td>
            <td id="baba">Edição</td>
        </tr>
    <?php while($row_armazon = mysqli_fetch_assoc($resuldado_consulta)){?>
        <tr>
            <td><?php echo $row_armazon['IDproduto']; ?></td>
            <td><?php echo $row_armazon['produto_nome']; ?></td>
            <td><?php echo $row_armazon['produto_quantidade']; ?></td>
            <td><?php echo date("d/m/y", strtotime($row_armazon['produto_validade'])); ?></td>
            <td> 
                <a href="6-edicao.php?id=<?php echo $row_armazon['IDproduto']; ?>"> <img src="img/6-editar.png" width="32" height="32" /></a>
                <a href="6-2-excluir.php?id=<?php echo $row_armazon['IDproduto']; ?>"> <img src="img/5-excluir.png" width="32" height="32" /></a>
            </td>
    <?php }?>
            </table>
            <div class="reta">
                <div class="superior">
                    <div id="mensage"> 
                <?php 
             if(isset($_SESSION['msg'])){
                echo $_SESSION['msg'];
                unset($_SESSION['msg']);
            }
            ?> 
                    </div>      
                </div>
                <div class="superior"> 
                <form action="2-menu.html">
                    <input type="submit" value="↩" id="back"/>
                </form>
                </div>
            </div>
            </div>
            </center>
    </div>
