<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="classes.*" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.HttpServletRequest" %>



<!DOCTYPE html>
<%@ include file="navbar.jsp" %>
<head>
    <meta charset="UTF-8">
    <!-- CSS Bootstrap link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link ref="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link ref="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link ref="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <!-- JavaScript Bootstrap and Popper.js links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
    <title> Create Profile </title>
    <script src="https://kit.fontawesome.com/d885a307c3.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script> 
    <link rel="stylesheet" type="text/css" href="../css/createPetsitterProfile.css">

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
</head>

<%
    if (session.getAttribute("user") == null) {
        // Set an error message in the request attribute
        request.setAttribute("message", "You must first register or log in.");
  
        // Forward to the login page
        RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
        dispatcher.forward(request, response);
    }
    User user = (User) session.getAttribute("user");
%>
<!--<jsp:forward page="login.jsp" />-->
<%
    }
    User user = (User) session.getAttribute("user");
%>
<div class="container sign-up-mode">
    
<div class="container rounded bg-orange mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">

                <!-- Profile Image Section -->
                <img class="rounded-circle mt-5 profile-image" width="200px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg" id="profile-image">
                                 
                <!-- Upload Button Section -->
                <form id="profile-image-form" enctype="multipart/form-data">
                    <input type="file" id="profile-image-input" accept="image/*" style="display: none;">
                    <label for="profile-image-input" class="btn btn-primary mt-3" id="profile-image-input-label">Upload profile image</label>
                </form>
                <span class="text-black-50">nikospap123</span>
            </div>
        </div>
        
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">

                    <form action="createPetsitterProfile_Controller.jsp" method="post" class="sign-up-form">
                        <h4 class="text-right">Create Petsitter Profile</h4>
                </div>
                        <div class="row mt-3">
                            <div class="col-md-12"><label class="labels">Home Address:</label><input type="text" name = "address" class="form-control" placeholder="Home Address" value=""></div>
                            <div class="col-md-12"><label class="labels">Postal Code:</label><input type="text" name = "zip_code"class="form-control" placeholder="Postal Code" value=""></div>
                            <div class="col-md-12"><label class="labels">Area:</label><input type text="text" name = "area" class="form-control" placeholder="Where do you live?" value=""></div>
                            <div class="col-md-12"><label class="labels">Profession:</label><input type="text" name ="profession" class="form-control" placeholder="Profession" value=""></div>
                            <div class="col-md-12"><label class="labels">Date of Birth: </label><input type="date" name="DateOfBirth" id="Dateof" class="form-control" placeholder="Date of Birth">
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Gender:</label> <select class="form-control" name="gender">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="col-md-12">
                                <label class="labels">Price/Hour:</label> <input type="text" name= "price_hour" class="form-control" placeholder="Enter price in euros per hour">
                            </div>
                            
                        </div>                
            </div>
        </div>
                <div class="col-md-4">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center experience">
                            <span>Your experience</span>
                            <span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Add </span></div><br>
                        <div class="col-md-12"><label class="labels">Work Experience:</label><input type="text" name="experience_in_work" class="form-control" placeholder="Where you have worked" value=""></div> <br>
                        <div class="col-md-12">    
                        <label class="labels">About you:</label>
                            <textarea class="form-control" id="reason" name = "about_you" rows="4" placeholder="Tell us a few words about yourself and your skills."></textarea>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Interests:</label>
                            <input type="text" class="form-control" id="interests" name="interests" placeholder="Mention your interests">
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Reason for becoming a petsitter:</label>
                            <textarea class="form-control" id="reason" rows="4" name = "reasons" placeholder="Tell us why you decided to become a petsitter"></textarea>
                        </div>
                        
                        <div class="availability">
                            <label class="labels">Availability:</label>
                            <p>Please fill in the hours you are available according to the fields.</p>
                            <br>
                            <br>
                            <div class="mb-2">
                                <div class="table-responsive">
                                    <form>
                                        <table class="table table-borderless table-sm">
                                            <thead>
                                                <tr>
                                                    <th class="ps-0"></th>
                                                    <th class="day">Mon</th>
                                                    <th class="day">Tue</th>
                                                    <th class="day">Wed</th>
                                                    <th class="day">Thu</th>
                                                    <th class="day">Fri</th>
                                                    <th class="day">Sat</th>
                                                    <th class="day">Sun</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th class="ps-0">Morning</th>
                                                    <td class="available"><input type="checkbox" id="checkbox1" name="checkbox1"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox2" name="checkbox2"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox3" name="checkbox3"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox4" name="checkbox4"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox5" name="checkbox5"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox6" name="checkbox6"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox7" name="checkbox7"></td>
                                                </tr>
                                                <tr>
                                                    <th class="ps-0">Afternoon</th>
                                                    <td class="available"><input type="checkbox" id="checkbox8" name="checkbox8"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox9" name="checkbox9"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox10" name="checkbox10"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox11" name="checkbox11"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox12" name="checkbox12"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox13" name="checkbox13"></td>
                                                    <td class="available"><input type="checkbox" id="checkbox14" name="checkbox14"></td>
                                                </tr>
                                                <tr>
                                                    <th class="ps-0">Evening</th>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox15" name="checkbox15"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox16" name="checkbox16"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox17" name="checkbox17"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox18" name="checkbox18"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox19" name="checkbox19"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox20" name="checkbox20"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox21" name="checkbox21"></td>
                                                </tr>
                                                <tr>
                                                    <th class="ps-0">Night</th>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox22" name="checkbox22"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox23" name="checkbox23"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox24" name="checkbox24"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox25" name="checkbox25"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox26" name="checkbox26"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox27" name="checkbox27"></td>
                                                    <td class="unavailable"><input type="checkbox" id="checkbox28" name="checkbox28"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                </div>
                            </div>
                        </div>
                    </div>   
                </div>
    </div>
