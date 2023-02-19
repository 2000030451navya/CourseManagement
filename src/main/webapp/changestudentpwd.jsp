<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8" />
    <title>CHANGE STUDENT PASSWORD</title>
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
  		      <li class="nav__item"><a href="viewstudent">View Profile</a></li>
              
              <li class="nav__item"><a href="studentlogin">Logout</a></li>
              
             
              
              
              
            </ul>
          </nav>
        </div>
      </div>
    </header>
    <!-- Header End -->
  

    <script src="js/header.js"></script>
    
    <style>
    label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
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


.button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

body
{
 background-image: url("images/blocks.jpg");
  background-size: 120%
}
    
    </style>
    
   
    <form method="post" action="updatestudentpwd">
<center>

<br><br><br>
 <h1>Change Password</h1>
 
 <span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>
 
 <br><brr><br>
<table align=center>

<tr>
<td><label>Old Password</label></td>
<td><input type="password" name="sopwd" required></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>New Password</label></td>
<td><input type="password" name="snpwd" required></td>
</tr>

<tr><td></td></tr>

<tr align=center>

<td colspan="2"><input type="submit" value="Update" class="button"></td>

</tr>

</table>
</center>
</form>
    
    </body>
    </html>
    