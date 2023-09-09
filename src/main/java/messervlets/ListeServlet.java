package messervlets;

import mesmodels.EvaluationDbContext;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


import java.io.IOException;

@WebServlet(name = "ListeServlet", value = "/ListeServlet")
public class ListeServlet extends HttpServlet {

    private EvaluationDbContext EvaluationDbContext = new EvaluationDbContext();
    private String path = "/pagejsp/listeEvaluation.jsp";

    /**
     * Cette méthode récupère une liste d'évaluations à partir de la base de données et les ajoute à la requête en tant
     * qu'attribut avant de transférer la requête et la réponse à une vue spécifiée.
     *
     * @param viewname le nom (chemin) de la vue JSP à laquelle la requête et la réponse doivent être transférées
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client; l'attribut "listeEvaluation"
     *                 y est ajouté pour transmettre les évaluations à la vue
     * @param response l'objet HttpServletResponse qui contient la réponse que le servlet envoie au client
     *
     * @throws ServletException si la requête ne peut pas être transférée pour des raisons liées au servlet
     * @throws IOException      si la requête ne peut pas être transférée pour des raisons d'entrée/sortie
     */
    private void view(String viewname, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupération de la liste des évaluations à partir de la base de données
        request.setAttribute("listeEvaluation", EvaluationDbContext.getListeEvalutions());

        // Transfert de la requête et de la réponse à la vue spécifiée
        request.getRequestDispatcher(viewname).forward(request, response);
    }

    @Override
    public void init() throws ServletException {
        super.init();

    }

    /**
     * Cette méthode est appelée par le conteneur servlet pour permettre au servlet de gérer une requête GET.
     * Elle appelle simplement une autre méthode, nommée "view", en passant le chemin vers une vue, ainsi que la requête et la réponse.
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client
     * @param response l'objet HttpServletResponse qui contient la réponse que le servlet envoie au client
     *
     * @throws ServletException si une exception spécifique au servlet intervient
     * @throws IOException      si une exception d'entrée/sortie intervient
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Appel de la méthode "view" avec le chemin spécifié et les objets de requête et de réponse
        view(path, request, response);
    }


    /**
     * Cette méthode est appelée par le conteneur servlet pour permettre au servlet de gérer une requête POST.
     * Elle appelle simplement une autre méthode, nommée "view", en passant le chemin vers une vue, ainsi que la requête et la réponse.
     *
     * @param request  l'objet HttpServletRequest qui contient les informations de la requête client
     * @param response l'objet HttpServletResponse qui contient la réponse que le servlet envoie au client
     *
     * @throws ServletException si une exception spécifique au servlet intervient
     * @throws IOException      si une exception d'entrée/sortie intervient
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Appel de la méthode "view" avec le chemin spécifié et les objets de requête et de réponse
        view(path, request, response);
    }


}


