<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.demo.Model.Developer"%>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=300, initial-scale=1">

<style>
body {font-family: Arial;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password],input[type=email],input[type=number] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

.sign {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 100%;
    }
}
</style>
<body>

<form action="/eidtDeveloper" style="border:1px solid #ccc">
  <div class="container">
    <h1>EDIT</h1>
    <p>Please fill in this form to 	Edit an account.</p>
    <hr>
    
    
    
    <label><b>ID</b></label>
    <input type="text" name="id" value="<c:out value="${list_of_developer.id}" />">
    
    <label><b>Name</b></label>
    <input type="text"  name="name" value="<c:out value="${list_of_developer.name}" />">
    

    <label><b>Email</b></label>
    <input type="email"  name="email" value=" <c:out value="${list_of_developer.email}" />">
    
    <label><b>Mobile Number</b></label>
    <input type="number"  name="mobileNumber" value=" <c:out value="${list_of_developer.mobileNumber}"/>">

    <label><b>Language</b></label>
    <input type="text" name="language" value="<c:out value="${list_of_developer.language}" />">
    

    <label><b>Manager</b></label>
    <input type="text"  name="Manager" value="<c:out value="${list_of_developer.manager}" />">
    
    <label><b>Anual_package</b></label>
    <input type="number"name="anual_package" value=" <c:out value="${list_of_developer.anual_package}" />">
    
     <label><b>Project Name</b></label>
    <input type="text" name="peojectteam" value="<c:out value="${list_of_developer.peojectteam}" />">
       
       
    
    <div class="clearfix">
     
      <input type="submit" class="sign" value="ADD DEVELOPER">
      
    </div>
  </div>
</form>

</body>
</html>
