<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
 
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin | Screen Chooser</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/CINEMAX/jsp/server/style1.css" rel="stylesheet" type="text/css" />
<script  type="text/javascript">
function validateForm()
{
var x=document.forms["screen"]["screenno"].value;

if (x==-1)
  {
  alert("Please select the screen");
  return false;
  }

}

function valid()
{
var y=document.forms["screen"]["screenno"].value;

if (y==-1)
  {
  alert("Please logout");
  return false;
  }

}

</script>
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
        <li><a href="/CINEMAX/jsp/server/Login.jsp" onclick="return valid()" name="valid"><span>Home</span></a></li>
        <li><a href="/CINEMAX/jsp/server/ScreenChooser.jsp" class="current">Screen Chooser</a></li>
        <li><a href="/CINEMAX/jsp/server/Update.jsp">Update</a></li>
        
        <li><a href="/CINEMAX/jsp/server/AboutUs.jsp">About Us</a></li>
        <li><a href="/CINEMAX/jsp/server/ContactUs.jsp">Contact Us</a></li>
      </ul>
    </div>
    <div id="menu_right"></div>
  </div>
  </div>
  <div id="content">
    <div id="left_column">
    <div id="site_title">  <h1>Welcome to <span>Cinemax</span></h1>
      
  
  <h2>   Select the Screen which you want to Update
<table>
<tr><td>
<s:form action="updateMovieInfo" onsubmit=" return validateForm()" name="screen">
<s:select label="Screen" 
		headerKey="-1" headerValue="Select Screen"
		list="#{'01':'Screen 1','02':'Screen 2','03':'Screen 3','04':'Screen 4'}"
  		name="screenno" />
</td></tr>
<tr><td>
<s:submit value="Update"  cssClass="submit"/><br/><br/>
</s:form>
</td></tr>

</table>

</h2>      
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
      	<h2>Member LogOut
         	<s:form action="logout">
         	<div class="button">
			<s:submit value="Logout" align="right" cssClass="submit" />
			</div>
			</s:form>
		</h2>
      </div>
      <div class="section2">
        <h2>Media Partners</h2>
        <br/>Mc Donalds<br/>
        Coca Cola Ltd<br/>
        Pepsi India<br/>
        
        
      </div>
      <div class="section2">
        <h2>Useful Links</h2>
        <a href="/CINEMAX/jsp/server/Login.jsp" onclick="return valid()" name="valid">Home</a><br />
        <a href="/CINEMAX/jsp/server/ScreenChooser.jsp">Screen Chooser</a><br />
        <a href="/CINEMAX/jsp/server/Update.jsp">Update</a><br />
        
        <a href="/CINEMAX/jsp/server/AboutUs.jsp">About Us</a><br />
        <a href="/CINEMAX/jsp/server/ContactUs.jsp">Contact Us</a><br />
      </div>
      
  </div>
  <div id="footer">
    <div id="footer_left"></div>
    <div id="footer_middle"><a href="/CINEMAX/jsp/server/Login.jsp" onclick="return valid()" name="valid">Home</a> | <a href="/CINEMAX/jsp/server/AboutUs.jsp">About Us</a> | <a href="/CINEMAX/jsp/server/ContactUs.jsp">Contact Us</a><br />
      Copyright © 2012 <a href="/CINEMAX/jsp/server/Login.jsp"> &nbsp;&nbsp;&nbsp;Cinemax&nbsp;&nbsp;&reg;</a></div>
    <div id="footer_right"></div>
  </div>
</div>
</body>
</html>
    