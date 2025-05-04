<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="classes.*" %>
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="help2pet.*" %>


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

    String username = request.getParameter("usernameLog");
    String password = request.getParameter("passwordLog");

    //create userdao object
    UserDAO userDAO = new UserDAO();

    try {

        User user = userDAO.authenticate(username, password);

        if (user == null) {

            // Authentication failed
            request.setAttribute("message", "Incorrect username or password.");

            RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
            dispatcher.forward(request, response);

        } else {
            
            // Successful authentication
            session.setAttribute("user", user);

            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
            
        }

    } catch (Exception e) {

        request.setAttribute("errorMessage", e.getMessage());

        %>
        <jsp:forward page ="register.jsp" />
        <%

    }
    %>
