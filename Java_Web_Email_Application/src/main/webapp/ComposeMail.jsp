<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose Mail</title>
<style>
.notes {
	background-color: #DDF2FD;
	width: 56%;
	height: auto;
	display: flex;
	position: relative;
	margin: 10px 22%;
	box-shadow: rgba(0, 0, 0, 0.56) 0px 22px 70px 4px;
}

.title1 {
	margin: 30px 15px;
	font-size: 30px;
}

.title2, .title3, .title4 {
	margin: 10px 15px;
	font-size: 20px;
}

.title2 input {
	height: 28px;
	width: 98%;
	padding: 3px;
	font-size: 18px;
}

.title3 textarea {
	resize: vertical;
	font-size: 18px;
	padding: 8px;
}

.title4 input {
	height: 35px;
	width: 95px;
	border-radius: 4px;
	background-color: #267ae7;
	border: none;
	color: #ffffff;
	font-size: 18px;
	font-weight: 300;
	cursor: pointer;
}

.title4 .reset {
	background-color: #ffffff;
	color: black;
}

hr {
	margin-left: 15px;
}
</style>
</head>
<body>
	<%@include file="NavBar.jsp"%>
	<div class="notes">
		<form action="ComposeProcess.jsp" method="post">
			<div class="title1">Compose Mail</div>
			<div class="title2">
				<label for="title">To:</label><br> <input name="Receiver"
					type="email" id="title" required>
			</div>
			<hr>
			<div class="title2">
				<label for="title">Subject:</label><br> <input name="Subject"
					type="text" id="title" required>
			</div>
			<hr>
			<div class="title3">
				<label for="content">Message</label><br>
				<textarea name="Message" required id="content" cols="63" rows="7"></textarea>
			</div>
			<div class="title4">
				<input type="submit" value="Submit" id="submit"> <input
					class="reset" type="reset" value="Clear">
			</div>

			<%
			String msg = request.getParameter("msg");
			if ("svalid".equals(msg)) {
			%>
			<div class="title2">
				<label>Sucessfully Mail Sent</label>
			</div>
			<%
			}
			%>

			<%
			if ("sinvalid".equals(msg)) {
			%>
			<div class="title2">
				<label>Some thing went wrong ! try again</label>
			</div>
			<%
			}
			%>

		</form>
	</div>
</body>
</html>

