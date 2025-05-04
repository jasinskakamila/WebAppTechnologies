<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <!-- CSS Bootstrap link -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"/>
    <!-- JavaScript Bootstrap and Popper.js links -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
    </script>
    <title>
    Αρχική 
    </title>
    <script crossorigin="anonymous" src="https://kit.fontawesome.com/d885a307c3.js">
    </script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="../css/index.css" rel="stylesheet" type="text/css"/>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

</head>


<body>
    <%@ include file="navbar.jsp" %>
    

    <!-- Box under the navbar - search and image -->
    <div class="container my-5 position-relative">
        <div class="row">
            <% 
            if (request.getAttribute("successMessage") != null) { %>
                <div class="success-message">
                    <%= request.getAttribute("successMessage") %>
                </div>
                <meta http-equiv="refresh" content="4;url=index.jsp" />
            <% 
            } %> 


            <!-- Text and Search Form -->
            <div class="col-md-6">
                <div class="position-relative migrated-style-11">
                    <h1 class="migrated-style-12">
                        <div id="word-container">
                            Word
                        </div>
                        <script src="../js/index.js"></script>
                        <div id="word-container">
                            <span id="static-words">your <i>pets</i> </span>
                        </div>
                    </h1>
                    <p class="migrated-style-13">
                    Quick Search
                    </p>
                    <form class="form-inline">
                        <div class="box">
                            <input placeholder="Area or ZIP" type="text"/>
                            <a href="#">
                                <i class="fas fa-search"></i>
                            </a>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Background Image -->
            <div class="col-md-6">
                <img alt="Your image description" class="img-fluid migrated-style-14" src="../images/dog_png-removebg-preview.png"></img>
            </div>
        </div>
    </div>
    <div class="white-background">

        <!-- Horizontal divider -->
        <hr class="migrated-style-15"/>

        <!-- Introduction above the cards -->
        <div class="container my-4">
            <p class="migrated-style-16">
            </p>
            <h2>
            Meet some of our petsitters:
            </h2>
        </div>

        <!-- Cards -->
    
        <div class="container">
            <div class="row">
            <div class="col-md-4">
                <a href="your-link.html">
                <div class="card user-card">
                        <div class="card-header">
                            <h5>Profile</h5>
                        </div>
                        <div class="card-block">
                            <div class="user-image">
                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png" class="img-radius" alt="User-Profile-Image">
                            </div>
                            <h6 class="f-w-600 m-t-25 m-b-10">Alessa Robert</h6>
                            <p class="text-muted">Active | Male | Born 23.05.1992</p>
                            <hr>
                            <p class="text-muted m-t-15">Activity Level: 87%</p>
                            <ul class="list-unstyled activity-leval">
                                <li class="active"></li>
                                <li class="active"></li>
                                <li class="active"></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <div class="bg-c-blue counter-block m-t-10 p-20">
                                <div class="row">
                                    <div class="col-4">
                                        <i class="fa fa-comment"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                    <div class="col-4">
                                        <i class="fa fa-user"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                    <div class="col-4">
                                        <i class="fa fa-suitcase"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                </div>
                            </div>
                            <p class="m-t-15 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <hr>
                            <div class="row justify-content-center user-social-link">
                                <div class="col-auto"><a href="#!"><i class="fa fa-facebook text-facebook"></i></a></div>
                                <div class="col-auto"><a href="#!"><i class="fa fa-twitter text-twitter"></i></a></div>
                                <div class="col-auto"><a href="#!"><i class="fa fa-dribbble text-dribbble"></i></a></div>
                            </div>
                        </div>
                    </div>
                </a>
                </div>
                
                <div class="col-md-4">
                <a href="your-link.html">
                    <div class="card user-card">
                        <div class="card-header">
                            <h5>Profile</h5>
                        </div>
                        <div class="card-block">
                            <div class="user-image">
                                <img src="https://bootdey.com/img/Content/avatar/avatar6.png" class="img-radius" alt="User-Profile-Image">
                            </div>
                            <h6 class="f-w-600 m-t-25 m-b-10">Alessa Robert</h6>
                            <p class="text-muted">Active | Male | Born 23.05.1992</p>
                            <hr>
                            <p class="text-muted m-t-15">Activity Level: 87%</p>
                            <ul class="list-unstyled activity-leval">
                                <li class="active"></li>
                                <li class="active"></li>
                                <li class="active"></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <div class="bg-c-green counter-block m-t-10 p-20">
                                <div class="row">
                                    <div class="col-4">
                                        <i class="fa fa-comment"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                    <div class="col-4">
                                        <i class="fa fa-user"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                    <div class="col-4">
                                        <i class="fa fa-suitcase"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                </div>
                            </div>
                            <p class="m-t-15 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <hr>
                            <div class="row justify-content-center user-social-link">
                                <div class="col-auto"><a href="#!"><i class="fa fa-facebook text-facebook"></i></a></div>
                                <div class="col-auto"><a href="#!"><i class="fa fa-twitter text-twitter"></i></a></div>
                                <div class="col-auto"><a href="#!"><i class="fa fa-dribbble text-dribbble"></i></a></div>
                            </div>
                        </div>
                    </div>
                </a>
                </div>
                
                <div class="col-md-4">
                <a href="your-link.html">
                    <div class="card user-card">
                        <div class="card-header">
                            <h5>Profile</h5>
                        </div>
                        <div class="card-block">
                            <div class="user-image">
                                <img src="https://bootdey.com/img/Content/avatar/avatar1.png" class="img-radius" alt="User-Profile-Image">
                            </div>
                            <h6 class="f-w-600 m-t-25 m-b-10">Alessa Robert</h6>
                            <p class="text-muted">Active | Male | Born 23.05.1992</p>
                            <hr>
                            <p class="text-muted m-t-15">Activity Level: 87%</p>
                            <ul class="list-unstyled activity-leval">
                                <li class="active"></li>
                                <li class="active"></li>
                                <li class="active"></li>
                                <li></li>
                                <li></li>
                            </ul>
                            <div class="bg-c-yellow counter-block m-t-10 p-20">
                                <div class="row">
                                    <div class="col-4">
                                        <i class="fa fa-comment"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                    <div class="col-4">
                                        <i class="fa fa-user"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                    <div class="col-4">
                                        <i class="fa fa-suitcase"></i>
                                        <p class="white-text">8562</p>
                                    </div>
                                </div>
                            </div>
                            <p class="m-t-15 text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <hr>
                            <div class="row justify-content-center user-social-link">
                                <div class="col-auto"><a href="#!"><i class="fa fa-facebook text-facebook"></i></a></div>
                                <div class="col-auto"><a href="#!"><i class="fa fa-twitter text-twitter"></i></a></div>
                                <div class="col-auto"><a href="#!"><i class="fa fa-dribbble text-dribbble"></i></a></div>
                            </div>
                        </div>
                    </div>
                </a>
                </div>
            </div>
        </div>


        <!-- text under the cards in the center of the page -->
