<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="Discipleship.SignIn.signIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
        <style>
            .navbar {
                margin-bottom:0px;
            }

            .navbar-nav {
               flex-direction:row;
            }


            .navbar-fixed-top, .navbar-fixed-bottom {
                position:fixed;
            }

            .navbar-brand {
                height:0px;
            
            }

            .body {
                padding-top:0;
            }

             .container-bg {
                  width: 100%;  
                  min-height: 100vh;
                  display: -webkit-box;
                  display: -webkit-flex;
                  display: -moz-box;
                  display: -ms-flexbox;
                  display: flex;
                  flex-wrap: wrap;
                  justify-content: center;
                  align-items: center;

                  background-repeat: no-repeat;
                  background-size: cover;
                  background-position: center;
                  position: relative;
                  z-index: 1;
             }
        </style>
</head>
<body>
	
	
	<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
            <form class="login100-form validate-form">

                <span class="login100-form-title p-b-37">Sign In
                </span>

                <div class="wrap-input100 validate-input m-b-20" data-validate="Enter username or email">

                    <asp:TextBox ID="txtUserName" Width="100%" class="input100" runat="server" placeholder="username or email" AutoCompleteType="Disabled"></asp:TextBox>
                    <span class="focus-input100"></span>
                </div>



                <div class="wrap-input100 validate-input m-b-25" data-validate="Enter password">
                    <asp:TextBox ID="txtPassword" Width="100%" class="input100" placeholder="password" runat="server" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                    <span class="focus-input100"></span>
                </div>



                <div class="container-login100-form-btn">

                    <asp:Button ID="btnSignIn" Width="100%" class="login100-form-btn" runat="server" OnClick="btnSignIn_Click" Text="Sign In" />
                   
                </div>
                 <asp:LinkButton ID="LinkButton1" runat="server">Forgot Password</asp:LinkButton>
          
                <div>
                    <asp:Label ID="lblMessage" runat="server" Text="_" ForeColor="#FF3300"></asp:Label>
                 </div>
            </form>

		</div>
	</div>

    
 

<div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
</div>

<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
<%--<p>&nbsp;</p>--%>
</asp:Content>
