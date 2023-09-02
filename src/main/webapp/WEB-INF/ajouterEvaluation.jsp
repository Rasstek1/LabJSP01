<%--
  Created by IntelliJ IDEA.
  User: nitra
  Date: 2023-09-02
  Time: 08:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter Évaluation - Votre site</title>
</head>
<body>
<div class="content">
    <h2>Ajouter Évaluation</h2>

<form action="AjouterServlet" method="post">
    <label for="numero">Numéro :</label>
    <input type="number" id="numero" name="numero" required><br>

    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required><br>

    <label for="prenom">Prénom :</label>
    <input type="text" id="prenom" name="prenom" required><br>

    <label for="telephone">Téléphone :</label>
    <input type="text" id="telephone" name="telephone" required><br>

    <label for="courriel">Courriel :</label>
    <input type="email" id="courriel" name="courriel" required><br>

    <label>Sexe :</label><br>
    <input type="radio" id="sexeM" name="sexe" value="M" required>
    <label for="sexeM">Masculin</label>
    <input type="radio" id="sexeF" name="sexe" value="F" required>
    <label for="sexeF">Féminin</label><br>


    <label for="dateevaluation">Date d'évaluation :</label>
    <input type="date" id="dateevaluation" name="dateevaluation" required><br>

    <label for="note">Note :</label>
    <select id="note" name="note" required>
        <option value="Très bien">Très bien</option>
        <option value="Bien">Bien</option>
        <option value="Moyen">Moyen</option>
        <option value="Médiocre">Médiocre</option>
    </select><br>

    <label for="commentaires">Commentaires :</label><br>
    <textarea id="commentaires" name="commentaires" rows="4" cols="50"></textarea><br>

    <input type="submit" value="Envoyer">
    <input type="button" value="Annuler" onclick="confirmerAnnulation()">
</form>

<script>
    function confirmerAnnulation() {
        if (confirm("Êtes-vous sûr de vouloir annuler?")) {
            document.getElementById("numero").value = "";
            document.getElementById("nom").value = "";
            document.getElementById("prenom").value = "";
            document.getElementById("telephone").value = "";
            document.getElementById("courriel").value = "";
            document.getElementById("sexeM").checked = false;
            document.getElementById("sexeF").checked = false;
            document.getElementById("dateevaluation").value = "";
            document.getElementById("note").value = "";
            document.getElementById("commentaires").value = "";
        }
    }
</script>
</body>
</html>