<div class="text-center my-2"></div>
<div class="col-12 text-center my-3">
    <a class="migrated-style-22" href="showResults.jsp" id="round">
    See all pet sitting ads
    </a>
</div>
</div>


<!-- first icon and information box -->
<div class="row">
    <div class="col-md-4 text-center">
        <div class="icon mb-4">
        <img height="100" src="../images/food.png" width="100"/>
        </div>
        <h2 class="text-start">
        Desired daily food
        </h2>
        <p class="fw-normal text-start">
        It is common to overfeed our little friends without considering the consequences on their health. By clicking the link, you can learn everything about food and portions.
        </p>
        <div class="text-start">
        <small>
        <a class="fw-normal text-dark" href="#">
        Learn more
        </a>
        </small>
        </div>
    </div>

    <!-- second icon and information box -->
    <div class="col-md-4 text-center">
        <div class="icon mb-4">
        <img height="100" src="../images/vaccine.webp" width="100"/>
        </div>
        <h2 class="text-start">
        Safety and Vaccines
        </h2>
        <p class="fw-normal text-start">
        It is often observed that the recommended vaccines and visits to the veterinarian are ignored, leading to painful diseases that can even result in death. Learn how to protect your friend.
        </p>
        <div class="text-start">
        <small>
        <a class="text-dark" href="#">
        Learn more
        </a>
        </small>
        </div>
    </div>

    <!-- third icon and information box -->
    <div class="col-md-4 text-center">
        <div class="icon mb-4">
        <img height="100" src="../images/stray animals.jpeg" width="100"/>
        </div>
        <h2 class="text-start">
        Adopt/Foster too!
        </h2>
        <p class="fw-normal text-start">
        Give the joy and love that our little friends deserve! On this specific link, you will find the necessary instructions to foster, adopt, or volunteer for stray animals in need.
        </p>
        <div class="text-start">

        <!-- Add "text-start" to align the text -->
        <small>
        <a class="fw-normal text-dark" href="#">
        Learn more
        </a>
        </small>
        </div>
    </div>
