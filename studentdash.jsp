<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import = "java.sql.*" %>


<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/studentrecord", "root", "root");

			Statement qry = con.createStatement();
			ResultSet rs = qry.executeQuery("select * from studentlogin where Username='"+session.getAttribute("userid")+"'  ");

%>


<!DOCTYPE html>
<html>
<head>
<title>Student Record Management</title>
<link rel="icon"
     type="image/jpg"
     href="\dronacharya\dlogo1.jpg">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <style>

	.header{
	color:#1A237E;
	padding:15px;
	background-color:#1E88E5  ;
	text-align:center;
	}
	img{
	margin-top:5px;}

	button{
		color:white;
		background-color:#1E88E5 ;
		width:30%;
		padding:5px;
	}
	button:hover{
		background-color:green;
	}

	h3{
		color:brown;
	}
#a01{
	color:red;
}
.footer{
background-color:#E3F2FD;
color:#1E88E5;}
 </style>
</head>

<body>

	<div class="header">
	<div class="col-sm-4">
		<img id="i1" src="flogo.jpg" height="150px" width="260px;" align="left">
	
	</div>
	<div class="col-sm-8">
		<h1><b>STUDENT RECORD MANAGEMENT SYSTEM</b></h1>
		<h5> <b>Hello</b>
		<% out.print(session.getAttribute("name")); %>
		</h5>
	</div>
	<a id="a01" href="tglogout.jsp" align="right">LogOut</a>

	</div>
<div class="container">
	<div class="row">



		<div class="col-sm-12">
		<table border="5px">
		<h3>Personal details..</h3>
		<tr><th>Enrollment Id </th>
		<th>Full Name</th>
		<th>Gender</th>
		<th>Date of Birth</th>
		<th>Email Id</th>
		<th>Branch</th>
		<th>Semester</th>
		<th>Father's Name</th>
		<th>Address</th>
		<th>Mobile</th>

	</tr>
	<tr><td>

<%		while(rs.next()) {


		out.print("<tr>");
		out.print("<td>"+rs.getString("Username") +"</td>");
		out.print("<td>"+rs.getString("Firstname")+" "+rs.getString("Lastname") +"</td>");
		out.print("<td>"+rs.getString("Gender")+"</td>");
		out.print("<td>"+rs.getString("Dob")+"</td>");
		out.print("<td>"+rs.getString("Email") +"</td>");
		out.print("<td>"+rs.getString("Branch")+"</td>");
		out.print("<td>"+rs.getString("Semester")+"</td>");
		out.print("<td>"+rs.getString("Fathername")+"</td>");
		out.print("<td>"+rs.getString("Address")+"</td>");
		out.print("<td>"+rs.getString("Mobile")+"</td>");
		out.print("</tr>");
	}
%>
</td></tr>
	</table>


		</div>



</div>
</div>

<div class="footer">
	<center>
		<h5>Stay Connected with us:</h5>
		<p>SRMS project ADL</p>
		<br>

		<h6>Follow us at:</h6>
	<center><a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a><a href="http://www.twitter.com"> <i class="fa fa-twitter"></i></a><a href="http://www.instagram.com"><i class="fa fa-instagram"></i></a></center>

	</center>
</div>

	<script>

</script>




		<!-- Model for Student login -->



</body>
</html>

	<%

			con.close();
		%>
