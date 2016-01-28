<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="/struts-tags" prefix="s" %>
    <%-- <%@ taglib uri="http://jakarta.apache.org/struts/tags-html" prefix="sh" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cinemax| Upcoming movies</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/CINEMAX/jsp/css/style.css" rel="stylesheet" type="text/css" />
<script src="/CINEMAX/jsp/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-yui.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-replace.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/Gill_Sans_400.font.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/script.js" type="text/javascript"></script>

</head>
<body id="page3">
<!-- START PAGE SOURCE -->
<div class="tail-top">
  <div class="tail-bottom">
    <div id="main">
      <div id="header">
        <div class="row-1">
          <div class="fleft"><s:a href="/CINEMAX/client/MovieSelectAction"><span>Cinemax</span></s:a></div >
          <ul>
            <li><a href="/CINEMAX/client/MovieSelectAction"><img src="/CINEMAX/jsp/images/icon1.gif" alt="" /></a></li>
            <li><s:a href="/CINEMAX/jsp/contact-us.jsp"><img src="/CINEMAX/jsp/images/icon2.gif" alt="" /></s:a></li>
            <li><s:a href="/CINEMAX/jsp/sitemap.jsp"><img src="/CINEMAX/jsp/images/icon3.gif" alt="" /></s:a></li>
          </ul>
        </div >
        <div class="row-2">
          <ul>
            <li><s:a href="/CINEMAX/client/MovieSelectAction">Home</s:a></li>
            <li><a href="/CINEMAX/jsp/upcomingmovies.jsp" class="active">Upcoming Movies</a></li>
            <li><s:a href="/CINEMAX/jsp/about-us.jsp" >About Us</s:a></li>
            <li><s:a href="/CINEMAX/jsp/contact-us.jsp">Contacts</s:a></li>
            <li class="last"><s:a href="/CINEMAX/jsp/sitemap.jsp">SiteMap</s:a></li>
          </ul>
        </div >
      </div >
      <div id="content">
        <div class="line-hor"></div >
        <div class="box">
          <div class="border-right">
            <div class="border-left">
              <div class="inner">
                <h3>Upcoming <span>Movies</span></h3>
                <p><marquee behavior="scroll">
<img src="/CINEMAX/jsp/images/inception.jpg" width="100" height="120" />
<img src="/CINEMAX/jsp/images/Don-2.jpg" width="100" height="120">
<img src="/CINEMAX/jsp/images/ironman.jpg" width="100" height="120">
<img src="/CINEMAX/jsp/images/the-hangover-2.jpg" width="100" height="120">
<img src="/CINEMAX/jsp/images/Tron.jpg" width="100" height="120">
<img src="/CINEMAX/jsp/images/znmd.jpg" width="100" height="120">
<img src="/CINEMAX/jsp/images/agni.jpg" width="100" height="120">
<img src="/CINEMAX/jsp/images/urs.jpeg" width="100" height="120">
<img src="/CINEMAX/jsp/images/imagtes.jpeg" width="100" height="120">
</marquee>
				</p>
              </div >
            </div >
          </div >
        </div >
        <div class="content">
          <h3>Coming <span>Soon</span></h3>
          <ul class="list">
            <li><img src="/CINEMAX/jsp/images/agni.jpg" alt="" height="100" width="100"/><s:a href="#">AAgnipath</s:a><br />
              In a small Indian village Mandwa, Vijay Dinanath Chauhan (Hrithik Roshan) is taught about the path of fire (Agneepath) by his principled father. His life is shattered completeley when the evil drug lord Kancha Cheena (Sanjay Dutt) hangs his father to death. Vijay leaves for Bombay with his pregnant mother played by Zarina Wahab, and takes an oath...</li>
            <li><img src="/CINEMAX/jsp/images/urs.jpeg" alt="" height="100" width="100"/><s:a href="#">Underworld4:Awakening</s:a><br />
              Kate Beckinsale, star of the first three films (Underworld, Underworld: Evolution, Rise of the Lyncans), returns in her lead role as the vampire warrioress Selene, who escapes imprisonment to find herself in a world where humans have discovered the existence of both Vampire and Lycan clans, and are conducting an all-out war to eradicate both immortal...</li>
            <li><img src="/CINEMAX/jsp/images/imagtes.jpeg" alt=""height="100" width="100" /><s:a href="#">Ek Mai Aur Ek Tu</s:a><br />
              Rahul Kapoor (Imran Khan), 26, is on his way to become a carbon copy of his parentswhen he suddenly loses his job as an architect in Vegas. Afraid that he has let his parentsdown, Rahul decides to hide the truth and find another job. When by a twist of fate, hemeets Riana Braganza, a quick-witted hairstylist, who is everything he isn`t...</li>
          </ul>
        </div >
      </div >
      <div id="footer">
        <div class="left">
          <div class="right">
            <div class="footerlink">
              <p class="lf">Copyright &copy; 2012 <s:a href="#">Cinemax &reg;</s:a> - All Rights Reserved</p>
              
              <div style="clear:both;"></div >
            </div >
          </div >
        </div >
      </div >
    </div >
  </div >
</div >

<script type="text/javascript"> Cufon.now(); </script>
<!-- END PAGE SOURCE -->
</body>

</html>