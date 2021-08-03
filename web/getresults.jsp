<%@ page import="java.sql.*" %>

    <%
        
       // int userid = Integer.parseInt(String.valueOf(session.getAttribute("userId"))); 
          String userid=request.getParameter("userId");
          String name=request.getParameter("name");
          String year=request.getParameter("year");
          String depart=request.getParameter("dept");
          String moe=request.getParameter("moe");
          String req=depart+year;
          Class.forName("com.mysql.jdbc.Driver"); 
          Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/college", "root", "2907");
         Statement statement = connection.createStatement() ;
          String sql = "SELECT * FROM "+req+" WHERE id='"+userid+"' ";

         
            ResultSet resultset =  statement.executeQuery(sql) ; 
        
    %>
<HTML>
    <HEAD>
        <style>
            h1{
                text-align: center;
                color: orange;
                background-color: oldlace;
                padding-top: 20px;
                padding-bottom: 20px;
                border-radius: 20px;
            }
table{
  font-family: arial, sans-serif;
  border-collapse: collapse;
 width:60%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: center;
  padding: 8px;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
tr:nth-child(even) {
  background-color: #dddddd;
}


</style>
        
</HEAD>
<body>
      <div style="text-align: center;text-transform: uppercase;">
                <h1> <% out.print(name); %></h1>
                
            </div>
      <table class="center" BORDER="1">
            <TR>
                <th>ID</th>
                <th>NAME</th>
                <th>EXAM</th>
                <th>RESULT(%)</th>
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <td> <%= resultset.getString(1) %></td>
                <td> <%= resultset.getString(2) %></td>
                 <td> <% out.println(moe);%></td>
                <td> <%= resultset.getString(moe) %></td>
                
    
            </TR>
            <% } %>
        </table>
</body>
   
</HTML>


