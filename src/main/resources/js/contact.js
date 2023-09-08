function formSubmitted(event) {
    event.preventDefault();

    // Effacer les champs du formulaire
    document.getElementById('nom').value = '';
    document.getElementById('courriel').value = '';
    document.getElementById('message').value = '';

    // Afficher un message de succès
    alert('Votre message a été envoyé avec succès.');
}