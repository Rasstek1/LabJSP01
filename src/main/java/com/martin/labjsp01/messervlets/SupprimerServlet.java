package com.martin.labjsp01.messervlets;

import com.martin.labjsp01.mesmodels.EvaluationDbContext;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/supprimer")
public class SupprimerServlet extends HttpServlet {

    private EvaluationDbContext evaluationDbContext;

    @Override
    public void init() throws ServletException {
        super.init();
        evaluationDbContext = new EvaluationDbContext();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer le numéro de l'évaluation à supprimer depuis les paramètres
        int numeroEvaluation = Integer.parseInt(request.getParameter("numero"));

        // Supprimer l'évaluation de la liste
        evaluationDbContext.Supprimer(numeroEvaluation);

        // Rediriger vers le servlet "ListeServlet" pour afficher la liste mise à jour
        response.sendRedirect(request.getContextPath() + "/liste");
    }
}


//le servlet "SupprimerServlet" hérite de la classe HttpServlet et utilise l'annotation @WebServlet pour
// définir le chemin ("/supprimer") auquel le servlet répondra.
//
//La méthode init est utilisée pour initialiser la propriété evaluationDbContext lorsque le servlet est créé.
//
//La méthode doPost est utilisée pour gérer les requêtes POST (par exemple, à partir d'un formulaire de
// confirmation de suppression). Elle récupère le numéro de l'évaluation à supprimer depuis les paramètres
// de la requête, utilise la méthode Supprimer de la propriété evaluationDbContext pour supprimer l'évaluation
// de la liste, puis redirige vers le servlet "ListeServlet" pour afficher la liste mise à jour.
//
//Assurez-vous que votre formulaire de confirmation de suppression pointe vers le chemin "/supprimer" défini dans ce servlet.