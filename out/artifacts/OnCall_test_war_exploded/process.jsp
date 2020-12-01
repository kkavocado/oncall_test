<%--
  Created by IntelliJ IDEA.
  User: Loke Yi
  Date: 20/11/2020
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
             pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>

<%
    String first_name= request.getParameter("first_name");
    String last_name= request.getParameter("last_name");
    String email= request.getParameter("e-mail");
    int mobile= request.getParameter("mobile");
    String student_id= request.getParameter("student_id");
    String password= request.getParameter("password");


    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oncall", "root", "abc123");
    Statement st=conn.createStatement();

    int i= st.executeUpdate("insert into users(first_name,last_name,e-mail,mobile,student_id,password)" +
            "values('\"+first_name+\"','\"+last_name+\"','\"+city_name+\"','\"+email+\"','\"+mobile+\"','\"+student_id+\"','\"+password+\"')");

%>