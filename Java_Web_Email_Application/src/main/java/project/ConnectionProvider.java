package project;
import java.sql.*;
public class ConnectionProvider {
	public static Connection getConnection() {
		Connection conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/EmailProject","root","root");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		return conn;
	}
}
