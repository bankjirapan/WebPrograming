/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.CheckPrime;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author INT303
 */
public class IsPrimeNumberController extends HttpServlet {

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
        //ดึงค่า session
        HttpSession session = request.getSession(true);
        
        String CheckSubmitForm = request.getParameter("InputNumber");
        int InputNum = Integer.valueOf(request.getParameter("InputNumber"));
        CheckPrime check = new CheckPrime();

        if (CheckSubmitForm != null) {
            
            //ดึงค่า session
            CheckPrime pn = (CheckPrime)session.getAttribute("pn");
            //ถ้า session เท่ากับค่าว่าง
            if(pn == null){
                pn = new CheckPrime();
                pn.setNumberInput(InputNum);
                session.setAttribute("pn", pn);
            }    
            
            pn.setNumberInput(InputNum);
//            check.setNumberInput(InputNum);
//            request.setAttribute("pn", check);
        }

        getServletContext().getRequestDispatcher("/resource/PrimeNumberView.jsp").forward(request, response);
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
