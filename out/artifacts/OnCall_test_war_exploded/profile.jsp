<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>

<%@ page import="newpackage.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("Login.jsp");
    }
%>
<html>

<head>
  <link rel="styleSheet" href="./CSS/style.css">
  <link rel="styleSheet" href="./CSS/dropdown.css">
  <link rel="icon" href="logo/logo.ico">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Profile</title>
  <style>
    body {
      margin: 0px;
      border: 0px;
      padding: 0px;
	  width:100%;
    }



    #header li {
      position: relative;
      bottom: 20px;
      cursor: hand;
      display: inline;
      width: 75px;
      margin: 5px;
      text-align: center;
      vertical-align: center;
      padding: 20px;
      padding-bottom: 30px;
      font-size: 15px;
      font-family: 'Space Grotesk';
      color: #707070;
    }

    .Title-font {
      font-family: 'Space Grotesk';
      font-weight: 900;
      font-size: 42px;
      text-align: left;
      padding: 5px;
      color: #1FB6B9;
    }

	.top-font{
	font-family: 'Space Grotesk';
      font-weight: 900;
      font-size: 30px;
      text-align: left;
	  vertical-align: middle;
	  margin-top:4px;
      padding: 5px;
      color: #1FB6B9;

	}

	.title-icon{
	align-items:left;
	position:relative;
	left:10px;
	top:5px;
	margin-bottom:5px;
	padding:5px;
	padding-right:10px;
	height:40px;
	width:40px;
	}

   .Profile_word
	{
		font-family:'Space Grotesk' ;
		font-size: 15px;
		color: #707070;

	}
	.myRequest_box
		{
			width:	600px;
			height:	160px;
			box-shadow: 0px 4px 5px #888888;
			border-radius: 5px;
			margin: 30px auto;
			background-color: #F8F8F8;
		}
	.logo_box
	{
			width:	60px;
			height:	60px;
			box-shadow: 0px 4px 5px #888888;
			border-radius: 10px;
			margin: 5px auto;
			background-color: white;
			cursor: hand;
	}

	 .postsWord{
		padding-top:25px;
		color:#1FB6B9 ;
		font-family: Space Grotesk;
		margin-left:100px;
		font-size: 30px;
		text-align: left;
	}

	.post{
		background-color: white;
		box-shadow:0px 4px 5px #1FB6B9;
		height: 20em;
		margin-left: 2.5em;
		padding: 1em;
		width: 15em;
	}




  </style>
</head>

<body>

<div
        style="padding-left:30px;padding-right:50px;height:70px; background-color:white;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
    <div id="header" style="float:right;position:relative;bottom:10px; ">
        <li><a href="homePage.jsp" style="text-decoration: none">Home</a></li>
        <li class="dropdown">
            <button class="dropdown_btn" >Request <i class="fa fa-caret-down"></i></button>
            <div class="dd-content">
                <a href="Cleaning.jsp">Cleaning</a>
                <a href="PrintingService.jsp">Printing</a>
                <a href="ErrandService.jsp">Errands</a>
                <a href="CarpoolService.jsp">Carpool</a>
            </div>
        </li>
        <li><a href="mission.jsp" style="text-decoration: none">Mission</a></li>


        <li class="dropdown">
            <button class="dropdown_btn" > <img src="Photo/User.svg" style="position:relative;top:15px;right:10px;height:43px;width:43px;padding-top:10px;cursor:hand; "  /> <i class="fa fa-caret-down"></i></button>
            <div class="dd-content">
                <a href="profile.jsp"><%=user.getFirst_name()%></a>
                <a href="LogoutServlet">Logout</a>
            </div>
        </li>
    </div>

    <div style="padding:10px;">
        <img src="logo/logo.svg" style="padding-right:5px;padding-bottom:15px;height:50px;width:50px" />
        <img src="logo/logo name.svg" style="padding-bottom:5px;height:60px;width:60px" />
    </div>
</div>



<div style="margin: 50px auto; width: 500px;">
    <table width="100%">
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn1= DriverManager.getConnection("jdbc:mysql://localhost:3306/oncall", "root","abc123");
            Statement stm1=conn1.createStatement();
            String sql1;
            sql1 = "select * from users where users.id="+ session.getAttribute("user_id");
            ResultSet rs1=stm1.executeQuery(sql1);
            if (rs1.next())
            {

        %>

        <tr>
            <td width="20%">
                    <img src="Photo/User.svg" style="width: 80px; height: 80px;"/>
            </td>

            <td width="50%">
                <table width="100%">
                    <tr>
                        <td style="font-family:'Space Grotesk' ; font-size: 1.1em; font-weight: 900; color: #1FB6B9;"> <%=rs1.getString("first_name")%> <%=rs1.getString("last_name")%></td>
                    </tr>

                    <tr>
                        <td>
                            <div class="Profile_word" style="font-weight: 900; display: inline-block;">
                                Student ID:
                            </div>

                            <div class= "Profile_word" style="margin-left: 2px; display: inline-block;">
                                <%=rs1.getString("student_id")%>
                            </div>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <div class="Profile_word" style="font-weight: 900; display: inline-block;">
                                Contact No:
                            </div>

                            <div class= "Profile_word" style="margin-left: 2px; display: inline-block;">
                                <%=rs1.getString("mobile")%>
                            </div>
                        </td>

                    </tr>

                    <tr>
                        <td>
                            <div class= "Profile_word" style="margin-left: 2px; display: inline-block;">
                                I'm a software engineering student.
                            </div>
                        </td>
                    </tr>

                </table>


            </td>

            <td width="30%" style="vertical-align: bottom;">
                <div style="margin:10px; margin-right: 5px; font-family:'Space Grotesk' ; font-size: 1em; font-weight: 900; color: #1FB6B9; cursor: hand; text-decoration: none" >
                    <a href="editProfile.jsp" style="text-decoration: none">
                    <img src= "Photo/edit.svg" alt="Edit Profile" style="width: 22px; height: 22px; vertical-align: text-bottom;"/>
                        Edit Profile
                    </a>
                </div>
            </td>
        </tr>
        <% }
            %>


    </table>


  </div>

