<?php

require_once('connection.php');

try {
    $sql = $conn->prepare("SELECT * FROM tb_produtos");

    $sql->execute();

    $data = $sql->fetchAll(PDO::FETCH_OBJ);

    return $data;

} catch (PDOException $e) {
    return $e->getMessage();
}