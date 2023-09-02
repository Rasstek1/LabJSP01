package com.martin.labjsp01.mesmodels;

import java.util.ArrayList;
import java.util.List;

public class EvaluationDbContext implements IEvaluationContext{

    private static List<Evaluation> listeEvaluations =new ArrayList<>();//Liste des evaluations utilisee pour stocker les
    // evaluations des usagers du site

    @Override
    public void Ajouter(Evaluation element) {
        listeEvaluations.add(element);
    }

    @Override
    public void Modifier(Evaluation element) {
        // Trouver l'évaluation correspondante dans la liste et la mettre à jour
        for (Evaluation evaluation : listeEvaluations) {
            if (evaluation.getNumero() == element.getNumero()) {
                // Modifier les propriétés de l'évaluation
                evaluation.setNom(element.getNom());
                evaluation.setPrenom(element.getPrenom());
                // ... Autres propriétés ...
                break;
            }
        }
    }

    @Override
    public void Supprimer(int numero) {
        // Supprimer l'évaluation correspondante de la liste
        listeEvaluations.removeIf(evaluation -> evaluation.getNumero() == numero);
    }

    // Méthode d'acces en lecture seule à la liste des évaluations
    public static List<Evaluation> getListeEvaluations() {
        return listeEvaluations;
    }

    private static Evaluation getEvaluationParNumero(int numero) {//Se sert de Evaluation pour retourner l'evaluation qui a le numero correspondant
        Evaluation evaluation = null;
        for (Evaluation e : listeEvaluations) {
            if (e.getNumero() == numero) {
                evaluation = e;
                break;
            }
        }
        return evaluation;
    }

    // Méthode pour récupérer la liste des évaluations
    public List<Evaluation> recupererEvaluations() {
        return listeEvaluations;
    }

    // Méthode pour récupérer une évaluation par son numéro
    public Evaluation recupererEvaluationParNumero(int numero) {
        for (Evaluation e : listeEvaluations) {
            if (e.getNumero() == numero) {
                return e;
            }
        }
        return null; // Retourne null si l'évaluation n'est pas trouvée
    }

}








