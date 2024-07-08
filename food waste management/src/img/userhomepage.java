package img;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userhomepage
 */
@WebServlet("/userhomepage")
public class userhomepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userhomepage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String imageid=request.getParameter("imageid");
		int id=Integer.parseInt(imageid);
		String imagename=null;
		int imgid=0;
		String imageFilename=null;
	
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/abc", "root", "Ajeet@117089");
			
			
			Statement st = cn.createStatement();
		    ResultSet rset = st.executeQuery("select * from upload");
		    while(rset.next()) 
		    {
		    	  
		    		if(rset.getInt(1)==id) {
		    			imgid=rset.getInt("id");
		    			imageFilename=rset.getString("imagefilename");
		    			
		    		}
		    	
		    	
		    }
		    }
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		RequestDispatcher rd;
		request.setAttribute("id", String.valueOf(imgid));
		request.setAttribute("img", imageFilename);
		
	;
		rd=request.getRequestDispatcher("userhomepage.jsp");
		rd.forward(request, response);
	}

}

	
