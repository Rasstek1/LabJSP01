<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mesmodels.Evaluation" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/header.css">

<header class="header-color">
    <div class="logo">
        <img src="${pageContext.request.contextPath}/res/img/LOGO.png" alt="Image" width="100">
    </div>
    <h1>EVALUATION PARADISE</h1>
</header>


<nav class="nav-color">
    <a href="${pageContext.request.contextPath}//HomeServlet">Accueil</a>
    <a href="${pageContext.request.contextPath}/AjouterServlet">Ajouter Évaluation</a>
    <a href="${pageContext.request.contextPath}/ListeServlet">Liste Évaluations</a>
    <a href="${pageContext.request.contextPath}/pagejsp/contact.jsp">Contact</a>
</nav>

<div class="Banner">
    <img src="${pageContext.request.contextPath}/res/img/Banner.png" alt="Image" width="100%">
</div>