</div>

<div class="how-section1">
    <div class="row">
        <div class="col-md-6">
            <div class="col-md-6 migrated-style-12">
                <h1>
                    WE. <br>
                    LOVE. 
                    <div id="word-container">
                        pets
                    </div>
                </h1>
            </div>
            <script src="../js/createPetsitterProfile.js"></script>
        </div>
        <div class="col-md-6">
            <div class="container rounded bg-orange mt-5 mb-5">
                <h4 class="subheading">We want to get to know you better!</h4>
                <div class="row">
                    <div class="moreinfo">
                        <label for="smoker">Do you smoke? 
                            <input type="radio" id="smoker-yes" name="smoker" value="yes">Yes 
                            <input type="radio" id="smoker-no" name="smoker" value="no"> No
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="moreinfo">
                        <label for="drives">Do you drive? 
                            <input type="radio" id="drives-yes" name="drives" value="yes">Yes 
                            <input type="radio" id="drives-no" name="drives" value="no"> No
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="moreinfo">
                        <label for="pets">Do you have a pet/pets? 
                            <input type="radio" id="pets-yes" name="pets" value="yes">Yes 
                            <input type="radio" id="pets-no" name ="pets" value="no"> No
                        </label>
                    </div>
                </div>
                <div class="row">
                    <div class="moreinfo">
                        <label for="languages">Check the foreign languages you speak:</label>
                        <input type="radio" id="english" name="languages" value="english">English<br>
                        <input type="radio" id="espanol" name="languages" value="espanol">Spanish<br>
                        <input type="radio" id="france" name="languages" value="france">French<br>
                        <input type="radio" id="germain" name="languages" value="germain">German<br>
                        <input type="radio" id="italian" name="languages" value="italian">Italian<br>
                        <input type="radio" id="other" name="languages" value="other">Other<br>
                    </div>
                </div>                
            </div>
        </div>
    </div>
</div>
</div>
        <div class="mt-5 text-center">
            <button class="btn btn-primary profile-button" style="margin-bottom: 70px;" type="submit">
                Publish profile
            </button>
        </div>
</form>
</div>



<script>
    document.getElementById("profile-image-input").addEventListener("change", function (e) {
        const profileImage = document.getElementById("profile-image");
        const file = e.target.files[0];
    
        if (file) {
            const reader = new FileReader();
    
            reader.onload = function (e) {
                profileImage.src = e.target.result;
            };
    
            reader.readAsDataURL(file);
        }
    });
