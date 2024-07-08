 <%@ page import="java.sql.*" %>
<html>
 <body>
<%
  try
  {
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/abc","root","Ajeet@117089");
	  String sql="insert into userinfo values(?,?,?,?,?,?,?)";
	  PreparedStatement ps=cn.prepareStatement(sql);
	  String v1=request.getParameter("profile");
	  ps.setString(1,v1);
	  String v2=request.getParameter("ngo");
	  ps.setString(2,v2);
	  String v3=request.getParameter("type");
	  ps.setString(3,v3);
	  String v4=request.getParameter("ownr");
	  ps.setString(4,v4);
	  String v5=request.getParameter("website");
	  ps.setString(5,v5);
	  String v6=request.getParameter("contact_number");
	  ps.setString(6,v6);
	  String v7=request.getParameter("contact_email");
	  ps.setString(7,v7);
	  
	  ps.executeUpdate();
%>
	  <div style='text-align: center;margin-top:30px;margin-top:30px'>
	      
	       <%@ include file="index.jsp" %>
	  </div>

 <%  }
  catch(Exception ex)
  {
	  out.println(ex);
  }
%>

 </body>
</html>