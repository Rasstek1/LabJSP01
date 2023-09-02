package com.martin.labjsp01.messervlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/accueil")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Rediriger vers la page d'accueil "accueil.jsp"
        request.getRequestDispatcher("/WEB-INF/accueil.jsp").forward(request, response);
    }
}


//le servlet "HomeServlet" hérite de la classe HttpServlet et utilise l'annotation @WebServlet pour définir le chemin
// ("/accueil") auquel le servlet répondra.
//La méthode doGet est utilisée pour gérer les requêtes GET. À l'intérieur de cette méthode, nous utilisons la méthode
// getRequestDispatcher pour obtenir un dispatcher vers la page d'accueil "accueil.jsp", qui est située dans le répertoire
// "WEB-INF" (ce qui empêche un accès direct depuis l'URL). Ensuite, nous utilisons la méthode forward pour transférer
// la requête et la réponse vers la page JSP.