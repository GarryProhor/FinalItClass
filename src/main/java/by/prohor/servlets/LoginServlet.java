package by.prohor.servlets;

import by.prohor.dao.UserDAO;
import by.prohor.entities.Message;
import by.prohor.entities.User;
import by.prohor.connections.MyConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String Email = request.getParameter("Login-email");
        String Pass = request.getParameter("Login-password");

//        out.println(email);
//        out.println(password);

       UserDAO userDAO = new UserDAO(MyConnection.getConnection());
       User user = userDAO.getUserByEmailPass(Email, Pass);

        if(user==null){
            Message message = new Message("Sorry No User found!", "error",
                    "danger");
            HttpSession session = request.getSession();
            session.setAttribute("msg", message);
            response.sendRedirect("login.jsp");
            out.println("Sorry No User found!");
        }else{
            HttpSession session = request.getSession();
            session.setAttribute("currentUser", user);
        response.sendRedirect("index.jsp");
            out.println("Login Successfully!");
        }
    }
}
