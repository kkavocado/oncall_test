package newpackage;

public class User {
    int id;
    String first_name;
    String last_name;
    int mobile;
    String studentID;
    String email;
    String password;
    String gender;

    public User() {
    }

    public User(int id, String first_name, String last_name, int mobile, String studentID, String email, String password, String gender
    ) {
        this.id = id;
        this.first_name = first_name;
        this.last_name=last_name;
        this.mobile=mobile;
        this.studentID=studentID;
        this.email = email;
        this.password = password;
        this.gender=gender;
    }

    public User(String first_name, String last_name, String email, int mobile, String studentID, String password,String gender) {
        this.first_name = first_name;
        this.last_name=last_name;
        this.email = email;
        this.mobile=mobile;
        this.studentID=studentID;
        this.password = password;
        this.gender=gender;
    }

    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public User(String password) {

        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMobile() {
        return mobile;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender= gender;
    }

}
