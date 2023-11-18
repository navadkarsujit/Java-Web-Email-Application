<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="NavBar.jsp"%>

	<%
	if (session == null) {
		response.sendRedirect("Home.jsp");
	} else {
		String email = (String) session.getAttribute("email");
		int id = Integer.parseInt(request.getParameter("ID"));
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement ps = conn.prepareStatement("delete from mail123 where ID=?");

			ps.setInt(1, id);
			int i = ps.executeUpdate();
			if (i > 0) {
		response.sendRedirect("Trush.jsp?msg=mailDeleted");
			}
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	%>
</body>
</html>