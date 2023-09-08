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

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="p-4 border rounded shadow">
                <h1 class="text-center">Liste des Évaluations</h1>

                <div class="container">
                    <% List<Evaluation> evaluations = (List<Evaluation>) request.getAttribute("listeEvaluation"); %>

                    <% if(evaluations == null || evaluations.isEmpty()){ %>
                    <p>Il n'y a pas des évaluations.</p>
                    <% } else { %>
                    <table class="table">
                        <thead>
                        <tr>
                            <th>Numéro</th>
                            <th>Nom</th>
                            <th>Prénom</th>
                            <th>Courriel</th>
                            <th>Téléphone</th>
                            <th>Sexe</th>
                            <th>Note</th>
                            <th>Date d'évaluation</th>
                            <th>Commentaires</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
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
                                String formattedDate = null;
                                if (dateEvaluation != null) {
                                    formattedDate = dateFormat.format(dateEvaluation.getTime());
                                } else {
                                    formattedDate = "Date non disponible"; // Vous pouvez mettre ici une valeur par défaut ou une chaîne vide
                                }
                            %>
                                <%=formattedDate%>
                            </td>
                            <td><%= e.getCommentaires() %></td>
                            <td>
                                <!-- Modifier Button -->
                                <a href="<%=request.getContextPath()%>/ModifierServlet?numero=<%=e.getNumero()%>" class="btn btn-primary">Modifier</a>

                                <!-- Supprimer Button -->
                                <a href="<%=request.getContextPath()%>/SupprimerServlet?numero=<%=e.getNumero()%>" class="btn btn-danger" onclick="return confirm('Voulez-vous vraiment le supprimer ?');">Supprimer</a>
                            </td>
                        </tr>
                        <% } %>
                        </tbody>
                    </table>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="text-center mt-4 mb-4">
    <a href="${pageContext.request.contextPath}//HomeServlet" class="btn btn-primary">Accueil</a>
</div>



</body>
</html>
```





