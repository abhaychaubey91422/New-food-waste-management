<%@page import="java.sql.*" %>
<html>
 <body>
<%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/abc","root","Ajeet@117089");
	  String sql="insert into signup values(?,?,?,?,?)";
	  PreparedStatement ps=cn.prepareStatement(sql);
	  String v1=request.getParameter("name");
	  ps.setString(1,v1);
	  String v2=request.getParameter("email");
	  ps.setString(2,v2);
	  String v3=request.getParameter("password");
	  ps.setString(3,v3);
	  String v4=request.getParameter("select");// hotel ,ngeo
	  ps.setString(4,v4);
	  String v5=request.getParameter("phone");
	  ps.setString(5,v5);
	  ps.executeUpdate();
%>
	  <div style='text-align: center;margin-top:30px;margin-top:30px'>
	       <h2>your account has been created successfully</h2>
	       <%@ include file="login.jsp" %>
	  </div>

 <%  }
  catch(Exception ex)
  {
	  out.println(ex);
  }
%>

 </body>
</html>