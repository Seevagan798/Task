<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detalis of the candidate</title>
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

<style type="text/css">
label {
	font-weight: bold;
}

hr {
	color: White;
	top: px;
}

h3 {
	text-align: center;
	background-color: #ffffff;
}

.required:after {
	content: " .";
	color: red;
}

body {
	font-family: Arial;
	background-image:
		url('C:/Users/Admin/git/Project-Passport/SpringW/src/image/2004.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

th {
	font-size: 18px;
}

.error {
	color: red;
}
._Buttons_ {
	position: relative;
	padding: 100px 650px;
}	
input[type="text"], input[type="password"], input[type="date"], input[type="datetime"],
	input[type="email"], input[type="number"], input[type="search"], input[type="tel"],
	input[type="time"], input[type="url"], input[type="file"], textarea,
	select {
	background: rgba(255, 255, 255, 0.1);
	border: 1px;
	font-size: 15px;
	height: auto;
	margin: 0;
	outline: 0;
	padding: 5px;
	width: 70%;
	background-color: #e8eeef;
	color: black;
	margin-bottom: 15px;
	border-radius: 8px;
	box-shadow: 0 0 5px rgb(37, 41, 41);
}
</style>
</head>
<body>
<!-- 		<link rel="stylesheet" type="text/css" href="css/bootstrap-grid.css"> --> -->
<!-- 		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"> --> -->
<!-- 		<link rel="stylesheet" type="text/css" --> -->
<!-- 			href="css/bootstrap-grid.min.css"> --> -->
<!-- 		<link rel="stylesheet" type="text/css" href="css/bootstrap-reboot.css"> --> -->
<!-- 	<link rel="stylesheet" type="text/css" --> -->
<!-- 			href="css/bootstrap-reboot.min.css"> --> -->
<!-- 	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> --> -->

	<div class="container" align="center">
	
		<form:form action="page2" method="post" commandName="Passportobj">

			<table align="center" bg-color="gray" border="0" height="500px"
				width="70%">
				<tr>
					<th colspan="2"><h3 align="center">Family details</h3>
				</tr>

				<tr align="centre">

					<th>Father Name</th>
					<th><form:input path="fathername" id="fn" name="fn"
							required="true" /></th>
				</tr>
				<br>
				<br>
				<tr>
					<th>Mother Name</th>
					<th><form:input path="mothername" id="mn" name="mn"
							required="true" /></th>
				</tr>
				<br>
				<br>
				<tr>
					<th>Father or mother passport num</th>
					<th><form:input path="fatherormotherpassportnumber"
							id="passportnum" /></th>
				</tr>
				<br>
				<br>
				<tr>
					<th colspan="2"><h3 text-color="red" align="center">Residential
							Details</h3>
				</tr>
				<tr class="required">
					<th>Address</th>
					<th><form:input path="address" /></th>
				</tr>
				<br>
				<br>
				<tr class="required">
					<th>Police station</th>
					<th><form:input path="policestation"/></th>
				</tr>
				<br>
				<br>
				<tr>
					<th>Town</th>
					<th><form:input path="town" id="town" name="town" /></th>
				</tr>
				<br>
				<br>
				<tr class="required">
					<th>City</th>
					<th><form:input path="city" id="city" name="city"
							required="true" /></th>
				</tr>
				<br>
				<br>
				<tr class="required">
					<th>State</th>
					<th><form:input path="state" id="state" name="state"
							required="true" /></th>
				</tr>
				<br>
				<br>

				<tr>
					<th>Pincode</th>
					<th><form:input path="pincode" id="pincode" name="pincode"
							size="6" required="true" /></th>
				</tr>
				<br>
				<br>


				<tr class="required">
					<th>PhoneNo</th>
					<th><form:input path="phoneno" id="phone" name="phone" /></th>
				</tr>

				<tr>
					<th>Tele.PhoneNo</th>
					<th><form:input path="telephone" id="phoneno" name="phoneno"
							 /></th>
				</tr>
				<br>
				<br>
				<tr>
					<th>EMAIL.ID</th>
					<th><form:input path="email" id="EMAIL"
							name="EMAIL" /></th>
				</tr>
				<br>
				<br>

              <tr>
              <th>
                    <td><input type="submit" value="Submit">
                        <input type="reset" value = "Reset"><br><br>
                </td>
             </th>
            </tr>
    
			</div>
			</table>
		</form:form>
	</div>


	

</body>
</html>