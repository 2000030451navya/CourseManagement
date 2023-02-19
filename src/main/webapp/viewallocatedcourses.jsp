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
  background-size: 99.9%
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

<h1 align=center><u>View Allocated Courses</u></h1>

<table align=center border=2>

<tr>


<th>Course Code</th>
<th>Course Name</th>
<th>Year</th>
<th>Semester</th>
<th>L-T-P-S</th>
<th>Department</th>
<th>Credits</th>
<th>facultyid</th>



</tr>

<c:forEach items="${courselist}" var="courses">

<tr>


<td> <c:out value="${courses.coursecode}"></c:out>   </td>
<td> <c:out value="${courses.coursename}"></c:out>   </td>
<td> <c:out value="${courses.year}"></c:out>   </td>
<td> <c:out value="${courses.semester}"></c:out>   </td>
<td> <c:out value="${courses.ltps}"></c:out>   </td>
<td> <c:out value="${courses.department}"></c:out>   </td>
<td> <c:out value="${courses.credits}"></c:out>   </td>
<td> <c:out value="${courses.facultyid}"></c:out>   </td>
  
<td> 
<a href='<c:url value='viewregisteredstudents'></c:url>'>View</a>&nbsp;&nbsp;

</td>

</tr>

</c:forEach>

</table>

</body>
</html>























