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
<h1>Modifier Évaluation</h1>
<form action="ModifierServlet" method="post">
    <label for="numero">Numéro :</label>
    <input type="number" id="numero" name="numero" required><br>
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required><br>
    <label for="prenom">Prénom :</label>
    <input type="text" id="prenom" name="prenom" required><br>
    <label for="dateevaluation">Date d'évaluation :</label>
    <input type="date" id="dateevaluation" name="dateevaluation" required><br>
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

