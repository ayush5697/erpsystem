<%@ page import ="java.sql.*" %>
<%
    String us = request.getParameter("user");
    String em = request.getParameter("email");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/studentrecord","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from tglogin where Username ='" + us + "'and Email='"+em +"'");
	 if (rs.next()) {
	 String pass=rs.getString("Password");
        session.setAttribute("user", us);
		session.setAttribute("pass",pass);
		//out.println("welcome " + userid);
       // out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("forgotpassresult.jsp");
    } else {
        out.println("Invalid Fields <a href='tgforgotpass.html'>try again</a>");
    }

	con.close();


%>
