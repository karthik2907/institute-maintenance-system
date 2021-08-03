<%-- 
    Document   : kmk_temp
    Created on : 18 Jul, 2021, 3:46:43 PM
    Author     : karthik
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); %>
<%
    //getting values from student_profile.jsp to get attendance 
    String name= String.valueOf(request.getAttribute("name"));
    String id= String.valueOf(request.getAttribute("id"));
    request.setAttribute("name",name); 
    request.setAttribute("id",id); 
    //Database connection
    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/college", "root", "2907");
    Statement statement = connection.createStatement();
    ResultSet resultset = 
    statement.executeQuery("select * from attendance where id='"+id+"' "); //getting attendance based on id
    //getServletContext().getRequestDispatcher("/getattend.jsp").forward(request, response);
    session.setAttribute("userId", id);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="profile.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="student_profile.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
            td, th{
            border: 1px solid #dddddd;
            text-align: center;
            padding: 8px;
            }
            table.center{
            margin-left: auto; 
            margin-right: auto;
            }
            tr:nth-child(even){
            background-color: #dddddd;
            }
            .dropbtn {
            background-color: #04AA6D;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            }
            .dropdown {
            position: relative;
            display: inline-block;
            }
            .dropdown-content {
            display: none;
            position: absolute;
            /* background-color: #f1f1f1;*/
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            }
            .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            }
            .dropdown-content a:hover{
            background-color: #ddd;
            }
            .dropdown:hover .dropdown-content {
            display: block;
            }
            .dropdown:hover .dropbtn {
            background-color: #3e8e41;
            }
            .button {
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 5px 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 2px 2px;
            cursor: pointer;
            }
            .disabled{
            opacity: 0.6;
            cursor: not-allowed;
            }
            .mohan{
            text-align: center;
            color: orange;
            background-color: oldlace;
            padding-top: 20px;
            padding-bottom: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            }
        </style>
        <script>
            function Logout()
            {
                if (confirm("Willing to Logout??")) 
                {
                     window.location = "student_login.html";
                } 
                else
                {
                    txt = "You pressed Cancel!";
                }
            }
            function Home()
            {
                window.location = "index.html";
            }
        </script>
    </head>
     <body style="background-color: #E2F9CC;" >
        <div class="mohan">
            <button class='btn btn-success pull-left' onclick="Home()" >HOME</button>
            <button class='btn btn-success pull-right' onclick="Logout()" >Logout</button>
            <h1 style=" text-align: center;">WELCOME</h1>
            <div style="text-align: center;text-transform: uppercase;">
                <h2> <% out.print(name); %></h2>
                <h2> <% out.print(id); %></h2>
            </div>
        </div>
        <div class="container">
            <ul class="nav nav-tabs">
                <li><a data-toggle="tab" href="#home">Home</a></li>
                <li><a data-toggle="tab" href="#menu1">Attendnce</a></li>
                <li><a data-toggle="tab" href="#menu2">Results</a></li>
            </ul>
            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <marquee><h1 style="color: blue " >PVP SIDDHARTHA INSTITUTE OF TECHNOLOGY</h1></marquee>
                        <br><br>
                        <div style="background-color:#989898;color: white;height: 100px;width:auto; padding: 20px; ">
                            For Queries please reach us through: <a href="mailto:pvpsiddhartha.ac.in@gmail.com">pvpsiddhartha.ac.in@gmail.com</a>.<br>
                            Follow us on:<button type="button" class="btn btn-info"><span class="fa fa-instagram"""></span></button> <button type="button" class="btn btn-info"><span class="fa fa-facebook"""></span></button> <button type="button" class="btn btn-info"><span class="fa fa-youtube"""></span></button> <button type="button" class="btn btn-info"><span class="fa fa-twitter"""></span></button>
                        </div>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <h3>Attendence</h3>
                    <table class="center" BORDER="1">
                        <TR>
                            <th>ID</th>
                            <th>NAME</th>
                            <th>JUNE</th>
                            <th>JULY</th>
                            <th>AUGUST</th>
                            <th>SEPTEMBER</th>
                            <th>OCTOBER</th>
                            <th>NOVEMBER</th>
                            <th>DECEMBER</th>
                            <th>JANUARY</th>
                            <th>FEBRUARY</th>
                            <th>MARCH</th>
                            <th>APRIL</th>
                        </TR>
            <% while(resultset.next()){ %>
                        <TR>
                            <td> <%= resultset.getString(1) %></td>
                            <td> <%= resultset.getString(2) %></td>
                            <td> <%= resultset.getString(3) %></td>
                            <td> <%= resultset.getString(4) %></td>
                            <td> <%= resultset.getString(5) %></td>
                            <td> <%= resultset.getString(6) %></td>
                            <td> <%= resultset.getString(7) %></td>
                            <td> <%= resultset.getString(8) %></td>
                            <td> <%= resultset.getString(9) %></td>
                            <td> <%= resultset.getString(10) %></td>
                            <td> <%= resultset.getString(11) %></td>
                            <td> <%= resultset.getString(12) %></td>
                            <td> <%= resultset.getString(13) %></td>
                        </TR>
            <% } %>
                    </table>
      
                </div>
                <div id="menu2" class="tab-pane fade">
                    <h3>Please select the requirements</h3>
                    <div style="text-align: center" >
                            <br><br>
                        <form method="post" action="getresults.jsp" target="_blank" >
                            <input type="hidden" name="userId" value="<%out.print(id);%>">
                            <input type="hidden" name="name" value="<%out.print(name);%>">
                            YEAR*:  <select name="year" required="yes" >
                                        <option value="year1">Year1</option>
                                        <option value="year2" >Year2</option>
                                        <option value="year3" >Year3</option>
                                        <option value="year4" >Year4</option>
                                    </select>
                            DEPT*:  <select name="dept" required="yes">
                                        <option value="cse" >Cse</option>
                                        <option value="it" >IT</option>
                                        <option value="ece" >Ece</option>
                                        <option value="eee" >Eee</option>
                                        <option value="civil" >Civil</option>
                                        <option value="mech" >Mech</option>
                                    </select>
                            SELECT EXAM:<select name="moe">
                                            <option value="mid1" >mid1</option>
                                            <option value="mid2" >mid2</option>
                                            <option value="sem1" >sem1</option>
                                            <option value="sem2" >sem2</option>
                                        </select>
                            <br><br>
                            <input class="button" type="submit" value="submit" >
                        </form>
                </div>
            </div>
        </div>
    </div>      
  </body>
</html>
