<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page import="project.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
String email = request.getParameter("email");
String dob = request.getParameter("date");
String phone = request.getParameter("phone");
java.sql.Date date = DateFormat.getsqlDate(dob);
int z = 0;
try {
	Connection conn = ConnectionProvider.getConnection();
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery(
	"select * from user123 where email='" + email + "'  and phone='" + phone + "' and date=" + date + "");
	while (rs.next()) {
		z = 1;
		session.setAttribute("email", email);
		response.sendRedirect("createPass.jsp");
	}
	if (z == 0) {
		response.sendRedirect("Login.jsp?msg=notexist");
	}
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("Login.jsp?msg=invalid");
}
%>