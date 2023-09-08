function confirmerAnnulation() {
    if (confirm("Êtes-vous certain de vouloir annuler?")) {
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