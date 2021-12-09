package by.prohor.servlets;

import by.prohor.connections.ConnectionProvider;
import by.prohor.dao.EmployeeDAO;
import by.prohor.entities.Employees;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "addemp", value = "/addemp")
public class AddEmployeeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();

        String Name = request.getParameter("txtname");
        String Email = request.getParameter("txtemail");
        String gender = request.getParameter("gender");
        String Mobile = request.getParameter("txtmobile");
        String Address = request.getParameter("txtaddress");
        String Qualification = request.getParameter("txtquali");

        Employees employees = new Employees(Name, Email, gender, Mobile, Address, Qualification);
        EmployeeDAO employeeDAO = new EmployeeDAO(ConnectionProvider.getConnection());
        employeeDAO.saveEmployee(employees);
        out.println("Data Saved Successfully!");
    }
}
