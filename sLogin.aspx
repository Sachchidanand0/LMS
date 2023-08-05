<%@ Page Title="" Language="C#" MasterPageFile="~/sPortal.master" AutoEventWireup="true" CodeFile="sLogin.aspx.cs" Inherits="sLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

  <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
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

	<!-- ------------------------------------------------------------------------------------------- -->
	<!-- Validation for login page -->
	<script type="text/javascript">
        function chkvalidation() {
            var email = document.getElementById("<%= txtuname.ClientID %>").value;
            if (email == "") {
                alert("Enter Username");
                document.getElementById("<%= txtuname.ClientID %>").focus();
                document.getElementById("<%= txtuname.ClientID %>").style.borderColor = "blue";
                document.getElementById("<%= txtuname.ClientID %>").style.borderStyle = "solid";
                return false;
            }
            //for name
            var pass = document.getElementById("<%= txtpass.ClientID %>").value;
            if (pass == "") {
                alert("Enter Password");
                document.getElementById("<%= txtpass.ClientID %>").focus();
                document.getElementById("<%= txtpass.ClientID %>").style.borderColor = "blue";
                document.getElementById("<%= txtpass.ClientID %>").style.borderStyle = "solid";
                return false;
            }

        }
    </script>

</asp:Content> 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

	<div class="limiter">
		<div class="container-login100" style="background-image: url('img/logimg.jpg');">
			<div class="wrap-login100" style="box-shadow: 2px 2px 12px 1px #000;">
				<div class="login100-form validate-form">
					
				 <img src="img/usericon.png" class="img-fluid login100-form-logo" alt="User icon"  />
				

					<span class="login100-form-title p-b-34 p-t-27 text-white " style="color:aliceblue; text-shadow: 1px 0px 15px #000;" >
						sign in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<asp:TextBox runat="server" class="input100" type="email" ID="txtuname" name="username" placeholder="Username"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<asp:TextBox runat="server" class="input100" type="password" ID="txtpass" name="pass" placeholder="Password"></asp:TextBox>
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>


					<div class="mt-3 mb-5">
						
					<asp:CheckBox runat="server" ID="ckb1"/> <asp:Label runat="server" class="fs-5 fw-normal text-white ps-1">Remember me</asp:Label>
						</div>
					

					<div class="container-login100-form-btn">
						<asp:Button runat="server" class="login100-form-btn  lbtn" ID="login" OnClick="login_Click" Text="Login"  OnClientClick="chkvalidation();"/>
						</div>

					<div class="text-center p-t-60">
						<asp:LinkButton runat="server" class="txt1" href="forgotpass.aspx">
							Forgot Password?
						</asp:LinkButton>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>






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

</asp:Content>

