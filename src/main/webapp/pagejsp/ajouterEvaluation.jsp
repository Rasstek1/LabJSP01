<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="mesmodels.Evaluation" %>

<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/header.css">
    <script src="${pageContext.request.contextPath}/res/js/ajouter.js" type="text/javascript"></script>
</head>


<body>

<%@ include file="header.jsp" %>


<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <div class="p-4 border rounded shadow">
                <h2 class="text-center">Ajouter Évaluation</h2>

                <form action="AjouterServlet" method="post">
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
                        <label for="telephone" class="form-label">Téléphone :</label>
                        <input type="text" id="telephone" name="telephone" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label for="courriel" class="form-label">Courriel :</label>
                        <input type="email" id="courriel" name="courriel" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <div class="form-check">
                            <input type="radio" id="sexeM" name="sexe" value="M" class="form-check-input" required>
                            <label for="sexeM" class="form-check-label">Masculin</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" id="sexeF" name="sexe" value="F" class="form-check-input" required>
                            <label for="sexeF" class="form-check-label">Féminin</label>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="dateevaluation" class="form-label">Date d'évaluation :</label>
                        <input type="date" id="dateevaluation" name="dateevaluation" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label for="note" class="form-label">Note :</label>
                        <select id="note" name="note" class="form-control" required>
                            <option value="Très bien">Très bien</option>
                            <option value="Bien">Bien</option>
                            <option value="Moyen">Moyen</option>
                            <option value="Médiocre">Médiocre</option>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label for="commentaires" class="form-label">Commentaires :</label>
                        <textarea id="commentaires" name="commentaires" class="form-control" rows="4"></textarea>
                    </div>

                    <div class="mb-3 text-center">
                        <input type="submit" value="Envoyer" class="btn btn-primary">
                        <input type="button" value="Annuler" onclick="confirmerAnnulation()" class="btn btn-secondary">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>




</body>
</html>
```

```


