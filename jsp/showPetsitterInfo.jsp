<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>




<!DOCTYPE html>
<%@ include file="navbar.jsp" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <!-- CSS Bootstrap link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  <!-- JavaScript Bootstrap and Popper.js links -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <title>Profile</title>
  <script src="https://kit.fontawesome.com/d885a307c3.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script> 

 <!---->
  <!--για την αξιολογηση-->
  <meta charset="UTF-8">
  <!-- CSS Bootstrap link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
  <!-- JavaScript Bootstrap and Popper.js links -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <title> Αξιολόγηση</title>
 
  <script src="https://kit.fontawesome.com/d885a307c3.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/a076d05399.js"></script> 

  <!---->

 




</head>


<style>
  /* footer style of the links */
  footer a {
      color: rgb(241, 237, 237); /* Link color in black */
      text-decoration: none; /* Remove underline from the links */
    }
  
    .language-icon {
      width: 20px; /* Adjust the icon size */
      margin-right: 5px; /* Add a small gap from the icon */
    }
    
    /* Change the background */
    body {
      background-color: #e8bc85; /* Light orange color as the background for the body of the page */
    }
  
    /* change the font */
    body {
      font-family: Georgia, serif;
      font-size: 16px;
    }
  
     
    p {
    font-weight: bold;
    color: #333;
    }
  
    .custom-class {
      font-style: italic;
    }
  
    /* White background after the separator line */
    .white-background {
      background-color: #fff; /* White color as background after the separator line */
    }
  
    .custom-card {
    width: 16rem; /* Change the card width as you want */
    margin: 1%; /* Change the distance between the cards */
    border-radius: 40px; /* Change the corner roundness */
    }
  
    /* navbar sequence */
    .sticky-top {
      position: sticky;
      top: 0;
      z-index: 1000;
    }
  
    /* navbar color */
    .custom-navbar {
      background-color: #e8bc85; 
    }
  
    /* Style for the navigation bar link */
    .navbar-toggle {
      background-color: transparent; /* Makes the background transparent */
      border: none; /* Removes the border */
      padding: 0; /* Removes the padding space */
      outline: none; /* Removes the outline on click */
      color: #fabe19; /* Icon color (same as the navbar color) */
    }
  
    /* Style for the navigation bar icon */
    .navbar-toggler-icon {
      background-color: #e8bc85; /* Navigation line color (same as the navbar color) */
      border: none; /* Removes the border */
    }
  
    /* Align the items horizontally */
    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
  
    .navbar-brand {
      display: flex;
      align-items: center;
    }
  
    .navbar-nav {
      display: flex;
      align-items: center;
    }
  
  
    /* Round the image */ 
    .icon img {
        border-radius: 50%;
    }
  
    /* Define a smaller font size for h2 titles */
    h2 {
      font-size: 22px; /* The font size you want */
    }
  
    /* Define a smaller font size for text (p) */
    p {
      font-size: 16px; /* The font size you want */
    }
  
    /* Define more padding for the columns in articles */
    .col-md-4 {
      padding: 20px; /* Adjust the padding value as you want */
    }
  
    .text-start {
        margin-bottom: 20px; /* Space between title and paragraphs in Tips and Articles */
    }
  
    .container.mt-5.pt-3 {
        background-color: white; /* Set the background color you want */
    }
  
    /* Search bar formatting */
    *{
      margin: 0;
      padding: 0;
    }
  
    /* Search bar formatting */
    .box{
      height: 50px;
      display: flex;
      cursor: pointer;
      padding: 10px 20px;
      background: #fff;
      border-radius: 30px;
      align-items: center;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
    }
  
    .box:hover input {
      width: 400px;
    }
  
    .box input {
      width: 0;
      outline: none;
      border: none;
      font-weight: 500;
      transition: 0.8s;
      background: transparent;
    }
  
    .box a .fas {
      color: rgb(3, 3, 7); /* color of the search icon */
      font-size: 18px;
    }
  
    /* Navbar font size */
    .navbar-nav .nav-link {
      font-size: 20px; /* You can adjust the font size to your preference */
    }
  
    /* Remove bold and set color for p with nan-how-card-title class */
    .pt-1.px-2.nan-how-card-title {
      font-weight: normal; /* Remove bold */
    }
  
    /* The last part before the footer with a different background color */
    .plirofories {
      background-color:#ecd5b4;
    }
  
    /* Make the heart a little bigger */
    .nav-link .fa-heart {
      font-size: 24px; /* Change the size as you wish */
    }
  
    /* Change the heart color to the background color */
    .nav-link .fa-heart {
      color: #5d5050; /* Makes the heart color transparent */
    }
  
    /* Add a vertical separator line next to the logo */
  .vertical-line {
    border-right: 1px solid #da7a0b; /* Reduce the thickness of the vertical line */
    border-width: 3px;
    height: 45px; /* Set the desired height for the vertical line */
    margin-right: auto;
    border-radius: 40%;
  }
  /* Change logo size */
  .logo img {
      width: 200px; /* Sets the width of the logo image */
      height: auto; /* Auto height to maintain aspect ratio */
    }
   /* Navbar size and other logo size adjustments */
   .navbar {
      height: 80px; /* Sets the height of the navbar */
      overflow: hidden; /* Hides the overflow of the image */
    }
    .phone-input {
              display: inline-block;
          }
  </style>
  

