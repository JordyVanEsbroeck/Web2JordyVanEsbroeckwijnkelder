<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mijn Wijnkelder - Home</title>
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="container">
    <header>
        <h1>Mijn Wijnkelder</h1>
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="Servlet">Overzicht</a></li>
                <li><a href="voegToe.jsp">Voeg Toe</a></li>
                <li><a href="vindWijn.jsp">Vind Wijnen</a></li>
                <li><a href="logboek.jsp">Mijn logboek</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Maak kennis met de inhoud van mijn wijnkelder</h2>

        <h3>Kenmerken van een wijn</h3>
        <ul>
            <li>naam</li>
            <li>soort</li>
            <li>jaartal</li>
            <li>prijs</li>
            <li>korte omschrijving van de wijn (maximaal 200 karakters)</li>
        </ul>
    </main>
</div>
</body>
</html>