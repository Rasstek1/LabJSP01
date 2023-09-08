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
    <title>Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/header.css">
</head>


<body>

<%@ include file="header.jsp" %>

<div class="content">
    <h2>Contact</h2>
    <p>Adresse : 123 Rue Principale, Saint-Sacrement</p>
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

</body>
</html>
```