</div>

<div class="white-background">

    <!-- Horizontal separator line -->
    <hr class="migrated-style-23"/>

    <!-- Three simple functions to understand how it works -->
    <section class="container mt-5 pt-3 text-center">
        <h2 class="font-weight-bold nan-landing-heading">
        Find reliable help or work in 3 easy steps
        </h2>
        <div class="row pt-3 w-100">
        <div class="col-md nan-how-card">
        <img alt="" class="nan-how-img" height="150" loading="lazy" src="../images/smartsearch2-removebg-preview.png" width="150"/>
        <div class="border-0 d-flex flex-column align-items-center">
        <span class="nan-how-card-title migrated-style-24">
            Smart search
        </span>
        <p class="pt-1 px-2 nan-how-card-title">
            With smart tools, searching for a petsitter or work in your area becomes easy and fast.
        </p>
        </div>
        </div>
        <div class="col-md nan-how-card">
        <img alt="" class="nan-how-img" height="150" loading="lazy" src="../images/verifiedprof2-removebg-preview.png" width="150"/>
        <div class="border-0 d-flex flex-column align-items-center">
        <span class="nan-how-card-title migrated-style-25">
            Reliable profiles
        </span>
        <p class="pt-1 px-2 nan-how-card-title">
            Petsitter profiles are certified and valid.
        </p>
        </div>
        </div>
        <div class="col-md nan-how-card">
        <img alt="" class="nan-how-img" height="150" loading="lazy" src="../images/rate.jpeg" width="150"/>
        <div class="border-0 d-flex flex-column align-items-center">
        <span class="nan-how-card-title migrated-style-26">
            Evaluation
        </span>
        <p class="pt-1 px-2 nan-how-card-title">
            Write your own review after your collaboration. The best stand out!
        </p>
        </div>
        </div>
        </div>
        <li class="nav-item">
        <a class="nav-link migrated-style-27" href="register.jsp">
        Register for free
        </a>
        </li>
    </section>

    <!-- horizontal separator line -->
    <div class="white-background">
        <hr class="migrated-style-28"/>
    </div>
</div>

