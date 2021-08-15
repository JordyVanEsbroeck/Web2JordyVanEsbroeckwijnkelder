<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mijn Wijnkelder - Vind wijn</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
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
        <h2>Vind wijn</h2>
        <div id="error">
            <ul>
                <li>een foutboodschap, indien nodig</li>
            </ul>
        </div>

        <p>Wil je snel de wijn vinden van een bepaald jaar? Vul hieronder het jaartal in.
            We tonen je alle wijnen van het gegeven jaartal.</p>
        <form novalidate method="GET" action="wijnGevonden.jsp">
            <p>
                <label for="jaartal">Gezochte jaartal:</label> <input
                    id="jaartal" name="jaartal" value="" type="text">
            </p>
            <p>
                <input type="submit" value="Zoek" id="submit">
            </p>
        </form>
    </main>
</div>
</body>
</html>