/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cimena.controller;

import cinema.jpa.controller.UsersJpaController;
import cinema.jpa.controller.exceptions.RollbackFailureException;
import cinema.jpa.model.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;

/**
 *
 * @author bankcom
 */
public class RegisterServlet extends HttpServlet {

    @PersistenceUnit(unitName = "CinemaPU")
    EntityManagerFactory userDB;

    @Resource
    UserTransaction pswDB;

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

        String UserID = request.getParameter("UserID");
        String Psw = request.getParameter("password");
        String name = request.getParameter("name");

        System.out.println(UserID + Psw + name);

        if (UserID == null && Psw == null && name == null) {
            getServletContext().getRequestDispatcher("/RegisterView.jsp").forward(request, response);
        }

        if (UserID != null && Psw != null && name != null) {

            UsersJpaController user = new UsersJpaController(pswDB, userDB);
            Users addUser = new Users();

            addUser.setName(name);
            addUser.setUserid(UserID);
            addUser.setPassword(Psw);
            addUser.setUsername(name);

            try {

                user.create(addUser);

            } catch (RollbackFailureException rfe) {

                System.out.println(rfe);

            } catch (Exception ecp) {
                System.out.println(ecp);
            }

            request.setAttribute("message", "Register Finish");
             getServletContext().getRequestDispatcher("/LoginView.jsp").forward(request, response);

        }

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
