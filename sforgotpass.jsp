<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("user");
    String email = request.getParameter("email");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/studentrecord","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from studentlogin where Username ='" + user + "' and Email='"+email+"' ");

   if (rs.next()) {
	 String pass= rs.getString("Password");

    session.setAttribute("user",user);
		session.setAttribute("pass",pass);
		//out.println("welcome " + userid);
       // out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("forgotpassresult.jsp");
    } else {
        out.println("Invalid authentication.<a href='sforgotpass.html'>try again</a>");
    }

	con.close();


%>
