<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@ page import="project.DateFormat"%>
<%@ page import="java.util.Random"%>
<%
String Receiver = request.getParameter("Receiver");
String Subject = request.getParameter("Subject");
String Message = request.getParameter("Message");
String Sender = (String) request.getSession(false).getAttribute("email");
try {
	Connection conn = ConnectionProvider.getConnection();
	PreparedStatement ps = conn.prepareStatement("insert into mail123 value(?,?,?,?,?,?,?)");
	ps.setInt(1, new Random().nextInt());
	ps.setString(2, Sender);
	ps.setString(3, Receiver);
	ps.setString(4, Subject);
	ps.setString(5, Message);
	ps.setString(6, "no");
	ps.setDate(7, DateFormat.getCurrentDate());
	ps.executeUpdate();
	response.sendRedirect("ComposeMail.jsp?msg=svalid");
	request.setAttribute("message", "message successfully sent");
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("ComposeMail.jsp?msg=sinvalid");
}
%>
