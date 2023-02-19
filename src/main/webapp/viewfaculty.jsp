<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8" />
    <title>VIEWFACULTY</title>
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
          <a class="active" href="facultyhome">HOME</a>
        </div>
        <div class="site-header__middle">
          <nav class="nav">
            <ul class="nav__wrapper">
  		      <li class="nav__item"><a href="changefacultypwd">Change Password</a></li>
              
              <li class="nav__item"><a href="facultylogin">Logout</a></li>
              
             
              
              
              
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
    background-image: url("images/pencil.jpg");
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

<tr ><th align="">Faculty ID:</th>&nbsp;<td>${faculty.facultyid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${faculty.name}</td></tr>
<tr><th>Gender:</th>&nbsp;<td>${faculty.gender}</td></tr>
<tr><th>Date of Birth:</th>&nbsp;<td>${faculty.dateofbirth}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${faculty.department}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${faculty.designation}</td></tr>
<tr><th>Salary:</th>&nbsp;<td>${faculty.salary}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${faculty.location}</td></tr>
<tr><th>Marital Status:</th>&nbsp;<td>${faculty.maritalstatus}</td></tr>
<tr><th>Email ID:</th>&nbsp;<td>${faculty.emailid}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${faculty.contactno}</td></tr>

</table>
</body>
</html>

 
