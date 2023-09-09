package messervlets;

import mesmodels.EvaluationDbContext;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SupprimerServlet", value = "/SupprimerServlet")

public class SupprimerServlet extends HttpServlet {

    /**
     * Instance d'EvaluationDbContext, utilisée pour interagir avec la base de données des évaluations.
     * Elle permet d'accéder aux méthodes pour récupérer, ajouter, modifier ou supprimer des données dans la base de données des évaluations.
     */
    private EvaluationDbContext EvaluationDbContext = new EvaluationDbContext();

    @Override
    public void init() throws ServletException {
        super.init();

    }
    /**
     * Cette méthode traite les demandes de suppression d'évaluations.
     * Si un paramètre "numero" est présent dans la requête HTTP, il est utilisé pour identifier et supprimer une évaluation spécifique
     * en appelant la méthode statique "Supprimer" de la classe "EvaluationDbContext".
     * Après la suppression (si elle a eu lieu), l'utilisateur est redirigé vers la servlet "ListeServlet".
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client, y compris le paramètre "numero"
     *                 qui est utilisé pour identifier l'évaluation à supprimer.
     * @param response l'objet HttpServletResponse qui est utilisé pour envoyer la réponse au client, y compris la redirection
     *                 vers la servlet "ListeServlet".
     * @throws ServletException si une erreur spécifique à la servlet se produit.
     * @throws IOException      si une erreur d'entrée/sortie se produit.
     */
    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("numero") != null) {
            int num = Integer.parseInt(request.getParameter("numero"));
            EvaluationDbContext.Supprimer(num);
        }

        response.sendRedirect(request.getContextPath()+"/ListeServlet");
    }


    /**
     * Cette méthode est appelée par le serveur pour permettre à une servlet de répondre à une requête GET.
     * Elle fait appel à la méthode "proccesRequest" pour gérer la requête.
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client.
     * @param response l'objet HttpServletResponse qui est utilisé pour envoyer la réponse au client.
     * @throws ServletException si une erreur spécifique à la servlet se produit.
     * @throws IOException      si une erreur d'entrée/sortie se produit.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        proccesRequest(request, response);
    }
    /**
     * Cette méthode est appelée par le serveur pour permettre à une servlet de répondre à une requête POST.
     * Elle fait appel à la méthode "proccesRequest" pour gérer la requête.
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client.
     * @param response l'objet HttpServletResponse qui est utilisé pour envoyer la réponse au client.
     * @throws ServletException si une erreur spécifique à la servlet se produit.
     * @throws IOException      si une erreur d'entrée/sortie se produit.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        proccesRequest(request, response);
    }

}


