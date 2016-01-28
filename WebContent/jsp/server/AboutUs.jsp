<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
    <%@ taglib  uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
 
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin | Modify</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/CINEMAX/jsp/server/style1.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
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
      <div id="site_title"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">Cinemax</a></span></div>
   </div>
    <div id="header_right"></div>
    
  
  <div id="menu">
    <div id="menu_left"></div>
    <div id="menu_middle">
      <ul>
        <li><a href="/CINEMAX/jsp/server/Login.jsp" onclick="return valid()" name="valid"><span>Home</span></a></li>
        <li><a href="/CINEMAX/jsp/server/ScreenChooser.jsp" >Screen Chooser</a></li>
        <li><a href="/CINEMAX/jsp/server/Update.jsp" >Update</a></li>
        
        <li><a href="/CINEMAX/jsp/server/AboutUs.jsp" class="current">About Us</a></li>
        <li><a href="/CINEMAX/jsp/server/ContactUs.jsp">Contact Us</a></li>
      </ul>
    </div>
    <div id="menu_right"></div>
  </div>
  </div>
  <div id="content">
    <div id="left_column">
    <div id="site_title">
      
      
      <h2>About <span>Us</span></h2></div>  
                <p class="p1">Cinemax is India's premiere comprehensive ticketing, information and analysis solutions provider. Established with a clear focus of providing cutting-edge digital solutions to the entertainment industry. Cinemax caters to cinemas and event organisers as well as the consumers and is the only company that provides a complete range of solutions through call centers, internet ticketing, kiosks and mobile ticketing.
                </p>
                <p>The core strength of this company is the uniqueness of its product and its well experienced and renowned management group having business strategies to cater to a wide sector of the entertainment industry with plans of expansion and to even market globally. The mission in establishing this company is to innovate a centralized ticketing platform for the entertainment segment with uniqueness in their approach, technological breakthrough and dynamic business practices.</p>
             <p>Cinemax has a vision to have tie-ups with theatres and theatre owners to subscribe for their service absolutely free of cost and let them avail of all the benefits of wider market, broader sales, added revenue and also going the technology way!
             
             </p>
                
                <div id="site_title">          
  <h2>Our <span>Team</span></h2></div>
          <ul class="list">
            <li><img src="/CINEMAX/jsp/server/images/pp.jpg" alt="" height="100" width="150"/><s:a href="#">Team Member One</s:a><br />
              Pankaj Pimpalkar </li>
            <li><img src="/CINEMAX/jsp/server/images/nachu.png" alt="" height="100" width="150"/><s:a href="#">Team Member Two</s:a><br />
              Nachiket Paluskar</li>
            <li><img src="/CINEMAX/jsp/server/images/nik.png" alt="" height="100" width="150"/><s:a href="#">Team Member Three</s:a><br />
              Nikhil Singh Rajput</li>
              <li><img src="/CINEMAX/jsp/server/images/prasad.png" alt="" height="100" width="150"/><s:a href="#">Team Member Four</s:a><br />
              Prasad Patankar</li>
              <li><img src="/CINEMAX/jsp/server/images/rohit.png" alt="" height="100" width="150"/><s:a href="#">Team Member Five</s:a><br />
              Rohit Pareek</li>
            </ul>
     
    
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
        <h2>Media Partner</h2>
<br/>Mc Donalds<br/>
        Coca Cola Ltd<br/>
        Pepsi India<br/>
        
      </div>
      <div class="section2">
        <h2>Useful Links</h2>
        <a href="/CINEMAX/jsp/server/Login.jsp">Home</a><br />
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
    