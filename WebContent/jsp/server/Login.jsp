<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib  uri="/struts-tags" prefix="s" %>
	<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin | Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/CINEMAX/jsp/server/style1.css" rel="stylesheet" type="text/css" />
<script  type="text/javascript">
function validateForm()
{
var x=document.forms["login"]["username"].value;
var y=document.forms["login"]["password"].value;
if (x==null || x=="")
  {
  alert("Please enter the user name");
  return false;
  }
if (y==null || y=="")
{
alert("Enter the password");
return false;
}


}</script>
</head>
<body>

<div id="container">
 
   
 <div id="header">
    <div id="header_left">
      <div id="site_slogan">Share your movies @</div>
      <div id="site_title"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/CINEMAX/jsp/server/Login.jsp">Cinemax</a></span></div>
   </div>
    <div id="header_right"></div>
    
  
  <div id="menu">
    <div id="menu_left"></div>
    <div id="menu_middle">
      <ul>
        <li><a href="/CINEMAX/jsp/server/Login.jsp" class="current"><span>Home</span></a></li>
        
        <li><a href="/CINEMAX/jsp/server/LoginAboutUs.jsp">About Us</a></li>
        <li><a href="/CINEMAX/jsp/server/LoginContactUs.jsp">Contact Us</a></li>
      </ul>
    </div>
    <div id="menu_right"></div>
  </div>
  </div>
  <div id="content">
    <div id="left_column">
    <div id="site_title">  <h1>Welcome to <span>Cinemax</span></h1></div>
      <p>Cinemax where you can add the most popular cinema ,Trailor,Movie timings and events happening near your area.Cinemax  is a city specific local platform to help you to release movie according to your comfort your and add easily movie to this site</p>
      <p class="text_area"></p>
      <div class="section1">
        <h1 class="newphototitle">UpComing Movies</h1>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie9.jpg" alt="" height="100" width="100" /></a> </div>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie11.jpg"  alt="" height="100" width="100" /></a> </div>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie12.jpg"  alt="" height="100" width="100"/></a> </div>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie10.jpg"  alt="" height="100" width="100"/></a> </div>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie2.jpg"  alt="" height="100" width="100"/></a> </div>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie3.jpg" alt="" height="100" width="100"/></a> </div>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie7.jpg"  alt="" height="100" width="100"/></a> </div>
        <div class="subsection"> <a href="#"><img src="/CINEMAX/jsp/server/images/movie8.jpg"  alt="" height="100" width="100" /></a> </div>
        <div class="more"></div>
      </div>
      <div class="section1">
        <h1 class="latestnews">Latest News</h1>
        <div class="newsbox">
          <div class="newstitle">
            <h1><a href="#">Agneepath release..</a></h1>
            <div class="publish_date">Release Date: 26-01-2012  <a href="#"></a> · <a href="#"></a> · <a href="#"></a></div>
          </div>
          <p>Most awaited movie Agneepath is going to release this thursday.<a href="#"></a></p>
        </div>
        <div class="newsbox">
          <div class="newstitle">
            <h1><a href="#">Reheman's new musical..</a></h1>
            <div class="publish_date">Launch album is on : 18-12-2012 ·Album <a href="www.youtube.com/rehman new launch"></a> · <a href="#"></a><a href="www.youtube.com">More Album</a></div>
          </div>
          <p> <a href="#"></a></p>
        </div>
      </div>
    </div>
    <div id="right_column">
      <div class="section2">
        <h2>Member Login Here
      
        <s:form action="ServerActionValidate" name="login" onsubmit="return validateForm()">

		<s:textfield name="username" label="Username"></s:textfield>
		<s:password name="password" label="Password"></s:password>
		<div class="button">
		<s:submit name="submit" cssClass="submit"></s:submit>
		</h2>
		</div>
		</s:form>
	
      </div>
      <div class="section2">
        <h2>Media Partners</h2>
        <br/>Mc Donalds<br/>
        Coca Cola Ltd<br/>
        Pepsi India<br/>
        
        
      </div>
      <div class="section2">
         <h2>Useful Links</h2>
        <a href="/CINEMAX/jsp/server/Login.jsp">Home</a><br />
        
        <a href="/CINEMAX/jsp/server/LoginAboutUs.jsp">About Us</a><br />
        <a href="/CINEMAX/jsp/server/LoginContactUs.jsp">Contact Us</a><br />
      </div>
      
		<br />
&nbsp; </div>
  </div>
  <div id="footer">
    <div id="footer_left"></div>
    <div id="footer_middle"> <a href="/CINEMAX/jsp/server/Login.jsp">Home</a> | <a href="/CINEMAX/jsp/server/LoginAboutUs.jsp">About Us</a> | <a href="/CINEMAX/jsp/server/LoginTnC.jsp">Terms & Conditions</a> | <a href="/CINEMAX/jsp/server/LoginContactUs.jsp">Contact Us</a><br />
      Copyright © 2012 <a href="/CINEMAX/jsp/server/Login.jsp"> &nbsp;&nbsp;&nbsp;Cinemax&nbsp;&nbsp;&reg;&nbsp;&nbsp;&nbsp;&nbsp;</a>All Rights Reserved</div>
    <div id="footer_right"></div>
  </div>
</div>
</body>
</html>
    