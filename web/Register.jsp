<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk&display=swap" rel="stylesheet">
<link rel="icon" href="logo/logo.ico">
        <title>Register</title>
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

            .box_form
            {
                width:	500px;
				height:	610px;
				box-shadow: 0px 4px 5px #888888;
                border-radius: 5px;
                margin: 30px auto;
                background-color: white;
            }

          

            .form_field_name
            {
                background-color: #F0EDED; 
                width: 150px; height: 10px;
                border-radius: 5px;
                margin-bottom: 5px;
                padding: 20px;
                margin: 20px;
            }

            
            .button_register{
                background-color:#1FB6B9;
                color:white; 
                font-family: Space Grotesk;
                font-weight:800; 
                font-size:1.2em;
                margin: 10px auto;
                padding:10px; 
                text-align:center;  
                width:100%; 
                height: 40px;
                border-radius: 5px;
                border: none;
                cursor: hand;
            }
            .button_register:hover {
                background-color: #707070;
            }

            input[type=text]
            {
                background-color: #F0EDED; 
                height:40px; 
                width: 422px;
                padding: 10px; 
                border:none;
                font-size: 15px;
                font-family: 'Space Grotesk';
                color: #707070;
                
            }
            input[type=password]
            {
                background-color: #F0EDED;
                height:40px;
                width: 422px;
                padding: 10px;
                border:none;
                font-size: 15px;
                font-family: 'Space Grotesk';
                color: #707070;

            }


        </style>
</head>

<body>
    <div
    style="padding-left:30px;padding-right:50px;height:70px; background-color:white;box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.1), 0 2px 2px 0 rgba(0, 0, 0, 0.1);">
    <div style="padding:10px;">
      <img src="./logo/logo.svg" style="padding-right:5px;padding-bottom:15px;height:50px;width:50px" />
      <img src="./logo/logo name.svg" style="padding-bottom:5px;height:60px;width:60px" />
    </div>
  </div>

    <div style="margin: 0 auto; width: 1000px;">
        <div class="box_form" >
            <div style="padding: 30px; padding-bottom: 5px; font-weight: 900; font-family:'Space Grotesk'; color: #1FB6B9; font-size: 1.5em;">
                <b>Register</b>
            </div>

            <div style="margin-left:30px ;width:85%; border-bottom: 2px solid #707070; ">

            </div>

            <form action="RegisterServlet" method="post">
                <div style="margin: 0 auto; width:490px; margin-bottom: 2px;">
                    <div style="display: inline-block;">
                        <input type="text" name="first_name" placeholder="First name"
                        style="background-color: #F0EDED; 
                        height:40px; 
                        width: 200px; 
                        margin: 30px ; 
                        margin-right: 20px;
                        margin-bottom: 5px;
                        padding: 10px;
                        border:none;
                        font-size: 15px;
                        font-family: 'Space Grotesk';
                        color: #707070;
                    "/>
                    </div>

                    <div style="display: inline-block;">
                        <input type="text" name="last_name" placeholder="Last name"
                        style="background-color: #F0EDED; 
                        height:40px; 
                        width: 200px;
                        padding: 10px; 
                        border:none;
                        font-size: 15px;
                        font-family: 'Space Grotesk';
                        color: #707070;
                        margin-bottom: 5px;
                    "/>
                    </div>
                    
                </div>

                <div style="margin:0 auto; width: 490px;">
                    <table width="100%" cellpadding="5px">
                        <tr>
                            <td>
                                <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                    <input type="text" name="email" placeholder="E-mail address"/>
                                </div>

                            </td>

                        </tr>
                            <td>
                                <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                    <input type="text" name="mobile" placeholder="Mobile number"/>
                                </div>

                            </td>

                        <tr>
                            <td>
                                <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                    <input type="text" name="studentID" placeholder="Student ID"/>
                                </div>
                            </td>

                        </tr>

                        <tr>
                            <td>
                                <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                    <input type="password" name="password" placeholder="Password"/>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div style="margin: 24px; margin-top: 1px; margin-bottom: 5px;">
                                    <input type="password" name="rePass" placeholder="Retype password"/>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div style="margin: 24px; margin-top: 1px; margin-bottom: 1px; font-size:1em; font-family: 'Space Grotesk' ;color: #707070;">
                                    Gender
                                </div>

                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div style="margin: 19px; margin-top: 1px; margin-bottom: 5px;">
                                    <table width="100%" cellpadding="5px" >
                                        <tr style="margin: 0 auto;">
                                            <td width="33.3%">
                                                <input type="radio" id="male" name="gender" value="male">
                                                <label for="male" style="font-size: 20px; font-family: 'Space Grotesk' ;color: #707070;">Male</label>
                                            </td>

                                            <td  width="33.4%">
                                                <input type="radio" id="female" name="gender" value="female">
                                                <label for="female" style="font-size: 20px; font-family: 'Space Grotesk' ;color: #707070;">Female</label>
                                            </td>

                                            <td  width="33.3%">
                                                <input type="radio" id="other" name="gender" value="other">
                                                <label for="other" style="font-size: 20px; font-family: 'Space Grotesk' ;color: #707070;">Other</label>
                                            </td>


                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <div style="margin: 0px auto; width: 120px;"> 
                    <button class="button_register"> 
                            Register
                    </button>
                 </div>
            
             </form>
           

        

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

</body>
</html>