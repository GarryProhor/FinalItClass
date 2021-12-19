package by.prohor.servlets;

import by.prohor.connections.MyConnection;
import by.prohor.dao.EventDAO;
import by.prohor.entities.Event;
import by.prohor.entities.Message;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "editev", value = "/editev")
public class EditEventServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        String Name = request.getParameter("txtevName");
//        String Category = request.getParameter("txtevCategoryes");
//        Date date = Date.valueOf(request.getParameter("txtevDate"));
//        String Morning = request.getParameter("txtevMorning");
//        String Day = request.getParameter("txtevDay");
//        String Evening = request.getParameter("txtevEvening");
//        Event event = new Event(Name, Category, date, Morning, Day, Evening);
//        EventDAO eventDAO = new EventDAO(MyConnection.getConnection());
//        eventDAO.updateEvent(event);
//        HttpSession session = request.getSession();
//        Message message = new Message("Data Update Successfully!", "success", "success");
//        session.setAttribute("msg", message);
        response.sendRedirect("home.jsp");
    }
}
