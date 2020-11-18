<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>passport application</title>
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

<!--  <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css"> -->
<!--   <link rel="stylesheet" type="text/css" href="css/bootstrap.css">  -->
<!--      <link rel="stylesheet" type="text/css" href="css/bootstrap-grid.min.css">  -->
<!--      <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css">  -->
<!--      <link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.min.css"> -->
<!--  	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">  -->

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script>
	$(document).ready(
			function() {
				$("#dob").change(
						function() {
							var start_date = new Date($("#dob").val());
							var date = new Date();
							var end_date = new Date(start_date);
							end_date.setFullYear(date.getFullYear()
									- start_date.getFullYear());
							$("#age").val(end_date.getFullYear());
						});
			});
</script>
<body>
	<form:form action="add" method="post" commandName="Passportobj">

		<div class="container">
			<div class="app">
				<br> <br>
				<h2 align="center">Applicant Details</h2>
			</div>
			<div class="container py-5" >
			<div class="row">
				<div class="col-md-4">
				<div=fn>
					<label><b>FirstName</b></label> <br>
					<form:input path="firstname" id="fname" name="fname"></form:input>
				</div>
				</div>
                  
				<br> <br>
				<div class="col-md-4">
					<div class=ln>
						<label class="required"><b>LastName</b></label> <br>
						<form:input path="lastname" id="ln" name="ln" required="true" />
					</div>
				</div>
			</div>
			<br> <br>
			<div class="row">
				<div class=date>
					<label class="required" for="DOB"><b>D.O.B</b></label> <br>
					<form:input type="?date?" path="DOB" id="date" />
				</div>
			</div>
			<br> <br>

			<div class="row">
				<div class=pob>
					<label class="required"><b>Place of Birth</b></label> <br>
					<form:input path="placeofbirth" class="font" id="birthplace"
						name="birthplace" maxlength="32" required="true" />
				</div>
			</div>
			<br> <br>

			<div class="row">
				<div class=age>
					<label class="required"><b>Age</b></label> <br>
					<form:input path="age" class="font" id="age" name="age"
						required="true" />
				</div>

			</div>
			<br> <br>
			<div class="row">
				<div class=Gen>
					<label class="required"><b>Gender</b></label> <br>
					<form:radiobutton path="Gender"  /><label>Male</label>
					<form:radiobutton path="Gender"  /><label>Female</label>
					<form:radiobutton path="Gender"  /><label>Others</label>
					<br> <br>
				</div>

			</div>

			<div class="row">
				<div class=ms>
					<label class="required"><b>Marital status</b></label> <br>
					<form:radiobutton path="maritalstatus"  /><label>SIngle</label>
					<br>
					<form:radiobutton path="maritalstatus" /><label>Married</label>
				</div>
			</div>

			<br> <br>

			<div class="row">
				<div class=ID>
					<label class="required"><b>Identification Mark</b></label> <br>
					<form:input path="identificationmark" class="font" required="true" />
				</div>
			</div>
			<br> <br>
			<div class="row">
				<div class=aadhar>
					<label class="required"><b>Aadhar</b></label> <br>
					<form:input path="Aadhar" class="font" id="aadhar" name="aadhar"
						required="true" />

				</div>
			</div>
			<br> <br> <br> <br>
			<div class="row">
				<div class=pan>
					<label class="required"><b>Pan Number</b></label> <br>
					<form:input path="Pannumber" class="font" id="pan" name="pan"
						required="true" />
				</div>
			</div>
			<br> <br> <br>
			<div class=_Buttons_>
				<button class="Button2" id="Button2" type="submit">Next</button>
				<button class="Button2" id="Button2" type="Reset">Reset</button>
			</div>
			</div>
			<!-- <div class="btn-group">
                <button type="button" class="btn btn-primary">Next</button>
                <button type="button" class="btn btn-primary">Cancle</button>
                
              </div> -->
		</div>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		</div>
		<script>
			$(document)
					.ready(
							function() {
								$("#date")
										.change(
												function() {
													var start_date = new Date(
															$("#date").val());
													var date = new Date();
													var end_date = new Date(
															start_date);
													end_date
															.setFullYear(date
																	.getFullYear()
																	- start_date
																			.getFullYear());
													$("#age")
															.val(
																	end_date
																			.getFullYear());
												});
							});
		</script>

		<script>
			bootstrapValidate('#fname',
					'alpha:not allow special characters and numbers')
			bootstrapValidate('#ln',
					'alpha: not allow special characters and numbers')
			bootstrapValidate('#birthplace',
					'alpha:not allow special characters and numeric')
			bootstrapValidate('#aadhar',
					'numeric:not allow any special characters and alphabets')
			bootstrapValidate('#pan', 'alphanum:no special characters allowed')
			bootstrapValidate('#pan', 'max:8:enter valid pan number')
		</script>
	</form:form>
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
.fn{
    position: relative;
    left : 20px;
    top : 50px;
    font-size: 18px;
}
.ln
{
    position: relative;
    left    :600px;
    top     :-150px;
    font-size: 18px;
}
.date{
    position: relative;
    left    : 20px;
    top     : -200px;
    font-size: 18px;

}
.pob
{
    position: relative;
    left     : 650px;
    top      : -350px;
    font-size: 18px;
}
.age
{
    position: relative;
    left     : 20px;
    top      : -300px;
    font-size: 18px;
}
.Gen
{
    position: relative;
    left     : 650px;
    top      : -450px;
    font-size: 18px;
}
.ms
{
    position: relative;
    left    : 20px;
    top     : -350px;
    font-size: 18px;
}
.ID{
    position: relative;
    left    : 650px;
    top     : -490px;
    font-size: 18px;

}
.aadhar
{
    position: relative;
    left    : 20px;
    top     : -500px;
    font-size: 18px;
}
.pan
{
    position: relative;
    left     : 650px;
    top      :-720px;
    font-size: 18px;
}
.app
{
    align-items: center;
    top   : -10px;
    bottom :-100px;
    font-size: 18px;
}
body {
	font-family: Arial;
	background-image:
		url('C:/Users/Admin/git/Project-Passport/SpringW/src/image/2001.jpg');
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
._Buttons_{
  position: relative;
  right: -400px;
  top  : -650px;
}
/* .btn-group
{
    position: relative;
    right   :-400px;
    top     :-650px; */

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
    width: 100%;
    background-color: #FFFFFF;
    color: black;
    box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
    margin-bottom: 15px;
    border-radius: 8px;
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
  #Button2 {
    
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
</body>
</html>