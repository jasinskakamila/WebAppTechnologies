<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="classes.*" %>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.HttpServletRequest,java.time.LocalDate" %>


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
    <title>Create Petsitter Profile Controller</title>
</head>

<body>

    <%! 

    private Map<String, List<Boolean>> extractAvailability(HttpServletRequest request) {
        Map<String, List<Boolean>> availability = new HashMap<String, List<Boolean>>();
        String[] timesOfDay = {"Morning", "Noon", "Afternoon", "Evening"};
        int checkboxesPerDay = 7; // Number of checkboxes per day

        for (String time : timesOfDay) {
            List<Boolean> dailyAvailability = new ArrayList<Boolean>();
            for (int i = 1; i <= checkboxesPerDay; i++) {
                String checkboxName = "checkbox" + ((timesOfDay.length - 1) * checkboxesPerDay + i);
                dailyAvailability.add(request.getParameter(checkboxName) != null);
            }
            availability.put(time, dailyAvailability);
        }
        return availability;
    }
    private void processAndAddAvailability(int userId, Map<String, List<Boolean>> availability, AvailabilityDao availabilityDao) throws Exception {
            String[] daysOfWeek = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"};
            String[] timesOfDay = {"Morning", "Noon", "Afternoon", "Evening"};

            for (int i = 0; i < timesOfDay.length; i++) {
                List<Boolean> dailyAvailability = availability.get(timesOfDay[i]);
                for (int j = 0; j < dailyAvailability.size(); j++) {
                    if (dailyAvailability.get(j)) {
                        String day = daysOfWeek[j];
                        String time = timesOfDay[i];
                        availabilityDao.addAvailability(userId, day, time);
                    }
                }
            }
    }

    %>
    <%
    User user = (User) session.getAttribute("user");
    // take all form parameters
    String address = request.getParameter("address");
    String zip_code = request.getParameter("zip_code");
    String area = request.getParameter("area");
    String profession = request.getParameter("profession");
    String DateOfBirth = request.getParameter("DateOfBirth");
    String gender = request.getParameter("gender");
    String price_hour= request.getParameter("price_hour");


    String experience_in_work = request.getParameter("experience_in_work");
    String about_you = request.getParameter("about_you");
    String interests = request.getParameter("interests");
    String reason = request.getParameter("reasons");


    Map<String, List<Boolean>> availability = extractAvailability(request);


    String smoker = request.getParameter("smoker");
    String drives = request.getParameter("drives");
    String pets = request.getParameter("pets");
    String[] languages = request.getParameterValues("languages");



    List<String> errors = new ArrayList<String>();


    if (zip_code == null || zip_code.length() != 5) {
        errors.add("<li>The postal code must be 5 characters long.</li>");
    }%>

    <% if (errors.isEmpty()) {

        // create PetsitterDAO object
        PetsitterDAO petsitterDAO = new PetsitterDAO();

        // call the save method to save the new petsitter data
        try {
            int zipcodeInt = Integer.parseInt(zip_code);
            LocalDate dob = LocalDate.parse(DateOfBirth); // Ensure DateOfBirth is in a format that can be parsed
            boolean genderBool = gender.equals("male"); // Assuming 'male' or 'female' values
            int priceHourInt = Integer.parseInt(price_hour);

            // Concatenate languages into a single string
            String languagesCombined = String.join(", ", languages);

            // Call the savePetsitter method
            Petsitter petsitter = petsitterDAO.savePetsitter(user, address, zipcodeInt, area, profession, dob, genderBool, priceHourInt, experience_in_work, about_you, interests, reason, smoker.equals("yes"), drives.equals("yes"), pets.equals("yes"), languagesCombined);

            //At this point we have created the petsitter profile in the database but we dont have the id of the petsitter
            //Lets get the id of the petsitter
            int petsitterId = petsitterDAO.getPetsitterIdByUserId(user.getId());
            petsitter.setId(petsitterId);
            if (petsitter != null) {
                session.setAttribute("petsitter", petsitter);
                //Lets now add the availability of the petsitter
                AvailabilityDao availabilityDao = new AvailabilityDao();
                processAndAddAvailability(petsitter.getId(), availability, availabilityDao);

            } else {
            }
            
        } catch (Exception e) {

            request.setAttribute("errors", e.getMessage());
    %>
    <a><%=e.getMessage()%></a>
<%--    <jsp:forward page ="createPetsitterProfile.jsp"/>--%>
    <% 

        }

    }

    else {
        %>

<%--        request.setAttribute("errors", errors);--%>
<%--    <jsp:forward page="createPetsitterProfile.jsp"/>--%>
    <%
    }
    %>

</body>
