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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/header.css">

</head>


<body>

<jsp:include page="header.jsp" />

<!-- Début de la directive c:choose pour vérifier si la liste est vide ou non -->
<div class="container mt-5">
    <c:choose>
        <c:when test="${empty listeEvaluation}">
            <p>Il n'y a pas des évaluations.</p>
        </c:when>
        <c:otherwise>
            <div class="row">
                <c:forEach var="e" items="${listeEvaluation}">
                    <div class="col-md-4">
                        <div class="card shadow p-3 mb-5 bg-white rounded">
                            <div class="card-body">
                                <h5 class="card-title">${e.nom} ${e.prenom}</h5>
                                <p class="card-text">
                                    <strong>Numéro:</strong> ${e.numero} <br>
                                    <strong>Courriel:</strong> ${e.courriel} <br>
                                    <strong>Téléphone:</strong> ${e.telephone} <br>
                                    <strong>Sexe:</strong> ${e.sexe} <br>
                                    <strong>Note:</strong> ${e.note} <br>
                                    <strong>Date d'évaluation:</strong>
                                    <c:choose>
                                        <c:when test="${not empty e.dateEvaluation}">
                                            <!-- Affichez la valeur de date avec un formatage spécifié -->
                                            <fmt:formatDate value="${e.dateEvaluation}" pattern="dd-MM-yyyy" />
                                        </c:when>
                                        <c:otherwise>
                                            Date non disponible
                                        </c:otherwise>
                                    </c:choose> <br>
                                    <strong>Commentaires:</strong> ${e.commentaires} <br>
                                </p>
                                <a href="${pageContext.request.contextPath}/ModifierServlet?numero=${e.numero}" class="btn btn-primary">Modifier</a>
                                <a href="${pageContext.request.contextPath}/SupprimerServlet?numero=${e.numero}" class="btn btn-danger" onclick="return confirm('Voulez-vous vraiment le supprimer ?');">Supprimer</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<div class="text-center mt-4 mb-4">
    <a href="${pageContext.request.contextPath}//HomeServlet" class="btn btn-primary">Accueil</a>
</div>

</body>
</html>





```





