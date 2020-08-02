package org.home.servletdemo.task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddTaskServlet", urlPatterns = "/task/add")
public class AddTaskServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("add_task.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tasktitle = req.getParameter("tasktitle");
        String taskcontext = req.getParameter("taskcontext");
        TaskService.getInstance().RegisterTask(tasktitle, taskcontext);
        resp.sendRedirect("/tasks");
    }
}
