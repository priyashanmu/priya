<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>" />
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>" ></script>

 <style>

form
{

width:800px;
background-color:white;
padding:40px;
margin:40px;
}
fieldset
{

width:500px;
background-color:pink;
padding:40px;
margin:40px;
}
</style>
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
      <li class="active"><a href="#">Home</a></li>
      <li class="active"><a href="aboutas">About us</a></li>
       
       <!-- <li class="active"><a href="images">Contact</a></li>
       --> <!--   
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="earring">Earrings</a></li>
          <li><a href="bangle">Bangles</a></li>
          <li><a href="bracelet">Bracelet</a></li>
        
        <li><a href="rings">Rings</a></li>
      </ul>  -->   
 <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${priy}" var="category"> 
          <li><a commandName="cat" href="categorypage?id=${category.fid}">${category.name}</a></li>
          </c:forEach>
      </ul> 
      </li> 

</ul>
</li>
    <ul class="nav navbar-nav navbar-right">
       <li><a href="memberShip"><span class="glyphicon glyphicon-user">Welcome ${userBean.userName }</span></a></li>
       <li><a href="login"><span class="glyphicon glyphicon-user"></span> Login</a></li>
      
   <%--  <li>      
<form action="logout" id="logout" method=post>
 
 <input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }"/>
 </form> 
  <c:if test="${pageContext.request.userPrincipal.name != null}">
              <h5 style=color:white>Welcome : ${pageContext.request.userPrincipal.name} 
                                <a href="javascript:document.getElementById('logout').submit()">Logout</a></h5> 
                 </c:if> 
        
        </li> --%>
    </ul>
    
  </div>

</div>
</nav>
  </div><br>
<br>
<div class="container">
<center><h1>SHIPPING DETAILS</h1></center>
 

 	<form action="./pay" method="post">		 
 <div class="form">
      <label for="UserName">NAME:</label>
      <input type="text" class="form-control" name="username" placeholder="Enter user name" required>
    </div></br>
    <div class="form-group">
  <label for="address">ADDRESS:</label>
  <textarea class="form-control" rows="5" placeholder="Enter the address" id="address" required></textarea>
</div>
    </br>
             
<div class="form">
      <label for="Email">EMAIL:</label>
      <input type="email" class="form-control" name="email" placeholder="Enter email" required>
    </div></br>
			<div class="form">
      <label for="Phone">Phone No:</label>
      <input type="number" class="form-control" name="number" placeholder="Enter phone number" required>
    </div></br></br>
			<input type="submit" class="btn  btn-success ribbon" value="Submit" /><br />
			
			</form>
			
			
			<!--  <a class="btn btn-success" href="pay">SUBMIT</a></button>
			 -->
			<%-- <button style="align:center" class="btn btn-md btn-success btn-block signup-btn"
									name="_eventId_submit" type="submit" value="Submit" >Submit</button></div></center></div>
 --%>
</div>
</div>
</div>
</div>
</body>
</html>