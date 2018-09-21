/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cimena.controller;

import cinema.jpa.controller.MoviesListJpaController;
import cinema.jpa.model.MoviesList;
import cinema.jpa.model.Users;
import cinema.models.BuyTicket;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;

/**
 *
 * @author bankcom
 */
public class BuyTicketServlet extends HttpServlet {

    @PersistenceUnit(unitName = "CinemaPU")

    EntityManagerFactory emf;

    @Resource
    UserTransaction utx;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        MoviesListJpaController movieCtrl = new MoviesListJpaController(utx, emf);

        List<MoviesList> Ml = movieCtrl.findMoviesListEntities();

        String MovieID = request.getParameter("MoviesID");

        if (MovieID != null) {

            MoviesList getMovies = movieCtrl.findMoviesList(MovieID);

            if (getMovies != null) {

                HttpSession session = request.getSession(false);

                BuyTicket buy;

                if (session.getAttribute("BuyTickets") == null) {

                    List<BuyTicket> buyticket = new ArrayList<>();

                    buyticket = (ArrayList) session.getAttribute("BuyAtLists");

                    //System.out.println(buyticket);
                    if (buyticket == null) {
                        buyticket = new ArrayList<>();
                    }

                    String Namecustomer = "Bank";
                    String MovieName = getMovies.getMoviename();
                    String Branch = getMovies.getBranch();
                    String theater = getMovies.getTheater();

                    buy = new BuyTicket(Namecustomer, MovieName, Branch, theater);

                    buyticket.add(buy);

                    session.setAttribute("BuyAtLists", buyticket);
                    response.sendRedirect("ticketmanager");

                    return;

                }

            }

        }

        request.setAttribute("AttrMovies", Ml);
        getServletContext().getRequestDispatcher("/BuyticketView.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
