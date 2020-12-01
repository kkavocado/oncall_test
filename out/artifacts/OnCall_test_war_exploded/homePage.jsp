<%@ page import="newpackage.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
  if(user==null){
    response.sendRedirect("Login.jsp");
  }
%>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="styleSheet" href="CSS/style.css">
  <link rel="styleSheet" href="CSS/dropdown.css">
  <link rel="icon" href="./logo/logo.ico">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Space+Grotesk&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>On Call Home Page</title>
  <style>
    body {
      margin: 0px;
      border: 0px;
      padding: 0px;
      width:100%;
      background-color: #f8f8f8;
    }



    #header li {
      position: relative;
      bottom: 20px;
      cursor: hand;
      display: inline;
      width: 70px;
      margin: 10px;
      text-align: center;
      vertical-align: center;
      padding: 25px;
      padding-bottom: 10px;
      font-size: 15px;
      font-family: 'Space Grotesk';
      color: #707070;
    }

    .Title-font {
      font-family: 'Space Grotesk';
      font-weight: 900;
      font-size: 42px;
      text-align: center;
      padding: 5px;
      color: #1FB6B9;
    }

    .Services_box {
      width: 167px;
      height: 167px;
      box-shadow: 0px 4px 5px #888888;
      border-radius: 5px;
      cursor: hand;
    }

    .Services_font {
      color: #707070;
      text-align: center;
      font-size: 15px;
      font-family: 'Space Grotesk'
    }

    .Services_box:hover {
      background-color: #DDDDDD;
    }




  </style>
</head>

<body>

<div
        style="padding-left:30px;padding-right:50px;height:70px; background-color:white;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
  <div id="header" style="float:right;position:relative;bottom:10px; ">
    <li>Home</li>
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

<div
        style="width:fit;position:relative;top:1.5px;padding-right:30px;height:350px; background-color:white;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
  <table width="100%">
    <tr>
      <td width="65%">
        <table width="100%">
          <tr>
            <td
                    style="font-weight:900;text-align:left;font-size:32px;padding-top:10px;padding-left:50px;font-family:'Space Grotesk';color:#1FB6B9">
              Dear XMUMians,
              Your personal assistance is here!<br>
              On Call 36 hours
            </td>
          </tr>

          <tr>
            <td
                    style="text-align:left;font-size:20px;padding-left:50px;font-family:'Space Grotesk';color:#707070">
              On Call is an assistance provider platform for XMUM students<br>
              We aim to connect on-campus students who need assistance and those students who are willing to help.<br>
              If you are <b>in need</b>, post your <b>requests </b> here!<br>
              If you are <b>bored</b>, kindly lend your <b>helping hand</b> here!<br>

            </td>
          </tr>
        </table>
      </td>

      <td width="35%">
        <img src="Photo/people_wave.png"
             style="position:relative;left:80px;bottom:5px;padding-right:15px;padding-top:25px;width:80%;height:65%" />
      </td>

    <tr>

  </table>
</div>


<div
        style=" background-color: white; margin:0 auto; margin-right:0px; box-shadow:0px 4px 5px rgba(0, 0, 0, 0.1); height:350px;text-align:center;">
  <div class="Title-font" style="padding-top:25px;margin:0px auto; display:inline-block; text-align:center;">
    <b>Services</b>
  </div>


    <table width="100%" cellpadding="30px">
      <tr>
        <td width="25%">
          <a href="Cleaning.jsp" style="text-decoration: none;">
            <div style="margin:5px auto; width: 85%; text-align:center; padding:10px;">
            <div class="Services_box">
            <div style="margin:10px auto; text-align:center; padding:5px;">
              <img src="Photo/clean.svg" style="height:90px; width:90px;">
            </div>

            <div class="Services_font">
              Cleaning
            </div>
          </div>
          </div>
          </a>
        </td>

        <td width="25%">
          <a href="PrintingService.jsp" style="text-decoration: none;"> <div class="Services_box">
            <div style="margin:10px auto; text-align:center; padding:5px;">
              <img src="Photo/print.svg" style="height:90px; width:90px;">
            </div>

            <div class="Services_font">
              Printing
            </div>
          </div></a>
        </td>

        <td width="25%">
          <a href="ErrandService.jsp" style="text-decoration: none;"><div class="Services_box">
            <div style="margin:10px auto; text-align:center; padding:5px;">
              <img src="Photo/errands.svg" style="height:90px; width:90px;">
            </div>

            <div class="Services_font">
              Errands
            </div>
          </div></a>
        </td>

        <td width="25%">
          <a href="CarpoolService.jsp" style="text-decoration: none;"><div class="Services_box">
            <div style="margin:10px auto; text-align:center; padding:5px;">
              <img src="Photo/car.svg" style="height:90px; width:90px;">
            </div>

            <div class="Services_font">
              Carpool
            </div>
          </div></a>
        </td>
      </tr>
    </table>
  </div>

</div>
<!--Part of Latest Request -->
<div class="requestBg">
  <div>
    <div class="requestWord"><b>Latest Requests</b></div>
    <table class="tableStyle" cellpadding="55px">
      <td class="table">
        <div class="request">
          <div>
            <img class="image"
                 src="Photo/User.png" alt="user img">
          </div>
          <div class="name">
            <b>Adam</b>
          </div>

          <div class="description">
            Urgent! Need somebody help me print notes. Thanks!
          </div>
          <button class="button">
            <b>Help</b>
          </button>
        </div>
      </td>

      <td class="table">
        <div class="request">
          <div>
            <img class="image"
                 src="Photo/User.png" alt="user img">
          </div>
          <div class="name">
            <b>Emily</b>
          </div>
          <div class="description">
            Urgent! Need somebody help me print notes. Thanks!
          </div>
          <button class="button">
            <b>Help</b>
          </button>
        </div>
      </td>

      <td class="table">
        <div class="request">
          <div>
            <img class="image"
                 src="Photo/User.png" alt="user img">
          </div>
          <div class="name">
            <b>Shawn</b>
          </div>
          <div class="description">
            Urgent! Need somebody help me print notes. Thanks!
          </div>
          <button class="button">
            <b>Help</b>
          </button>
        </div>
      </td>

    </table>
  </div>

</div>

<!--footer-->
<!--absolute or fixed position, not moving while scrolling-->
<div
        style="line-height:25px;margin-top:0px;font-weight:900;text-align:center;font-family:'Space Grotesk';font-size:20px;background-color:#1FB6B9;padding:15px; color:white;">
  Copyright 2020, Xiamen University Malaysia<br/>
  On Call Development Team
</div>
</body>

</html>