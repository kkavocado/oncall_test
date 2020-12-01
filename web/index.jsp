<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: Loke Yi
  Date: 20/11/2020
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<table cellpadding="5px">

    <%
      response.sendRedirect("Login.jsp");
      String driver = "com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localhost:3306/oncall";
      String user = "root";
      String password = "abc123";

      Class.forName(driver);
      Connection conn = DriverManager.getConnection(url, user, password);
      Statement stm = conn.createStatement();
      String sql = "Select * from users";
      ResultSet rs = stm.executeQuery(sql);

  %>
  <table>
      <%
    while(rs.next())
    {
  %>
    <tr>
      <td><%=rs.getString("email")%></td>
      <td><%=rs.getString("password")%></td>
    </tr>
      <%
    }
  %>
</body>
</html>