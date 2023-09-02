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
    <title>Liste des Évaluations - Votre site</title>
</head>
<body>
<h1>Liste des Évaluations</h1>

<%-- Vérifier si la liste des évaluations est vide --%>
<% if (evaluations.isEmpty()) { %>
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

//dans cete classe