<div class= "myRequest_box" style="margin: 20px auto;">
    <div>

        <table width="100%">
            <tr>
                <td>
                    <div style="margin:10px; margin-right: 5px; font-family:'Space Grotesk' ; font-size: 1.1em; font-weight: 900; color: #1FB6B9;">

                        <img src= "Photo/post.svg"  style="width: 22px; height: 22px; vertical-align: text-bottom;"/>
                        My Request

                    </div>

                </td>

            </tr>
        </table>

    </div>

    <div style="margin:3px auto; width: 350px;">
        <table width="100%">
            <tr>
                <td width="50%">
                    <div class="logo_box">
                        <div>
                           <a href="myrequest.jsp#to_be_completed">
                            <img src="Photo/system_pending_line.png" alt="My Request" style="width:50px; height:50px; padding: 4.5px;"/>
                           </a>
                        </div>

                    </div>
                    <div class="Profile_word" style="padding: 5px; text-align:center;">
                        To Complete

                    </div>


                </td>

                <td width="50%">
                    <div class="logo_box">
                        <div>
                            <a href="myrequest.jsp#completed">
                            <img src="Photo/complete (1).svg" alt="Completed" style="width:50px; height:50px; padding: 4.5px;"/>
                            </a>
                        </div>

                    </div>
                    <div class="Profile_word" style="padding: 5px; text-align:center;">
                        Request Completed

                    </div>
                </td>
            </tr>

        </table>
    </div>


</div>


<div class="requestBg" >
    <div>
        <table class="tableStyle" cellpadding="55px" width="100%">

            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/oncall", "root","abc123");
                Statement stm=conn.createStatement();
                String sql;
                sql = "select post_id,first_name,title,content,type,poster_uid,users.id as user_id from post join users on post.poster_uid=users.id where post.poster_uid="+ session.getAttribute("user_id");
                ResultSet rs=stm.executeQuery(sql);
                while (rs.next())
                {

            %>
            <tr>
                <td class="table" width="33.33%" style="padding:20px;">

                    <div class="request" style="width:320px">
                        <div>
                            <img class="image" src="Photo/User.png" alt="user img">
                        </div>
                        <div class="name">
                            <b><%=rs.getString("first_name")%></b>
                        </div>
                        <div class="title">
                            <b><%=rs.getString("title")%></b>
                        </div>
                        <div class=" description" spellcheck="true" >
                            <%=rs.getString("content")%>
                        </div>
                        <div>
                            <form action="DeletePostServlet" method="post">

                                <a href="DeletePostServlet?post_id=<%=rs.getString("post_id")%>">
                                    <div>
                                        <input onclick="this.value='Deleted'" type="button" value="Delete" class="button helpButton" style="left:100px;" />
                                    </div>
                                </a>
                            </form>
                        </div>


                    </div>
                </td>

                <%if(rs.next())
                {%>
                <td class="table" width="33.33%" style="padding:20px;">
                    <div class="request" style="width: 320px">
                        <div>
                            <img class="image" src="Photo/User.png" alt="user img">
                        </div>
                        <div class="name">
                            <b><%=rs.getString("first_name")%></b>
                        </div>
                        <div class="title">
                            <%=rs.getString("title")%>
                        </div>
                        <div class=" description" spellcheck="true" style="width:85%;" >
                            <%=rs.getString("content")%>
                        </div>
                        <div>
                            <form action="DeletePostServlet" method="post">

                                <a href="DeletePostServlet?post_id=<%=rs.getString("post_id")%>">
                                    <div>
                                        <input onclick="this.value='Deleted'" type="button" value="Delete" class="button helpButton" style="left:100px;" />
                                    </div>
                                </a>
                            </form>
                        </div>


                    </div>
                </td>
                <%}%>


                <%if(rs.next())
                {%>
                <td class="table" width="33.33%" style="padding:20px;">
                    <div class="request" style="width:320px">
                        <div>
                            <img class="image" src="Photo/User.png" alt="user img">
                        </div>
                        <div class="name">
                            <b><%=rs.getString("first_name")%></b>
                        </div>
                        <div class="title">
                            <%=rs.getString("title")%>
                        </div>
                        <div class=" description" spellcheck="true" style="width:85%;">
                            <%=rs.getString("content")%>
                        </div>
                        <div>
                            <form action="DeletePostServlet" method="post">

                                <a href="DeletePostServlet?post_id=<%=rs.getString("post_id")%>">
                                    <div>
                                        <input onclick="this.value='Deleted'" type="button" value="Delete" class="button helpButton" style="left:100px;" />
                                    </div>
                                </a>
                            </form>
                        </div>

                    </div>
                </td>
                <%}%>
            </tr>

            <%
                }
            %>

        </table>
    </div>

</div>
</div>

<!--footer-->
  <!--absolute or fixed position, not moving while scrolling-->
   <div
    style="line-height:25px;margin-top:0px;font-weight:900;text-align:center;font-family:'Space Grotesk';font-size:20px;background-color:#1FB6B9;padding:15px; color:white;">
    Copyright 2020, Xiamen University Malaysia<br />
    On Call Development Team
  </div>
</body>

</html>