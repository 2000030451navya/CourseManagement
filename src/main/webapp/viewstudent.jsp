<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8" />
    <title>VIEWSTUDENT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="styles/reset.min.css" />
    <link rel="stylesheet" href="styles/style.css" />
    <link rel="stylesheet" href="styles/header-7.css" />
  
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
  		      <li class="nav__item"><a href="changestudentpwd">Change Password</a></li>
              
              <li class="nav__item"><a href="studentlogin">Logout</a></li>
              
             
              
              
              
            </ul>
          </nav>
        </div>
      </div>
    </header>
    <!-- Header End -->
  

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
    background-image: url("images/blank.jpg");
  background-size: 99.9%
    }
    
    
    table,tr,th,td
    {
    	border: 1px solid black;
margin-left: auto;
margin-right: auto;
border-collapse: collapse;
    	text-align: center;
    }
    </style>



<br>



<table align="center">

<tr ><th align="">Student ID:</th>&nbsp;<td>${student.studentid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${student.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${student.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${student.dateofbirth}</td></tr>
<tr><th>Program:</th>&nbsp;<td>${student.program}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${student.department}</td></tr>
<tr><th>CGPA:</th>&nbsp;<td>${student.cgpa}</td></tr>
<tr><th>Backlogs:</th>&nbsp;<td>${student.backlogs}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${student.location}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${student.emailid}</td></tr>
<tr><th>Username:</th>&nbsp;<td>${student.username}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${student.contactno}</td></tr>

</table>
</body>
</html>

 
