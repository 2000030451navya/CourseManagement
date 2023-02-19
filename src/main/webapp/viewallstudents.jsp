<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html>
<html>
<head>
<style>
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  
}

li 
{
  float: left;
    
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{

color: black;
}
li a:hover {
  background-color: lightgrey;
  color: black;
}

body
{
background-image: url("images/blocks.jpg");
  background-size: 130.6%
}
</style>
</head>
<body>



<br>

<ul>
  <li><a href="adminhome">Home</a></li>
 
  <li><a href="adminlogin">Logout</a></li>
</ul>
</header>


<br><br>

<h1 align=center><u>View All Students</u></h1>

<table align=center border=2>

<tr>


<th>Student ID</th>
<th>Name</th>
<th>Gender</th>
<th>Date of Birth</th>
<th>Program</th>
<th>Department</th>
<th>CGPA</th>
<th>Backlogs</th>
<th>Location</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>


</tr>

<c:forEach items="${studentlist}" var="student">

<tr>


<td> <c:out value="${student.studentid}"></c:out>   </td>
<td> <c:out value="${student.name}"></c:out>   </td>
<td> <c:out value="${student.gender}"></c:out>   </td>
<td> <c:out value="${student.dateofbirth}"></c:out>   </td>
<td> <c:out value="${student.program}"></c:out>   </td>
<td> <c:out value="${student.department}"></c:out>   </td>
<td> <c:out value="${student.cgpa}"></c:out>   </td>
<td> <c:out value="${student.backlogs}"></c:out>   </td>
<td> <c:out value="${student.location}"></c:out>   </td>
<td> <c:out value="${student.emailid}"></c:out>   </td>
<td> <c:out value="${student.username}"></c:out>   </td>
<td> <c:out value="${student.contactno}"></c:out>   </td>



</tr>

</c:forEach>

</table>

</body>
</html>























