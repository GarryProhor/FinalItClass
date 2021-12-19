package by.prohor.servlets;

import by.prohor.connections.MyConnection;
import by.prohor.dao.EventDAO;
import by.prohor.entities.Event;
import by.prohor.entities.Message;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

@WebServlet(name = "addev", value = "/addev")
public class AddEventServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String Name = request.getParameter("txtevName");
        String Categories = request.getParameter("txtevCategoryes");
        Date date = Date.valueOf(request.getParameter("txtevDate"));
        String Morning = request.getParameter("txtevMorning");
        String Day = request.getParameter("txtevDay");
        String Evening = request.getParameter("txtevEvening");

        Event event = new Event(Name, Categories, date, Morning, Day, Evening);
        EventDAO eventDAO = new EventDAO(MyConnection.getConnection());
        eventDAO.saveEvent(event);
        HttpSession session = request.getSession();
        Message message = new Message("Data Saved Successfully!", "success", "success");
        session.setAttribute("msg", message);
        response.sendRedirect("index.jsp");

    }
}
