<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Register User</title>
</head>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Montserrat:600|Noto+Sans|Open+Sans:400,700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	border-radius: 2px;
	box-sizing: border-box;
}

body {
	height: 100vh;
	display: flex;
	align-items: center;
	text-align: center;
	justify-content: center;
	background: #F0F0F0;
	background-size: cover;
}

.container {
	background: #D8D8D8;
	border-radius: 5px;
	width: 560px;
	position: relative;
	padding: 30px 5px;
}

.container h1 {
	color: #000000;
	font-size: 40px;
	margin-bottom: 15px;
}

.container table {
	align-items: center;
	width: 550px;
}

.input-field {
	margin: 5px 0;
	position: relative;
	height: 45px;
	width: 100%;
}

.input-field input {
	height: 80%;
	width: 90%;
	border: 1px solid silver;
	padding-left: 15px;
	padding-right: 10px;
	outline: none;
	font-size: 16px;
	transition: .4s;
}

input:focus {
	border: 1px solid #1DA1F2;
}

.input-field label {
	position: absolute;
	top: 50%;
}

.input-field label {
	left: 35px;
	pointer-events: none;
	color: rgb(115, 115, 115);
	font-size: 16px;
	transition: .4s;
}

.gender, .dob {
	margin: 15px 0;
	font-size: 16px;
}

.gender select, .dob input {
	cursor: pointer;
}

.dob input, .gender select {
	height: 30px;
	font-size: 16px;
	background-color: aliceblue;
	color: black;
	border: none;
	outline: none;
}

button {
	margin-top: 10px;
	width: 40%;
	height: 40px;
	border: none;
	outline: none;
	background-color: #0033FF;
	color: rgb(255, 255, 255);
	font-size: 25px;
	cursor: pointer;
	font-family: 'Montserrat', sans-serif;
}

.signup {
	font-size: 16px;
	margin-top: 5px;
	font-family: 'Noto Sans', sans-serif;
	margin-left: 50px;
	height: 30px;
	width: 80%;
}

.signup a {
	color: #EA593A;
	text-decoration: none;
}

.signup a:hover {
	text-decoration: underline;
}

.container:before, .container:after {
	z-index: -1;
	position: absolute;
	content: "";
	bottom: 25px;
	left: 10px;
	width: 50%;
	top: 80%;
	max-width: 300px;
	background: #777;
	-webkit-box-shadow: 0 35px 20px #777;
	-moz-box-shadow: 0 35px 20px #777;
	box-shadow: 0 35px 20px #777;
	-webkit-transform: rotate(-8deg);
	-moz-transform: rotate(-8deg);
	-o-transform: rotate(-8deg);
	-ms-transform: rotate(-8deg);
	transform: rotate(-8deg);
}

.container:after {
	-webkit-transform: rotate(8deg);
	-moz-transform: rotate(8deg);
	-o-transform: rotate(8deg);
	-ms-transform: rotate(8deg);
	transform: rotate(8deg);
	right: 10px;
	left: auto;
}

.warning {
	font-size: 20px;
	color: red;
}
</style>
<body>
	<form action="RegisterProcess.jsp" method="post">
		<div class="container">
			<div>
				<h1>Register For New User</h1>
			</div>

			<%
			String msg = request.getParameter("msg");
			if ("valid".equals(msg)) {
			%>
			<div class="warning">
				<p>Sucessfully Register</p>
			</div>
			<%
			}
			%>

			<%
			if ("invalid".equals(msg)) {
			%>
			<div class="warning">
				<p>Some thing went wrong ! try again</p>
			</div>
			<%
			}
			%>

			<table border=0>
				<tr class="tr1">
					<td>

						<div class="input-field">
							<input type="text" required name="name" Placeholder="Username">

						</div>
						<div class="input-field">
							<input type="email" required name="email" Placeholder="Email">

						</div>
						<div class="input-field">
							<input type="password" required name="password"
								Placeholder="Create Password">
						</div>
						<div class="dob">
							<label>DOB:</label> <input type="date" required name="date">

						</div>
						<div class="gender">
							<label>Gender :</label> <select name="gender" id="gender"
								required>

								<option value="Male">Male</option>
								<option value="Female">Female</option>
							</select>

						</div>
					</td>
					<td>

						<div class="input-field">
							<input type="text" required name="city" Placeholder="City">
						</div>
						<div class="input-field">
							<input type="text" required name="state" Placeholder="State">
						</div>
						<div class="input-field">
							<input type="text" required name="country" Placeholder="Country">
						</div>
						<div class="input-field">
							<input type="text" required name="pin" Placeholder="PIN Code">
						</div>
						<div class="input-field">
							<input type="text" required name="phone" Placeholder="Contact">

						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="button">
							<button>REGISTER</button>
						</div>
						<div class="signup">
							if you already have an account click <a href="index.jsp">
								Login Now</a>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