<body>



<!-- Navbar included -->





<!---->
<div class="white-background">
  
  <hr style="border-top: 1px solid #ffffff;">
<!-- Frame below the navbar - profile-->
<div class="container my-5 position-relative">
  <div class="row">


<!---->
 <div class="col-md-6">
  
      <div class="position-relative" style="z-index: 1; text-align: left; margin-left: 40px; margin-top: 5rem; ">
    
    
        <img width="200" height="200"  src="../images/petsitter.jpg" >



      </div>
       <div class="position-relative" style="z-index: 1; text-align: left; margin-left: 100px; margin-top: 0rem;">
       <img width="73,6" height="12,8" src="../images/star5.jpg" >
       <h6 style="font-size: 13px; line-height: 1;"> 
        2 Reviews
      
      </h6>

       </div>
       <p style="margin-bottom: 40px;"></p>
   </div>








  
    <!-- profile-->
    <div class="col-md-6">
      <div class="position-relative" style="z-index: 1; text-align: left; margin-left: -360px; margin-top: 5rem;
      
      <h1 style="font-size: 26px; line-height: 1;"> 
         <h1 style="font-size: 26px; line-height: 1;">
          Maria Ioannou 
          <img width="20" height="20"  src="../images/verification.jpg" >
        </h1>
      
        <h6 style="font-size: 20px; line-height: 1;"> 
          I have studied biology and I am 24 years old. I have loved animals since I was young, and hosting them is a true pleasure for me. I will be very happy if you trust me, and I promise a stay full of play and cuddles! I will be available from December. 
        
        </h6>
      
      </div>


<!--price-->

      <div class="col-md-3" >
        
        <div class="card custom-card" style="background-color: #eee5d8; margin-left: 4cm;  " >
          <h6 style="font-size: 18px; line-height: 1; margin-left: 1.5ch; margin-top: 0.4cm;"> 
            5.00 Euros per hour
          
          </h6>
              
         
          

        
          <div class="card-body">
        <!--interest-->
            <button type="button" class="btn btn-danger custom-button" data-toggle="modal" data-target="#form1" style="background-color: #ffa500; border-radius: 30px; color: #212923; padding: 12px; padding-left: 0.7cm;">
               Interested 
                  
                  <img width="20" height="20"  src="../images/heart-removebg-preview.png" >
             </button>
             <div class="modal fade" id="form1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
               <div class="modal-dialog modal-dialog-centered" role="document">
                   <div class="modal-content">
                    <div class="modal-header">
                      <!-- Bootstrap close button -->
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                      </button>
                  </div>

                       <div class="card-body text-center"> <img src="../images/logo.jpg" width="200" height="100"  >
                           <div class="animal">
                               <h4> What pet would you like Maria the Petsitter to take care of?</h4>
                               <form>
                               <div class="pet">
                                 <input type="radio" name="rating1" value="10" id="pet1">
                                 <label for="pet1">Dog</label>
                                   <input type="radio" name="rating1" value="20" id="pet2">
                                   <label for="pet2">Cat</label>
                                   <input type="radio" name="rating1" value="30" id="pet3">
                                   <label for="pet3">Bird</label>
                                   <input type="radio" name="rating1" value="40" id="pet4">
                                   <label for="pet4">Rodent</label>
                                   <input type="radio" name="rating1" value="50" id="pet5">
                                   <label for="pet5">Reptile</label>
                               </div>
                               
                               
 
                               <div class="text-center mt-4" > <button class="btn btn-success send px-5" style="background-color: #ffa500;" >
                                Submit
                                 </button> </div>
                                </form>
                           </div>
                       </div>
                   </div>
               </div>
             </div>
     
     
           </div>
     
     
     
                </div>
           </div>


      
  </div>
  


   
 </div>
 
