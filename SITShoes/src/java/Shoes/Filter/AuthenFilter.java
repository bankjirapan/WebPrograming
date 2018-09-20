/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Shoes.Filter;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bankcom
 */
@WebFilter(filterName = "AuthenFilter", servletNames = {"ShoesListServlets"}, dispatcherTypes = {DispatcherType.REQUEST, DispatcherType.FORWARD})
public class AuthenFilter implements Filter {

    private FilterConfig อันนี้ตัวแปร;

    //ขาเข้าาาาาาาาาาาาาาาาาาาาาาาา
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

        this.อันนี้ตัวแปร = filterConfig;

    }

    //จะให้มันทำอะไรรรรรรร
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        //เราจะดึง Session มาตรวจสอบว่ามันมีหรือเปล่า
        HttpSession session = ((HttpServletRequest) request).getSession(false);

        //ถ้า Session ที่เราดึงมามันไม่มีก็ให้ไปหน้า login  เพื่อไปตั้ง Session
        if (session == null || session.getAttribute("LoggedIn") == null) {

            //ถ้ามันว่าง ก็ไปโหลดหน้า login ขึ้นมา
            อันนี้ตัวแปร.getServletContext().getRequestDispatcher("/Logins").forward(request, response);
        } else {
            //ถ้ามันไม่ว่าง
            //ตาม Chain 
            chain.doFilter(request, response);
        }

    }

    //ขาออกกกกกกกกก
    @Override
    public void destroy() {

    }

}
