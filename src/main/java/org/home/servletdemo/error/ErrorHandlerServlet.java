package org.home.servletdemo.error;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ErrorHandlerServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Throwable error = (Throwable) req.getAttribute(RequestDispatcher.ERROR_EXCEPTION);
        req.setAttribute("error",error.getMessage());
        req.getRequestDispatcher("error.jsp").forward(req,resp);
//
//        PrintWriter writer = resp.getWriter();
//        writer.println("<h2>Error occured</h2>");
//        writer.println("Eror message: " + error.getMessage());
    }
}
