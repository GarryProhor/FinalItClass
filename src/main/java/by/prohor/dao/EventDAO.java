package by.prohor.dao;

import by.prohor.entities.Event;

import java.sql.*;

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
            String query = "update events set evName=?, evCategoryes=?, evDate=?, evMorning=?, evDay=?, evEvening=? where eventId=?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, event.getEvName());
            pst.setString(2, event.getEvCategoryes());
            pst.setDate(3, event.getEvDate());
            pst.setString(4, event.getEvMorning());
            pst.setString(5, event.getEvDay());
            pst.setString(6, event.getEvEvening());
            pst.setInt(7, event.getEventId());

            pst.executeUpdate();
            flag=true;

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
    public Event getEventById(int ev_id){
        Event event = null;
        try{
            String query = "select * from events where eventId=?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, ev_id);
            ResultSet resultSet = pst.executeQuery();
            if(resultSet.next()){
                event = new Event();
                event.setEventId(resultSet.getInt("eventId"));
                event.setEvName(resultSet.getString("evName"));
                event.setEvCategoryes(resultSet.getString("evCategoryes"));
                event.setEvDate(resultSet.getString("evDate"));
                event.setEvMorning(resultSet.getString("evMorning"));
                event.setEvDay(resultSet.getString("evDay"));
                event.setEvEvening(resultSet.getString("evEvening"));

            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return event;
    }
}
