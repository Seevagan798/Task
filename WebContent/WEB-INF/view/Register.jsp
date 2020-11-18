<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register form</title>


<style type="text/css">
hr {
	color: White;
    top : px;
}
h2{
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
	background-color:  #FFFFFF;
}
h3 {
	text-align: center;
	background-color: #FFFFFF;
}

.required:after {
	content: "*";
	color: red;
}

body {
	font-family: Arial;
	background-image:
		url('C:/Users/Admin/git/Project-Passport/SpringW/src/image/2002.jpg');
	background-repeat: repeat;
	background-attachment: fixed;
	background-size: 100% 100%;
    max-height: 100%;
    max-width: 100%;
    overflow-x: hidden;
}
.html
{
    max-width: 100%;
}
.error {
	color: red;
}
._buttons_{
  position: relative;
  right: -430px;

}
font
{
    font-size: 50px;
}
input[type="radio"],
  input[type="checkbox"] {
    margin: 0 10px 8px 0;
    color: black;
  } 
.Button2 {
    
    /* padding: 8px 5px 8px 5px; */
    color: black;
    background-color:  white;
    font-size: 18px;
    text-align: center;
    font-style: normal;
    border-radius: 10px;
    width: 15%;
    border-width: 1px 1px 3px;
    box-shadow: 0 -1px 0 rgba(83, 79, 79, 0.1) inset;
    margin-bottom: 10px;
    transition-duration: 0.5s;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    margin: 0;
  }
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.rawgit.com/PascaleBeier/bootstrap-validate/v2.2.0/dist/bootstrap-validate.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<body>
     <div class="container-fluid py-5 main">
        <div class="container signup text-light justify-content-center">
            <form:form action="insert" method="post" id="reg" commandName="reg">
                <div class="text-center h2 text-light">Welcome</div>
                <br>

 

                <div class="form-group ">
                    <label for="username">Username</label>
                    <form:input type="text" class="form-control" path="username" id="username" placeholder="Username"/>
                </div>
                <div class="form-group ">
                    <label for="email">Email</label>
                    <form:input type="text" class="form-control" path="emailid" id="emailid" placeholder="Email"/>
                </div>
                <div class="form-group ">
                    <label for="inputPassword3">Password</label>

                    <form:input type="password" class="form-control" path="password" id="password" placeholder="Password"/>

                </div>
                <div class="form-group ">
                    <label for="cnf_password">Confirm Password</label>
                    <form:input type="password" class="form-control" path="confirmpassword" id="confirmpassword"  placeholder="Confirm Password"/>
                </div>
                <br>

 

                <div class="form-group ">
                    <button type="submit" class="btn btn-primary ">Sign up</button>
                </div>
<!--                 <div class="form-group"> -->
<!--                     <label class="text-right">Existing User? <a href="/Task/log/login">click here</a></label> -->
<!--                 </div> -->

 

            </form:form>
        </div>
    </div>
	
			 <script>
        bootstrapValidate('#username', 'alpha:Only alphabets allowed')

 

        bootstrapValidate('#mobile', 'integer:Enter a valid mobile number')
        bootstrapValidate('#mobile', 'min:10:Enter a valid mobile number')
        bootstrapValidate('#mobile', 'max:10:Enter a valid mobile number')

 

        bootstrapValidate('#email', 'email:Enter a valid email')

 

        bootstrapValidate('#password', 'min:8:Enter at-least 8 characters')

 

        bootstrapValidate('#cnf_password', 'matches:#password:Passwords does not match')
    </script>
			
    
 </body>
</html>
