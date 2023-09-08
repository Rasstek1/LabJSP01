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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/header.css">
</head>


<body>

<%@ include file="header.jsp" %>

<body>
<h1>Modifier Évaluation</h1>

<%
    Evaluation evaluation = (Evaluation) request.getAttribute("evaluation");
    SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
    String formateDate = dateFormat.format(evaluation.getDateEvaluation().getTime());
%>


<form action="ModifierServlet" method="post">
    <label for="numero">Numéro :</label>
    <input type="number" id="numero" name="numero" required><br>
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required><br>
    <label for="prenom">Prénom :</label>
    <input type="text" id="prenom" name="prenom" required><br>
    <label for="dateEvaluation" class="form-label">Date d'Évaluation</label>
    <input type="text" class="form-control" id="dateEvaluation" name="dateEvaluation" value="<%= formateDate %>">
    <label>Sexe :</label><br>
    <input type="radio" id="sexeM" name="sexe" value="M" required>
    <label for="sexeM">Masculin</label>
    <input type="radio" id="sexeF" name="sexe" value="F" required>
    <label for="sexeF">Féminin</label><br>
    <label for="commentaires">Commentaires :</label>
    <textarea id="commentaires" name="commentaires" rows="4" cols="50" required></textarea><br>
    <label for="note">Note :</label>
    <select id="note" name="note" required>
        <option value="Très bien">Très bien</option>
        <option value="Bien">Bien</option>
        <option value="Moyen">Moyen</option>
        <option value="Médiocre">Médiocre</option>
    </select><br>
    <input type="submit" value="Envoyer" onclick="return confirm('Êtes-vous sûr de vouloir modifier cette évaluation?')">
    <input type="reset" value="Annuler" onclick="return confirm('Êtes-vous sûr de vouloir annuler?')">
</form>

<script>
    function confirmerAnnulation() {
        if (confirm("Êtes-vous sûr de vouloir annuler?")) {
            // Effacer les valeurs saisies dans les champs
            document.getElementById("numero").value = "";
            document.getElementById("nom").value = "";
            document.getElementById("prenom").value = "";
            document.getElementById("dateevaluation").value = "";
            document.getElementById("sexeM").checked = false;
            document.getElementById("sexeF").checked = false;
            document.getElementById("commentaires").value = "";
            document.getElementById("note").value = "Très bien";
        }
    }
</script>
</body>
</html>
```


