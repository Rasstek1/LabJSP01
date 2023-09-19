package messervlets;

import mesmodels.Evaluation;
import mesmodels.EvaluationDbContext;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ModifierServlet", value = "/ModifierServlet")
public class ModifierServlet extends HttpServlet {

    /**
     * Instance d'EvaluationDbContext, utilisée pour interagir avec la base de données des évaluations.
     * Elle permet d'accéder aux méthodes pour récupérer, ajouter, modifier ou supprimer des données dans la base de données des évaluations.
     */
    private EvaluationDbContext evaluationDbContext = new EvaluationDbContext();

    @Override
    public void init() throws ServletException {


    }
    /**
     * Cette méthode est appelée par le conteneur servlet pour permettre au servlet de gérer une requête GET.
     * Elle recherche une évaluation spécifique en utilisant le numéro d'évaluation fourni dans les paramètres de la requête.
     * Une fois l'évaluation trouvée, elle est mise en attribut dans l'objet requête, puis la requête est transmise à la JSP "modifierEvaluation.jsp" pour affichage.
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client, y compris le paramètre "numero" utilisé pour rechercher l'évaluation
     * @param response l'objet HttpServletResponse qui contient la réponse que le servlet envoie au client
     *
     * @throws ServletException si une exception spécifique au servlet intervient
     * @throws IOException      si une exception d'entrée/sortie intervient
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupération du numéro d'évaluation à partir des paramètres de la requête
        int numero = Integer.parseInt(request.getParameter("numero"));

        // Recherche de l'évaluation correspondante dans la base de données
        Evaluation e = evaluationDbContext.rechercher(numero);

        // Ajout de l'évaluation trouvée comme attribut de la requête
        request.setAttribute("evaluation", e);

        // Transmission de la requête à la JSP pour affichage
        RequestDispatcher dis = request.getRequestDispatcher("/pagejsp/modifierEvaluation.jsp");
        dis.forward(request, response);
    }

    /**
     * Cette méthode est appelée par le conteneur servlet pour permettre au servlet de gérer une requête POST.
     * Elle récupère les données du formulaire de modification, crée un nouvel objet Evaluation avec ces données,
     * puis met à jour l'enregistrement correspondant dans la base de données. Enfin, elle redirige le client vers la servlet de liste.
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client, y compris les données du formulaire de modification
     * @param response l'objet HttpServletResponse qui contient la réponse que le servlet envoie au client
     *
     * @throws ServletException si le traitement de la requête entraîne une erreur liée au servlet
     * @throws IOException      si une erreur d'entrée/sortie se produit pendant le traitement
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Création d'un nouvel objet Evaluation
        Evaluation e = new Evaluation();

        // Mapping des données du formulaire de modification sur l'objet Evaluation
        e = Evaluation.mapper(request);

        // Modification de l'évaluation dans la base de données
        evaluationDbContext.Modifier(e);

        // Redirection vers la servlet qui affiche la liste des évaluations
        response.sendRedirect(request.getContextPath() + "/ListeServlet");
    }

}



