<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Students</title>
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
        
        <s:url action="viewCoursesPage" var="urlViewCoursesPage" namespace="/admin"></s:url>
        <li><s:a href="%{urlViewCoursesPage}">Courses</s:a></li>
        
        <li class="active"><a href="#">Students</a></li>
        
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
    
   	 <%--  <s:url action="viewStudentsList" var="urlViewStudentsList" namespace="/student"></s:url>
	  <p><s:a cssClass="button" href="%{urlViewStudentsList}">View Students List</s:a></p> --%>
	  
      <s:url action="addNewStudent" var="urlAddStudent" namespace="/student"></s:url>
	  <p><s:a cssClass="button" href="%{urlAddStudent}">Register New Student</s:a></p>
      
      <p><a href="#">Link</a></p>
    </div>
    
    <!-- Content goes here -->
    <div class="col-sm-8 text-left"> 
      <h3>Registered Students List</h3>
      
      	
      
      
      <s:form action="deleteStudent" namespace="/student"  id="listForm">
      <table class="table table-bordered col-xs-6 table-striped" id="list">
      
      	<tr>
			<td colspan="10">
			<s:url action="deleteStudent" var="urlDeleteStudent" namespace="/student" />
			<s:a href="#" cssClass="btn btn-danger btn-md" id="deleteBtn" role="button">Delete</s:a>
			</td>
		</tr>
		<tr>
			<th>ID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>ADDRESS</th>
			<th>BIRTH DATE</th>
			<th>GENDER</th>
			<th>SCHOOL</th>
			<th>NIC</th>


		</tr>
		
		<s:iterator value="list">
			<tr>
				<%-- <s:url action="editUser" var="urlEditUser" namespace="/user">
					<s:param name="id" value="%{id}" />
				</s:url> --%>
				<td><s:property value="id" /></td>
				<td><s:property value="fname"/></td>
				<td><s:property value="lname"/></td>
				<td><s:property value="address"/></td>
				<td><s:property value="dob" /></td>
				<td><s:property value="gender"/></td>
				<td><s:property value="school"/></td>
				<td><s:property value="nic"/></td>
				
				<td>
					<s:url action="editStudent" var="urlEditStudent" namespace="/student">
						<s:param name="id" value="%{id}" />
					</s:url>
					<s:a href="%{urlEditStudent}" cssClass="btn btn-primary btn-xs " role="button">Edit</s:a>
				</td>
				
				<td>
					<s:checkbox theme="simple" fieldValue="%{id}" name="selected" list = "list" cssClass="CheckedUsers" id="%{id}"/>
				</td> 
			</tr>
		</s:iterator>
	</table>
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

<script type="text/javascript">
	$(document).ready(function() {
		//alert("alerteeeeeeee");

		$("#deleteBtn").click(function(event) {

			var selected = [];
			$('.CheckedUsers:checked').each(function() {
				selected.push(this);
			});

			//alert(selected.length);

			if (selected.length == 0) {
				alert("Please select users to delete.");
				event.preventDefault();
			} else {
				var c = confirm("Are you sure to delete this student?");
				if (c == false) {
					event.preventDefault();
				} 
				else{
					event.preventDefault();
					$('#listForm').submit();
				}
			}
		});

	});
</script>
</html>


