<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<meta charset="UTF-8" />
    <title>COURSE REGISTRATION</title>
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
  		      <li class="nav__item"><a href="viewprofile">View Profile</a></li>
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
background-image: url("images/white.jpg");
  background-size: 99.9%

}
table
{
background-color: white;
  width: 300px;
  border: 1px solidblack;
  
  margin: 70px;
  text-align:center;
}

</style>



<h1 align=center><u>Course Registration</u></h1>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>


<center>
<form:form action="courseregistration" method="post" modelAttribute="coursereg">

<table align=center>

<tr>
<td><label>Student Id</label></td>
<td>
<form:input path="studentid" required="required"></form:input>

</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Course Code</label></td>
<td>
<form:input path="coursecode" required="required"></form:input>

</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Course Title</label></td>
<td>
<form:input path="coursetitle" required="required"></form:input>

</td>
</tr>

<tr><td></td></tr>
<tr>
<td><label>Faculty id</label></td>
<td>
<form:input path="facultyid" required="required"></form:input>

</td>
</tr>
<tr align=center>
<td colspan=2><input type="submit" value="Register Course" class="button"></td>
</tr>


<tr><td></td></tr>



</table>

</form:form>

</center>

</body>
</html>

 
