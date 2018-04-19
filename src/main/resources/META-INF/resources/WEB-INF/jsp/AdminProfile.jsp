<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.demo.Model.Developer"%>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=300, initial-scale=1">
<title>Insert title here</title>
</head>



<body>
<center>
<h3>DEVELOPER LIST</h3>
<table border="2" width="70%" cellpadding="2">  
<tr>
	<th>ID</th>
	<th>NAME</th>
	<th>Mobile Number</th>
	<th>LANGUAGE</th>
	<th>MANAGER</th>
	<th>ANUAL PACKAGE</th>
	<th>PROJECT NAME</th>
	<th>EDIT</th>
	<th>DELETE</th>
</tr> 


     <c:forEach items="${list_of_developer}" var="emp">
 <tr>
 	<td>  <c:out value="${emp.id}" /></td>
       <td>   <c:out value="${emp.name}" /></td>
       <td>   <c:out value="${emp.email}" /></td>
         <td>   <c:out value="${emp.mobileNumber}"/></td>
        <td>     <c:out value="${emp.language}" /></td>
        <td>      <c:out value="${emp.manager}" /></td>
        <td>       <c:out value="${emp.anual_package}" /></td>
         <td>       <c:out value="${emp.peojectteam}" /></td>
         <td>
        	<a  href='edit?id=<c:out value="${emp.id}" />'>Edit</a>  
 		</td>
 		<td>
 			<a href='delete?id=<c:out value="${emp.id}" />'>Delete</a>
 		</td>  
      
 </tr>
    </c:forEach>
    
 </table>

<br><br><br>
<form action="addDeveloperPage">
<input type="submit" value="ADD DEVELOPER">

</form>
</center>
</body>
</html>