</div>
</div>

<section class="container mt-3 pt-3 text-center">

</div>
<!--<div class="white-background">-->
  <!-- Horizontal dividing line -->
 
       <!--    <hr style="border-top: 1px solid ; margin-top: -1pc;">  line-->
  
  <!-- Introduction above the cards -->
  <div class="container my-4">
    <p style="margin-bottom: -1px;"></p>
    <h2>About me:</h2>
  
  </div>

  <!-- Cards -->
  <div class="container my-5">
    <div class="row">
      <!-- first card -->
      <div class="col-md-3">
        <div class="card custom-card">

          <div class="card-body">
            <img width="100" height="100" loading="lazy" src="../images/p1.jpg" class="nan-how-img" alt />
            <h5 class="card-title">Area</h5>
            <p class="card-text">Moschato</p>
            
          </div>
        </div>
      </div>

      <!-- second card -->
      <div class="col-md-3">
        <div class="card custom-card">
          
          <div class="card-body">
            <img width="100" height="100" loading="lazy" src="../images/p2.jpg" class="nan-how-img" alt />
            <h5 class="card-title">Experience</h5>
            <p class="card-text">2 years</p>
            
          </div>
        </div>
      </div>

      <!-- third card-->
      <div class="col-md-3">
        <div class="card custom-card">
          
          <div class="card-body">
            <img width="100" height="100" loading="lazy" src="../images/p3.jpg" class="nan-how-img" alt />
            <h5 class="card-title">Member since</h5>
            <p class="card-text">05/03/2022</p>
           
          </div>
        </div>
      </div>

      <!-- fourth card-->
      <div class="col-md-3">
        <div class="card custom-card">
          <div class="card-body">
            <img width="100" height="100" loading="lazy" src="../images/p4.jpg" class="nan-how-img" alt />
            
            <h5 class="card-title">Price</h5>
            <p class="card-text">Negotiable</p>
          </div>
        </div>
      </div>

  <!-- these 2 are for extra space in the beige area -->
  <div class="container my-5">
    <div class="row">-->


      
      
      
   <!-- </div>-->
 <!-- </div>-->
<!--</div>-->
</section>
 
</div>


<div class="white-background">
  <!-- Horizontal dividing line -->
  <hr style="border-top: 10px solid #ffffff;">
  
</div>


<div class="white-background">

<!-- information for ID and criminal record-->
<div class="white-background">
  <!-- Horizontal dividing line -->
  <hr style="border-top: 1px solid #ffffff; ">

  
  <h4 class="card-title"  style="margin-left: 6.5cm;" >Petsitter in the Moschato area</h4>

</div>

<div class="position-relative" style="z-index: 1; text-align: left; margin-left: 250px; margin-top:0.5cm; margin-bottom: 0.6cm;"

        <h5 style="font-size: 20px; line-height: 1.7;"> 
        
          <img width="25" height="25"  src="../images/verification.jpg" >
          Official Identification Document

        </h5>

        <h5 style="font-size: 16px; line-height: 1.5;"> 
        
          
          The user Maria has successfully provided an official identification document.

        </h5>

        <h5 style="font-size: 20px; line-height: 1.7;"> 
        
          <img width="25" height="25"  src="../images/paper.jpg" >
          Criminal Record Copy

        </h5>

        <h5 style="font-size: 16px; line-height: 1.5;"> 
        
          Help2pet has verified a Criminal Record Copy of the user Maria.
         (Issued on: September 29, 2023)

        </h5>
      
      

</div>





