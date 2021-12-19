package by.prohor.dao;

import by.prohor.entities.Employees;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class EmployeeDAO {
    private Connection con;
    boolean flag = false;
    public EmployeeDAO(Connection con) {
        this.con = con;
    }
    public boolean saveEmployee(Employees emp){
        try {
            String query = "insert into employees(empName, empEmail, Gender, empMobile, empAddress, empQualification) values(?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, emp.getEmpName());
            pst.setString(2, emp.getEmpEmail());
            pst.setString(3, emp.getGender());
            pst.setString(4, emp.getEmpMobile());
            pst.setString(5, emp.getEmpAddress());
            pst.setString(6, emp.getEmpQualification());

            pst.executeUpdate();
            flag=true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }
}
