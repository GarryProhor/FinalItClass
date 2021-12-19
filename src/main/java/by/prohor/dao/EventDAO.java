package by.prohor.dao;

import by.prohor.entities.Event;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EventDAO {
    private Connection con;
    boolean flag = false;
    public EventDAO(Connection con) {
        this.con = con;
    }
    public boolean saveEvent(Event event){
        try {
            String query = "insert into events(evName, evCategoryes, evDate, evMorning, evDay, evEvening) values(?,?,?,?,?,?)";
            flag = isFlag(event, flag, query);
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    public boolean deleteEvent(int ev_id){
        boolean flag = false;
        try{
            String query = "delete from events where eventId=?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, ev_id);
            pst.executeUpdate();
            flag = true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    public boolean updateEvent(Event event){
        boolean flag = false;
        try {
            String query = "update events set evName=?, evCategoryes=?, evDate=?, evMorning=?, evDay=?, evEvening=?";
            flag = isFlag(event, flag, query);
        }catch (Exception e){
            e.printStackTrace();
        }

        return flag;
    }

    private boolean isFlag(Event event, boolean flag, String query) throws SQLException {
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, event.getEvName());
        pst.setString(2, event.getEvCategoryes());
        pst.setString(3, String.valueOf(event.getEvDate()));
        pst.setString(4, event.getEvMorning());
        pst.setString(5, event.getEvDay());
        pst.setString(6, event.getEvEvening());

        pst.executeUpdate();
        flag=true;
        return flag;
    }
}
