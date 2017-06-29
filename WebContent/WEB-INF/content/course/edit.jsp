<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Courses</title>
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
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
    
      .button {
    display: block;
    width: 200px;
    height: 50px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
    font-size: 20px;
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
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
       <s:url action="viewHomePage" var="urlViewHomePage" namespace="/admin"></s:url>
        <li><a href="%{urlViewHomePage}">Home</a></li>
        
        <s:url action="viewAdmissionsPage" var="urlViewAdmissionsPage" namespace="/admin"></s:url>
        <li><s:a href="%{urlViewAdmissionsPage}">Admissions</s:a></li>
        
        <li  class="active"><a href="#">Courses</a></li>
        
        <s:url action="viewStudentsPage" var="urlViewStudentsPage" namespace="/admin"></s:url>
        <li><s:a href="%{urlViewStudentsPage}">Students</s:a></li>

		<s:url action="viewUsersPage" var="urlViewUsersPage" namespace="/admin"></s:url>
        <li><s:a href="%{urlViewUsersPage}">Users</s:a></li>
        
       
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <s:url action="viewCourseList" var="urlViewCourseList" namespace="/course"></s:url>
	  
      <p><s:a cssClass= "button" href="%{urlViewCourseList}" >View Courses List</s:a></p>
      <p><s:a  cssClass= "button" href="#">Add New Course</s:a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h2>Edit Course</h2>
            
<s:form action="updateCourse" cssClass="form-horizontal" namespace="/course" enctype="multipart/form-data" theme="bootstrap" id="addForm">
	<s:textfield label="Id" name="course.id" ></s:textfield>
	<s:textfield label="Code" name="course.code"></s:textfield>
	<s:textfield label="Title" name="course.title"></s:textfield>
	<s:textfield label="Duration" name="course.duration"> </s:textfield>
	<s:textfield label="Start Date" name="course.startDate"></s:textfield>
	<s:textfield label="End Date" name="course.endDate"></s:textfield>
	
		
	<s:submit cssClass="btn btn-success btn-sm" formIds="addForm"/>
	<s:reset cssClass="btn btn-danger btn-sm" value="Cancel" class="btn btn-primary btn-sm" />
	
	<s:url action="viewEditCoursePage" var="editCourseDetails" namespace="/course">
			<s:param name="id" value="%{id}" />
	</s:url>
	
</s:form>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>

</body>
</html>
