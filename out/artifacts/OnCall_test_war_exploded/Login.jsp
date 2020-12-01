<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk&display=swap" rel="stylesheet">
<link rel="icon" href="logo/logo.ico">


    <title>Login</title>
        <style>

            body {
                margin: 0px;
                border: 0px;
                padding: 0px;
                width:100%;
                background-color: #f8f8f8;
                }

            #header_personal li {
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

            .login_box_form
            {
                width:	500px;
				height:	550px;
				box-shadow: 0px 4px 5px #888888;
                border-radius: 5px;
                margin: 30px auto;
                background-color: white;
            }

            input[type=text]
            {
                background-color: #F0EDED; 
                height:55px; 
                width: 300px; 
                margin: 2px auto; 
                border:none;
                font-size: 20px;
                font-family: 'Space Grotesk';
                color: #707070;
            }
            input[type=password]
            {
                background-color: #F0EDED;
                height:55px;
                width: 300px;
                margin: 2px auto;
                border:none;
                font-size: 20px;
                font-family: 'Space Grotesk';
                color: #707070;
            }

            .form_field
            {
                margin: 10px auto; 
                background-color: #F0EDED; 
                width: 384px; height: 60px;
                border-radius: 5px;
                margin-bottom: 5px;
            }

            .button_login{
                background-color:#1FB6B9;
                color:white; 
                font-family: Space Grotesk;
                font-weight:800; 
                font-size:1.2em;
                margin: 0 auto;
                padding: 10px;
                text-align:center;  
                width: 100%; 
                height: 40px;
                border-radius: 5px;
                border: none;
                cursor: hand;
            }
            .button_login:hover {
                background-color: #707070;
            }
            .button_register{
                background-color:#1FB6B9;
                color:white; 
                font-family: Space Grotesk;
                font-weight:800; 
                font-size:1.2em;
                margin :0px auto;
                padding:10px; 
                text-align:center;  
                width:100%; 
                height: 40px;
                border-radius: 5px;
                border:none;
                cursor: hand;
            }
            .button_register:hover {
                background-color: #707070;
            }


        </style>
</head>

<body>
    <div
    style="padding-left:30px;padding-right:50px;height:70px; background-color:white;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
    <div style="padding:10px;">
      <img src="logo/logo.svg" style="padding-right:5px;padding-bottom:15px;height:50px;width:50px" />
      <img src="logo/logo%20name.svg" style="padding-bottom:5px;height:60px;width:60px" />
    </div>
  </div>

    <div style="margin: 0 auto; width: 1000px;">
        <div class="login_box_form" >
            <div style="padding: 30px; padding-bottom: 5px; font-weight: 900; font-family:'Space Grotesk'; color: #1FB6B9; font-size: 1.5em;">
                <b>Welcome</b>
            </div>

            <div style="margin-left:30px ;width:85%; border-bottom: 2px solid #707070; ">

            </div>
            <form action="LoginServlet" method="post">
                <table width="100%" style="padding: 50px; margin-bottom: 3px; margin: 0 auto; padding-bottom: 20px; ">
                    <tr>
                        <td>
                            <div class="form_field">
                                <div style="padding:5px; display: inline-block;">
                                    <img src="Photo/User.svg"  style="height: 48px; width:48px">
                                </div>

                                <div style="float: right;">
                                    <input type="text" name="email" placeholder="Username" required/>
                                </div>

                            </div>
                        </td>
                    </tr>
                        


                    <tr>
                        <td>
                            <div class="form_field">
                                <div style="padding:5px; display: inline-block;">
                                    <img src="Photo/password.svg" style="height: 48px; width:48px">
                                </div>

                                <div style="float: right;">
                                    <input type="password" name="password" placeholder="Password" required/>
                                </div>

                            </div>
                        </td>
                    </tr>
                </table>



                <div style="margin: 0 auto; width: 384px;">
                    <input class="button_login" type="submit" value="Login"/>


                </div>

            </form>
            <div style="margin-top:50px;margin-left:30px ;width:85%; border-bottom: 2px solid #888888; ">

            </div>

            <div style="margin-top:50px;text-align:center;color: #888888;font-family:'Space Grotesk';font-size:20px;">
                Don't have an account?
            </div>

            <div style="margin: 30px auto; width: 120px;">
                <a href="Register.jsp" style="text-decoration: none;color:white" > <button class="button_register">
                    Register
                </button></a>
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