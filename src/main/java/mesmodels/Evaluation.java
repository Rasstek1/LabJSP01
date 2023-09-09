package mesmodels;

import jakarta.servlet.http.HttpServletRequest;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Evaluation {
    private int numero;
    private String nom;
    private String prenom;
    private String courriel;
    private String telephone;
    private char sexe;
    private String note;
    private java.sql.Date dateEvaluation;
    private String commentaires;






    //methode dacces en lecture seule a la liste des evaluations
    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getCourriel() {
        return courriel;
    }

    public void setCourriel(String courriel) {
        this.courriel = courriel;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public char getSexe() {
        return sexe;
    }

    public void setSexe(char sexe) {
        this.sexe = sexe;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public java.sql.Date getDateEvaluation() {
        return dateEvaluation;
    }

    public void setDateEvaluation(java.sql.Date dateEvaluation) {
        this.dateEvaluation = dateEvaluation;
    }


    public String getCommentaires() {
        return commentaires;
    }

    public void setCommentaires(String commentaires) {
        this.commentaires = commentaires;
    }


    //Constructeur
    public Evaluation(int numero, String nom, String prenom, String courriel, String telephone, char sexe, String note, java.sql.Date dateEvaluation, String commentaires) {
        this.numero = numero;
        this.nom = nom;
        this.prenom = prenom;
        this.courriel = courriel;
        this.telephone = telephone;
        this.sexe = sexe;
        this.note = note;
        this.dateEvaluation = dateEvaluation;
        this.commentaires = commentaires;
    }


    //Constructeur par defaut
    public Evaluation() {
    }

    //Methodes
    private static java.sql.Date convertDate(String strDate) {
        if (strDate == null) {

            return null;
        }

        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            java.util.Date parseDate = dateFormat.parse(strDate);
            return new java.sql.Date(parseDate.getTime());
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return null;
    }


    public static Evaluation mapper(HttpServletRequest request) {
        int numero = Integer.parseInt(request.getParameter("numero"));
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String courriel = request.getParameter("courriel");
        String telephone = request.getParameter("telephone");
        char sexe = request.getParameter("sexe").charAt(0);
        String note = request.getParameter("note");

        String strDateEvaluation = request.getParameter("dateEvaluation");

        java.sql.Date dateEvaluation = convertDate(strDateEvaluation); //Apres plusieurs facons de faire, je n'ai pas reussi a faire fonctionner la methode convertDate

        System.out.println("String dateEvaluation: " + strDateEvaluation);
        System.out.println("SQL dateEvaluation: " + dateEvaluation);

        String commentaire = request.getParameter("commentaires");

        return new Evaluation(numero, nom, prenom, courriel, telephone, sexe, note, dateEvaluation, commentaire);
    }

}
