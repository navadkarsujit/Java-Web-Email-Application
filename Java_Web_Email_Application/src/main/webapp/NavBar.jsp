<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	text-decoration: none;
	list-style: none;
	box-sizing: border-box;
}

body {
	font-family: montserrat;
	background: #9BBEC8;
}

nav {
	background: #164863;
	height: 50px;
	width: 100%;
}

label.logo {
	color: white;
	font-size: 35px;
	line-height: 50px;
	padding: 0 50px;
	font-weight: bold;
}

nav ul {
	float: right;
	margin-right: 20px;
}

nav ul li {
	display: inline-block;
	line-height: 50px;
	margin: 0 5px;
}

nav ul li a {
	color: white;
	font-size: 17px;
	padding: 7px 5px;
	border-radius: 3px;
	text-transform: uppercase;
}

a.active, a:hover {
	background: #427D9D;
	transition: .5s;
}

.checkbtn {
	font-size: 30px;
	color: white;
	float: right;
	line-height: 80px;
	margin-right: 40px;
	cursor: pointer;
	display: none;
}

#check {
	display: none;
}

@media ( max-width : 952px) {
	label.logo {
		font-size: 30px;
		padding-left: 50px;
	}
	nav ul li a {
		font-size: 16px;
	}
}

@media ( max-width : 1100px) {
	.checkbtn {
		display: block;
	}
	ul {
		position: fixed;
		width: 100%;
		height: 100vh;
		background: #2c3e50;
		top: 80px;
		left: -100%;
		text-align: center;
		transition: all .5s;
	}
	nav ul li {
		display: block;
		margin: 50px 0;
		line-height: 30px;
	}
	nav ul li a {
		font-size: 20px;
	}
	a:hover, a.active {
		background: none;
		color: #0082e6;
	}
	#check:checked ~ ul {
		left: 0;
	}
	.div1 {
		height: 50px;
	}
}

section {
	background: url(bg1.jpg) no-repeat;
	background-size: cover;
	height: calc(100vh - 80px);
}
</style>
</head>
<body>
	<div class="div1">
		<nav>
			<input type="checkbox" id="check"> <label for="check"
				class="checkbtn"> <i class="fas fa-bars"></i>
			</label> <label class="logo">Email_Server</label>
			<ul>
				<li><a class="active" href="Home.jsp">Home</a></li>
				<li><a href="ComposeMail.jsp">Compose Mail</a></li>
				<li><a href="Sent.jsp">Sent Mail</a></li>
				<li><a href="Trush.jsp">Trash</a></li>
				<li><a href="Profile.jsp"><%=session.getAttribute("email")%></a></li>
				<li><a href="Logout">Logout</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>
