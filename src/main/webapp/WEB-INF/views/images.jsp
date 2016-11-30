<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>contact</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
  <!-- <style>
 body
{
background-image: url("<c:url value='/resources/image/m3.jpg'/>"); 
  background-repeat: no-repeat; 
background-size:cover; 
}
 </style> -->
</head>

<body data-target=".navbar">
<div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     <div class="navbar-header">
      <div class="navbar-brand">Women Accessories World</div>
    </div>
     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     </button>
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav navbar-left">
      <li class="active"><a href="index">Home</a></li>
      <li class="active"><a href="aboutas">Abouts</a></li>
  
   
       <li class="active"><a href="images">Contact</a></li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${priy}" var="category"> 
          <li><a commandName="cat" href="categorypage?id=${category.fid}">${category.name}</a></li>
          </c:forEach>
      </ul> 
      </li> 
      
      
      <!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="earring">Earrings</a></li>
          <li><a href="bangle">Bangles</a></li>
          <li><a href="bracelet">Bracelet</a></li>
     
        <li><a href="rings">Rings</a></li>
      </ul>  --> 
</ul>
</li>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="index"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</div>
</nav>
  </div><div class="container-fluid" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
   

<div class="section" id="contact" style="background-color: #333;">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section">
              <div class="container">
                <div class="row">
                  
                  <div class="col-md-6">
                    <h1 style="color:white">Contact Details</h1>
                    <br>
                    <form role="form">
                      <div class="form-group">
                        <label class="control-label" for="exampleInputText" style="color:white">your name</label>
                        <input class="form-control" id="exampleInputEmail1" placeholder="your name" type="text">
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputEmail1" style="color:white">Email address</label>
                        <input class="form-control" id="exampleInputEmail1" placeholder="Enter email" type="email">
                      </div>
                      <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1" style="color:white">your text</label>
                        <textarea class="form-control" id="exampleInputPassword1"></textarea>
                      </div>
                      <button type="submit" class="btn btn-success">Submit</button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div><br><br><br><br><br>
    <div class="container">
  <div class="row">
  <hr>
    <div class="col-lg-12">
      <div class="col-md-8">
        <a href="#">Terms of Service</a> | <a href="#">Privacy</a>    
      </div>
      <div class="col-md-4">
        <p class="muted pull-right">� 2016 Web site Name. Women Accessories</p>
      </div>
    </div>
  </div>  



</body>
</html>