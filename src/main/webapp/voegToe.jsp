<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta charset="UTF-8">
    <title>Mijn Wijnkelder - Voeg Toe</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div id="container">
    <header>
        <h1>Mijn Wijnkelder</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="Servlet">Overzicht</a></li>
                <li><a href="voegToe.jsp">Voeg Toe</a></li>
                <li><a href="vindWijn.jsp">Vind Wijnen</a></li>
                <li><a href="logboek.jsp">Mijn logboek</a></li>
            </ul>
        </nav>

    </header>

    <main>
        <h2>Voeg een wijn toe</h2>
        <div id="error">
            <ul>
                <li>een foutboodschap, indien nodig</li>
            </ul>
        </div>

        <form novalidate method="POST" action="Servlet">
            <!-- novalidate in order to be able to run tests correctly -->
            <p><label for="naam">Naam</label>
                <input type="text" id="naam" name="naam" required></p>
            <p><label for="soort">Soort</label>
                <input type="text" id="soort" name="soort" required></p>
            <p><label for="jaartal">Jaartal</label>
                <input type="number" id="jaartal" name="jaartal" required></p>
            <p><label for="prijs">Prijs</label>
                <input type="number" id="prijs" name="prijs" required></p>
            <p><label for="omschrijving">Omschrijving</label>
                <input type="text" id="omschrijving" name="omschrijving" required></p>
            <p><input type="submit" id="voegToe" value="Voeg Toe"></p>

        </form>
    </main>
</div>
</body>
</html>
