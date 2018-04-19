<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=60">
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: 100%;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>

<h2 align="center">Login Form</h2>

<form action="/login">
 <div class="imgcontainer">
    <img src="C:\Users\kandalakar.r\Desktop\img_avatar2.png" alt="Avatar" class="avatar">
  </div>
 

  <div class="container">
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Username" name="email" required>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
        
   	<input type="submit" value="login">
    <label>
      <input type="checkbox" checked="checked"> Remember me
    </label>
  </div>

 
</form>

	 <div class="container" style="background-color:#f1f1f1">
	 	<form action="registerpage">
	 	
	 	 <input type="submit" class="cancelbtn" value="Register"/>
	 	
	 	</form>
   
   		 <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
	
</body>
</html>
