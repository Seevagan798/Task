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
<!-- <link href="css/bootstrap.css" rel="stylesheet"> -->
<h2 align="center" >PASSPORT REGISTRATION FORM</h2><hr>
<marquee direction="left" bgcolor="White" ><b> Fill the needed details</b></marquee>
<form:form action="past" method="post" commandName="Passportobj">
 <div class = "container" align="center" style="border:red ;" >
         <h3>Service Required</h3>
   <fieldset>
   <label class = "required" for="Applyingfor">Applying for</label>
   <form:select path="Applyingfor">
             <form:option value="Fresh" label="Fresh" />
             <form:option value="Re-use" label="Re-use"/>
             </form:select>
             
   <label class = "required" for="typeofapplication">Type of Application</label>
       <label for="Normal"> Normal</label>
       <form:radiobutton path="typeofapplication" value="Normal" />
       <label for="Tatkall"> Tatkaal</label>
       <form:radiobutton path="typeofapplication" value="Tatkaal"/>
      
      <br><br>
      
      <label class="required" for="Type of application"><b>Type of Application pages</b></tr>
      <form:select path="pages">
           <form:option value="36" label="36"></form:option>
           <form:option value="60" label="60"></form:option>
      </form:select>
                
 
      <br><br>
      <label class="required"><b> Validity Required</b>
        <form:radiobutton path="ValidityRequired" value = "10" /><b>10</b>
        <form:radiobutton path="ValidityRequired" value = "Upto to 18"/><b>Upto to 18<b>
         
      <br><br>
      <br><br>
      </b>
      </b>
      </label>
      </fieldset>
      <div class = _Buttons_>    
        <button class="Button2" id ="Button2"type="submit">Next</button>
        <button class="Button2" id="Button2"type="Reset">Reset</button>   
        </div>                
</div>
</form:form>

</body>
</html>