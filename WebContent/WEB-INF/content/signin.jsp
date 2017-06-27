<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Welcome</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}

.container-fluid {
	padding-top: 70px;
	padding-bottom: 70px;
}

.center_div {
	margin: 10% auto;
	width: 100% /* value of your choice which suits your alignment */
}
</style>
</head>
<body>

	<div class="container-fluid bg-1 center_div">
		<s:form role="form" action="signin" namespace="/signin"
			enctype="multipart/form-data" theme="bootstrap"
			cssClass="form-horizontal col-sm-4">

			<h2>Log In</h2>
			<table>
				<tr>
					<s:actionerror cssClass="alert alert-error" />
				</tr>
				<tr>
					<s:textfield label="Name" name="user.username"
						tooltip="Enter your Name here" placeholder="Enter Username" />
				</tr>
				<tr>
					<s:password label="Password" name="user.password"
						tooltip="Enter your password here" placeholder="Enter Password" />
				</tr>
				<tr>
					<td colspan="2"><s:checkbox label="Remember me" name="me" /></td>
				</tr>
				<tr>
					<td colspan="2"><s:submit class="btn btn-primary btn-lg" value="Login"/></td>
				</tr>
			</table>

		</s:form>
	</div>
</body>
</html> --%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
    .bg-1 {
	background-color: #1abc9c; /* Green */
	color: #ffffff;
}

.container-fluid {
	padding-top: 70px;
	padding-bottom: 70px;
}

.center_div {
	/* margin: 10% auto; */
	margin-left: 10%;
	margin-right: 10%;
	width: 70% ;/* value of your choice which suits your alignment */
	display: inline-block;
}

.CommentBox{
    margin:0 auto;
    width:100%;
}
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Computer Resource Center</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <!-- <li><a href="#">Gallery</a></li> -->
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Sign In</a></li>
      </ul>
    </div>
  </div>
</nav>


  <div class="container bg-1 center_div ">
		<s:form role="form" action="signin" namespace="/signin"
			enctype="multipart/form-data" theme="bootstrap"
			cssClass="form-horizontal col-sm-4">

			<h2>Log In</h2>
			
					<s:actionerror cssClass="alert alert-error" />
				<div class="form-group">
					<s:textfield label="Name" name="user.username"
						tooltip="Enter your Name here" placeholder="Enter Username" />
				
					<s:password label="Password" name="user.password"
						tooltip="Enter your password here" placeholder="Enter Password" />
				
					<s:checkbox label="Remember me" name="me" />
				
					<s:submit cssClass="btn btn-primary" value="Login"/>
				</div>
					
			

		</s:form>
	</div>

  
<div class="container-fluid bg-3 text-center">    
  <h3>Courses Offered</h3><br>
  <div class="row">
    <div class="col-sm-3">
      <p>Course 1</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>Course 2</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>Course 3</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Course 4</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
  </div>
</div><br>

<!-- <div class="container-fluid bg-3 text-center">    
  <div class="row">
    <div class="col-sm-3">
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3"> 
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-3">
      <p>Some text..</p>
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
    </div>
  </div>
</div> -->

<br><br>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>




