<%-- 
    Document   : index
    Created on : Mar 26, 2021, 9:03:10 AM
    Author     : oluwaseke
--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Prediction Form</title>
    <link href="formstyle.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="index.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="testbox">
    <form action= "prediction.jsp" method="post" role="form">
        <div class="banner">
            <h1>Car Fuel Type Prediction Form</h1>
        </div>
        <p class="top-info">Please fill this form so we can determine your car fuel type</p>
        <div class="question">
            <p><strong>Metal Color</strong><span class="required">*</span></p>
            <div class="question-answer">
                <label><input type="radio" value="none" name="metcolor" required/> <span>True</span></label>
                <label><input type="radio" value="none" name="metcolor" required/> <span>False</span></label>
            </div>
        </div>
        <div class="item">
            <p><strong>Pick a color</strong></p>
            <select name="color">
                <option value=""> </option>
                <option value="1">Beige</option>
                <option value="2">Blue</option>
                <option value="3">Silver</option>
                <option value="4">Black</option>
                <option value="5">White</option>
                <option value="6">Grey</option>
                <option value="7">Red</option>
                <option value="8">Green</option>
            </select>
        </div>
        <div class="question">
            <p><strong>Board Computer</strong><span class="required">*</span></p>
            <div class="question-answer">
                <label><input type="radio" value="none" name="boardcomputer" required/> <span>True</span></label>
                <label><input type="radio" value="none" name="boardcomputer" required/> <span>False</span></label>
            </div>
        </div>
        <div class="question">
            <p><strong>Central Lock</strong><span class="required">*</span></p>
                <div class="question-answer">
                    <label><input type="radio" value="none" name="centrallock" required/> <span>True</span></label>
                    <label><input type="radio" value="none" name="centrallock" required/> <span>False</span></label>
                </div>
        </div>
        <div class="question">
            <p><strong>Powered Windows</strong><span class="required">*</span></p>
            <div class="question-answer">
                <label><input type="radio" value="none" name="poweredwindows" required/> <span>True</span></label>
                <label><input type="radio" value="none" name="poweredwindows" required/> <span>False</span></label>
            </div>
        </div>
        <div class="question">
            <p><strong>Metallic Rims</strong><span class="required">*</span></p>
            <div class="question-answer">
                <label><input type="radio" value="none" name="metallicrim" required/> <span>True</span></label>
                <label><input type="radio" value="none" name="metallicrim" required/> <span>False</span></label>
            </div>
        </div>
        <div class="question">
            <p><strong>Fuel Type</strong><span class="required">*</span></p>
            <div class="question-answer">
                <label><input type="radio" value="none" name="fueltype" required/> <span>Diesel</span></label>
                <label><input type="radio" value="none" name="fueltype" required/> <span>Petrol</span></label>
                <label><input type="radio" value="none" name="fueltype" required/> <span>CNG</span></label>
            </div>
        </div>
        <div class="btn-block">
            <button type="submit" href="/">Submit</button>
        </div>
    </form>
</div>
</body>
</html>