package org.home.servletdemo.task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TaskDetailsServlet", urlPatterns = "/task/details")
public class TaskDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long taskId = Long.parseLong(req.getParameter("task"));
        Task returnedTask = TaskService.getInstance().getById(taskId);
        req.setAttribute("task", returnedTask);
        req.getRequestDispatcher("task_detailed.jsp").forward(req,resp);
    }
}
