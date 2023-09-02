package com.martin.labjsp01.messervlets;

import com.martin.labjsp01.mesmodels.Evaluation;
import com.martin.labjsp01.mesmodels.EvaluationDbContext;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/liste")
public class ListeServlet extends HttpServlet {

    private EvaluationDbContext evaluationDbContext;

    @Override
    public void init() throws ServletException {
        super.init();
        evaluationDbContext = new EvaluationDbContext();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupérer la liste des évaluations depuis le contexte
        List<Evaluation> evaluations = evaluationDbContext.recupererEvaluations();

        // Envoyer la liste des évaluations à la page JSP
        request.setAttribute("evaluations", evaluations);

        // Afficher la page "listeEvaluation.jsp"
        request.getRequestDispatcher("/WEB-INF/listeEvaluation.jsp").forward(request, response);
    }
}


//Dans cet exemple, le servlet "ListeServlet" hérite de la classe HttpServlet et utilise l'annotation @WebServlet pour
// définir le chemin ("/liste") auquel le servlet répondra.
//
//La méthode init est utilisée pour initialiser la propriété evaluationDbContext lorsque le servlet est créé.
//
//La méthode doGet est utilisée pour récupérer la liste des évaluations depuis le contexte à l'aide de la propriété evaluationDbContext,
// puis elle envoie cette liste à la page JSP "listeEvaluation.jsp" en utilisant la méthode setAttribute. Ensuite, elle utilise la
// méthode forward pour afficher la page JSP avec les données de la liste.
//
//Assurez-vous d'avoir la page JSP correspondante ("listeEvaluation.jsp") dans le répertoire "WEB-INF" de votre projet
// pour que la redirection fonctionne correctement.