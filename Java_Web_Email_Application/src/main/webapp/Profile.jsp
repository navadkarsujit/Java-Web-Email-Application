<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.notes {
	background-color: #e6e6ff;
	width: 30%;
	height: auto;
	display: flex;
	position: relative;
	margin: 10px 35%;
	box-shadow: rgba(0, 0, 0, 0.56) 0px 22px 70px 4px;
}

.title1 {
	margin: 25px 15px;
	margin-bottom: 10px;
	font-size: 30px;
	width: 95%;
}

.title2 {
	margin: 10px 15px;
	font-size: 20px;
}

table {
	width: 100%
}

hr {
	margin: 0 10px;
}

.l1 {
	font-weight: 800;
}

Button a {
	text-decoration: none;
	color: #ffffff;
	padding: 5px;
}
</style>
</head>
<body>
	<%@include file="NavBar.jsp"%>
	<%
	if (session == null) {
		response.sendRedirect("Home.jsp");
	} else {
		String email = (String) session.getAttribute("email");
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from user123 where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
	%>
	<div class="notes">
		<table>
			<tr>
				<td>
					<div class="title1">Profile</div>
					<hr>
				</td>
			</tr>

			<tr>
				<td>
					<div class="title2">
						<label for="title"><label class="l1">Email Id : </label><%=rs.getString("email")%></label><br>
					</div>
					<hr>
				</td>
			</tr>

			<tr>
				<td>
					<div class="title2">
						<label for="title"><label class="l1">Username : </label><%=rs.getString("name")%></label><br>
					</div>
					<hr>
				</td>
			</tr>

			<tr>
				<td>
					<div class="title2">
						<label for="title"><label class="l1">Date Of Birth
								: </label><%=rs.getString("dob")%></label><br>
					</div>
					<hr>
				</td>
			</tr>

			<tr>
				<td>
					<div class="title2">
						<label for="title"><label class="l1">Gender : </label><%=rs.getString("gender")%></label><br>
					</div>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<div class="title2">
						<label for="title"><label class="l1">Phone No. : </label><%=rs.getString("phone")%></label><br>
					</div>
					<hr>
				</td>
			</tr>
			<tr>
				<td>
					<div class="title2">
						<label for="title"><label class="l1">Address : </label><%=rs.getString("city")%>,
							<%=rs.getString("state")%>, <%=rs.getString("country")%>, <br><%=rs.getString("pin")%></label><br>
					</div>

				</td>
			</tr>
		</table>
	</div>

	<%
	}
	conn.close();
	} catch (Exception e) {
	System.out.println(e);
	}
	}
	%>

</body>
</html>