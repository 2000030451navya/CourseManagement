<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>ABOUT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="styles/reset.min.css" />
    <link rel="stylesheet" href="styles/style.css" />
    <link rel="stylesheet" href="styles/header-7.css" />
    <link rel="stylesheet" href="styles/dropdown.css" />
  </head>
  <style>
  body{
  background-image: url("images/blank.jpg");
  background-size: 98%
  
  
  }
  
  p
  {
  text-align: center;
  }
  </style>
  <body>
    <!-- Header Start -->
    <header class="site-header">
      <div class="wrapper site-header__wrapper">
        <div class="site-header__start">
          <a class="active" href="/">HOME</a>
        </div>
        <div class="site-header__middle">
          <nav class="nav">
            <ul class="nav__wrapper">
  		      <li class="nav__item"><a href="about">About us</a></li>
              <li class="nav__item"><a href="contact">Contact us</a></li>
              <div class="dropdown">
			  <button class="dropbtn" onclick="myFunction()">Sign in
			    <i class="fa fa-caret-down"></i>
			  </button>
			  <div class="dropdown-content" id="myDropdown">
			    <a href="adminlogin">Admin</a>
			    <a href="facultylogin">Faculty</a>
			    <a href="studentlogin">Student</a>

			  </div>
            </ul>
          </nav>
        </div>
      </div>
    </header>
    <!-- Header End -->

    <script src="js/header.js"></script>
    <script src="js/dropdown.js"></script>
    <br><br><br><br><br><br>
    
    <p>
    A course management system (CMS) is a collection of software tools providing an online environment for course interactions. <br>A CMS typically includes a variety of online tools and environments, such as:
<br>
	An area for faculty posting of class materials such as course syllabus and handouts<br>
	An area for student posting of papers and other assignments<br>
	A gradebook where faculty can record grades and each student can view his or her grades<br>
	An integrated email tool allowing participants to send announcement email messages to the entire class or to a subset of the entire class<br>
	A chat tool allowing synchronous communication among class participants<br>
	A threaded discussion board allowing asynchronous communication among participants<br>
    </p>
  </body>
</html>