</script>


<!-- Footer -->
<footer class="bg-dark text-light text-center migrated-style-35">
    <div class="container py-4">
     <div class="row">

      <!-- help2pet στήλη -->
        <!-- help2pet column -->
  <div class="col-md-3">
    <h5>
     help2pet
    </h5>
    <ul class="list-unstyled">
     <li>
      <a href="#">
       How it works?
      </a>
     </li>
     <li>
      <a href="#">
       Help
      </a>
     </li>
     <li>
      <a href="#">
       Terms and Privacy
      </a>
     </li>
     <li>
      <a href="#">
       Trust and Safety
      </a>
     </li>
     <li>
      <a href="#">
       Pricing
      </a>
     </li>
    </ul>
   </div>
 
   <!-- about us column -->
   <div class="col-md-3">
    <h5>
     Discover
    </h5>
    <ul class="list-unstyled">
     <li>
      <a href="#">
     About Us
      </a>
     </li>
     <li>
      <a href="#">
       Tips & Articles
      </a>
     </li>
     <li>
      <a href="#">
       Community Terms
      </a>
     </li>
     <li>
      <a href="#">
       Frequently Asked Questions
      </a>
     </li>
    </ul>
   </div>
 
   <!-- Contact column -->
   <div class="col-md-3">
    <h5>
     Contact
    </h5>
    <address>
     Address: Sample Street 123, Athens
     <br/>
     Email: info@help2pet.com
     <br/>
     Phone: +30 123 456 7890
    </address>
   </div>
 
   <!-- Links column -->
   <div class="col-md-3">
    <h5>
     Links
    </h5>
    <ul class="list-unstyled">
     <li>
      <a href="index.html">
       Home
      </a>
     </li>
     <li>
      <a href="showResults.html">
       Search petsitter
      </a>
     </li>
     <li>
      <a href="createPetsitterProfile.html">
       Become a petsitter
      </a>
     </li>
     <li>
      <a href="#">
       How it works
      </a>
     </li>
     <li>
      <a href="#">
       Help
      </a>
     </li>
    </ul>
   </div>
  </div>
 
  <!-- Follow us on social media with a separator line-->
  <div class="col-md-4 mx-auto text-center border-top">
   <h5>
    Follow us on:
   </h5>
   <ul class="list-inline">
    <li class="list-inline-item">
     <a href="#">
      <i class="fab fa-facebook fa-3x">
      </i>
     </a>
    </li>
    <li class="list-inline-item">
     <a href="#">
      <i class="fab fa-twitter fa-3x">
      </i>
     </a>
    </li>
    <li class="list-inline-item">
     <a href="#">
      <i class="fab fa-instagram fa-3x">
      </i>
     </a>
    </li>
    <li class="list-inline-item">
     <a href="#">
      <i class="fab fa-youtube fa-3x">
      </i>
     </a>
    </li>
    <li class="list-inline-item">
     <a href="#">
      <i class="fab fa-pinterest fa-3x">
      </i>
     </a>
    </li>
    <li class="list-inline-item">
     <a href="#">
      <i class="fab fa-tiktok fa-3x">
      </i>
     </a>
    </li>
   </ul>
  </div>
 
  <!-- Company name and copyright element -->
  <div class="container text-center my-4">
   <p>
    <span class="migrated-style-36">
     © 2023
    </span>
    <span class="migrated-style-37">
     help2pet.
    </span>
    <span class="migrated-style-38">
     All Rights Reserved.
    </span>
    <span class="migrated-style-39">
     |
    </span>
    <a href="#">
     FAQ
    </a>
    <span class="migrated-style-40">
     |
    </span>
    <a href="#">
     Terms of Use
    </a>
    <span class="migrated-style-41">
     |
    </span>
    <a href="#">
     Privacy Policy
    </a>
    <span class="migrated-style-42">
     |
    </span>
    <a href="#">
     Cookies
    </a>
    <span class="migrated-style-43">
     |
    </span>
    <a href="#">
     Digital Services Act
    </a>
   </p>
  </div>
 </div> 
</footer>