<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>

<head>
<meta charset="UTF-8" />
    <title>ADD FACULTY</title>
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
          <a class="active" href="adminhome">HOME</a>
        </div>
        <div class="site-header__middle">
          <nav class="nav">
            <ul class="nav__wrapper">
  		      <li class="nav__item"><a href="/addstudent">Add Student</a></li>
              <li class="nav__item"><a href="adminlogin">Logout</a></li>
              
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
  width: 350px;
  border: 1px solidblack;
  
  margin: 60px;
  text-align:center;
}


</style>


<h1 align=center><u>Add Faculty</u></h1>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>

<center>
<form:form action="addfacultyrecord" method="post" modelAttribute="faculty">

<table align=center>


<tr>
<td><label>Faculty Id</label></td>
<td>
<form:input path="facultyid" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required"></form:input>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required"/>Male
<form:radiobutton path="gender" value="Female" required="required"/>Female
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Date of Birth</label></td>
<td><form:input path="dateofbirth" required="required" placeholder="DD/MM/YYYY"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Department</label></td>
<td>
<form:select path="department" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="CSE">CSE</form:option>
<form:option value="ECE">ECE</form:option>
<form:option value="EEE">EEE</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Designation</label></td>
<td>
<form:select path="designation" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="HOD">HOD</form:option>
<form:option value="Course Coordinator">Course Coordinator</form:option>
<form:option value="Professor Incharge">Professor Incharge</form:option>
</form:select>
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Salary</label></td>
<td><form:input path="salary" value="0.00" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Marital Status</label></td>
<td>
<form:radiobutton path="maritalstatus" value="True" required="required"/>Yes
<form:radiobutton path="maritalstatus" value="False" required="required"/>No
</td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Location</label></td>
<td><form:input path="location" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Email ID</label></td>
<td><form:input path="emailid" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Username</label></td>
<td><form:input path="username" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><form:password path="password" required="required"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contact No</label></td>
<td><form:input path="contactno" required="required"/></td>
</tr>

<tr><td></td></tr>
<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Add Faculty" class="button"></td>
</tr>

</table>

</form:form>
</center>


</body>
</html>

 
