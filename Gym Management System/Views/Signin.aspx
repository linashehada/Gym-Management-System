<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signin.aspx.cs" Inherits="Gym_Management_System.Views.Signin" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
     
	<!--Custom styles-->
    <link href="../../Lib/css/Login.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<br />
				<h3>Welcome to Flex Gym..</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form id="form1" runat="server">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="email" class="form-control" placeholder="Email" id="Email" runat="server">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" class="form-control" placeholder="password" id="Password" runat="server">
					</div>
					<div class="row align-items-center remember">
						<input type="checkbox">Remember Me
					</div>
					<br/>
					
					<div class="d-flex justify-content-center">
						
					    <input type="radio" class="form-radio-input" id="Admin_radio" name="role" runat="server" />
					    <label class="form-check-label" for="Admin_radio" style="color:White;">Admin</label>
					    <input type="radio" class="form-radio-input" id="Recep_radio"  style="margin-left:30px;" name="role" runat="server"/>
					    <label class="form-check-label" for="Recep_radio"  style="color:White;" runat="server" >Receptionist</label>
				    </div>
					<label id="ErrMsg" runat="server" class=" text-danger"></label>
					<br/>
					<div class="form-group">
						<asp:Button class="btn float-right login_btn"  Text="Login" Width="70px" Style="margin-left:20px;" ID="SigninBtn" OnClick="SigninBtn_Click" runat="server" />
						
					</div>
				</form>
			</div>
			<!--<div class="card-footer">
				

				<div class="d-flex justify-content-center">
					<a href="#">Forgot your password?</a>
				</div>
			</div>
			-->
		</div>
	</div>
</div>
    
</body>
</html>