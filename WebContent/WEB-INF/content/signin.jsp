<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
	<head>
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
    
     /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    
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
	margin-top: 15%; 
	margin-left: 25%;
	margin-right: 10%;
	width: 45% ;/* value of your choice which suits your alignment */
	display: inline-block;
}

.CommentBox{
    margin:0 auto;
    width:100%;
}


  </style>
	
	</head>
	<body>
	
	
		<div class="container bg-1 center_div ">
		<s:form role="form" action="signin" namespace="/signin"
			enctype="multipart/form-data" theme="bootstrap"
			cssClass="form-horizontal  col-md-5">

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
	
	</body>
</html>



