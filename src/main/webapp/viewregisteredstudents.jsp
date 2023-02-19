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
  background-size: 120.9%
}
</style>
</head>
<body>



<br>

<ul>
  <li><a href="facultyhome">Home</a></li>
  <li><a href="viewfaculty">View Profile</a></li>
  
  <li><a href="changefacultypwd">Change Password</a></li>
  
  
  
  <li><a href="facultylogin">Logout</a></li>
</ul>
</header>


<br><br>

<h1 align=center><u>View  Reistered Students</u></h1>

<table align=center border=2>

<tr>


<th>Course Id</th>
<th>Course Code</th>
<th>CourseTitle</th>
<th>Student id</th>
<th>facultyid</th>




</tr>

<c:forEach items="${studentlist}" var="stulist">

<tr>


<td> <c:out value="${stulist.courseid}"></c:out>   </td>
<td> <c:out value="${stulist.coursecode}"></c:out>   </td>
<td> <c:out value="${stulist.coursetitle}"></c:out>   </td>
<td> <c:out value="${stulist.studentid}"></c:out>   </td>
<td> <c:out value="${stulist.facultyid}"></c:out>   </td>

  

</tr>

</c:forEach>

</table>

</body>
</html>

