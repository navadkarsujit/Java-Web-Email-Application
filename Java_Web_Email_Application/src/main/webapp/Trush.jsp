<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table {
	width: 100%;
	height: auto;
}

.wrapper .outer {
	display: flex;
}

.wrapper {
	margin: 4% 4%;
}

.wrapper .card {
	background: #ccccff;
	width: 100%;
	display: flex;
	align-items: center;
	padding: 5px;
	position: relative;
	justify-content: space-between;
	color: Black;
	border-radius: 100px 20px 20px 100px;
	box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
}

.card .content {
	display: flex;
	align-items: center;
}

.wrapper .card .img {
	height: 75px;
	width: 75px;
	position: absolute;
	left: -5px;
	background: #d9d9f0;
	border-radius: 50%;
	border: 5px solid #a6a6ff;
	padding: 0px;
	box-shadow: rgba(0, 0, 0, 0.15) 0px 15px 25px, rgba(0, 0, 0, 0.05) 0px
		5px 10px;
}

.card .img img {
	height: 100%;
	width: 100%;
	border-radius: 50%;
	object-fit: cover;
}

.card .details {
	margin-left: 80px;
}

.details span {
	font-weight: 600;
	font-size: 24px;
}

.details p {
	margin-top: 3px;
	font-size: 18px;
}

.card a {
	text-decoration: none;
	padding: 7px 18px;
	margin-right: 10px;
	border-radius: 6px;
	color: #fff;
	background-color: #267ae7;
	transition: all 0.3s ease;
	cursor: pointer;
}

.th1 {
	width: 50%;
	height: 10px;
}

.img11 {
	width: 46%;
	height: 100%;
	justify-content: center;
	display: flex;
	margin: 0 27%;
	margin-top: 198px
}

.img11 strong {
	font-size: 60px;
	margin-left: 50px;
}

.img11 label {
	font-size: 24px;
}

.btn {
	font-size: 20px;
	border-radius: 2px;
}

.th1 img {
	height: 400px;
	width: auto;
	margin-left: -45px;
	object-fit: cover;
}

.warning {
	width: 100%;
	justify-content: center;
	display: flex;
}

.warning label {
	font-size: 20px;
	margin: 4px 0;
	background-color: #ff9999;
}
</style>
</head>
<body>
	<%@include file="NavBar.jsp"%>
	<div>
		<table>
			<tr>
				<td class="th1">
					<div class="img11">
						<strong>&nbsp;&nbsp;&nbsp;Trash<img src="trash1.png"
							alt=""></strong>
					</div>
				</td>
				<td rowspan="2">
					<div>
						<%request.getSession(false);
if(session==null){
	response.sendRedirect("Home.jsp");
}
else{
	String email=(String)session.getAttribute("email");

            String msg=request.getParameter("msg");
            if("mailDeleted".equals(msg)){
            %>
						<div class="warning">
							<label>Mail Completely Deleted Successfully</label>
						</div>
						<%} %>
						<% 
try{
	Connection conn=ConnectionProvider.getConnection();
	PreparedStatement ps=conn.prepareStatement("select * from mail123 where RECEIVER='"+email+"' and trash='Yes' order by id desc");
	ResultSet rs=ps.executeQuery();

	

	while(rs.next()){
%>
						<!-- 
		<tr>
			<td><%=rs.getString("SENDER") %></td>
			<td><a href='TrashViewMail.jsp?ID=<%= rs.getInt("ID") %>'rs.getString("SUBJECT")T") %></a></td>
		</tr>
		 -->
						<div class="wrapper">
							<div class="outer">
								<div class="card">
									<div class="content">
										<div class="img">
											<img src="logo.png" alt="">
										</div>
										<div class="details">
											<span class="name"> <%=rs.getString("SENDER")%>
											</span>
											<p>
												SUBJECT :
												<%=rs.getString("SUBJECT")%>
											</p>
										</div>
									</div>
									<a class="btn"
										href='TrashViewMail.jsp?ID=<%=rs.getInt("ID")%>'> Show </a>
								</div>
							</div>
						</div>
						<%
						}
						conn.close();
						%>
						<%
						} catch (Exception e) {
						System.out.println(e);
						}
						}
						%>
					</div>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
	</div>
</body>
</html>