package newpackage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(name = "CancelRequestServlet")
public class DeleteRequestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        return;
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String post_id = request.getParameter("post_id");
        User user = (User) session.getAttribute("logUser");
        //String user_id = request.getParameter("user_id");
        // int user_id= (int) session.getAttribute("user_id");

        if (user == null)
        {
            response.sendRedirect("Login.jsp");
            return;
        }


        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oncall", "root", "abc123");
            Statement stm = conn.createStatement();
            String sql = "delete from post where post_id=" +  post_id;

            stm.execute(sql);
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }

        response.sendRedirect("myrequest.jsp");

    }
}

