<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>B</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<c:url value='/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css'/>">
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/bootstrap-3.3.6-dist/js/bootstrap.min.js'/>"></script>
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
      <li class="active"><a href="pro">Home</a></li>
      <li class="active"><a href="aboutas">Abouts</a></li>
     
   
       <li class="active"><a href="images">Contact</a></li>
      
      <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="earring">Earrings</a></li>
          <li><a href="bangle">Bangles</a></li>
          <li><a href="bracelet">Bracelet</a></li>
     
        <li><a href="rings">Rings</a></li>
      </ul>   -->
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
      
      <li><a href="index"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</div>
</nav>
  </div>
  <center>
  <div class="container">
	<div class="row-fluid">
      <form class="form-horizontal">
        <fieldset>
          <div id="legend">
            <legend class="">Payment</legend>
          </div>
     
          <!-- Name -->
          <div class="control-group">
            <label class="control-group"  for="username">Card Holder's Name</label>
            <div class="controls">
              <input type="text" id="username" name="username" placeholder="" class="input-xlarge">
            </div>
          </div>
     
          <!-- Card Number -->
          <div class="control-group">
            <label class="control-group" class="form-control" for="email">Card Number</label>
            <div class="controls">
              <input type="text" id="email" name="email" placeholder="" class="input-xlarge">
            </div>
          </div>
     
          <!-- Expiry-->
          <div class="control-group">
            <label class="control-group" for="password">Card Expiry Date</label>
            <div class="controls">
              <select class="span3" name="expiry_month" id="expiry_month">
                <option></option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>1
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select>
              <select class="span2" name="expiry_year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
            </div>
          </div>
     
         
          <!-- <div class="control-group">
            <label class="control-label"  for="password_confirm">Card CVV</label>
            <div class="controls">
              <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="span2">
            </div>
          </div>  -->
     
          <!-- Save card -->
          <div class="control-group">
            <div class="controls">
              <label class="checkbox" for="save_card">
                <input type="checkbox" id="save_card" value="option1">
                Save card on file?
              </label>
            </div>
          </div>
     
          <!-- Submit -->
          <div class="control-group">
            <div class="controls">
              <button class="btn btn-success">Pay Now</button>
            </div>
          </div>
     
        </fieldset>
      </form>
    </div>
</div>
  </center>
  </body>
  </html>