<%@ page import="com.martin.labjsp01.mesmodels.Evaluation" %><%--
  Created by IntelliJ IDEA.
  User: nitra
  Date: 2023-09-02
  Time: 07:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Evaluation</title>
    <style>

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 10px;
        }
        nav {
            background-color: #444;
            text-align: center;
            padding: 5px;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 10px;
        }
        .content {
            max-width: 800px; /* Largeur */
            margin: 0 auto; /* Centrer horizontalement */
            padding: 20px;
        }
    </style>
</head>
<body>
<header>
    <h1>Les évaluations</h1>
</header>
<nav>
    <a href="acceuil">Accueil</a>
    <a href="ajouter">Ajouter Évaluation</a>
    <a href="liste">Liste Évaluations</a>
    <a href="modifier">Modifier Évaluation</a>
    <a href="contact">Contact</a>

</nav>

<body>
<h1>Liste des Évaluations</h1>

<%-- Vérifier si la liste des évaluations est vide --%>
<% if (evaluations.isEmpty()) { %><%-- Probleme avec la recuperation de la liste??  --%>
<p>Aucune évaluation à afficher.</p>
<% } else { %>
<table border="1">
    <tr>
        <th>Numéro</th>
        <th>Nom</th>
        <th>Prénom</th>
        <th>Téléphone</th>
        <th>Courriel</th>
        <th>Sexe</th>
        <th>Date d'évaluation</th>
        <th>Note</th>
        <th>Commentaires</th>
        <th>Actions</th>
    </tr>
    <% for (Evaluation evaluation : evaluations) { %>
    <tr>
        <td><%= evaluation.getNumero() %></td>
        <td><%= evaluation.getNom() %></td>
        <td><%= evaluation.getPrenom() %></td>
        <td><%= evaluation.getTelephone() %></td>
        <td><%= evaluation.getCourriel() %></td>
        <td><%= evaluation.getSexe() == 'M' ? "Masculin" : "Féminin" %></td>
        <td><%= evaluation.getDateevaluation().getTime() %></td>
        <td><%= evaluation.getNote() %></td>
        <td><%= evaluation.getCommentaire() %></td>
        <td>
            <a href="ModifierServlet?numero=<%= evaluation.getNumero() %>">Modifier</a>
            <a href="SupprimerServlet?numero=<%= evaluation.getNumero() %>">Supprimer</a>
        </td>
    </tr>
    <% } %>
</table>
<% } %>

<p><a href="accueil.jsp">Retour à l'accueil</a></p>

</body>
</html>

