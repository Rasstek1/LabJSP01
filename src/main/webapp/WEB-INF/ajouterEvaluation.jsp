<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

<%@ include file="header.jsp" %>


<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-lg-6">
            <h2 class="text-center">Ajouter Évaluation</h2>

            <form action="AjouterServlet" method="post">
                <label for="numero">Numéro :</label>
                <input type="number" id="numero" name="numero" class="form-control" required>

                <label for="nom">Nom :</label>
                <input type="text" id="nom" name="nom" class="form-control" required>

                <label for="prenom">Prénom :</label>
                <input type="text" id="prenom" name="prenom" class="form-control" required>

                <label for="telephone">Téléphone :</label>
                <input type="text" id="telephone" name="telephone" class="form-control" required>

                <label for="courriel">Courriel :</label>
                <input type="email" id="courriel" name="courriel" class="form-control" required>

                <div class="form-check">
                    <input type="radio" id="sexeM" name="sexe" value="M" class="form-check-input" required>
                    <label for="sexeM" class="form-check-label">Masculin</label>
                </div>
                <div class="form-check">
                    <input type="radio" id="sexeF" name="sexe" value="F" class="form-check-input" required>
                    <label for="sexeF" class="form-check-label">Féminin</label>
                </div>


                <label for="dateevaluation">Date d'évaluation :</label>
                <input type="date" id="dateevaluation" name="dateevaluation" class="form-control" required>

                <label for="note">Note :</label>
                <select id="note" name="note" class="form-control" required>
                    <option value="Très bien">Très bien</option>
                    <option value="Bien">Bien</option>
                    <option value="Moyen">Moyen</option>
                    <option value="Médiocre">Médiocre</option>
                </select>

                <label for="commentaires">Commentaires :</label><br>
                <textarea id="commentaires" name="commentaires" class="form-control" rows="4"></textarea>

                <input type="submit" value="Envoyer" class="btn btn-primary mt-3">
                <input type="button" value="Annuler" onclick="confirmerAnnulation()" class="btn btn-secondary mt-3">
            </form>
        </div>
    </div>
</div>

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

```


