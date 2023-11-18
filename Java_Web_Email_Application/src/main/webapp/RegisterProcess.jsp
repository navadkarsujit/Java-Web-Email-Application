<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page import="project.DateFormat"%>
<%@ page import="java.text.SimpleDateFormat"%>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String password = request.getParameter("password");
String dob = request.getParameter("date");
String gender = request.getParameter("gender");
String city = request.getParameter("city");
String state = request.getParameter("state");
String country = request.getParameter("country");
String pin = request.getParameter("pin");
String phone = request.getParameter("phone");
java.sql.Date date = DateFormat.getsqlDate(dob);
try {
	Connection conn = ConnectionProvider.getConnection();
	PreparedStatement ps = conn.prepareStatement("insert into user123 value(?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, password);
	ps.setDate(4, date);
	ps.setString(5, gender);
	ps.setString(6, city);
	ps.setString(7, state);
	ps.setString(8, country);
	ps.setString(9, pin);
	ps.setString(10, phone);
	ps.setDate(11, DateFormat.getCurrentDate());
	ps.setString(12, "yes");
	ps.executeUpdate();
	response.sendRedirect("Register.jsp?msg=valid");
} catch (Exception e) {
	System.out.print(e);
	response.sendRedirect("Register.jsp?msg=invalid");
}
%>