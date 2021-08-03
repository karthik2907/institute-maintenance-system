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
          <title>Student profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="profile.css">
        <link rel="stylesheet" href="login_form_style.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="student_profile.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <style>
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

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
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

.disabled {
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
            .stuff{
                
            }
        </style>
        <script>
            function Logout(){
                if (confirm("Willing to Logout??")) {
                 window.location = "student_login.html";
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
            <button class='btn btn-success pull-left' onclick="Home()" >HOME</button>
            <button class='btn btn-success pull-right' onclick="Logout()" >Logout</button>
            <h1 style=" text-align: center;">WELCOME</h1>
            <div style="text-align: center;text-transform: uppercase;">
                <h2> <% out.print(s); %></h2>
            </div>
        </div>
        
           <div class="container">
  
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
    <li><a data-toggle="tab" href="#menu1">Attendnce</a></li>
    <li><a data-toggle="tab" href="#menu2">Results</a></li>
    
  </ul>

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>HOME</h3>
    
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Attendence</h3>
      
     
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Results</h3>
    </div>
   
  </div>
</div>      
  
    </body>
</html>
