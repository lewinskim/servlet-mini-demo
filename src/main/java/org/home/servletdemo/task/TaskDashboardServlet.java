package org.home.servletdemo.task;

import org.apache.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "TaskDashboardServlet", urlPatterns = "/tasks")
public class TaskDashboardServlet extends HttpServlet {
    Logger log = Logger.getLogger(TaskDashboardServlet.class);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("tasks",TaskService.getInstance().getAllTasks());
        log.info("Tasks size is : " + TaskService.getInstance().getAllTasks().size());
        request.getSession();
        request.getRequestDispatcher("task_dashboard.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
