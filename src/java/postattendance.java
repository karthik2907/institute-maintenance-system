import java.io.*;   /*importing of packages*/
import java.sql.*;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class postattendance extends HttpServlet{ 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {  
            response.setContentType("text/html");  
            try(PrintWriter out = response.getWriter()) {
                /*getting values from professor_profiel page on tab called attendance*/
                Statement stmt=null;
                String id=request.getParameter("id");
                String month=request.getParameter("month");
                String days=request.getParameter("days");
                //database connection.
                try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "2907");
                        Statement statement = connection.createStatement() ;
                        // String updateQuery = "update attendance set "+month+" = " +days+ "where id='\"+id+\"'  ";
                        statement.executeUpdate("update attendance set "+month+" = " +days+" where id= '"+id+"' ");
                        out.println("<html><body onload=\"alert('Succesfully Updated')\"></body></html>");
                        request.getRequestDispatcher("professor_profile.jsp").include(request, response); 
                    }
                //Catching exceptions and show error message.
                catch (Exception e)
                {
                    out.println("<html><body onload=\"alert('Something error occured try again!!😥')\"></body></html>");
                    request.getRequestDispatcher("professor_profile.jsp").include(request, response);//redirect again to the same page.
                     
                }               		
            }
    } 
}