
<head>

<link rel="stylesheet" type="text/css"
	href="resource/css/form-register-css.css">

</head>

	<div class="container" align="center">
		<div id="register_arround">
					<div class="name-register">
						<h3>JOIN US NOW</h3>
					</div>
					<hr>
					<form action="register" method="post" name = "form" id = "form">

						<div class="username">
							<input type="text" id="username" name="username"
								placeholder="userName" minlength="6" maxlength="50" size="50" required="required" size="20"/>
						</div>
						<input type="text" name="name" id="name"
							placeholder="name" minlength="6" maxlength="50" size="50" required="required">
							<input type="text" name="ngaysinh" id="ngaysinh"
							placeholder="ngaysinh" minlength="10" maxlength="50" size="50" required="required">
						<input type="password" name="password" id="password"
							placeholder="Password" minlength="6" maxlength="50" size="50" required="required">
						<div class="phone-css">
							<input class="text" type="text" name="phone" id="phone"
								placeholder="Phone" required="required" pattern="[\+|\d]{1}[\d]{9,14}">
						</div>
						
						<br>
						
						<button type="submit" id="join" class="btn btn-info btn-xs">CREATE ACCOUNT
							</button>
							<input type="reset" name="" value="Reset"/>

					</form>
		</div>
	</div>
<script type="text/javascript">


</script>