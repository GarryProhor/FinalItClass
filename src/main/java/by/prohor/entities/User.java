package by.prohor.entities;

public class User {
    private int userId;
    private String username;
    private String useremail;
    private String bdate;
    private String gender;
    private String password;

    public User() {
    }

    public User(int userId, String username, String useremail, String bdate, String gender, String password) {
        this.userId = userId;
        this.username = username;
        this.useremail = useremail;
        this.bdate = bdate;
        this.gender = gender;
        this.password = password;
    }

    public User(String username, String useremail, String bdate, String gender, String password) {
        this.username = username;
        this.useremail = useremail;
        this.bdate = bdate;
        this.gender = gender;
        this.password = password;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getBdate() {
        return bdate;
    }

    public void setBdate(String bdate) {
        this.bdate = bdate;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
