<?php

try {
    DEFINE('SERVER', 'localhost');
    DEFINE('DATABASE', 'db_mercado');
    DEFINE('USER', 'root');
    DEFINE('PASSWORD', '');

    $conn = new PDO("mysql:host=" . SERVER . ";dbname=" . DATABASE, USER, PASSWORD);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $e) {
    echo $e->getMessage();
}