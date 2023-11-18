<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
	session.setAttribute("email", email);
	response.sendRedirect("Admin.jsp");
} else {

	int z = 0;
	try {
		Connection conn = ConnectionProvider.getConnection();
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("select * from user123 where email='" + email + "' and password='" + password
		+ "' and authorized='yes'");
		while (rs.next()) {
	z = 1;
	session.setAttribute("email", email);
	response.sendRedirect("Home.jsp");
		}
		if (z == 0) {
	response.sendRedirect("index.jsp?msg=notexist");
		}
	} catch (Exception e) {
		System.out.println(e);
		response.sendRedirect("index.jsp?msg=invalid");
	}
}
%>