<!-- Why they trust us -->
<div class="plirofories">

    <h2 class="font-weight-bold nan-landing-heading">
        Why they trust us:
    </h2>
    <div class="row pt-3 w-100">
        <div class="col-xl-4 col-md-4 col-12 mb-md-3 mb-3 px-4 px-sm-5 px-md-3 px-lg-5">
        <div class="d-flex justify-content-center align-items-center">
        <img alt="Verification process" class="" height="80px" loading="lazy" src="../images/key-removebg-preview.png" width="80px"/>
        </div>
        <div class="border-0 d-flex flex-column mt-3">
        <span class="text-center text-md-left px-lg-1 migrated-style-29">
        <strong>
            Secure Connection
        </strong>
        </span>
        <p class="pt-1 text-center text-md-left px-lg-1">
        Your details are protected. You can browse without stress.
        </p>
        </div>
        </div>
        <div class="col-xl-4 col-md-4 col-12 mb-md-3 mb-3 px-4 px-sm-5 px-md-3 px-lg-5">
        <div class="d-flex justify-content-center align-items-center">
        <img alt="Meeting with candidates" class="" height="100px" loading="lazy" src="../images/chat-removebg-preview.png" width="100px"/>
        </div>
        <div class="border-0 d-flex flex-column mt-3">
        <span class="text-center text-md-left px-lg-1 migrated-style-30">
        <strong>
            Meeting with candidates
        </strong>
        </span>
        <p class="pt-1 text-center text-md-left px-lg-1">
        Feel safe as we have met them in person.
        </p>
        </div>
        </div>
        <div class="col-xl-4 col-md-4 col-12 mb-md-3 mb-3 px-4 px-sm-5 px-md-3 px-lg-5">
        <div class="d-flex justify-content-center align-items-center">
        <img alt="Ratings from families" class="" height="120px" loading="lazy" src="../images/rating2-removebg-preview.png" width="150px"/>
        </div>
        <div class="border-0 d-flex flex-column mt-3">
        <span class="text-center text-md-left px-lg-1 migrated-style-31">
        <strong>
            Reviews from previous Petowners
        </strong>
        </span>
        <p class="pt-1 text-center text-md-left px-lg-1">
        Read reviews from other families before your meeting.
        </p>
        </div>
        </div>
        <div class="col-xl-4 col-md-4 col-12 mb-md-3 mb-3 px-4 px-sm-5 px-md-3 px-lg-5">
        <div class="d-flex justify-content-center align-items-center">
        <img alt="Security safeguards" class="" height="80px" loading="lazy" src="../images/tik-removebg-preview.png" width="100px"/>
        </div>
        <div class="border-0 d-flex flex-column mt-3">
        <span class="text-center text-md-left px-lg-1 migrated-style-32">
        <strong>
            Security safeguards
        </strong>
        </span>
        <p class="pt-1 text-center text-md-left px-lg-1">
        We have created mechanisms to highlight or remove petsitters.
        </p>
        </div>
        </div>
        <div class="col-xl-4 col-md-4 col-12 mb-md-3 mb-3 px-4 px-sm-5 px-md-3 px-lg-5">
        <div class="d-flex justify-content-center align-items-center">
        <img alt="User-friendly tools" class="" height="80px" loading="lazy" src="../images/searchpet-removebg-preview.png" width="100px"/>
        </div>
        <div class="border-0 d-flex flex-column mt-3">
        <span class="text-center text-md-left px-lg-1 migrated-style-33">
        <strong>
            Certified petsitter profiles
        </strong>
        </span>
        <p class="pt-1 text-center text-md-left px-lg-1">
        Use filters to find the right professional more specifically.
        </p>
        </div>
        </div>
        <div class="col-xl-4 col-md-4 col-12 mb-md-3 mb-3 px-4 px-sm-5 px-md-3 px-lg-5">
        <div class="d-flex justify-content-center align-items-center">
        <img alt="A solution for everyone" class="" height="80px" loading="lazy" src="../images/profiles2-removebg-preview.png" width="100px"/>
        </div>
        <div class="border-0 d-flex flex-column mt-3">
        <span class="text-center text-md-left px-lg-1 migrated-style-34">
        <strong>
            A solution for everyone
        </strong>
        </span>
        <p class="pt-1 text-center text-md-left px-lg-1">
        We are constantly looking for new profiles of people to always have options.
        </p>
        </div>
        </div>
    </div>
</div>

<!-- Footer -->
<%@ include file="footer.jsp" %>

   
</body>

</html>