<!DOCTYPE html>
<html>

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

<form action="/addDeveloper" style="border:1px solid #ccc">
  <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label><b>Name</b></label>
    <input type="text" placeholder="Enter Developer's Name" name="name" required>
    

    <label><b>Email</b></label>
    <input type="email" placeholder="Enter Developer'sEmail" name="email" required>
    
    <label><b>Mobile Number</b></label>
    <input type="number" placeholder="Enter Developer's Mobile Number" name="mobileNumber" required>

    <label><b>Language</b></label>
    <input type="text" placeholder="Enter Developer's language" name="language" required>
    

    <label><b>Manager</b></label>
    <input type="text" placeholder="Enter Name Of Manager" name="Manager" required>
    
    <label><b>Anual_package</b></label>
    <input type="number" placeholder="Enter Anual Package" name="anual_package" required>
    
     <label><b>Project Name</b></label>
    <input type="text" placeholder="Enter Project Name" name="peojectteam" required>
       
    <label>
      <input type="checkbox" checked="checked" style="margin-bottom:15px"> Remember me
    </label>
    

    <div class="clearfix">
     
      <input type="submit" class="sign" value="ADD DEVELOPER">
      
    </div>
  </div>
</form>

</body>
</html>
