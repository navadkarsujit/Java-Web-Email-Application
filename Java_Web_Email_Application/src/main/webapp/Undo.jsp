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
			PreparedStatement ps = conn.prepareStatement("update mail123 set TRASH=? where ID=?");
			ps.setString(1, "no");
			ps.setInt(2, id);
			int i = ps.executeUpdate();
			if (i > 0) {
		response.sendRedirect("Home.jsp");
			}
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	%>
</body>
</html>