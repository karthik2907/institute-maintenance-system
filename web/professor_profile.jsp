<%-- 
    Document   : kmk_temp
    Created on : 18 Jul, 2021, 3:46:43 PM
    Author     : karthik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
 String s= String.valueOf(request.getAttribute("name"));
 
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Professor profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="profile.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="student_profile.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
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
            .mohan{
            text-align: center;
            color: orange;
            background-color: oldlace;
            padding-top: 20px;
            padding-bottom: 20px;
            border-bottom-left-radius: 20px;
            border-bottom-right-radius: 20px;
            }
            h1{
            text-align: center;
            color: orange;
            background-color: oldlace;
            padding-top: 20px;
            padding-bottom: 20px;
            border-radius: 20px;
            }
        </style>
        <script>
            function Logout(){
                if (confirm("Willing to Logout??"))
                {
                    window.location = "admin_login.html";
                } 
                else{
                txt = "You pressed Cancel!";
                }
            }
            function Home(){
            window.location = "index.html";
            }
        </script>
    </head>
    <body style="background-color: #E2F9CC;" >
        <div class="mohan">
            <button class='btn btn-success pull-left' onclick="Home()">HOME</button>
            <button class='btn btn-success pull-right' onclick="Logout()" >Logout</button>
            <h1 style=" text-align: center;">WELCOME</h1>
        </div>
        <div>
            <div class="container">
                <ul class="nav nav-tabs">
                    <li><a data-toggle="tab" href="#home">Home</a></li>
                    <li><a data-toggle="tab" href="#menu1">Post Attendnce</a></li>
                    <li><a data-toggle="tab" href="#menu2">Post Results</a></li>
                </ul>
                <div class="tab-content">
                    <div id="home" class="tab-pane fade in active">
                        <h3>HOME</h3>
                        <marquee><h1 style="color: blue " >PVP SIDDHARTHA INSTITUTE OF TECHNOLOGY</h1></marquee>
                            <br><br>
                        <div style="background-color:#989898;color: white;height: 100px;width:auto; padding: 20px; ">
                            For Queries please reach us through: <a href="mailto:pvpsiddhartha.ac.in@gmail.com">pvpsiddhartha.ac.in@gmail.com</a>.<br>
                            Follow us on:<button type="button" class="btn btn-info"><span class="fa fa-instagram"""></span></button> <button type="button" class="btn btn-info"><span class="fa fa-facebook"""></span></button> <button type="button" class="btn btn-info"><span class="fa fa-youtube"""></span></button> <button type="button" class="btn btn-info"><span class="fa fa-twitter"""></span></button>
                        </div>
    
                    </div>
                <div id="menu1" class="tab-pane fade">
                <h3>Attendence</h3>
                <form style="text-align:center" method="post" action="postattendance">
                        <br><br>  <br><br>
                    ID:<input type="text" required="1" name="id" placeholder="Enter roll number" >
                    MONTH:<select name="month">
                            <option value="jun" >JUN</option>
                            <option value="jul" >JUL</option>
                            <option value="aug" >AUG</option>
                            <option value="sep" >SEP</option>
                            <option value="oct" >OCT</option>
                            <option value="nov" >NOV</option>
                            <option value="dece" >DEC</option>
                            <option value="jan" >JAN</option>
                            <option value="feb" >FEB</option>
                            <option value="mar" >MAR</option>
                            <option value="apr" >APR</option>
                        </select>
                    DAYS:<input type="text" required="1" name="days" placeholder="Enter no.of days" ><br><br>
                            <input class="button" type="submit" value="submit">
                </form>
            </div>
    <div id="menu2" class="tab-pane fade">
        <h3>post results</h3>
         <form style="text-align:center" method="post" action="postresults">
          <br><br>  <br><br>
          ID:<input type="text" required="1" name="id" placeholder="Enter roll number" >
          YEAR:<select name="year">
              <option value="year1" >YEAR1</option>
               <option value="year2" >YEAR2</option>
                <option value="year3" >YEAR3</option>
                <option value="year4" >YEAR4</option>
                </select>
          BRANCH:<select name="branch">
                  <option value="cse" >CSE</option>
                   <option value="it" >IT</option>
                    <option value="ece" >ECE</option>
                     <option value="eee" >EEE</option>
                      <option value="civil" >CIVIL</option>
                       <option value="mech" >MECH</option>
                   </select>
           EXAM:<select name="exam">
              <option value="mid1" >INTERNAL1</option>
               <option value="mid2" >INTERNAL2</option>
                <option value="sem1" >EXTERNAL1</option>
                <option value="sem2" >EXTERNAL2</option>
                </select>
          SCORE:<input type="text" required="1" name="score" placeholder="Enter score uptained" ><br><br>
          <input class="button" type="submit" value="submit">
      </form>
       
    </div>
   
  </div>
</div>
          
      </div>
        
      
  
    </body>
</html>
