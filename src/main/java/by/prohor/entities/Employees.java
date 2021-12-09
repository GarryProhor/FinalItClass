package by.prohor.entities;

public class Employees {
    private int empId;
    private String empName;
    private String empEmail;
    private String Gender;
    private String empMobile;
    private String empAddress;
    private String empQualification;

    public Employees() {
    }

    public Employees(int empId, String empName, String empEmail, String gender, String empMobile, String empAddress, String empQualification) {
        this.empId = empId;
        this.empName = empName;
        this.empEmail = empEmail;
        Gender = gender;
        this.empMobile = empMobile;
        this.empAddress = empAddress;
        this.empQualification = empQualification;
    }

    public Employees(String empName, String empEmail, String gender, String empMobile, String empAddress, String empQualification) {
        this.empName = empName;
        this.empEmail = empEmail;
        Gender = gender;
        this.empMobile = empMobile;
        this.empAddress = empAddress;
        this.empQualification = empQualification;
    }

    public int getEmpId() {
        return empId;
    }

    public void setEmpId(int empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmpEmail() {
        return empEmail;
    }

    public void setEmpEmail(String empEmail) {
        this.empEmail = empEmail;
    }

    public String getGender() {
        return Gender;
    }

    public void setGender(String gender) {
        Gender = gender;
    }

    public String getEmpMobile() {
        return empMobile;
    }

    public void setEmpMobile(String empMobile) {
        this.empMobile = empMobile;
    }

    public String getEmpAddress() {
        return empAddress;
    }

    public void setEmpAddress(String empAddress) {
        this.empAddress = empAddress;
    }

    public String getEmpQualification() {
        return empQualification;
    }

    public void setEmpQualification(String empQualification) {
        this.empQualification = empQualification;
    }
}
