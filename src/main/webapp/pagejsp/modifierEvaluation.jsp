<%@ page import="mesmodels.Evaluation" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mesmodels.Evaluation" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/header.css">

    <script src="${pageContext.request.contextPath}/res/js/modif" type="text/javascript"></script>
</head>


<body>

<jsp:include page="header.jsp" />


<body>


<c:set var="evaluation" value="${requestScope.evaluation}" />
<c:set var="formattedDate" value="" />
<c:if test="${not empty evaluation.dateEvaluation}">
    <fmt:formatDate var="formattedDate" value="${evaluation.dateEvaluation}" pattern="dd-MM-yyyy" />
</c:if>



<form action="ModifierServlet" method="post" class="p-3 border shadow bg-light" style="max-width: 600px; margin: auto; margin-top: 20px;">
    <h2 class="text-center">Modifier Évaluation</h2>
    <div class="mb-3">
        <label for="numero" class="form-label">Numéro :</label>
        <input type="number" id="numero" name="numero" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="nom" class="form-label">Nom :</label>
        <input type="text" id="nom" name="nom" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="prenom" class="form-label">Prénom :</label>
        <input type="text" id="prenom" name="prenom" class="form-control" required>
    </div>
    <div class="mb-3">
        <label for="dateEvaluation" class="form-label">Date d'Évaluation</label>
        <input type="text" class="form-control" id="dateEvaluation" name="dateEvaluation" value="${formattedDate}" required>
    </div>
    <div class="mb-3">
        <label class="form-label">Sexe :</label><br>
        <div class="form-check form-check-inline">
            <input type="radio" id="sexeM" name="sexe" value="M" class="form-check-input" required>
            <label for="sexeM" class="form-check-label">Masculin</label>
        </div>
        <div class="form-check form-check-inline">
            <input type="radio" id="sexeF" name="sexe" value="F" class="form-check-input" required>
            <label for="sexeF" class="form-check-label">Féminin</label>
        </div>
    </div>
    <div class="mb-3">
        <label for="commentaires" class="form-label">Commentaires :</label>
        <textarea id="commentaires" name="commentaires" rows="4" cols="50" class="form-control" required></textarea>
    </div>
    <div class="mb-3">
        <label for="note" class="form-label">Note :</label>
        <select id="note" name="note" class="form-select" required>
            <option value="Très bien">Très bien</option>
            <option value="Bien">Bien</option>
            <option value="Moyen">Moyen</option>
            <option value="Médiocre">Médiocre</option>
        </select>
    </div>
    <div class="mb-3">
        <input type="submit" value="Envoyer" class="btn btn-primary" onclick="return confirm('Êtes-vous sûr de vouloir modifier cette évaluation?')">
        <input type="reset" value="Annuler" class="btn btn-secondary" onclick="return confirm('Êtes-vous sûr de vouloir annuler?')">
    </div>
</form>


</body>
</html>
```



