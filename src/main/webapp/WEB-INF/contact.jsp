<%--
  Created by IntelliJ IDEA.
  User: nitra
  Date: 2023-09-02
  Time: 08:15
  To change this template use File | Settings | File Templates.
--%>
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


<div class="content">
    <h2>Contact</h2>
<p>Adresse : 123 Rue Principale, Ville</p>
<p>Téléphone : (123) 456-7890</p>
<p>Courriel : contact@email.com</p>
<h2>Envoyez-nous un courriel :</h2>
<form action="envoyerCourriel" method="post">
    <label for="nom">Nom :</label>
    <input type="text" id="nom" name="nom" required><br>
    <label for="courriel">Courriel :</label>
    <input type="email" id="courriel" name="courriel" required><br>
    <label for="message">Message :</label><br>
    <textarea id="message" name="message" rows="4" cols="50" required></textarea><br>
    <input type="submit" value="Envoyer">
</form>

</div>