<!-- Horizontal divider line -->
<!--<hr style="border-top: 10px solid #ffffff;">-->
<!-- Table with information -->
<div style="background-color:#eee5d8 ; padding: 10px; border: 2px solid #ccc; width: 77%; margin-bottom: 0.4cm;  margin-left: 4.6cm;  border-radius: 20px;">

  <div class="profile-properties bg-light-grey rounded-2">

    <div class="row">

            <div class="col-sm-6">
                <div class="summary-item active">
                    <div class="icon">
                        <i class="fas fa-car-side fa-fw"></i>
                    </div>
                    <div class="content">
                        <div class="title">Car: Yes</div>
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="summary-item">
                    <div class="icon">
                        <i class="fa fa-paw" aria-hidden="true"></i>
                    </div>  
                    <div class="content">
                        <div class="title">
                        I have a pet: Yes</div>   
                    </div>
                </div>
            </div>

            <div class="col-sm-6">
                <div class="summary-item">
                    <div class="icon">
                        <i class="fas fa-smoking fa-fw"></i>
                    </div>
                    <div class="content">
                        <div class="title">Smoker: No</div>
                    </div>
                </div>
            </div>

        <div class="col-sm-6">
            <div class="summary-item">
                <div class="icon">
                    <i class="fas fa-house fa-fw"></i>
                </div>
                <div class="content">
                    <div class="title">Pet Sitting Location</div>
                    <div class="status">
                        At family’s house
                    </div>
                </div>
            </div>
        </div>

                    <div class="col-sm-6">
                <div class="summary-item">
                    <div class="icon">
                        <i class="fas fa-language fa-fw"></i>
                    </div>
                    <div class="content">
                        <div class="title">
                        Languages I speak:
                                                    </div>
                        <div class="status">
                            <ul class="m-0 ps-0 list-unstyled">
                                                                    <li>English</li>
                                                                    <li>French</li>
                                                                    <li>Greek</li>
                                                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        
        <div class="col-sm-6">
            <div class="summary-item">
                <div class="icon">
                    <i class="fas fa-heart fa-fw"></i>
                </div>
                <div class="content">
                    <div class="title">Favorite:</div>
                    <div class="status">
                        4 times
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

</div>

  
  <!-- For safety-->

  <div style="background-color:#ffffff ; padding: 10px; border: 2px solid #ccc; width: 77%; margin: 0 auto;  border-radius: 20px;">
    <img width="30" height="30"  src="../images/security.webp" >
  For your safety and protection, pay and communicate only through Help2pet. Never share your personal details like identification documents and bank details with someone you have never met. 
</div>
  <!-- For safety-->
  <div class="white-background">
    <!-- Horizontal divider line -->
    <hr style="border-top: 10px solid #ffffff;">
    
  </div>


</div>


<!-- Frame with availability-->
<div class="row pt-3 w-100">
  
<!--<div class="card custom-card ">-->
  <div style="background-color: white; padding: 10px; border: 2px solid #ccc; width: 77%; margin: auto; border-radius: 20px;">
    <div class="position-relative" style="z-index: 1; text-align: left; margin-left: 20px; margin-top: 1rem;
  
 <hr class="divider">


<!--availability-->


                                                            <div class="availability">
                                    <h2>
                                                                                    Availability
                                                                            </h2>
                                    <div class="mb-2">
                                        <div class="table-responsive">

                                            
                                            <table class="table table-borderless table-sm">
                                                <tr>
                                                    <td class="ps-0"></td>
                                                                                                            <th class="day">Mon</th>
                                                                                                            <th class="day">Tue</th>
                                                                                                            <th class="day">Wed</th>
                                                                                                            <th class="day">Thu</th>
                                                                                                            <th class="day">Fri</th>
                                                                                                            <th class="day">Sat</th>
                                                                                                            <th class="day">Sun</th>
                                                                                                    </tr>
                                                <tr>
                                                    <th class="ps-0">Morning</th>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                    </tr>
                                                <tr>
                                                    <th class="ps-0">Afternoon</th>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                            <td class="available"><i class="fas fa-square-check"></i></td>
                                                                                                    </tr>
                                                <tr>
                                                    <th class="ps-0">Evening</th>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                    </tr>
                                                <tr>
                                                    <th class="ps-0">Night</th>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                            <td class="unavailable"><i class="fas fa-square"></i></td>
                                                                                                    </tr>
                                            </table>
                                        </div>
                                    </div>
                                    <div><small>Updated: 23 October 2023</small></div>
                                </div>




                                <hr class="divider"/>
                       <!-- End of white frame-->   

                      </div>                
                    </div>
                  </div>
                
