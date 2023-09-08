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
    <script src="${pageContext.request.contextPath}/res/js/contact.js" type="text/javascript"></script>

</head>


<body>

<%@ include file="header.jsp" %>

<div class="content container mt-4 mb-4 shadow p-3 mb-5 bg-white rounded col-lg-6 mx-auto">
    <h2 class="text-center">Contact</h2>
    <p>Adresse : 800 Avenue Java, Saint-Sacrement</p>
    <p>Téléphone : (819) 666-3556</p>
    <p>Courriel : EParadise@email.com</p>
    <h2 class="text-center">Ecrivez-nous un courriel :</h2>
    <form action="envoyerCourriel" method="post" onsubmit="formSubmitted(event)">
        <div class="mb-3">
            <label for="nom" class="form-label">Nom :</label>
            <input type="text" id="nom" name="nom" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="courriel" class="form-label">Courriel :</label>
            <input type="email" id="courriel" name="courriel" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="message" class="form-label">Message :</label>
            <textarea id="message" name="message" class="form-control" rows="4" required></textarea>
        </div>
        <div class="text-center">
            <input type="submit" value="Envoyer" class="btn btn-primary">
        </div>
    </form>
</div>



</body>
</html>
```

