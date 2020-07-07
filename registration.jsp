
<%@ page import = "java.sql.*" %>

<html>
<head> 	<title> SAVE USER </title> 		</head>
<body>
<%
String fname= request.getParameter("fname");
String lname = request.getParameter("lname");
String Username = request.getParameter("enroll");
String branch= request.getParameter("branch");
int sem = Integer.parseInt(request.getParameter("sem"));
String dob= request.getParameter("dob");
String gender=request.getParameter("gender");
String ftname=request.getParameter("ftname");
String add=request.getParameter("add");
String email=request.getParameter("email");
String mo=request.getParameter("mo");
String pass=request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/studentrecord", "root", "root");

Statement qry = con.createStatement();
String qry1="insert into studentlogin values('" +Username+ "', '" +fname + "', '" + lname + "', '" + email + "', '" + mo+ "','"+branch +"',"+ sem+",'"+ dob +"','"+gender +"','"+ftname +"','"+ pass +"','"+pass+"')";
//out.print(qry1);
int i = qry.executeUpdate(qry1);
con.close();

if(i != 0) 		out.print("<br /> <h1> Your data has been stored Sucessfully!!!!! </h1>");

else 			out.print("<br /> <h1> ##### ERROR ##### </h1>");
%>

<p />
<a href="index.html"> GO TO HOME PAGE </a>
</body> 		</html>
