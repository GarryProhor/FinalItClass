package by.prohor.dao;

import by.prohor.entities.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    private Connection con;
    boolean flag = false;
    public UserDAO(Connection con) {
        this.con = con;
    }

    public void saveUser(User user){
        try{
            String query = "insert into users(username, useremail, bdate, gender, password)" +
                    " values(?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, user.getUsername());
            pst.setString(2, user.getUseremail());
            pst.setString(3, user.getBdate());
            pst.setString(4, user.getGender());
            pst.setString(5, user.getPassword());

            pst.executeUpdate();
            flag=true;
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public User getUserByEmailPass(String email, String password){
        User user = null;
        try{
            String query = "select * from users where useremail=? and password=?";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setUseremail(rs.getString("useremail"));
                user.setBdate(rs.getString("bdate"));
                user.setGender(rs.getString("gender"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
}
