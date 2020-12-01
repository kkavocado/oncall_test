package newpackage;
import java.sql.*;

public class UserDatabase {
    Connection con ;

    public UserDatabase(Connection con) {
        this.con = con;
    }

    //for register user
    public boolean saveUser(User user){
        boolean set = false;
        try{
            //Insert register data to database
            String query = "insert into users(first_name, last_name, email, mobile, student_id,password,gender) values(?,?,?,?,?,?,?)";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getFirst_name());
            pt.setString(2, user.getLast_name());
            pt.setString(3, user.getEmail());
            pt.setInt(4, user.getMobile());
            pt.setString(5, user.getStudentID());
            pt.setString(6, user.getPassword());
            pt.setString(7, user.getGender());


            pt.executeUpdate();
            set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }

    //user login
    public User login(String email, String pass){
        User usr=null;
        try{
            String query ="select * from users where email=? and password=?";
            PreparedStatement pst = this.con.prepareStatement(query);
            pst.setString(1, email);
            pst.setString(2, pass);

            ResultSet rs = pst.executeQuery();

            if(rs.next()){
                usr = new User();
                usr.setId(rs.getInt("id"));
                usr.setFirst_name(rs.getString("first_name"));
                usr.setLast_name(rs.getString("last_name"));
                usr.setMobile(rs.getInt("mobile"));
                usr.setStudentID(rs.getString("student_id"));
                usr.setGender(rs.getString("gender"));
                usr.setEmail(rs.getString("email"));
                usr.setPassword(rs.getString("password"));

            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return usr;
    }


    public User checkps(String pass){
        User usr=null;
        try{
            String query ="select * from users where password=?";
            PreparedStatement pst = this.con.prepareStatement(query);

            pst.setString(1, pass);

            ResultSet rs = pst.executeQuery();

            if(rs.next()){
                usr = new User();
                usr.setId(rs.getInt("id"));
                usr.setFirst_name(rs.getString("first_name"));
                usr.setEmail(rs.getString("email"));
                usr.setPassword(rs.getString("password"));

            }

        }catch(Exception e){
            e.printStackTrace();
        }
        return usr;
    }

    public boolean edit_profile(User user){
        boolean set = false;
        try{
            //Update user
            String query = "update users set first_name = ?,last_name= ?, email =?, mobile=?, student_id=?, password=?, gender=? where id = ?;";

            PreparedStatement pt = this.con.prepareStatement(query);
            pt.setString(1, user.getFirst_name());
            pt.setString(2, user.getLast_name());
            pt.setString(3, user.getEmail());
            pt.setInt(4, user.getMobile());
            pt.setString(5, user.getStudentID());
            pt.setString(6, user.getPassword());
            pt.setString(7, user.getGender());
            pt.setInt(8,user.getId());


            pt.executeUpdate();
            set = true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return set;
    }

}
