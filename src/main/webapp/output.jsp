<%-- 
    Document   : output
    Created on : Mar 26, 2021, 10:26:42 AM
    Author     : oluwaseke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Home</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">>
<link href="index.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
    body,h1 {font-family: "Raleway", sans-serif}
    body, html {height: 100%}
    .bgimg {
        background-image: url("cars2.jpg");
        min-height: 100%;
        background-position: center;
        background-size: cover;
    }
</style>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">
    <div class="w3-display-middle">
        <h1 class="w3-xlarge w3-animate-top" >The result of your prediction is</h1>
        <hr class="w3-border-grey" style="margin:auto;width:40%">
        <br><br><br><br><br><br><br><br>
        <p class="w3-large w3-center"><% out.print(session.getAttribute("Name")); %></p>
    </div>
    <div class="w3-bottom w3-hide-small">
        <div class="w3-bar w3-white w3-center w3-padding w3-opacity-min w3-hover-opacity-off">
            <a href="index.html" style="width:50%" class="w3-bar-item w3-button">Home</a>
            <a href="index.jsp" style="width:50%" class="w3-bar-item w3-button" target="_blank">Prediction Form</a>
            <!--<a href="#wedding" style="width:25%" class="w3-bar-item w3-button">Wedding</a>
            <a href="#rsvp" style="width:25%" class="w3-bar-item w3-button w3-hover-black">RSVP</a><-->
        </div>
    </div>
    <!--<div class="w3-display-bottomleft w3-padding-large">
        Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a>
    </div><-->
</div>

</body>
</html>
