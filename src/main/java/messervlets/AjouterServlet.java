package messervlets;

import mesmodels.Evaluation;
import mesmodels.EvaluationDbContext;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;


@WebServlet(name = "AjouterServlet", value = "/AjouterServlet")
public class AjouterServlet extends HttpServlet {

    private EvaluationDbContext evaluationDbContext = new EvaluationDbContext();


    public void init() throws ServletException {
        super.init();
        evaluationDbContext = new EvaluationDbContext();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Afficher la page "ajouterEvaluation.jsp"
        request.getRequestDispatcher("/pagejsp/ajouterEvaluation.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Recupere les donnees du formulaire d'ajout
        Evaluation e = new Evaluation();
        e = e.mapper(request);
        evaluationDbContext.Ajouter(e);
        request.getRequestDispatcher("/HomeServlet").forward(request, response);
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