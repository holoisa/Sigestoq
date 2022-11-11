<?php 
            include_once("conexao.php");

            if(isset($_POST['inserir'])){
                $nome = $_POST['produto_nome'];
                $quantidade = $_POST['produto_quantidade'];
                $categoria = $_POST['categoria_nome'];
                $validade = $_POST['produto_validade'];
                $query = mysqli_query($conn, "INSERT INTO produtos (produto_nome, produto_quantidade, categoria_nome, produto_validade) VALUES ('$nome', '$quantidade', '$categoria', '$validade')");

                if($query){
                    echo 'cadastro bem feito';
                } else{ echo 'deu certo nao';
                }
            }
            ?>

<!DOCTYPE html>
    <html lang="pt-br">
        <head>
            <title>teste</title>
        </head>
        <body>
            <form method="post">
                <label>NOME</label><br>
                <input type="text" name="produto_nome"><br>
                <label>Quantidade</label><br>
                <input type="number" name="produto_quantidade"><br>
                <label>Categoria</label><br>
                <select name="categoria_nome">
                    <option>Fruta</option>
                    <option>Proteina</option>
                </select><br>
                <label>Validade</label><br>
                <input type="date" name="produto_validade"><br>
                <button name="inserir">cadastrar</button>