<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>FACULTYLOGIN</title>
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
          <a class="active" href="/">HOME</a>
        </div>
        <div class="site-header__middle">
          <nav class="nav">
            <ul class="nav__wrapper">
  		      <li class="nav__item"><a href="about">About us</a></li>
              <li class="nav__item"><a href="contact">Contact us</a></li>
              
            </ul>
          </nav>
        </div>
      </div>
    </header>
    <!-- Header End -->

    <script src="js/header.js"></script>
    
    <style>
    
    body
{
	 	background-image: url("images/particle.webp");
	 	font-weight: bold;
	 	color:white;
}
    
    
    input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
  color:white;
}

.button {
  background-color: white;
  border: none;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  font-weight:bold;
  margin: 4px 2px;
  cursor: pointer;
}
    </style>
    <center>
<form method="post" action="checkfacultylogin">

<table align=center>

<br><br>

<h1 align=center><u>Faculty Login</u></h1>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>


<br><br>

<tr>
<td><label>Username</label></td>
<td><input type="text" name="funame" required></td>
</tr>

<tr><td></td></tr>

<br>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="fpwd" required></td>
</tr>

<tr><td></td></tr>
<br><br>
<tr align=center>

<td colspan="2"><input type="submit" value="Login" class="button"></td>

</tr>

</table>

</form>
</center>   
  </body>
</html>
