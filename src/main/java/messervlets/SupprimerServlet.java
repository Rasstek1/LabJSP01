package messervlets;

import mesmodels.EvaluationDbContext;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SupprimerServlet", value = "/SupprimerServlet")
public class SupprimerServlet extends HttpServlet {

    private EvaluationDbContext EvaluationDbContext = new EvaluationDbContext();

    @Override
    public void init() throws ServletException {
        super.init();

    }
    private void proccesRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("numero") != null) {
            int num = Integer.parseInt(request.getParameter("numero"));
            EvaluationDbContext.Supprimer(num);
        }

        response.sendRedirect(request.getContextPath()+"/ListeServlet");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        proccesRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        proccesRequest(request, response);
    }
}


