package by.prohor.servlets;

import by.prohor.dao.UserDAO;
import by.prohor.entities.User;
import by.prohor.srvice.ConnectionProvider;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String email = request.getParameter("txtemail");
        String password = request.getParameter("txtPassword");

        //out.println(email);

        UserDAO userDAO = new UserDAO(ConnectionProvider.getConnection());
        User user = userDAO.getUserByEmailPass(email, password);
        if(user!=null){
            out.println("Sorry No User found!");
        }else{
            out.println("Login Successfully!");
        }
    }
}
