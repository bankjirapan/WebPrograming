/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cinema.filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bankcom
 */
public class Authentication implements Filter {

    private FilterConfig config;
    
    //เข้า
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
        this.config = filterConfig;
    
    }

    
    //ทำอะไร
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
       
        
        HttpSession session = ((HttpServletRequest) request).getSession(false);
        
        if(session == null || session.getAttribute("loggedIn") == null){
            config.getServletContext().getRequestDispatcher("/Login").forward(request, response);
          
        } else {
            
            //คือการทำงานไล่ตาม Chain
            chain.doFilter(request, response);
        }
        
    }

    //ออก
    @Override
    public void destroy() {
       
    }
    
   
    
}
