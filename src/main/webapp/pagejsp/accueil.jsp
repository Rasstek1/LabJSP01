<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="mesmodels.Evaluation" %>

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


<div class="container my-4 p-4 border" style="background-color: #e8faff; max-width: 600px;">
    <div class="content">
        <h2 class="text-center" style="font-size: 1.5em;">Bienvenue sur Evaluation Paradise</h2>
        <p class="lead" style="font-size: 1em;">Découvrez la puissance de l'évaluation collaborative !</p>
        <p style="font-size: 0.9em;">Vous êtes à la recherche d'un outil convivial pour gérer et consulter des évaluations en ligne ? Vous êtes au bon endroit ! Evaluation Paradise vous offre une plateforme simple et intuitive pour recueillir, suivre et partager des évaluations.</p>
        <p class="font-weight-bold" style="font-size: 1em;">Pourquoi Evaluation Paradise ?</p>
        <ul class="list-group list-group-flush" style="font-size: 0.9em;">
            <li class="list-group-item">Facilité d'utilisation : Notre interface conviviale rend la gestion des évaluations aussi simple que possible, que vous soyez un utilisateur régulier ou que vous découvriez la plateforme pour la première fois.</li>
            <li class="list-group-item">Collaboration en temps réel : Travaillez en équipe sur des évaluations en temps réel. Plus besoin de jongler avec des feuilles de calcul ou des e-mails interminables.</li>
            <li class="list-group-item">Personnalisation : Adaptez vos formulaires d'évaluation selon vos besoins spécifiques. Créez des questions sur mesure et collectez les données qui comptent le plus pour vous.</li>
            <li class="list-group-item">Visualisation des données : Explorez vos évaluations grâce à des graphiques et des tableaux de bord interactifs. Comprenez rapidement les tendances et les points forts.</li>
            <li class="list-group-item">Sécurité des données : Vos évaluations et données personnelles sont en sécurité avec nous. Nous utilisons les dernières technologies de sécurité pour protéger vos informations.</li>
        </ul>
    </div>
</div>

<!-- Scripts Bootstrap -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9Wl7M1qoTJUAlE+OrC49dWUC2MjPxCO"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</body>
</html>









