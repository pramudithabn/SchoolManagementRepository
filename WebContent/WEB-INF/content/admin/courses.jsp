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
        height: 100;
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
      <a class="navbar-brand" href="#">CRC</a>
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
    </div>
    <div class="col-sm-8 text-left"> 
      <h2 style="color:#1D1A9A">Courses</h2>
      <p><i>The curriculum for the courses conducted by CRC was developed by NIE.</i> </p>
      <hr>
      <ul>
      <li> <h3>Application for Basic/Intermediate Computer courses for G.C.E (O/L) and G.C.E (A/L)</h3>
      		<ul>
      			<li>Period: 03 Months (120hrs)</li>
      			<li>Facility fee: Rs.2400/=</li>
      			<li>Time: Week Days(7.30 am t0 1.30pm)
      				<ul>
      					<li>Operating Systems</li>
      					<li>Word Processing</li>
      					<li>Spread sheet</li>
      					<li>Multimedia Presentation</li>
      					<li>DBMS</li>
      					<li>Programming</li>
      				</ul>
      			</li>
      			
      		</ul>
      	</li>
      	
      	<li><h3>Special Courses</h3>
      		<ul>
      			<li>Kid Courses
      				<ul>
      					<li>Stage I
      						<ul>
      							<li>Basic Introduction of Computer for Grade 5,6,7,8 students</li>
      							<li>Duration: 40hrs</li>
      							<li>Facility fee: Rs.2000/=</li>
      							<li>Time: Week Days and Week Ends(1.30 am t0 5.30pm)</li>
      						</ul>
      					</li>
      					
      					<li>Stage II
      						<ul>
      							<li>Basic Introduction of Computer for Grade 9,10,11 students</li>
      							<li>Duration: 40hrs</li>
      							<li>Facility fee: Rs.2000/=</li>
      							<li>Time: Week Days and Week Ends(1.30 am t0 5.30pm)</li>
      						</ul>
      					</li>
      				</ul>
      			</li>
      			<li><h3>Advanced Courses</h3>
      				<ol>
      					<li>Computer Application Assistant - N.V.Q Level3</li>
      					<li>Certificate of Office Application</li>
      					<li>Certificate in Web Designing</li>
      					<li>Certificate in Graphics Designing and Animation</li>
      					<li>Certificate in PC Assembly</li>
      					<li>Certificate in Computer Networking</li>
      					<li>Certificate in Desktop Publishing</li>
      					<li>Certificate in Auto CAD (Special Course)</li>
      					
      				</ol>
      			</li>
      		</ul>
      	</li>
      	
      	
      </ul>
     
    
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
  <p>©2017 Copyrights WPBN</p>
</footer>

</body>
</html>
