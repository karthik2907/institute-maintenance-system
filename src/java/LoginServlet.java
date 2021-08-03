import java.io.*;   
import java.sql.*;
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class LoginServlet extends HttpServlet {  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException {  
        response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
        //getting results from html form
        Statement stmt=null;
        ResultSet rs=null;
        String str=request.getParameter("type");
        String id=request.getParameter("id");
        String name=request.getParameter("name");  
        String password=request.getParameter("pwd");  
            String user_name="";
            String user_password="";
             try{
                        //Databse connection
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","2907");   
                        stmt=con.createStatement();
                                if(str.equals("student"))
                                    rs=stmt.executeQuery("select * from student where name='"+name+"' and password='"+password+"'");
                                 else if(str.equals("professor"))
                                    rs=stmt.executeQuery("select * from professor where name='"+name+"' and password='"+password+"'");
                                    while(rs.next())
                                    {				         
                                          user_name=rs.getString("name");
					  user_password=rs.getString("password");         					                        
                                    } 
                                    //Checking whether student or professor and redirecting to respective profile pages.
                                    if((name.equals(user_name)&&password.equals(user_password))&&(str.equals("student")))
                                    {
                                          
                                        request.setAttribute("name",name); 
                                        request.setAttribute("id",id);
                                        request.getRequestDispatcher("student_profile.jsp").include(request, response);  
                                    }
                                    else if((name.equals(user_name)&&password.equals(user_password))&&(str.equals("professor")))
                                    {
                                        request.setAttribute("name",name); 
                                        request.setAttribute("id",id);
                                        request.getRequestDispatcher("professor_profile.jsp").include(request, response);  
                                    }
                                    else
                                    {
                                        out.println("<html><body onload=\"alert('Username or Password incorrect')\"></body></html>");
                                        if(str.equals("student"))
                                            request.getRequestDispatcher("student_login.html").include(request, response);  
                                        else
                                            request.getRequestDispatcher("admin_login.html").include(request, response); 
                                    }
				
                 }
             //Show error message when something exception error.
             catch (Exception e2)
             {
                out.println("<html><body onload=\"alert('Something error occured try again!!😥')\"></body></html>");
                if(str.equals("student"))
                    request.getRequestDispatcher("student_login.html").include(request, response);  
                else
                    request.getRequestDispatcher("admin_login.html").include(request, response); 
             }
            out.close();
          }  
}  
