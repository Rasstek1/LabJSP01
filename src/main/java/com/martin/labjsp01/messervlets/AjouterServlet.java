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

@WebServlet("/ajouter")
public class AjouterServlet extends HttpServlet {

    private EvaluationDbContext evaluationDbContext;

    @Override
    public void init() throws ServletException {
        super.init();
        evaluationDbContext = new EvaluationDbContext();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Afficher la page "ajouterEvaluation.jsp"
        request.getRequestDispatcher("/WEB-INF/ajouterEvaluation.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer les paramètres de la requête
        int numero = Integer.parseInt(request.getParameter("numero"));
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String courriel = request.getParameter("courriel");
        char sexe = request.getParameter("sexe").charAt(0);
        String note = request.getParameter("note");

        // Créer une instance de Calendar et l'initialiser selon vos besoins
        Calendar dateevaluation = Calendar.getInstance();
        String commentaire = request.getParameter("commentaires");

        // Créer une nouvelle évaluation
        Evaluation nouvelleEvaluation = new Evaluation(numero, nom, prenom, telephone,
                courriel, sexe, note, dateevaluation, commentaire);

        // Ajouter l'évaluation à la liste des évaluations
        evaluationDbContext.Ajouter(nouvelleEvaluation);

        // Rediriger vers la page d'accueil après l'ajout
        response.sendRedirect(request.getContextPath() + "/accueil");
    }
}

// le servlet "AjouterServlet" hérite de la classe HttpServlet et utilise l'annotation @WebServlet pour définir le chemin
// ("/ajouter") auquel le servlet répondra.
//
//La méthode init est utilisée pour initialiser la propriété evaluationDbContext lorsque le servlet est créé.
//
//La méthode doPost est utilisée pour gérer les requêtes POST, généralement utilisées pour soumettre des formulaires.
// À l'intérieur de cette méthode, nous récupérons les paramètres de la requête (les données de l'évaluation à ajouter),
// créons une nouvelle instance d'évaluation avec ces données, ajoutons l'évaluation à la liste via la propriété evaluationDbContext, puis redirigeons l'utilisateur vers la page d'accueil après l'ajout.
//
//Assurez-vous de bien ajuster la configuration de l'objet dateevaluation selon vos besoins et la manière dont vous souhaitez
// initialiser la date et l'heure.