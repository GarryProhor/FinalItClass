<<<<<<< HEAD
package by.prohor.servlets;

import by.prohor.connections.MyConnection;

import by.prohor.dao.EventDAO;
import by.prohor.entities.Message;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "delete", value = "/delete")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        int delId = Integer.parseInt(request.getParameter("ev_id"));
        EventDAO eventDAO = new EventDAO(MyConnection.getConnection());
        eventDAO.deleteEvent(delId);
        HttpSession session = request.getSession();
        Message message = new Message("Delete successfully", "success", "danger");
        session.setAttribute("msg", message);
        response.sendRedirect("home.jsp");
     }
}
=======
package by.prohor.servlets;

import by.prohor.connections.MyConnection;

import by.prohor.dao.EmployeeDAO;
import by.prohor.entities.Message;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "delete", value = "/delete")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        int delId = Integer.parseInt(request.getParameter("emp_id"));
        EmployeeDAO employeeDAO = new EmployeeDAO(MyConnection.getConnection());
        employeeDAO.deleteEmployee(delId);
        HttpSession session = request.getSession();
        Message message = new Message("Delete successfully", "success", "danger");
        session.setAttribute("msg", message);
        response.sendRedirect("home.jsp");
     }
}
>>>>>>> master
