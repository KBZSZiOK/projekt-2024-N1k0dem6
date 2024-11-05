<?php
$servername = "localhost";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
?> 

<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kino Yason</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <img src="./male_logo.png" alt="logo.png">
        <nav><form method="post" id="formularz">
            <button class="choose">Bilety</button>
            <button class="choose">Filmy</button>
            <button class="choose">Filmy rodzaj</button>
            <button class="choose">Klienci</button>
            <button class="choose">Rodzaj filmu</button>
            <button class="choose">Sale</button>
            <button class="choose">Seanse</button>
            <button class="choose">Sprzedawcy</button>
            </form>
        </nav>
    </header>

    <section id="webcenter">
        <div id="tableView">
            <?php

            ?>
        </div>
        <div id="forms">
            <form action="formularz.php" method="post">

            </form>
        </div>
        <div id="text">
            <p>Jesteśmy niedawno otworzonym kinem ,w którym można doznać dreszczyku emocji, ponieważ specjalizujemy się głównie w emitowaniu horrorów &#128561; &#128561; &#128561;</p>
        </div>
    </section>

    <footer><b>©KINO YASON 2024</b></footer>

</body>
</html>