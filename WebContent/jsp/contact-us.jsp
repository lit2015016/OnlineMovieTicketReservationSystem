<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="/struts-tags" prefix="s" %>
    <%-- <%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="sh" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cinemax | Contact Us</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/CINEMAX/jsp/css/style.css" rel="stylesheet" type="text/css" />
<script src="/CINEMAX/jsp/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-yui.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-replace.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/Gill_Sans_400.font.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/script.js" type="text/javascript"></script>

</head>
<body id="page5">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-1">
          <div class="fleft"><s:a href="/CINEMAX/client/MovieSelectAction"><span>Cinemax</span></s:a></div>
          <ul>
            <li><s:a href="/CINEMAX/client/MovieSelectAction"><img src="/CINEMAX/jsp/images/icon1.gif" alt="" /></s:a></li>
            <li><s:a href="/CINEMAX/jsp/contact-us.jsp"><img src="/CINEMAX/jsp/images/icon2-act.gif" alt="" /></s:a></li>
            <li><s:a href="/CINEMAX/jsp/sitemap.jsp"><img src="/CINEMAX/jsp/images/icon3.gif" alt="" /></s:a></li>
          </ul>
       </div >
        <div class="row-2">
          <ul>
            <li><s:a href="/CINEMAX/client/MovieSelectAction">Home</s:a></li>
            <li><s:a href="/CINEMAX/jsp/upcomingmovies.jsp">Upcoming Movies</s:a></li>
            <li><s:a href="/CINEMAX/jsp/about-us.jsp">About Us</s:a></li>
            <li><a href="/CINEMAX/jsp/contact-us.jsp" class="active">Contacts</a></li>
            <li class="last"><s:a href="/CINEMAX/jsp/sitemap.jsp">SiteMap</s:a></li>
          </ul>
       </div >
     </div >
      <div id="content">
        <div class="line-hor"></div>
        <div class="box">
          <div class="border-right">
            <div class="border-left">
              <div class="inner">
                <h3>Our <span>Contacts</span></h3>
                <div class="address">
                  <div class="fleft"><span>Zip Code:</span>411037<br />
                    <span>Country:</span>India<br />
                    <span>Telephone:</span>+91 020 4444444<br />
                    <span>Fax:</span>+91 44444444</div>
                  <div class="extra-wrap"><span>Info:</span><br />
                     Below numbers are of Cinemax, a third party ticketing site and not that of any Theatre or a Cinema Hall. We will be able to provide information for only those theatres/Cinema Hall companies whose tickets we sell. So kindly check before calling us if we are selling tickets for the Theatre you are interested in..
                    </div>
               </div >
             </div >
           </div >
         </div >
       </div >
        <div class="content">
          <h3>Contact <span>Form</span></h3>
          <form id="contacts-form" action="#">
            <fieldset>
              <div class="field">
                <label>Full Name:</label>
                <input type="text" value=""/>
             </div >
              <div class="field">
                <label>E-mail Id:</label>
                <input type="text" value=""/>
             </div >
              <div class="field">
                <label>Organization:</label>
                <input type="text" value=""/>
             </div >
              <div class="field">
                <label>Message:</label>
                <textarea cols="1" rows="1"></textarea>
             </div >
              <div class="wrapper"> <s:a href="#" class="link2"> <span> <span>Send</span> </span> </s:a></div >
            </fieldset>
          </form>
       </div >
     </div >
      <div id="footer">
        <div class="left">
          <div class="right">
            <div class="footerlink">
              <p class="lf">Copyright &copy; 2012 <s:a href="#">Cinemax &reg;</s:a> - All Rights Reserved</p>
              
              <div style="clear:both;"></div>
           </div >
         </div >
       </div >
     </div >
   </div >
 </div >
</div>
<script type="text/javascript"> Cufon.now(); </script>
<!-- END PAGE SOURCE -->
</body>
</html>