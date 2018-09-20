/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package todoList.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;
import todoList.jpa.Controller.TaskJpaController;
import todoList.jpa.models.Account;
import todoList.jpa.models.Task;

/**
 *
 * @author bankcom
 */
public class TaskServelet extends HttpServlet {

    @PersistenceUnit(unitName = "ToDoListsPU")

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

        // getServletContext().getRequestDispatcher("/TaskView.jsp").forward(request, response);
        String newtask = request.getParameter("newtask");

        HttpSession session = request.getSession(false);
        Account account = (Account) session.getAttribute("LoggedIn");

        TaskJpaController taskCtrl = new TaskJpaController(utx, emf);
        List<Task> taskList = taskCtrl.findTaskEntities();

        //String account = ac.getUsername();
        if (newtask != null && newtask.trim().length() > 0) {

  
            Task task = new Task(newtask, account);
            try {
                taskCtrl.create(task);
            } catch (Exception ex) {
                Logger.getLogger(TaskServelet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        request.setAttribute("todoList",taskList);
        getServletContext().getRequestDispatcher("/TaskView.jsp").forward(request, response);

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
