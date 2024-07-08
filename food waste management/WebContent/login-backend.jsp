<%@page import="java.sql.*" %>
<html>
<body>
 <%
 try{
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/abc","root","Pass@123");
 
String uid=request.getParameter("email");
String upass=request.getParameter("password");
PreparedStatement ps=cn.prepareStatement("select * from signup where email=?");
ps.setString(1, uid);
ResultSet rst=ps.executeQuery();
if(rst.next())
{
   
	String
	dpass=rst.getString(3);
	if(upass.equals(dpass))
	{
		String name=rst.getString(1);
		String accountno=rst.getString(5);
		session.setAttribute("email",name);
		session.setAttribute("phone",accountno);
		response.sendRedirect("userhomepage.jsp");
		return;
	}
}
%>
<jsp:include page="login.jsp"/>
<div class='dvv'>
 <h3 style='color:red'> User id or password is incorrect</h3>
</div>

<%
 }
catch(Exception e)
    {
	  System.out.println(e);
	}


%>
</body>
</html>