<!-- End of beige frame-->


<div class="white-background">
  <!-- Horizontal divider line -->
  <hr style="border-top: 1px solid #d8ae6f;">


  <!-- Comments -->
  <section class="container mt-5 pt-3 margin-right 30">
    <h2 class="font-weight-bold nan-landing-heading">2 Reviews (5.0)</h2>
    
    <img width="147,2" height="25,6"  src="../images/star5.jpg"  >
    
   <div class="row pt-3 w-100">
      
          <div class="card custom-card">

            <div class="position-relative" style="z-index: 1; text-align: left; margin-left: 30px; margin-top: 1rem;">
        <img width="40" height="40" loading="lazy" src="../images/fotoprofil.jpg" class="nan-how-img" alt />
        <img width="73,6" height="12,8" src="../images/star5.jpg" >
        <div class="border-0 d-flex flex-column align-items-center">
          <span style="margin-bottom: 20px;" class="nan-how-card-title">Anna Papadaki</span>
        </div>
          <p class="pt-1 px-2 nan-how-card-title">I have only good things to say about Maria! She is honest, punctual, and very careful with her duties!</p>
        </div>

      
    </div>

    <div class="col-md nan-how-card">
        <div class="card custom-card">
          <div class="position-relative" style="z-index: 1; text-align: left; margin-left: 30px; margin-top: 1rem;">
        <img width="40" height="40" loading="lazy" src="../images/fotoprofil1.jpg" class="nan-how-img" alt />
        <img width="73,6" height="12,8" src="../images/star5.jpg" >
        <div class="border-0 d-flex flex-column align-items-center ">
          <span style="margin-bottom: 20px;" class="nan-how-card-title">Fotis Kamas</span>
        </div>
          <p class="pt-1 px-2 nan-how-card-title">Maria is a responsible person who truly cares about animals. She is very careful and easy to communicate with.</p>
        </div>
      </div>
  

    </div>

      
  </div>

  <div class="white-background">
    <hr style="border-top: 1px solid #ffffff;">
   
  </div>
  
    
<!-- RATING -->

    <button type="button" class="btn btn-danger custom-button2" data-toggle="modal" data-target="#form2" style="background-color: #ffa500; border-radius: 20px;">
      Make your own review
    </button>
    
    <div class="modal fade2" id="form2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered2" role="document">
          <div class="modal-content">

            <div class="modal-header">
              <!-- Bootstrap close button -->
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
          </div>

              <div class="card-body text-center"> <img src="../images/petsitter.jpg" height="100" width="100" class="rounded-circle">
                  <div class="comment-box text-center">
                      <h4> Rate and comment on your experience with Petsitter Maria</h4>
                      <div class="rating">
                          <input type="radio" name="rating" value="5" id="star5">
                          <label for="star5">☆</label>
                          <input type="radio" name="rating" value="4" id="star4">
                          <label for="star4">☆</label>
                          <input type="radio" name="rating" value="3" id="star3">
                          <label for="star3">☆</label>
                          <input type="radio" name="rating" value="2" id="star2">
                          <label for="star2">☆</label>
                          <input type="radio" name="rating" value="1" id="star1">
                          <label for="star1">☆</label>
                      </div>
                      <div class="comment-area"> <textarea class="form-control" placeholder="What is your opinion?" rows="4"></textarea> </div>
                      <div class="text-center mt-4" > <button class="btn btn-success send px-5" style="background-color: #ffa500;" >
                       Submit
                        </button> </div>
                  </div>
              </div>
          </div>
      </div>
    </div>



 
  <!-- οριζόντια διαχωριστική γραμμή -->
  <div class="white-background">
    <hr style="border-top: 1px solid #ffffff;">
   
  </div>
</div>



</div>

<!-- Footer -->



</body> 

</html>
