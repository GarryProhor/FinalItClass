package by.prohor.entities;


import java.sql.Date;

public class Event {
    private int eventId;
    private String evName;
    private String evCategoryes;
    private Date evDate;
    private String evMorning;
    private String evDay;
    private String evEvening;


    public Event() {
    }

    public Event(int eventId, String evName, String evCategoryes, Date evDate, String evMorning, String evDay, String evEvening) {
        this.eventId = eventId;
        this.evName = evName;
        this.evCategoryes = evCategoryes;
        this.evDate = evDate;
        this.evMorning = evMorning;
        this.evDay = evDay;
        this.evEvening = evEvening;
    }

    public Event(String evName, String evCategoryes, Date evDate, String evMorning, String evDay, String evEvening) {
        this.evName = evName;
        this.evCategoryes = evCategoryes;
        this.evDate = evDate;
        this.evMorning = evMorning;
        this.evDay = evDay;
        this.evEvening = evEvening;
    }

    public int getEventId() {
        return eventId;
    }

    public void setEventId(int eventId) {
        this.eventId = eventId;
    }

    public String getEvName() {
        return evName;
    }

    public void setEvName(String evName) {
        this.evName = evName;
    }

    public String getEvCategoryes() {
        return evCategoryes;
    }

    public void setEvCategoryes(String evCategoryes) {
        this.evCategoryes = evCategoryes;
    }

    public Date getEvDate() {

        return evDate;
    }

    public void setEvDate(String evDate) {
        this.evDate = Date.valueOf(evDate);
    }

    public String getEvMorning() {
        return evMorning;
    }

    public void setEvMorning(String evMorning) {
        this.evMorning = evMorning;
    }

    public String getEvDay() {
        return evDay;
    }

    public void setEvDay(String evDay) {
        this.evDay = evDay;
    }

    public String getEvEvening() {
        return evEvening;
    }

    public void setEvEvening(String evEvening) {
        this.evEvening = evEvening;
    }
}
