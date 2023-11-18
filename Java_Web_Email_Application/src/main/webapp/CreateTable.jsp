<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%
try {
	Connection con = ConnectionProvider.getConnection();
	Statement st = con.createStatement();
	String q1 = "create table user123(name varchar(100),email varchar(100)primary key,password varchar(100),dob date,gender varchar(100),city varchar(100),state varchar(100),country varchar(100), pin varchar(100), phone varchar(100),date date, authorized varchar(100))";
	String q2 = "create table mail123(ID int,SENDER varchar(100),RECEIVER varchar(100),SUBJECT varchar(1000),MESSAGE varchar(2500),TRASH varchar(1000),MESSAGEDATE date)";
	String q3 = "CREATE TABLE image(firstname varchar(50),image blob,PRIMARY KEY (firstname));";
	st.execute(q1);
	System.out.println("table created1");
	st.execute(q2);
	System.out.println("table created2");
	st.execute(q3);
	System.out.println("table created3");
	con.close();
} catch (Exception e) {
	System.out.print(e);
}
%>