<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String errorMessage = (String) request.getAttribute("errorMessage"); %>
<%@ page import="classes.UserDAO" %>
<%@ page import="classes.User" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.HttpServletRequest" %>
<style>
.ScriptHeader h1 code {
  color: black !important;
}
.ScriptHeader h3 code {
  color: black !important;
}
</style>
<%
    if (session.getAttribute("user") == null) {
        // Set an error message in the request attribute
        request.setAttribute("message", "You must first register or log in.");
  
          // Forward to the login page
         RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
      dispatcher.forward(request, response);
       // request.setAttribute("error_message", "You are not authorised to access this resource. Please login.");
%>
<!--<jsp:forward page="login.jsp" />-->
<%
    }
    User user = (User) session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Student Profile Page Design Example</title>

    <meta name="author" content="Codeconvey" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>

    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" href="../css/demo.css" />
    
	    <link rel="stylesheet" href="../css/style.css">

      <!---->
      <!---->

  <!-- CSS Bootstrap link -->
   <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <!-- JavaScript Bootstrap and Popper.js links -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  
 
  <script src="https://kit.fontawesome.com/d885a307c3.js" crossorigin="anonymous"></script>
  <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script> 
<!---->
     

      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

</head>
<body>
  


<header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading" style="color: black;">
            	<h1>Welcome to your profile <code><%= user.getUsername()%></code></h1>
                <p>Profile information.</p>
            </div>
        </div>
    </div>
</header>

<section>
    <div class="rt-container">
          <div class="col-rt-12">
              <div class="Scriptcontent">
              
<!-- Student Profile -->
<div class="student-profile py-4">
  <div class="container">
    <div class="row">
      <div class="col-lg-4">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent text-center">
            <img class="profile_img"  src="../images/fotoprofil1.jpg" style="border-radius: 50%; margin-right: 0.5cm;">
            
            <!--Displays the username -->
            <h3><code style="color: black;"><%= user.getUsername()%></code></h3>
          </div>
          <div class="card-body">
            <p class="mb-0"><strong class="pr-1">Email:</strong><code style="color: black;"><%= user.getEmail()%></code></p>
            
           <!-- <p class="mb-0"><strong class="pr-1">Section:</strong>A</p>-->
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
          </div>
          <div class="card-body pt-0">
            <table class="table table-bordered" style="color: black;">
              <tr>
                <th width="30%">Username</th>
                <td width="2%">:</td>
                <td><code style="color: black;"><%= user.getUsername()%></code></td>
              </tr>
              <tr>
                <th width="30%">First Name</th>
                <td width="2%">:</td>
                <td><codestyle="color: black;"><%= user.getFirstName()%></code></td>
              </tr>
              <tr>
                <th width="30%">Last Name</th>
                <td width="2%">:</td>
                <td><code style="color: black;"><%= user.getLastName()%></code></td>
              </tr>
              <tr>
                <th width="30%">Phone</th>
                <td width="2%">:</td>
                <td><code style="color: black;"><%= user.getPhoneNum()%></code></td>
              </tr>
            
             
            </table>
          </div>
        </div>
          <div style="height: 26px"></div>
        <div class="card shadow-sm">
          <div class="card-header bg-transparent border-0">
            <h3 class="mb-0">     <img width="25" height="25"  src="../images/heart-removebg-preview.png" >  </i>Favorite Petsitters</h3>
            <h6>Here you can see the Petsitters you have shown interest in</h6>
          </div>
          <div class="card-body pt-0">
          
        
            
                                <a href="showPetsitterInfo.jsp">
                                  <!--<button class="btn btn-primary btn-round btn-simple button-custom-color">Learn more</button>-->
                                  <p><img width="45" height="45" src="../images/petsitter.jpg" style="border-radius: 50%; margin-right: 0.5cm;"> Maria Ioannou</p>
                              </a>
                              <a href="showPetsitterInfo.jsp">
                                <p><img width="45" height="45" src="../images/profil2.jpg" style="border-radius: 50%; margin-right: 0.5cm;"> Katerina Spanou</p>
                              </a>
                  

         
  </div>
</div>

           
    		</div>
		</div>
    </div>
</section>
     


    <!-- Analytics -->

	</body>
</html>
