<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Service Required</title>
<style type="text/css">
/* .container{
       background-color: #e8eeef;
} */
 div
{
 padding: 10px 0;
 }

 label {
font-weight: bold;
}
hr
{
 color: White;
 top: px;
}
h2{
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}
h3
{
  text-align: center;
  background-color:  #FFFFFF;
}

  .required:after {
    content:"*";
    color: red;
  }
    body
{
  font-family:Arial ;
 
}

.error
{
  color: red;
}  
  body
{
  font-family: Arial;
   background-image: url('C:/Users/Admin/git/Project-Passport/SpringW/src/image/2003.jpg');
  background-repeat: repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
input[type="text"],
  input[type="password"],
  input[type="date"],
  input[type="datetime"],
  input[type="email"],
  input[type="number"],
  input[type="search"],
  input[type="tel"],
  input[type="time"],
  input[type="url"],
  input[type="file"],
  textarea,
  select {
    background: rgba(255,255,255,0.1);
    border: 1px;
    font-size: 15px;
    height: auto;
    margin: 0;
    outline: 0;
    padding: 5px;
    width: 10%;
    background-color: white ;
    color: black;
    margin-bottom: 15px;  
    border-radius: 8px;
    
  }


.Button2 {
    
    /* padding: 8px 5px 8px 5px; */
    color: black;
    background-color:  white;
    font-size: 18px;
    text-align: center;
    font-style: normal;
    border-radius: 10px;
    width: 10%;
    border-width: 1px 1px 3px;
    box-shadow: 0 -1px 0 rgba(83, 79, 79, 0.1) inset;
    margin-bottom: 10px;
    transition-duration: 0.5s;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    margin: 0;
}
</style>

</head>
<body>
  <link href="css/bootstrap.css" rel="stylesheet">

   <div class = "container" align="center" style="border:red ;" >
         <h3>PASSPORT LOGIN</h3>
   <form:form action="loginProcess" method="post" commandName="Login">
         
          <label class="required"><b>Username</b></label>
          <br>
          <form:input path="username" type="text" required="true" ></form:input>
                
      <br><br>
      
        <label class="required"><b>Password</b></label>
        <br>
        <form:input path="password" type="password" required="true"></form:input>
            
    
      <br><br>
      
        <input class="Button2" id ="Button2"type="submit" value="SIGNIN">
        <br>
        <br>
          
        <label><small>Not exitsting user <a href="/Task/log/sign">click here</a></small></label>
      
 </form:form>
</body>
</html>