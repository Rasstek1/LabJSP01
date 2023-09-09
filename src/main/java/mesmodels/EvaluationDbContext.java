package mesmodels;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;
public class EvaluationDbContext implements IEvaluationContext{

    /**
     * Liste des évaluations
     */
    private static List<Evaluation> listeEvalutions = new ArrayList<>()
    {
        {
            add(new Evaluation(1, "Dupont", "Jean", "jean.dupont@mail.com", "0123456781", 'M', "Excellente", java.sql.Date.valueOf("2023-09-01"), "Très bon travail !"));
            add(new Evaluation(2, "Martin", "Sophie", "sophie.martin@mail.com", "0123456782", 'F', "Bonne", java.sql.Date.valueOf("2023-09-02"), "Fait des progrès."));
            add(new Evaluation(3, "Tremblay", "Michel", "michel.tremblay@mail.com", "0123456783", 'M', "Très bonne", java.sql.Date.valueOf("2023-09-03"), "Excellent travail !"));

        }

    };

    public static List<Evaluation> getListeEvalutions() {
        return listeEvalutions;
    }
    @Override
    public void Ajouter(Evaluation evaluation) {
        listeEvalutions.add(evaluation);
    }

    /**
     * Modifier une évaluation
     * @param evaluation Evaluation
     */
    @Override
    public void Modifier(Evaluation evaluation) {
        Evaluation e = this.rechercher(evaluation.getNumero());
        e.setNumero(evaluation.getNumero());
        e.setPrenom(evaluation.getPrenom());
        e.setCourriel(evaluation.getCourriel());
        e.setTelephone(evaluation.getTelephone());
        e.setSexe(evaluation.getSexe());
        e.setDateEvaluation(evaluation.getDateEvaluation());
        e.setNote(evaluation.getNote());
        e.setCommentaires(evaluation.getCommentaires());
    }

    @Override
    public void Supprimer(int numero) {
        listeEvalutions.removeIf((e)->e.getNumero()==numero);
    }

    /**
     * Rechercher une évaluation par son numéro
     * @param numero
     * @return  Evaluation
     */
    public Evaluation rechercher(int numero) {
        Evaluation evaluation;
        evaluation = EvaluationDbContext.listeEvalutions.stream().filter((a)->a.getNumero()==numero).findFirst().get();
        return evaluation;
    }


}








