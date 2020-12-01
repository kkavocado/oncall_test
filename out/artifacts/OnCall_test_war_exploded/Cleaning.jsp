<%@ page import="newpackage.User" %>
<%@ page import="newpackage.Post" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% User user = (User) session.getAttribute("logUser");

    if(user==null){
        response.sendRedirect("Login.jsp");
    }

    Post post = (Post) session.getAttribute("post");
%>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="styleSheet" href="CSS/dropdown.css">
    <link rel="styleSheet" href="CSS/printing.css">
    <link rel="styleSheet" href="CSS/style.css">
    <link rel="icon" href="logo/logo.ico">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Cleaning</title>
    <style>
        body {
            margin: 0px;
            border: 0px;
            padding: 0px;
            width: 100%;
            background-color: #f8f8f8;
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


        .name {
            font-family: 'Space Grotesk';
            font-size: 18px;
            text-align: center;
            padding: 5px;
            color: #707070;
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
        <li><a href="mission.jsp" style="text-decoration: none">Mission</a> </li>


        <li class="dropdown">
            <button class="dropdown_btn" > <img src="./Photo/User.svg" style="position:relative;top:15px;right:10px;height:43px;width:43px;padding-top:10px;cursor:hand; "  /> <i class="fa fa-caret-down"></i></button>
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

<div class="printingWhole">
    <table width="100%" cellpadding="3px">
        <tr>
            <td width="1.5%">
                <img class="printing" src="Photo/clean.png" />
            </td>
            <td class="titleMain" width="98.5%">
                Cleaning
            </td>
        </tr>
    </table>

    <div style="margin: 0 auto;">
        <div class="middle">
            <table width="100%">
                <td width="30%">
                    <img class="imageMiddle" src="Photo/User.png" alt="user img">
                </td>
                <td width="70%">
                    <button class="buttonMiddle" id="requestBtn">
                        <b>Want to request some help?</b>
                    </button>
                    <!--the request-->
                    <form action="CleaningServlet" method="post">
                        <div id="myRequest" class="requestPrinting">
                            <!--the request content-->
                            <div class="requestContent">
                                <div class="requestHeader">
                                    <span id="close_front" class="close">&times;</span>
                                    Request for Help
                                </div>
                                <div class="requestBody">
                                    <table>
                                        <tr>
                                            <td>
                                                <img src="Photo/User.png" class="imagePrinting">
                                            </td>
                                            <td class="requester">
                                                <%=user.getFirst_name()%>
                                            </td>
                                        </tr>
                                    </table>
                                    <table>
                                        <tr>
                                            <input type="text" class="titleInput" name="title" placeholder="Title/Subject:" />
                                        </tr>
                                        <tr>
                        <textarea maxlength="200"  class="desInput" name="descriptionInput" placeholder="Describe your request (max:200 char):"
                                  rows="8" ></textarea>
                                        </tr>
                                        <tr>

                                        </tr>
                                        <input type="submit"  class="buttonSubmit" value="Submit"/> </input>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </form>
                </td>
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
                    sql = "select post_id,first_name,title,content,type,poster_uid,users.id as user_id from post join users on post.poster_uid=users.id where status=0 and type='Cleaning';";
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
                                <form action="HelpServlet" method="post">

                                    <a href="HelpServlet?post_id=<%=rs.getString("post_id")%>" style="text-decoration: none;">
                                        <div class="button helpButton" style="left:1px;">

                                            <b>Help</b>

                                        </div></a>
                                </form>
                            </div>

                            <!--the help-->
                            <!--
                            <div class="help" id="myHelp">
                            -->
                            <!--the help content-->
                            <!--
                              <div class="helpContent">
                                <div class="helpBody">
                                  <table width="100%">
                                    <tr width="100%">
                                      <span class="close">&times;</span>
                                    </tr>
                                    <tr width="100%">
                                      <img src="Photo/User.png" class="imageHelp">
                                    </tr>
                                    <div class="requester_help">
                                      <-%=rs.getString("first_name")%->
                                    </div>
                                  </table>
                                  <div class="helpQuestion">
                                    Wants to help <-%=rs.getString("first_name")%->?
                                  </div>

                                  <form action="HelpServlet" method="post">

                                    <a href="HelpServlet?post_id=<-%=rs.getString("post_id")%->" style="text-decoration: none;"> <div class="buttonHelp" >
                                      Confirm
                                    </div></a>
                                </form>


                                </div>
                              </div>
                            </div>-->
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
                                <form action="HelpServlet" method="post">

                                    <a href="HelpServlet?post_id=<%=rs.getString("post_id")%>" style="text-decoration: none;">
                                        <div class="button helpButton" style="left:1px;">

                                            <b>Help</b>

                                        </div></a>
                                </form>
                            </div>

                            <!--the help-->
                            <!--
                            <div class="help" id="myHelp">
                            -->
                            <!--the help content-->
                            <!--
                              <div class="helpContent">
                                <div class="helpBody">
                                  <table width="100%">
                                    <tr width="100%">
                                      <span class="close">&times;</span>
                                    </tr>
                                    <tr width="100%">
                                      <img src="Photo/User.png" class="imageHelp">
                                    </tr>
                                    <div class="requester_help">
                                      <-%=rs.getString("first_name")%->
                                    </div>
                                  </table>
                                  <div class="helpQuestion">
                                    Wants to help <-%=rs.getString("first_name")%->?
                                  </div>

                                  <form action="HelpServlet" method="post">

                                    <a href="HelpServlet?post_id=<-%=rs.getString("post_id")%->" style="text-decoration: none;"> <div class="buttonHelp" >
                                      Confirm
                                    </div></a>
                                </form>


                                </div>
                              </div>
                            </div>-->
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

                            </div>
                            <div>
                                <form action="HelpServlet" method="post">

                                    <a href="HelpServlet?post_id=<%=rs.getString("post_id")%>" style="text-decoration: none;">
                                        <div class="button helpButton" style="left:1px;">

                                            <b>Help</b>

                                        </div></a>
                                </form>
                            </div>

                            <!--the help-->
                            <!--
                            <div class="help" id="myHelp">
                            -->
                            <!--the help content-->
                            <!--
                              <div class="helpContent">
                                <div class="helpBody">
                                  <table width="100%">
                                    <tr width="100%">
                                      <span class="close">&times;</span>
                                    </tr>
                                    <tr width="100%">
                                      <img src="Photo/User.png" class="imageHelp">
                                    </tr>
                                    <div class="requester_help">
                                      <-%=rs.getString("first_name")%->
                                    </div>
                                  </table>
                                  <div class="helpQuestion">
                                    Wants to help <-%=rs.getString("first_name")%->?
                                  </div>

                                  <form action="HelpServlet" method="post">

                                    <a href="HelpServlet?post_id=<-%=rs.getString("post_id")%->" style="text-decoration: none;"> <div class="buttonHelp" >
                                      Confirm
                                    </div></a>
                                </form>


                                </div>
                              </div>
                            </div>-->
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
<script src="JS/PrintingService.js"></script>
</body>

</html>