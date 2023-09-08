package messervlets;

import mesmodels.Evaluation;
import mesmodels.EvaluationDbContext;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ModifierServlet", value = "/ModifierServlet")
public class ModifierServlet extends HttpServlet {

    private EvaluationDbContext evaluationDbContext = new EvaluationDbContext();
    @Override
    public void init() throws ServletException {
        super.init();

    }

//Validation du numero et de la liste devaluation
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // insérer votre code
        Evaluation e = evaluationDbContext.rechercher(Integer.parseInt(request.getParameter("numero")));
        request.setAttribute("evaluation", e);

        RequestDispatcher dis = request.getRequestDispatcher("/pagejsp/modifierEvaluation.jsp");
        dis.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //insérer votre code
        Evaluation e = new Evaluation();
        e = Evaluation.mapper(request);
        evaluationDbContext.Modifier(e);

        response.sendRedirect(request.getContextPath()+"/ListeServlet");
    }



}

