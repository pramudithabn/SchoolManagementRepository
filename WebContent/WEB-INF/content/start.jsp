<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome to CRC</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  
  <style>
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }

    .carousel-inner img {
      width: 100%; /* Set width to 100% */
      min-height: 200px;
    }

    /* Hide the carousel text when the screen is less than 600 pixels wide */
    @media (max-width: 600px) {
      /* .carousel-caption {
        display: none; 
      } */
    }
    
    .nav{
    height:100px;
    }
    
    .para{
    font-family: "Georgia";
    font-size: 17px;
    }
    
    body {
    background-color:#A195FB  ;
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
      <a class="navbar-brand text-center" href="#"><h1 style="font-family:Verdana">Computer Resource Center</h1></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     
      <ul class="nav navbar-nav navbar-right">
      
           
      	<%-- <s:url action="showSignInFrom" var="urlShowSignInFrom" namespace="/signin"></s:url>
        <li><sj:a href="%{urlShowSignInFrom}" targets="targetDiv"><span class="glyphicon glyphicon-log-in"></span> Sign In</sj:a></li> --%>
     
     	<s:url action="showSignInFrom" var="urlShowSignInFrom" namespace="/signin"></s:url>
        <li><s:a href="%{urlShowSignInFrom}" targets="targetDiv"><span class="glyphicon glyphicon-log-in"></span> Sign In</s:a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
<div class="row">
  <div class="col-sm-8">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="carousel-item item active ">
          <!-- <img src="https://placehold.it/800x400?text=Application for Basic Computer Course for G.C.E (O/L)" alt="Image"> -->
         
         <img alt="" src="lab.jpg" alt="Image" style="width:800px;height:400px;">
          <div class="carousel-caption">
            <h3>CRC Wattegama</h3>
            <p></p>
          </div>      
        </div>

        <div class="item">
          <img src="lab.jpg" alt="Image" style="width:800px;height:400px;">
          <div class="carousel-caption">
            <h3>CRC Wattegama</h3>
            <p>Lorem ipsum...</p>
          </div>      
        </div>
      </div>

      <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>
  <div class="col-sm-4"  id="targetDiv">
  
  <%--------------signin content goes here------------%>
  
  
  <s:actionmessage cssClass="alert alert-success"/>
    <div class="well" style="border: 2px solid #941A9E; border-radius: 5px; background-color: #E9C6EC;">
      <p class="para">Join with us after G.C.E O/L and A/Ls.</p>
    </div>
    <div class="well "style="border: 2px solid #941A9E; border-radius: 5px; background-color: #E9C6EC;">
       <p class="para">Medium: English/Sinhala/Tamil</p>
    </div>
    <div class="well "style="border: 2px solid #941A9E; border-radius: 5px; background-color: #E9C6EC;">
       <p class="para">Advanced Courses upto NVQ Level 03</p>
    </div>
    
    <div class="well "style="border: 2px solid #941A9E; border-radius: 5px; background-color: #E9C6EC;">
       <p class="para">Classes on Week Days & Week Ends</p>
    </div>
  </div>
</div>
<hr>
</div>

<div class="container text-center">    
  <br>
  <div class="row">
  
     <div class="col-sm-3">
      <div class="well">
      <h5><b>Contact for more infomation</b></h5>
       <p style="font-family:Lucida Console">Tel:- 0812470023</p>
       <p  style="font-family:Lucida Console">email:- zcrcwattegama@gmail.com</p>
      </div>
    </div>
    
    <div class="col-sm-3">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>
    
    <div class="col-sm-3">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>  
  </div>
  <hr>
</div>

<br>

<footer class="container-fluid text-center">
  <p>Copyrights @ WPBN</p>
</footer>

</body>
</html>
