package img;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/upload")
public class upload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public upload() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("image is going to be uplaoded ");
		Part file=request.getPart("image");
		String imagefilename=file.getSubmittedFileName();
		System.out.println("selected file name: "+imagefilename);
		String uploadPath="D:/All-Projects/FooDWastEManagements/WebContent/uploadimg/"+imagefilename;
		System.out.println("uploaded pathe: " + uploadPath);
		// upload image to file using file handling
		
		
		try {
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		// code to upload image in the mysql Databases 
	
		
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/abc", "root", "Ajeet@117089");
			String sql="insert into upload(imagefilename) values(?)";
			PreparedStatement ps=cn.prepareStatement(sql);
		    ps.setString(1, imagefilename);
		    int row=ps.executeUpdate();
		   if(row>0) 
		   {
			  
				  request.getRequestDispatcher("userhomepage.jsp");
		   } 
		   else
		   {
			   System.out.println("failed to upload image to the database");
		   }
	
		}
		
		catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
	}

}
