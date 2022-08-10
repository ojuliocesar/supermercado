<?php

require_once('connection.php');

if (isset($_POST['submit'])) {
    $nome = $_POST['nome'];
    $categoria = $_POST['categoria'];
    $valor = $_POST['valor'];
    $desc = $_POST['desc'];

    try {
        $sql =  "INSERT INTO tb_produtos (nome, categoria, valor, `desc`) VALUES ('$nome', '$categoria', $valor, '$desc')";

        $comando = $conn->prepare($sql);

        $comando->execute();

        echo 'Produto cadastrado com sucesso!';
    } catch (PDOException $e) {
        echo $e->getMessage();
    }
} else {
    header("Location: ../index.html");
}