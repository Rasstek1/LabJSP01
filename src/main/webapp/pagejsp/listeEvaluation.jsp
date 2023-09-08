<%@ page import="mesmodels.Evaluation" %><%--
  Created by IntelliJ IDEA.
  User: nitra
  Date: 2023-09-02
  Time: 07:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/header.css">
</head>


<body>

<%@ include file="header.jsp" %>

<h1>Liste des Évaluations</h1>

<div class="container">
    <% List<Evaluation> evaluations = (List<Evaluation>) request.getAttribute("listeEvaluation"); %>

    <% if(evaluations == null || evaluations.isEmpty()){ %>
    <p>Il n'y a pas des Evaluations.</p>
    <% } else { %>
    <table class="table">
        <tr>
            <th>Numéro</th>
            <th>Nom</th>
            <th>Prenom</th>
            <th>Courriel</th>
            <th>Telephone</th>
            <th>Sexe</th>
            <th>Note</th>
            <th>Date Evaluation</th>
            <th>Commentaires</th>
            <th>Actions</th>
        </tr>
        <% for (Evaluation e: evaluations) { %>
        <tr>
            <td><%= e.getNumero() %></td>
            <td><%= e.getNom() %></td>
            <td><%= e.getPrenom() %></td>
            <td><%= e.getCourriel() %></td>
            <td><%= e.getTelephone() %></td>
            <td><%= e.getSexe() %></td>
            <td><%= e.getNote() %></td>
            <td><%
                SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
                Calendar dateEvaluation = e.getDateEvaluation();
                String formateDate = dateFormat.format(dateEvaluation.getTime());
            %>
                <%=formateDate%></td>
            <td><%= e.getCommentaires() %></td>
            <td>
                <!-- Modifier Button -->
                <a href="<%=request.getContextPath()%>/ModifierServlet?numero=<%=e.getNumero()%>" class="btn btn-primary">Modifier</a>

                <!-- Supprimer Button -->
                <a href="<%=request.getContextPath()%>/SupprimerServlet?numero=<%=e.getNumero()%>" class="btn btn-danger" onclick="return confirm('Voulez-vous vraiment le supprimer ?');">Supprimer</a>
            </td>
        </tr>
        <% } %>
    </table>
    <% } %>
</div>

<p><a href="accueil.jsp">Retour à l'accueil</a></p>

</body>
</html>
```





