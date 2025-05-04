<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp lang="en">
<head>
  <meta charset="utf-8" />
  <!-- CSS Bootstrap link -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
  <!-- JavaScript Bootstrap and Popper.js links -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <title>search</title>
  <script crossorigin="anonymous" src="https://kit.fontawesome.com/d885a307c3.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link href="../css/showResults.css" rel="stylesheet" type="text/css" />
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta http-equiv="X-UA-Compatible" content="IE edge" />
  <meta name="author" content="colorlib.com">
  <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
</head>

 <body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-light custom-navbar sticky-top">
   <div class="container d-flex justify-content-between">

    <div class="logo">
        <a href="index.jsp">
            <img src="../images/385520272_1998281757194190_8176637074659308130_n-removebg-preview.png" id="img-logo" alt="The company's logo" width="100" height="50">
        </a>
    </div>
    
    <!-- Vertical line -->
    <div class="vertical-line"></div>   
        <div class="box">
          <i class="fa fa-search" aria-hidden="true"></i>
          <input type="text" name="Area" placeholder="Area or Zip Code" class="beige-input">
        </div>
    

    <!-- Add "Login" underlined and "Register" inside a rounded box -->
    <ul class="navbar-nav">
     <li class="nav-item" style="margin-right: 5px;">
      <a class="nav-link" href="login.jsp" style="text-decoration: underline;">
       Login
      </a>
     </li>
     <li class="nav-item">
      <a class="nav-link" href="login.jsp" style="background-color: #da7a0b; border: 1px solid #da7a0b; border-radius: 20px; padding: 5px 15px; color: white; margin-left: 10px;">
       Register
      </a>
     </li>

     <!-- add heart icon to display "favorites"/saved people -->
     <li class="nav-item">
      <a class="nav-link" href="viewProfilePetowner.jsp" style="margin-left: 20px;">
       <img alt="Heart" height="40" src="../images/heart-removebg-preview.png" width="40"/>
      </a>
     </li>
    </ul>
   </div>

   <!-- Navigation bar button link -->
   <button aria-label="Click on the navigation bar" class="navbar-toggle border-0" type="button">
    <span class="navbar-toggler-icon">
    </span>
   </button>
</nav>

<br>
<br>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container profile-page">
    <div class="row">
        <div class="col-xl-6 col-lg-7 col-md-12">
            <div class="card profile-header">
                <div class="body">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="profile-image float-md-right"> <img src="../images/hm1.jpg" alt=""> </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-12">
                            <h4 class="m-t-0 m-b-0"><strong>Giorgos Papadopoulos</strong></h4>
                            <p>My name is Giorgos. I am 53 years old. I am an accountant by profession but in my free time I enjoy working with pets mostly as a hobby. <br><br><br> Zip Code: 10837</p>
                            <div>
                                <a href="showPetsitterInfo.jsp">
                                    <button class="btn btn-primary btn-round btn-simple button-custom-color" style="background-color: #da7a0b;">Learn more</button>
                                </a>
                            </div> 
                        </div>                
                    </div>
                </div>                    
            </div>
        </div>
        
        
        <div class="col-xl-6 col-lg-7 col-md-12">
            <div class="card profile-header">
                <div class="body">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="profile-image float-md-right"> <img src="../images/hm3.2.webp" alt=""> </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-12">
                            <h4 class="m-t-0 m-b-0"><strong>Gianna Papadaki</strong></h4>
                            <p>My name is Gianna, I am 24 years old. I am a student and have been doing petsitting for 2 years. I live in Heraklion Attica but if your area is nearby or easily accessible I can come. <br><br> Zip Code: 15012</p>
                            <div>
                                <a href="showPetsitterInfo.jsp">
                                    <button class="btn btn-primary btn-round btn-simple button-custom-color" style="background-color: #da7a0b;">Learn more</button>
                                </a>
                            
                            </div>
                            
                        </div>                
                    </div>
                </div>                    
            </div>
        </div>
    </div>
        
    <div class="row">
        <div class="col-xl-6 col-lg-7 col-md-12">
            <div class="card profile-header">
                <div class="body">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="profile-image float-md-right"> <img src="../images/hm3.2.webp" alt=""> </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-12">
                            <h4 class="m-t-0 m-b-0"><strong>Maria Ioannou</strong></h4>
                            <p>My name is Maria, I am 22 years old. I am a student at a TEI in Athens but most days I stay in Ampelokipoi in Athens. I look forward to meeting you!! <br><br> Zip Code: 10912</p>
                            <div>
                                <a href="showPetsitterInfo.jsp">

                                    <button class="btn btn-primary btn-round btn-simple button-custom-color"style="background-color: #da7a0b;">Learn more</button>
                                </a>
                            </div>
                    
                           
                        </div>                
                    </div>
                </div>                    
            </div>
        </div>
        
        
        <div class="col-xl-6 col-lg-7 col-md-12">
            <div class="card profile-header">
                <div class="body">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-12">
                            <div class="profile-image float-md-right"> <img src="../images/hm4.jpg" alt=""> </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-12">
                            <h4 class="m-t-0 m-b-0"><strong>Dimitra Karakosta</strong></h4>
                            <p>My name is Maria. I am 19 years old and now a student. I came to Athens this year for my studies so I decided to start pet sitting as a part-time job. <br><br> Zip Code: 11241</p>
                            <div>
                                <a href="showPetsitterInfo.jsp">
                                    <button class="btn btn-primary btn-round btn-simple button-custom-color"style="background-color: #da7a0b;">Learn more</button>
                                </a>
                            </div>
                        </div>                
                    </div>
                </div>                    
            </div>
        </div>
	</div>
</div>

<!-- Footer -->
<%@ include file="footer.jsp" %>
