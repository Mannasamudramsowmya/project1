<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shop</title>
<style>
  body {
    background-image: url(resources/images/1.jpg);
    background-size:cover;
    background-repeat:no-repeat;
    } 
</style>

</head>
<body>
	<div class="container">
		<div class="row">

			<legend>Registration Form</legend>

			<form:form action="register.do" method="POST" commandName="register">

					<fieldset>
			      <form class="form-horizontal">
					
						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-7 control-label" path="id"> ID:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="id" placeholder="Enter your ID"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>
						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-7 control-label" path="name">Name:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="name"
									placeholder="Insert your Name" class="form-control input-md"
									required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-7 control-label" path="mailid">Email ID:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="mailid"
									placeholder="Insert your Mail ID" class="form-control input-md"
									required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-7 control-label" path="password">Password:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="password"
									placeholder="Insert your Password"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Text input-->
						<div class="form-group">
							<form:label class="col-md-7 control-label" path="confirmpassword">Confirm Password:</form:label>
							<div class="col-md-7">
								<form:input id="textinput" path="confirmpassword"
									placeholder="Confirm Your Password"
									class="form-control input-md" required="" type="text" />
								<span class="help-block"> </span>
							</div>
						</div>

						<!-- Button -->
						<div class="form-group">
							<label class="col-md-4 control-label" for="singlebutton">
							</label>
							<div class="col-md-4">
								<input type="submit" name="action" class="btn btn-primary"
									value="Register">
								
							</div>
						</div>
						</form>
					</fieldset>
			</form:form>
		</div>
	</div>
</body>

</html>
