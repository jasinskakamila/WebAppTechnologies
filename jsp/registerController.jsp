<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="classes.*" %>
<%@ page import="java.io.*,java.util.*" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="../css/login.css" />
    <title>Register Controller</title>
</head>

<body> 

    <% 
    // take all form parameters 
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String firstName = request.getParameter("firstName");
    String lastName = request.getParameter("lastName");
    String password = request.getParameter("password");
    String confirm = request.getParameter("verifyPassword");
    String phoneNum = request.getParameter("phoneNum");
    
    //validation 
    String errorMessage="";
    if (username == null || username.length() < 5 ) {
        errorMessage += "<li>The username must be at least 5 characters long.</li>";
    }
    
    if (password == null || password.length() <6 ) {
        errorMessage += "<li>The password must be at least 6 characters long.</li>";
    }

    if (confirm == null || !confirm.equals(password) ) {
        errorMessage += "<li>The password and password confirmation do not match.</li>";
    }

    if (errorMessage.isEmpty()) {

        // create UserDAO object 
        UserDAO userDAO = new UserDAO();

        // call the save method to save the new user data
        try {

            User user = userDAO.saveUser(username, password, firstName, lastName, email, phoneNum);

            // make the connection of the user a session attribute
            session.setAttribute("user", user);

            request.setAttribute("successMessage", "Registration was successful");
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {

            request.setAttribute("errorMessage", e.getMessage());
            %>
            <jsp:forward page ="register.jsp" />
            <%
        }


        
    } else { 
        request.setAttribute("errorMessage", errorMessage);
        %>
        <jsp:forward page ="register.jsp" />
        <%
    }
    %>
