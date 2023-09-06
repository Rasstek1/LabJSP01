package messervlets;

import mesmodels.EvaluationDbContext;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;


import java.io.IOException;

@WebServlet(name = "ListeServlet", value = "/ListeServlet")
public class ListeServlet extends HttpServlet {

    private EvaluationDbContext EvaluationDbContext = new EvaluationDbContext();
    private String path = "/pagejsp/listeEvaluations.jsp";

    private void view(String viewname, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listeEvaluation", EvaluationDbContext.getListeEvalutions());
        request.getRequestDispatcher(viewname).forward(request, response);
    }
    @Override
    public void init() throws ServletException {
        super.init();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        view(path, request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        view(path, request, response);
    }

}


