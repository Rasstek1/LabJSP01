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