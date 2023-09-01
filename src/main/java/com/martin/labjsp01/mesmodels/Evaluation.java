package com.martin.labjsp01.mesmodels;

import jakarta.servlet.http.HttpServletRequest;

import java.util.Calendar;

public class Evaluation {
    public int numero;
    public String nom;
    public String prenom;
    public String telephone;
    public String courriel;
    public char sexe;
    public String note;
    public Calendar dateevaluation; // Utilisez "Calendar" avec une majuscule initiale
    public String commentaire;

public Evaluation() {
    }

    public Evaluation(int numero, String nom, String prenom, String telephone, String courriel, char sexe, String note, Calendar dateevaluation, String commentaire) {
        this.numero = numero;
        this.nom = nom;
        this.prenom = prenom;
        this.telephone = telephone;
        this.courriel = courriel;
        this.sexe = sexe;
        this.note = note;
        this.dateevaluation = dateevaluation;
        this.commentaire = commentaire;
    }


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

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getCourriel() {
        return courriel;
    }

    public void setCourriel(String courriel) {
        this.courriel = courriel;
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

    public Calendar getDateevaluation() {
        return dateevaluation;
    }

    public void setDateevaluation(Calendar dateevaluation) {
        this.dateevaluation = dateevaluation;
    }

    public String getCommentaire() {
        return commentaire;
    }

    public void setCommentaire(String commentaire) {
        this.commentaire = commentaire;
    }

    // Méthode statique pour mapper les données de HttpServletRequest vers Evaluation
    //Cette methode est l`equivalent de serialize en php
    public static Evaluation mapper(HttpServletRequest request) {
        Evaluation evaluation = new Evaluation();
        evaluation.setNumero(Integer.parseInt(request.getParameter("numero")));
        evaluation.setNom(request.getParameter("nom"));
        evaluation.setPrenom(request.getParameter("prenom"));
        evaluation.setTelephone(request.getParameter("telephone"));
        evaluation.setCourriel(request.getParameter("courriel"));
        evaluation.setSexe(request.getParameter("sexe").charAt(0));
        evaluation.setNote(request.getParameter("note"));
        // Exemple : établir la date à partir du paramètre dateevaluation
        // Calendar dateevaluation = Calendar.getInstance();
        // ... Configurez la date à partir des paramètres de la requête ...
        // evaluation.setDateevaluation(dateevaluation);
        evaluation.setCommentaire(request.getParameter("commentaires"));
        return evaluation;
    }
}
