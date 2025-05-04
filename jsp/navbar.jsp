<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<head>
    <meta charset="UTF-8">
    <!-- CSS Bootstrap link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  
    <!-- JavaScript Bootstrap and Popper.js links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
    <title>Bootstrap Layout Example</title>
    <script src="https://kit.fontawesome.com/d885a307c3.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script> 
    <link href="../css/index.css" rel="stylesheet" type="text/css"/>
    
</head>


<style>


  /* ακολουθια navbar */
  .sticky-top {
    position: sticky;
    top: 0;
    z-index: 1000;
  }

  /* χρώμα navbar */
  .custom-navbar {
    background-color: #e8bc85; 
  }

  /* Στυλ για τον σύνδεσμο της γραμμής περιήγησης */
  .navbar-toggle {
    background-color: transparent; /* Καθιστά το φόντο διαφανές */
    border: none; /* Αφαιρεί το περίγραμμα (border) */
    padding: 0; /* Αφαιρεί τον χώρο ανά padding */
    outline: none; /* Αφαιρεί το περίγραμμα (outline) κατά το κλικ */
    color: #fabe19; /* Χρώμα εικονίδιου (ίδιο με το χρώμα του navbar) */
  }

  /* Στυλ για το εικονίδιο της γραμμής περιήγησης */
  .navbar-toggler-icon {
    background-color:#e8bc85 ; /* Χρώμα γραμμής περιήγησης (ίδιο με το χρώμα του navbar) */
    border: none; /* Αφαιρεί το περίγραμμα (border) */
  }

  /* Ευθυγράμμιση των στοιχείων οριζόντια */
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

  /* navbar μεγεθος γραμματοσειρών */
  .navbar-nav .nav-link {
    font-size: 20px; /* You can adjust the font size to your preference */
  }

</style>


<!-- Navbar -->

<nav class="navbar navbar-expand-lg navbar-light custom-navbar sticky-top">
  <div class="container d-flex justify-content-between">

      <div class="logo">
          <a href="index.jsp">
              <img src="../images/385520272_1998281757194190_8176637074659308130_n-removebg-preview.png" id="img-logo" alt="Company logo" width="100" height="50">
          </a>
      </div>

      
      <!-- Vertical line -->
      <div class="vertical-line"></div>   
      <div>
          <ul class="navbar-nav">
          <li class="nav-item">
          <a 10px="" :="" class="nav-link" href="showResults.jsp" style="margin-right: 30px;">
              Search petsitter
          </a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="createPetsitterProfile.jsp" style="margin-right: 30px;">
              Become a petsitter
          </a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="#" style="margin-right: 30px;">
              How it works
          </a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="#" style="margin-right: 30px;">
              <span style="display: inline-flex; align-items: center;">
              Help
              <img alt="Help" height="20" src="../images/help_icon-removebg-preview.png" style="margin-left: 5px;" width="40"/>
              </span>
          </a>
          </li>
          </ul>
      </div>

      <!-- Add "Log In" with underline and "Sign Up" inside a round box -->
      <ul class="navbar-nav">
      <li class="nav-item" style="margin-right: 5px;">
      <a class="nav-link" href="login.jsp" style="text-decoration: underline;">
      Log In
      </a>
      </li>
      <li class="nav-item">
      <a class="nav-link" href="register" style="background-color: #da7a0b; border: 1px solid #da7a0b; border-radius: 20px; padding: 5px 15px; color: white; margin-left: 10px;">
      Sign Up
      </a>
      </li>

      <!-- add heart to display "favorites"/saved people -->
      <li class="nav-item">
      <a class="nav-link" href="viewProfilePetowner.jsp" style="margin-left: 20px;">
         
      <img alt="profile" height="40" src="../images/fotoprofil1.jpg" width="40" style="border-radius: 50%;"/>
 
      </a>
      </li>
      </ul>
  </div>


  <!-- Link for the navigation bar toggle -->
  <button aria-label="Click to toggle navigation bar" class="navbar-toggle border-0" type="button">
      <span class="navbar-toggler-icon">
      </span>
  </button>
</nav>
