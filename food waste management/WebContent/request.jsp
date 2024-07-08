
<%@include file="nav-bar.jsp"%>
<%@page import="java.sql.*"%>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/bootstrap-icons.css" rel="stylesheet">

<link href="css/templatemo-kind-heart-charity.css" rel="stylesheet">
<body>
	<form action="request" method="post">
		<input type="search" name="search" placeholder="search"
			style="margin-bottom: 2%; margin-top: 0%; width: 50%; border-color: green; border-radius: 10px; padding: 10px; margin-left: 25%;">
			<button>search</button>
	
     </form>

	<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/abc", "root", "Ajeet@117089");
			Statement st = cn.createStatement();
			ResultSet rset = st.executeQuery("select * from signup");

			while (rset.next()) {
	%>

    <div align="center">
       <table border="Spx" style="width:400px;">
       <tr>
         <th>Hotel Name</th> 
           <th>Hotel PIC</th> 
       </tr>
        <tr>
         <td></td> 
           <td></td> 
       </tr>
       </table>
    </div>
 

	<%
}
%>

	<%
		} catch (Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>
