<?php

require_once('php/read.php');

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Read</title>

    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h2>Listagem de Produtos</h2>

    <div class="read-figure">
        <?php foreach($data as $dataItem): ?>
            <figure>
                <img src="images/produto.jpeg" alt="Imagem do Produto">
                <figcaption>
                    <h4><?= $dataItem->nome ?></h4>
                    <h5><?= $dataItem->categoria ?></h5>
                    <h5><?= number_format($dataItem->valor, 2, ',', '.') ?></h5>
                    <small><?= $dataItem->desc ?></small>
                </figcaption>
            </figure>
        <?php endforeach ?>
    </div>
</body>
</html>