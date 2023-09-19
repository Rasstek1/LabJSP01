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

        evaluationDbContext = new EvaluationDbContext();
    }

    /**
     * Gère les requêtes GET en redirigeant l'utilisateur vers la page "ajouterEvaluation.jsp".
     *
     * @param request  l'objet HttpServletRequest qui contient la requête que le client a faite au servlet
     * @param response l'objet HttpServletResponse qui contient la réponse que le servlet envoie au client
     * @throws ServletException si le forward échoue pour des raisons liées au servlet
     * @throws IOException      si le forward échoue pour des raisons d'entrée/sortie
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Afficher la page "ajouterEvaluation.jsp"
        request.getRequestDispatcher("/pagejsp/ajouterEvaluation.jsp").forward(request, response);
    }


    /**
     * Traite les requêtes POST en récupérant les données du formulaire d'ajout d'évaluation,
     * en créant une nouvelle évaluation et en l'ajoutant à la base de données avant de
     * rediriger l'utilisateur vers le HomeServlet.
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client, y compris
     *                 les données du formulaire que l'on souhaite récupérer
     * @param response l'objet HttpServletResponse qui contient la réponse que le servlet envoie au client
     *
     * @throws ServletException si la redirection échoue pour des raisons liées au servlet
     * @throws IOException si la redirection échoue pour des raisons d'entrée/sortie
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Recupere les donnees du formulaire d'ajout
        Evaluation e = new Evaluation();
        e = Evaluation.mapper(request);

        // Ajouter la nouvelle évaluation dans la base de données
        evaluationDbContext.Ajouter(e);

        // Rediriger l'utilisateur vers HomeServlet
        request.getRequestDispatcher("/HomeServlet").forward(request, response);
    }

}

