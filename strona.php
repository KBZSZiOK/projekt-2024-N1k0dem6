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
            <button class="choose" type="submit" name="action" value="ticket">Bilety</button>
            <button class="choose" type="submit" name="action" value="films">Filmy</button>
            <button class="choose" type="submit" name="action" value="filmsType">Filmy rodzaj</button>
            <button class="choose" type="submit" name="action" value="clients">Klienci</button>
            <button class="choose" type="submit" name="action" value="typeOfFilm">Rodzaj filmu</button>
            <button class="choose" type="submit" name="action" value="rooms">Sale</button>
            <button class="choose" type="submit" name="action" value="seance">Seanse</button>
            <button class="choose"type="submit" name="action" value="sellers">Sprzedawcy</button>
            </form>
        </nav>
    </header>

    <section id="webcenter">
        <div id="tableView">
        <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kino4tigr1";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }
  
  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
      
    if ($_POST['action'] == 'ticket') {
          $sql = "SELECT * FROM BILETY";
          $result = $conn->query($sql);
      

      if ($result->num_rows > 0) {
        echo "<h2>Bilety:</h2>";
        echo "<table border='1'><tr><th>ID</th><th>SPRZEDAWCA_ID</th><th>SEANS_ID</th><th>KLIENT_ID</th><th>CENA</th></tr>";
        
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>{$row['ID']}</td><td>{$row['SPRZEDAWCA_ID']}</td><td>{$row['SEANS_ID']}</td><td>{$row['KLIENT_ID']}</td><td>{$row['CENA']}</td></tr>";
        }
        echo "</table>";
      }
      else {
        echo "Brak biletów w bazie";
      }
    }

    elseif ($_POST['action'] == 'films') {
        $sql = "SELECT * FROM FILMY";
        $result = $conn->query($sql);
    

    if ($result->num_rows > 0) {
      echo "<h2>Filmy:</h2>";
      echo "<table border='1'><tr><th>ID</th><th>Tytuł</th><th>Reżyser</th><th>Czas trwania(min)</th></tr>";
      while ($row = $result->fetch_assoc()) {
          echo "<tr><td>{$row['ID']}</td><td>{$row['TYTUL']}</td><td>{$row['REZYSER']}</td><td>{$row['CZAS_TRWANIA_MIN']}</td></tr>";
      }
      echo "</table>";
    }
    else {
      echo "Brak filmów w bazie";
    }
    } 

    elseif ($_POST['action'] == 'filmsType') {
        $sql = "SELECT * FROM FILMY_RODZAJ";
        $result = $conn->query($sql);
    

    if ($result->num_rows > 0) {
      echo "<h2>Filmy rodzaj:</h2>";
      echo "<table border='1'><tr><th>ID</th><th>FILMY_ID</th><th>RODZAJ_ID</th></tr>";
      while ($row = $result->fetch_assoc()) {
          echo "<tr><td>{$row['ID']}</td><td>{$row['FILMY_ID']}</td><td>{$row['RODZAJ_ID']}</td></tr>";
      }
      echo "</table>";
    }
    else {
      echo "Brak filmów rodzaj w bazie";
    }
    }

    elseif ($_POST['action'] == 'clients') {
        $sql = "SELECT * FROM KLIENCI";
        $result = $conn->query($sql);
    

    if ($result->num_rows > 0) {
      echo "<h2>Klienci:</h2>";
      echo "<table border='1'><tr><th>ID</th><th>Imię</th><th>Nazwisko</th><th>E-mail</th></tr>";
      while ($row = $result->fetch_assoc()) {
          echo "<tr><td>{$row['ID']}</td><td>{$row['IMIE']}</td><td>{$row['NAZWISKO']}</td><td>{$row['MAIL']}</td></tr>";
      }
      echo "</table>";
    }
    else {
      echo "Brak klientów w bazie";
    }
    }

    elseif ($_POST['action'] == 'typeOfFilm') {
        $sql = "SELECT * FROM RODZAJ_FILMU";
        $result = $conn->query($sql);
    

    if ($result->num_rows > 0) {
      echo "<h2>Rodzaj filmu:</h2>";
      echo "<table border='1'><tr><th>ID</th><th>Nazwa</th></tr>";
      while ($row = $result->fetch_assoc()) {
          echo "<tr><td>{$row['ID']}</td><td>{$row['NAZWA']}</td></tr>";
      }
      echo "</table>";
    }
    else {
      echo "Brak rodzaju filmów w bazie";
    }
    }

    elseif ($_POST['action'] == 'rooms') {
        $sql = "SELECT * FROM SALE";
        $result = $conn->query($sql);
    

    if ($result->num_rows > 0) {
      echo "<h2>Sale:</h2>";
      echo "<table border='1'><tr><th>ID</th><th>Ilość miejsc</th></tr>";
      while ($row = $result->fetch_assoc()) {
          echo "<tr><td>{$row['ID']}</td><td>{$row['ILOSC_MIEJSC']}</td></tr>";
      }
      echo "</table>";
    }
    else {
      echo "Brak danych o salach w bazie";
    }
    }

    elseif ($_POST['action'] == 'seance') {
        $sql = "SELECT * FROM SEANSE";
        $result = $conn->query($sql);
    

    if ($result->num_rows > 0) {
      echo "<h2>Seanse:</h2>";
      echo "<table border='1'><tr><th>ID</th><th>Termin</th><th>ID sali</th><th>ID filmu</th><th>Liczba wolnych miejsc</th></tr>";
      while ($row = $result->fetch_assoc()) {
          echo "<tr><td>{$row['ID']}</td><td>{$row['TERMIN']}</td><td>{$row['SALA_ID']}</td><td>{$row['FILM_ID']}</td><td>{$row['LICZBA_WOLNYCH_MIEJSC']}</td></tr>";
      }
      echo "</table>";
    }
    else {
      echo "Brak danych o seansach w bazie";
    }
    }

    elseif ($_POST['action'] == 'sellers') {
        $sql = "SELECT * FROM SPRZEDAWCY";
        $result = $conn->query($sql);
    

    if ($result->num_rows > 0) {
      echo "<h2>Sprzedawcy:</h2>";
      echo "<table border='1'><tr><th>ID</th><th>Imię</th><th>Nazwisko</th></tr>";
      while ($row = $result->fetch_assoc()) {
          echo "<tr><td>{$row['ID']}</td><td>{$row['IMIE']}</td><td>{$row['NAZWISKO']}</td></tr>";
      }
      echo "</table>";
    }
    else {
      echo "Brak danych o sprzedawcach w bazie";
    }
    }
}
$conn->close();
?> 
        </div>
        <div id="forms">
          <p><b>UWAGA! Pierwsze 100 osób, które się zarejestrują mają 3 seanse w cenie 1.</b></p><br>
            <form method="post">
                Podaj imię:<input type="text" name="name"><br>
                Podaj nazwisko:<input type="text" name="surname"><br>
                Podaj adres e-mail:<input type="email" name="mail"><br>
                <button type="reset">Wyczyść</button>
                <button type="submit" name="action2" value="button2">Prześlij</button>
            </form>
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "kino4tigr1";
            
            $conn = mysqli_connect($servername, $username, $password, $dbname);
            
            $imie = $_POST['name'];
            $nazwisko = $_POST['surname'];
            $mail = $_POST['mail'];
            if (!$conn) {
                die("Connection failed: " . mysqli_connect_error());
              }
              
              if ($_SERVER['REQUEST_METHOD'] == 'POST'){
                  if ($_POST['action2'] == 'button2') {
                   $data_add = mysqli_query($conn, "INSERT INTO `KLIENCI` (`ID`, `IMIE`, `NAZWISKO`, `MAIL`) VALUES (NULL, '$imie', '$nazwisko', '$mail')");
                  }
              }
              
              $conn->close();
            ?>
        </div>
        </section>
        <section id="text">
            <p>Jesteśmy niedawno otworzonym kinem ,w którym można doznać dreszczyku emocji, ponieważ specjalizujemy się głównie w emitowaniu horrorów &#128561; &#128561; &#128561;</p>
        </section>
    <footer><b>©KINO YASON 2024</b></footer>

</body>
</html>