package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.userDAo;
import com.db.dbconnect;
import com.entities.user;

/**
 * Servlet implementation class servlet
 */
@WebServlet("/servlet")
public class servlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public servlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		    String name=request.getParameter("name");
		    String email=request.getParameter("email");
		    String pass=request.getParameter("password");
		    String cat=request.getParameter("catogry");
		    String ph=request.getParameter("phone");
            user u=new user();
            u.setName(name);
            u.setEmail(email);
            u.setPassword(pass);
            u.setCatogry(cat);
            u.setMobile(ph);
            userDAo dao=new userDAo(dbconnect.getConnection());
          boolean f=dao.saveuserregister(u);
           if(true)
           {
        	PrintWriter out=response.getWriter();   
        	out.print("registration sucssefull");
           }
           else 
           {
        	 PrintWriter out=response.getWriter();   
           	out.print("registration not sucssefull sucssefull");
           }
            
	}

}
