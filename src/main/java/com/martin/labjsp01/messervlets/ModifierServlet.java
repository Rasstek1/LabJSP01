package com.martin.labjsp01.messervlets;

import com.martin.labjsp01.mesmodels.Evaluation;
import com.martin.labjsp01.mesmodels.EvaluationDbContext;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;

@WebServlet("/modifier")
public class ModifierServlet extends HttpServlet {

    private EvaluationDbContext evaluationDbContext;

    @Override
    public void init() throws ServletException {
        super.init();
        evaluationDbContext = new EvaluationDbContext();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer le numéro de l'évaluation à modifier depuis les paramètres
        int numeroEvaluation = Integer.parseInt(request.getParameter("numero"));

        // Récupérer l'évaluation correspondante depuis la liste
        Evaluation evaluationAModifier = evaluationDbContext.recupererEvaluationParNumero(numeroEvaluation);

        // Envoyer l'évaluation à la page JSP de modification
        request.setAttribute("evaluation", evaluationAModifier);

        // Afficher la page de modification "modifierEvaluation.jsp"
        request.getRequestDispatcher("/WEB-INF/modifierEvaluation.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer les nouvelles données du formulaire de modification
        int numero = Integer.parseInt(request.getParameter("numero"));
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String courriel = request.getParameter("courriel");
        char sexe = request.getParameter("sexe").charAt(0);
        String note = request.getParameter("note");
        String commentaire = request.getParameter("commentaires");

        // Récupérer la date depuis les paramètres du formulaire
        int annee = Integer.parseInt(request.getParameter("annee"));
        int mois = Integer.parseInt(request.getParameter("mois")) - 1; // Soustraire 1 car les mois commencent à 0
        int jour = Integer.parseInt(request.getParameter("jour"));

        // Créer une instance de Calendar pour la date d'évaluation
        Calendar dateevaluation = Calendar.getInstance();
        dateevaluation.set(Calendar.YEAR, annee);
        dateevaluation.set(Calendar.MONTH, mois);
        dateevaluation.set(Calendar.DAY_OF_MONTH, jour);

        // Créer une nouvelle instance d'évaluation avec les nouvelles données
        Evaluation evaluationModifiee = new Evaluation(numero, nom, prenom, telephone, courriel, sexe, note, dateevaluation, commentaire);

        // Appeler la méthode de modification dans evaluationDbContext
        evaluationDbContext.Modifier(evaluationModifiee);

        // Rediriger vers le servlet "ListeServlet" pour afficher la liste mise à jour
        response.sendRedirect(request.getContextPath() + "/liste");
    }



}

//Dans cet exemple, le servlet "ModifierServlet" hérite de la classe HttpServlet et utilise l'annotation
// @WebServlet pour définir le chemin ("/modifier") auquel le servlet répondra.
//
//La méthode init est utilisée pour initialiser la propriété evaluationDbContext lorsque le servlet est créé.
//
//La méthode doGet est utilisée pour récupérer l'évaluation à modifier en fonction du numéro donné dans les
// paramètres de la requête. Ensuite, elle envoie l'évaluation à la page JSP de modification "modifierEvaluation.
// jsp" en utilisant la méthode setAttribute, puis affiche la page JSP.
//
//La méthode doPost est utilisée pour gérer les requêtes POST à partir du formulaire de modification.
// Elle récupère les nouvelles données du formulaire, crée une nouvelle instance d'évaluation avec ces données,
// appelle la méthode de modification dans la propriété evaluationDbContext pour mettre à jour l'évaluation,
// puis redirige vers le servlet "ListeServlet" pour afficher la liste mise à jour.
//
//Assurez-vous d'avoir la page JSP de modification ("modifierEvaluation.jsp") dans le répertoire
// "WEB-INF" de votre projet pour que la redirection fonctionne correctement.


//***********
// Les noms "annee", "mois" et "jour" dans le code que
// sont des exemples génériques que j'ai utilisés pour représenter les noms des paramètres que vous utiliserez
// pour récupérer les composantes de la date depuis le formulaire HTML. Vous devrez remplacer ces noms génériques
// par les noms réels que vous utilisez dans votre formulaire pour saisir l'année, le mois et le jour.
//
//Assurez-vous de les remplacer par les noms exacts des paramètres que vous utilisez dans le formulaire HTML pour
// capturer la date d'évaluation. De plus, les valeurs que vous obtenez à partir de ces paramètres devront être
// valides pour construire correctement l'objet Calendar.
//
//Vous aurez besoin de correspondre les noms des paramètres dans votre formulaire HTML avec les noms que
// vous utilisez dans le code Java pour récupérer ces valeurs correctement lors de la soumission du formulaire.