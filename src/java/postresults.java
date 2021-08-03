import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class postresults extends HttpServlet {
protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException
{
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter())
        {
            Statement stmt=null;
            /*getting values from profeesor_profile.jsp on a tab called post attendence*/
            String id=request.getParameter("id");
            String year=request.getParameter("year");
            String depart=request.getParameter("branch");
            String exam=request.getParameter("exam");
            String score=request.getParameter("score");
            String table=depart+year; //making table from values(brach+year) i.e year=year1 and depart=cse then table name is cseyear1
            //database connection
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "2907");
                Statement statement = connection.createStatement() ;
                String sql = "update "+table+" set "+exam+" = " +score+" WHERE id='"+id+"' ";
                statement.executeUpdate(sql);
                out.println("<html><body onload=\"alert('Succesfully Updated')\"></body></html>");
                request.getRequestDispatcher("professor_profile.jsp").include(request, response);  
            }
            //catching exception and showing error message
            catch (Exception e2)
            {
                out.println("<html><body onload=\"alert('Something error occured try again!!😥')\"></body></html>");
                request.getRequestDispatcher("professor_profile.jsp").include(request, response);  
                     
            }               		
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
