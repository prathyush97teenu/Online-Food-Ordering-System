<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hotel Ordering System</title>
<link href="resources/css/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!--  Free CSS Templates from www.templatemo.com -->
	<div id="templatemo_container">
		<!-- end of menu -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1></h1>
			</div>
		</div>
		<div id="templatemo_header">
			
		</div>
		<!-- end of header -->
		<div id="templatemo_content_bar">
			<div class="templatemo_product_box">
				<h1></h1>
			</div>
		</div>
		<div id="templatemo_content">

			<div id="templatemo_content_left">
				<div class="templatemo_content_left_section">
					<h1 style="text-align: center">ROYAL HILTON</h1>
					<ul>
						<li><a href="HomePage.html"> Home </a></li>
						<li><a href="LoginPage.jsp"> Login </a></li>
                                                <li><a href="signup.jsp"> Sign up </a></li>
                                                <li><a href="AboutUs.html">About Us</a></li>
						<li><a href="ContactUs.html">Contact Us </a></li>
					</ul>
				</div>
			
			</div>
			
			
			
			
			<!-- end of content left -->
			<!-- end of content right -->
			<div class="cleaner_with_height">&nbsp;</div>
		</div>
		<!-- end of content -->

		<div id="templatemo_footer">
			<a href="HomePage.html">Home</a> | <a href="LoginPage.jsp"> Login
			</a> | <a href="LoginPage.jsp">Table Login </a> | <a href="AboutUs.html">About
				Us</a> | <a href="ContactUs.html">Contact Us</a><br /> 
		</div>
		<!-- end of footer -->
		<!--  Free CSS Template www.templatemo.com -->
	</div>
	<!-- end of container -->
        <%
    try{
        String user_name = request.getParameter("user_name");   
        String pass = request.getParameter("pass");
        String email = request.getParameter("email");
        String phone= request.getParameter("phone");
        String birthday= request.getParameter("birthday");
        String gender= request.getParameter("gender");
       
       
        Class.forName("com.mysql.jdbc.Driver").newInstance();  // MySQL database connection
       java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_order", "root","root");    
      Statement st=con.createStatement();
       st.executeUpdate("insert into login(user_name,pass,email,phone,birthday,gender) values('"+user_name+"','"+pass+"','"+email+"','"+phone+"','"+birthday+"','"+gender+"')");
        String Query="select * from login";
        PreparedStatement pst= con.prepareStatement(Query);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           out.println("Signup Successful!!!");  
        else
           out.println("Signup Unsuccessful Try Again !!!");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
        
    </body>
</html>
