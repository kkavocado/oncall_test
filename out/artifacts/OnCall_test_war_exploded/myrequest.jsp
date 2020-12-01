<%@ page import="newpackage.User" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <title>My Request</title>
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
	
	.row{
	font-family: 'Space Grotesk';
    font-size: 20px;
    text-align: left;
    padding: 0px;
    color: #707070;
	box-shadow:0px 2px 3px rgba(0, 0, 0, 0.1);
	}
	
	
	.user-icon{
		position:relative;
		left:10px;
		margin:5px;
		height:50px;
		width:50px;
		padding:5px;
	}
	
	.name{
	font-family: 'Space Grotesk';
    font-size: 18px;
    text-align: center;
    padding: 5px;
    color: #707070;
	}
	
	
	.button_cancel{
		background-color:#1FB6B9;
		color:white; 
		font-family: Space Grotesk;
		font-size:20px;
		margin: 0 auto;
		margin-left:3px;
		padding: 10px;
		text-align:center;
		vertical-align:center;		
		width:8em; 
		height: 50px;
		border-radius: 5px;
		cursor: hand;
		border:none;
		outline:none;
	}
	
	.button_cancel:hover {
		background-color: #707070;
	}
	
	
  

  </style>
</head>

<body>

<div
		style="padding-left:30px;padding-right:50px;height:70px; background-color:white;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
	<div id="header" style="float:right;position:relative;bottom:10px; ">
		<li><a href="homePage.jsp" style="text-decoration: none">Home</a> </li>
		<li class="dropdown">
			<button class="dropdown_btn" >Services <i class="fa fa-caret-down"></i></button>
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
  
  <div style="margin:10px;">
	<table width="100%" cellpadding="3px">
		<tr>
			<td width="1%">
			<img src="./Photo/task.svg" style="position:relative;left:50px;height:80px;width:80px;padding-top:10px;padding-left:20px; "  />
			</td>
			
			<td class="Title-font" width="99%" style="padding-top:15px;padding-left:70px;">
                My Request
			</td>
		</tr>
	</table>
  </div>




<div id="to_be_completed"  style="margin:50px auto;width:85%; box-shadow:0px 4px 5px rgba(0, 0, 0, 0.1);"	>
	<table width="100%" style="text-align:left" cellpadding="3px">
		<tr style="background-color:#F8F8F8;">
				<td style="display:inline-block;padding:10px">
					<img class="title-icon" src="./Photo/system_pending_line.png"  />
				</td>
				
				<td style="display:inline-block;padding:10px">
					<div class="top-font"> 
					To Be Completed </div>
				</td>
				
				
			</tr>
	</table>
	
	<table width="100%" style="text-align:left" cellpadding="3px">

		<%

			Class.forName("com.mysql.jdbc.Driver");
			Connection conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/oncall", "root","abc123");
			Statement stm=conn.createStatement();
			String sql1;
			sql1 = "(select post_id,first_name,type,title,status,creation_date from post\n" +
					"join users on post.helper_uid=users.id\n" +
					"where status=1 and poster_uid="+session.getAttribute("user_id")  +")" +
					"union\n" +
					"(select post_id,null,type,title,status,creation_date from post\n" +
					"where status=0 and poster_uid="+ session.getAttribute("user_id")+")";
			ResultSet rs1=stm.executeQuery(sql1);
			while (rs1.next())
			{

		%>
			
		<tr class="row" width="100%">
			<td width="10%">
				<div style="padding-left:25px;">
				    <img class="user-icon" src="./Photo/User.svg"/>
				</div>
				
				<div class="name" >
				<%=rs1.getString("first_name")%>
				</div>
			</td>


			<td width="30%"><%=rs1.getString("title")%></td>

			<td width="10%">
				<%
				if (rs1.getString("status").equals("1")){%>
					Accepted
				<% }else { %>
				Waiting
				<% } %>

			</td>
			
			<td width="10%" style="text-align:center;"><%=rs1.getString("type")%></td>
			
			<td width="15%" style="text-align:center;">
			<%=rs1.getString("creation_date")%>
			</td>
			
			
			<td width="15%">
				<form action="DeleteRequestServlet" method="post">

					<a href="DeleteRequestServlet?post_id=<%=rs1.getString("post_id")%>" style="text-decoration: none;">
						<div>
							<input onclick="this.value='Deleted'" type="button" value="Delete" class="button_cancel" />
						</div></a>
				</form>
			</td>
		</tr>

		<%
			}
		%>
		

	
	</table>
  </div>
  
  
  
  <div id="completed"  style="margin:100px auto;width:85%; box-shadow:0px 4px 5px rgba(0, 0, 0, 0.1);"	>
	<table width="100%" style="text-align:left" cellpadding="3px">
		<tr style="background-color:#F8F8F8;">
				<td style="display:inline-block;padding:10px">
					<img class="title-icon" src="./Photo/complete.png"  />
				</td>
				
				<td style="display:inline-block;padding:10px">
					<div class="top-font"> 
					Completed Request </div>
				</td>
				
				
			</tr>
	</table>
	
	<table width="100%" style="text-align:left" cellpadding="3px">

		<%


			String sql2;
			sql2 = "select first_name,type,title,status,creation_date from post\n" +
					"join users on post.helper_uid=users.id\n" +
					"where status=2 and poster_uid="+ session.getAttribute("user_id");
			ResultSet rs2=stm.executeQuery(sql2);
			while (rs2.next())
			{

		%>
			
		<tr class="row" width="100%">
			<td width="10%">
				<div style="padding-left:25px;">
				    <img class="user-icon" src="./Photo/User.svg"/>
				</div>
				
				<div class="name" >
				<%=rs2.getString("first_name")%>
				</div>
			</td>
			
			
			<td width="40%"><%=rs2.getString("title")%></td>
			
			<td width="10%" style="text-align:center;"><%=rs2.getString("type")%></td>
			
			<td width="15%" style="text-align:center;">
			<%=rs2.getString("creation_date")%>
			</td>
			
			<td width="15%">
			</td>
		</tr>

		<%
			}
		%>
		

	
	</table>
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