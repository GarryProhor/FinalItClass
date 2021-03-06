package by.prohor.servlets;

import by.prohor.dao.UserDAO;
import by.prohor.entities.User;
import by.prohor.connections.MyConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "register", value = "/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String name = request.getParameter("txtname");
        String email = request.getParameter("txtemail");
        String bdate = request.getParameter("txtdate");
        String gender = request.getParameter("gender");
        String password = request.getParameter("txtpassword");

        User user = new User(name, email, bdate, gender, password);
        UserDAO userDAO = new UserDAO(MyConnection.getConnection());
        userDAO.saveUser(user);
        response.sendRedirect("login.jsp");

    }
}
