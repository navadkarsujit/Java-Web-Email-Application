<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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
	margin: 25px 15px;
	margin-bottom: 10px;
	font-size: 30px;
	width: 95%;
}

.title2, .title3 {
	margin: 5px 15px;
	font-size: 20px;
}

table {
	width: 100%
}

.title3 {
	width: 95%;
	font-size: 18px;
	padding: 8px;
	padding-right: 0;
	background-color: white;
	color: Black;
	border-radius: 5px;
	margin-bottom: 11px;
}

.date {
	font-size: 16px;
	float: right;
}

hr {
	margin: 0 10px;
}

.l1 {
	font-weight: 800;
}
</style>
</head>
<body>
	<%@include file="NavBar.jsp"%>
	<%
	if (session == null) {
		response.sendRedirect("Home.jsp");
	} else {
		int id = Integer.parseInt(request.getParameter("ID"));
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from mail123 where ID=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
	%>

	<div class="notes">
		<table border=0>
			<tr>
				<td>
					<div class="title1">
						Read Mail <label class="date">Date:<%=rs.getString("MESSAGEDATE")%></label>
					</div>
					<hr>
				</td>
			</tr>

			<tr>
				<td>
					<div class="title2">
						<label for="title"><label class="l1">To : </label><%=rs.getString("RECEIVER")%></label><br>
					</div>
					<hr>
				</td>
			</tr>


			<tr>
				<td>
					<div class="title2">
						<label for="title"> <label class="l1">Subject:</label></label><br>
					</div>
					<div class="title3">
						<label><%=rs.getString("SUBJECT")%></label>
					</div>
					<hr>
				</td>
			</tr>

			<tr>
				<td>
					<div class="title2">
						<label class="l1" for="content">Message:</label><br>
					</div>

					<div class="title3">
						<label><%=rs.getString("MESSAGE")%></label>
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