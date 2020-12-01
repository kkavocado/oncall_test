package newpackage;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ErrandsDAO {
    private static String jdbcURL= "jdbc:mysql://localhost:3306/oncall";
    private static String jdbcUsername= "root";
    private static String jdbcPassword= "abc123";

    private static final String INSERT_POST_SQL = "INSERT INTO post" + "  (title, content, type, poster_uid,helper_uid,status,creation_date) VALUES " +
            " (?, ?, 'Errands',?, null,0,curdate());";


    public ErrandsDAO() { }

    protected static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public static void insert_post(Post post) throws SQLException
    {
        System.out.println(INSERT_POST_SQL);

        try(Connection connection= getConnection(); PreparedStatement preparedStatement= connection.prepareStatement(INSERT_POST_SQL))
        {
            preparedStatement.setString(1, post.getTitle());
            preparedStatement.setString(2,post.getContent());
            preparedStatement.setInt(3,post.getUser_id());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        }catch (SQLException e)
        {
            printSQLException(e);
        }
    }




    private static void printSQLException(SQLException ex) {
        for (Throwable e:ex)
        {
            if (e instanceof SQLException){
                e.printStackTrace(System.err);
                System.err.println("SQLState: "+ ((SQLException)e).getSQLState());
                System.err.println("Error Code:"+ ((SQLException)e).getErrorCode());
                System.err.println("Message: "+ e.getMessage() );
                Throwable t= ex.getCause();
                while (t!=null)
                {
                    System.out.println("Cause: "+ t);
                    t=t.getCause();
                }



            }
        }
    }
}
