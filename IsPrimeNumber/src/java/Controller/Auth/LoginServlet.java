/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Auth;

import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;
import jpa.Model.Controller.CustomerJpaController;
import jpa.Model.Customer;

/**
 *
 * @author bankcom
 */
public class LoginServlet extends HttpServlet {

    @Resource
    UserTransaction utx;

    @PersistenceUnit(unitName = "IsPrimeNumberPU")
    EntityManagerFactory emf;

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
        System.out.println("Login Servlet Worked");

        String userName = request.getParameter("userName");
        String passWord = request.getParameter("password");

        if (userName != null && passWord != null && userName.length() != 0 && passWord.length() != 0) {
            getServletContext().getRequestDispatcher("/LoginView.jsp").forward(request, response);
            
            CustomerJpaController contomerJpaCtrl = new CustomerJpaController(utx, emf);
            
            Customer c = contomerJpaCtrl.findCustomer(Integer.valueOf(userName));
            
            //ตรวจสอบ object ว่าเท่ากับว่างหรือไม่
            if(c != null){
                
                if(passWord.equalsIgnoreCase(c.getContactfirstname())){
                    request.getSession().setAttribute("user", c);
                    getServletContext().getRequestDispatcher("/index.html").forward(request, response);
                }     
            }
           //กรณี username ผิด
           request.setAttribute("message", "Invalid user name or password !!");
            
        } 
        
        getServletContext().getRequestDispatcher("/LoginView.jsp").forward(request, response);

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
