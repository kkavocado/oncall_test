package newpackage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "CarpoolServlet")
public class CarpoolServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CarpoolDAO carpoolDAO;


    public void init() {
        carpoolDAO = new CarpoolDAO();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            insert_post(request, response);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    private void insert_post(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{

        HttpSession session = request.getSession();


        String title = request.getParameter("title");
        String content = request.getParameter("descriptionInput");
        int user_id= (int) session.getAttribute("user_id");
        Post newPost = new Post(title,content,user_id);

        CarpoolDAO.insert_post(newPost);
        response.sendRedirect("CarpoolService.jsp");

        session.setAttribute("post", newPost );
    }
}
