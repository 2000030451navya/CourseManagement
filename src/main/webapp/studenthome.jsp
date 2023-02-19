<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>STUDENTHOME</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="styles/reset.min.css" />
    <link rel="stylesheet" href="styles/style.css" />
    <link rel="stylesheet" href="styles/header-7.css" />
    <link rel="stylesheet" href="styles/dropdown.css" />
  </head>
  <body>
    <!-- Header Start -->
    <header class="site-header">
      <div class="wrapper site-header__wrapper">
        <div class="site-header__start">
          <a class="active" href="studenthome">HOME</a>
        </div>
        <div class="site-header__middle">
          <nav class="nav">
            <ul class="nav__wrapper">
  		      <li class="nav__item"><a href="viewstudent">View Profile</a></li>
              <li class="nav__item"><a href="changestudentpwd">Change Password</a></li>
              <li class="nav__item"><a href="viewallcourses">View Courses</a></li>
              
              <li class="nav__item"><a href="studentlogin">Logout</a></li>
              
             
              
              
              
            </ul>
          </nav>
        </div>
      </div>
    </header>
    <!-- Header End -->
    
    <center>
    <br><br><br><br><br><br><br><br><br><br><br><br>
    <h1 align=center>Welcome&nbsp;<c:out value="${suname}"></c:out></h1>
    </center>

    <script src="js/header.js"></script>
    
    <style>
    
    h1
    {
    	color: black;
    	font-weight: bold;
    	font-size: 30px;
    }
    
    body
    {
    background-image: url("images/brown.jpg");
  background-size: 99.9%
    }
    </style>
   