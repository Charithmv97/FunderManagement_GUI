<%@page import="com.model.Funder"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Funder Management</title>

<link href="myStyle.css" rel="stylesheet" />
		<link rel="stylesheet" href="Views/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script src="Components/jquery-3.5.0.min.js"></script>
		<script src="Components/Funder.js"></script>

</head>

<body>

<div class="container">
	
			<p class="font-weight-bold">
				<center>
					<h1><u><i><b>Funder Management</b></i></u></h1>
				</center>
			</p>
			<br><br>
			
			<fieldset>
	
				<legend><b>Add Post Details</b></legend>
					<form id="FUNDER" name="FUNDER" class="border border-light p-5">
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Title:</label>
						    <input type="hidden" id="id" name="id">
						    <input type="text" id="title" class="form-control" name="title">						    
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Content:</label>
						    <input type="text" id="content" class="form-control" name="content">						    
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Publish Date:</label>
						    <input type="text" id="pdate" class="form-control" name="pdate">						    
						</div>
						
						<div class="form-outline mb-4">
						    <label class="form-label" for="form6Example3" class="col-sm-2 col-form-label col-form-label-sm">Publish Time:</label>
						    <input type="text" id="ptime" class="form-control" name="ptime">						    
						</div>					
						<br> 
						<div id="alertSuccess" class="alert alert-success"></div>
						<div id="alertError" class="alert alert-danger"></div>	
						<input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary btn-lg btn-block"> 
						
					</form>
				
							
			</fieldset>
			
			<br> 
			
			<div class="container" id="FunderGrid">
				<fieldset>
					<legend><b>View Post Details</b></legend>
					<form method="post" action="Funder.jsp" class="table table-striped">
						<%
						    Funder viewPost= new Funder();
							out.print(viewPost.readPost());
						%>
					</form>
					<br>
				</fieldset>
			</div>
		</div>

</body>
</html>