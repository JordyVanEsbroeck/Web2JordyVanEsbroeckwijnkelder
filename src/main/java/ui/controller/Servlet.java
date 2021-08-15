package ui.controller;


import domain.db.WijnDBInMemory;
import domain.model.Wijn;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
    private WijnDBInMemory wijnDBInMemory = new WijnDBInMemory();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String naam = request.getParameter("naam");
        String soort = request.getParameter("soort");
        String sjaartal = request.getParameter("jaartal");
        String sprijs = request.getParameter("prijs");
        String omschrijving = request.getParameter("omschrijving");



        try {
            double prijs = Double.parseDouble(sprijs);
            int jaartal = Integer.parseInt(sjaartal);

                wijnDBInMemory.voegToe(new Wijn(naam,soort,jaartal,prijs,omschrijving));




        } catch (Exception exc){
            RequestDispatcher view = request.getRequestDispatcher("voegToe.jsp");
            view.forward(request,response);
        }
        request.setAttribute("wijnen",wijnDBInMemory.getAlleWijnen());
        RequestDispatcher view = request.getRequestDispatcher("overzicht.jsp");
        view.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("wijnen",wijnDBInMemory.getAlleWijnen());
        /*request.setAttribute("wijnenVanJaartal",wijnDBInMemory.vindWijnenVanJaartal(Integer.parseInt(request.getParameter("jaartal"))));*/
        RequestDispatcher view = request.getRequestDispatcher("overzicht.jsp");
        view.forward(request,response);
    }

}
