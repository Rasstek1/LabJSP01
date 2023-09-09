package messervlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "HomeServlet", value = "/HomeServlet")
public class HomeServlet extends HttpServlet {

    private String path = "pagejsp/accueil.jsp";


    /**
     * Redirige la requête et la réponse vers la vue spécifiée.
     *
     * @param viewname le nom de la vue (chemin vers un fichier JSP) vers laquelle rediriger la requête et la réponse
     * @param request l'objet HttpServletRequest qui contient les informations de la requête client
     * @param response l'objet HttpServletResponse qui permet d'envoyer une réponse au client
     * @throws ServletException si une exception de servlet se produit
     * @throws IOException si une exception d'entrée/sortie se produit
     */
    private void view(String viewname, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(viewname).forward(request, response);
    }

    /**
     * Initialise la servlet.
     * @throws ServletException si une erreur liée à Servlet se produit
     */
    @Override
    public void init() throws ServletException {
        // Initialisation de la variable
        String appMode = getServletContext().getInitParameter("appMode");

        // Afficher le mode de l'application dans la console du serveur
        System.out.println("Application est en mode: " + appMode);
    }


    /**
     * Appelle la méthode 'view' avec le chemin spécifié ainsi que les objets request et response.
     * @param request l'objet HttpServletRequest qui contient les informations de la requête
     * @param response l'objet HttpServletResponse qui permet d'envoyer une réponse
     * @throws ServletException si une erreur liée à Servlet se produit
     * @throws IOException si une erreur d'entrée/sortie se produit
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        view(path, request, response);
    }


    /**
     * Appelle la méthode 'view' avec le chemin spécifié ainsi que les objets request et response.
     * @param request l'objet HttpServletRequest qui contient les informations de la requête
     * @param response l'objet HttpServletResponse qui permet d'envoyer une réponse
     * @throws ServletException si une erreur liée à Servlet se produit
     * @throws IOException si une erreur d'entrée/sortie se produit
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        view(path, request, response);
    }


}



