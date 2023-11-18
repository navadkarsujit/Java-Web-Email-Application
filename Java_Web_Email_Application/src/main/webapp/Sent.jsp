<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sent</title>
<style type="text/css">
table {
	width: 100%;
	height: auto;
}

.wrapper .outer {
	display: flex;
}

.wrapper {
	margin: 4% 4%;
}

.wrapper .card {
	background: #164863;
	width: 100%;
	display: flex;
	align-items: center;
	padding: 7px;
	position: relative;
	justify-content: space-between;
	color: white;
	border-radius: 100px 20px 20px 100px;
	box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
}

.card .content {
	display: flex;
	align-items: center;
}

.wrapper .card .img {
	height: 75px;
	width: 75px;
	position: absolute;
	left: -5px;
	background: #d9d9f0;
	border-radius: 50%;
	border: 5px solid #164863;
	padding: 0px;
	box-shadow: rgba(0, 0, 0, 0.15) 0px 15px 25px, rgba(0, 0, 0, 0.05) 0px
		5px 10px;
}

.card .img img {
	margin-top: 10%;
	height: 80%;
	width: 100%;
	border-radius: 40%;
	object-fit: fill;
}

.card .details {
	margin-left: 80px;
}

.details span {
	font-weight: 100;
	font-size: 24px;
}

.details p {
	margin-top: 3px;
	font-size: 16px;
}

.card a {
	text-decoration: none;
	padding: 7px 18px;
	margin-right: 10px;
	border-radius: 6px;
	color: #fff;
	background-color: #267ae7;
	transition: all 0.3s ease;
	cursor: pointer;
}

.th1 {
	width: 50%;
	height: 10px;
}

.img11 {
	width: 46%;
	height: 100%;
	justify-content: center;
	display: flex;
	margin: 0 27%;
	margin-top: 198px
}

.img11 strong {
	font-size: 60px;
}

.img11 label {
	font-size: 24px;
}

.btn {
	font-size: 20px;
	border-radius: 2px;
}

.th1 img {
	height: 300px;
	width: auto;
	margin-left: -10px;
	object-fit: cover;
}

.warning {
	width: 100%;
	justify-content: center;
	display: flex;
}

.warning label {
	font-size: 20px;
	margin: 4px 0;
	background-color: #ff9999;
}
</style>
</head>
<body>
	<%@include file="NavBar.jsp"%>
	<div>
		<table>
			<tr>
				<td class="th1">
					<div class="img11">
						<strong>&nbsp;&nbsp;&nbsp;&nbsp; Sent Mails<img
							src="logo.png" alt=""></strong>
					</div>
				</td>
				<td rowspan="2">
					<div>
						<%
						request.getSession(false);
						if (session == null) {
							response.sendRedirect("Home.jsp");
						} else {
							String email = (String) session.getAttribute("email");
							String msg = request.getParameter("msg");
							if ("mailDelete".equals(msg)) {
						%>
						<div class="warning">
							<p>Mail Deleted</p>
						</div>
						<%
						}
						%>
						<%
						try {
							Connection conn = ConnectionProvider.getConnection();
							PreparedStatement ps = conn
							.prepareStatement("select * from mail123 where SENDER='" + email + "' and trash='no' order by id desc");
							ResultSet rs = ps.executeQuery();
							while (rs.next()) {
						%>
						<div class="wrapper">
							<div class="outer">
								<div class="card">
									<div class="content">
										<div class="img">
											<img src="logo.png" alt="">
										</div>
										<div class="details">
											<span class="name"> <strong>To : <%=rs.getString("RECEIVER")%></strong>
											</span>
											<p>
												SUBJECT :
												<%=rs.getString("SUBJECT")%>
											</p>
										</div>
									</div>
									<a class="btn" href='ViewSent.jsp?ID=<%=rs.getInt("ID")%>'>
										Show </a>
								</div>
							</div>
						</div>

						<%
						}
						conn.close();
						} catch (Exception e) {
						System.out.println(e);
						}
						}
						%>
					</div>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
	</div>
</body>
</html>