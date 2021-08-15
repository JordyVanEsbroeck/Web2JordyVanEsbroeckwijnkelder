<%@ page import="domain.model.Wijn" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Mijn Wijnkelder - Bekijk alle wijnen</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div id="container">
    <header>
        <h1>Mijn Wijnkelder</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="#">Overzicht</a></li>
                <li><a href="voegToe.jsp">Voeg Toe</a></li>
                <li><a href="vindWijn.jsp">Vind Wijnen</a></li>
                <li><a href="logboek.jsp">Mijn logboek</a></li>
            </ul>
        </nav>

    </header>
    <main>
        <section>
            <h2>Bekijk alle wijnen</h2>
            <% List<Wijn> wijnList= (List<Wijn>) request.getAttribute("wijnen");
                if (wijnList != null){%>
            <table>
                <thead>
                <tr>
                    <th>Naam</th>
                    <th>Soort</th>
                    <th>Jaartal</th>
                    <th>Prijs</th>
                    <th>Omschrijving</th>
                    <th>Verwijder</th>
                </tr>
                </thead>
                <tbody>
                <% for (Wijn wijn: wijnList){%>
                <tr class="wijn">
                    <td><%=wijn.getNaam()%></td>
                    <td><%=wijn.getSoort()%></td>
                    <td><%=wijn.getJaartal()%></td>
                    <td><%=wijn.getPrijs()%></td>
                    <td><%=wijn.getOmschrijving()%></td>
                    <td><a href="Servlet?command=deleteConfirmation&naam=<%= wijn.getNaam() %>">Verwijder</a></td>
                </tr>
                <%}%>
                </tbody>
            </table>
            <%}%>
        </section>
    </main>
</div>
</body>
</html>