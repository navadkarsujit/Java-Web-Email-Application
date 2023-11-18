<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Animated Login Form</title>
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
	font-family: sans-serif;
	justify-content: center;
	background: #F0F0F0;
	background-size: cover;
	background-position: center;
}

.container {
	position: relative;
	width: 330px;
	background: #D8D8D8;
	padding: 20px 5px;
}

header {
	color: #000000;
	font-size: 40px;
	margin-bottom: 15px;
}

.input-field, .input-field1, form .button {
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
	outline: none;
	font-size: 16px;
	transition: .4s;
}

.input-field1 input {
	height: 80%;
	width: 70%;
	border: 1px solid silver;
	padding-left: 15px;
	outline: none;
	font-size: 16px;
	transition: .4s;
}

input:focus {
	border: 1px solid #1DA1F2;
}

button {
	margin-top: 10px;
	width: 90%;
	height: 40px;
	border: none;
	outline: none;
	background-color: #0033FF;
	color: rgb(255, 255, 255);
	font-size: 25px;
	cursor: pointer;
	font-family: 'Montserrat', sans-serif;
}

.container .auth {
	margin: 35px 0 20px 0;
	font-size: 19px;
	color: grey;
}

.signup {
	font-size: 16px;
	margin-top: 10px;
	font-family: 'Noto Sans', sans-serif;
	margin-left: 10px;
	height: 30px;
	width: 95%;
}

.signup a {
	color: #EA593A;
	text-decoration: none;
}

.signup a:hover {
	text-decoration: underline;
}

.auth h5 {
	color: black;
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

.gender select {
	cursor: pointer;
}
</style>
<body>
	<form action="LoginPro.jsp" method="post">
		<div class="container">
			<header>Reset Password</header>
			<%
			String msg = request.getParameter("msg");
			if ("invalid".equals(msg)) {
			%>
			<div class="warning">
				<p>Some thing went wrong ! try again</p>
			</div>
			<%
			}
			%>
			<%
			if ("notexist".equals(msg)) {
			%>
			<div class="warning">
				<p>Incorrect Email or Password</p>
			</div>
			<%
			}
			%>


			<div class="input-field">
				<input type="email" required name="email" Placeholder="Email">
			</div>
			<div class="input-field">
				<input type="text" required name="phone"
					Placeholder="Enter Phone No.">
			</div>
			<div class="input-field1">
				DOB: <input type="date" required name="date">
			</div>
			<div class="button">
				<button>Submit</button>
			</div>

		</div>
	</form>
</body>

</html>
