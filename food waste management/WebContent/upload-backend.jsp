<%@page import="java.sql.*"  %>
<html>
<body>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/abc", "root", "Ajeet@117089");
	String sql="insert into upload values(?,?,?)";
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1, request.getParameter("text"));	
	ps.setString(2, request.getParameter("image"));
	ps.setString(3, request.getParameter("w"));
    ps.executeUpdate();
	%>
	<jsp:include page="userhomepage.jsp"/>
	
<% }
catch(Exception ex){System.out.println(ex);}

%>
</body>
</html>