<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="mesmodels.Evaluation" %>

<!DOCTYPE html>
<html>
<head>
    <title>Evaluation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="res/css/header.css">


</head>
<body>
<header>
    <div class="logo">
        <img src="${pageContext.request.contextPath}res/img/LOGO.jpg" alt="FUCK YOU" width="50">
    </div>
</header>
<nav>
    <a href="${pageContext.request.contextPath}//HomeServlet">Accueil</a>
    <a href="${pageContext.request.contextPath}/AjouterServlet">Ajouter Évaluation</a>
    <a href="${pageContext.request.contextPath}/ListeServlet">Liste Évaluations</a>
    <a href="${pageContext.request.contextPath}/ModifierServlet">Modifier Évaluation</a>
    <a href="${pageContext.request.contextPath}/contact">Contact</a>
</nav>
</body>
</html>



