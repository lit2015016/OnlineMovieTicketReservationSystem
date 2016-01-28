<%@ page language="java" contentType="text/html;"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java" %> 
  
    <%@ taglib uri="/struts-tags" prefix="s" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cinemax</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/CINEMAX/jsp/css/style.css" rel="stylesheet" type="text/css" />
<script src="/CINEMAX/jsp/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-yui.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-replace.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/Gill_Sans_400.font.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/script.js" type="text/javascript"></script>



<script type="text/javascript">


function validateForm()
{
var x=document.forms["data"]["selectedcity"].value;
var y=document.forms["data"]["selectedmovie"].value;

if (x==-1)
  {
  alert("Please select the city");
  return false;
  }
if (y==-1)
{
alert("Please select the movie");
return false;
}

}
</script>



<head>


<body id="page1">
 <div class="tail-top">
   <div class="tail-bottom">
     <div id="main">
       <div id="header">
         <div class="row-1">
           <div class="fleft"><s:a href="/CINEMAX/client/MovieSelectAction"><span>Cinemax</span></s:a></div>
          <ul>
            <li><s:a href="/CINEMAX/client/MovieSelectAction"><img src="/CINEMAX/jsp/images/icon1-act.gif" alt="" /></s:a></li>
            <li><s:a href="/CINEMAX/jsp/contact-us.jsp"><img src="/CINEMAX/jsp/images/icon2.gif" alt="" /></s:a></li>
            <li><s:a href="/CINEMAX/jsp/sitemap.jsp"><img src="/CINEMAX/jsp/images/icon3.gif" alt="" /></s:a></li>
          </ul>
        </div>
         <div class="row-2">
          <ul>
            <li><a href="/CINEMAX/client/MovieSelectAction" class="active">Home</a></li>
            <li><s:a href="/CINEMAX/jsp/upcomingmovies.jsp">Upcoming Movies</s:a></li>
            <li><s:a href="/CINEMAX/jsp/about-us.jsp">About Us</s:a></li>
            <li><s:a href="/CINEMAX/jsp/contact-us.jsp">Contacts</s:a></li>
            <li class="last"><s:a href="/CINEMAX/jsp/sitemap.jsp">SiteMap</s:a></li>
          </ul>
          
        </div>
      </div>
       <div id="content">
         <div id="slogan">
           <div class="image png"></div>
           <div class="inside">
            <h2>Your guide to Movie theater</h2><span><h4>Because you are tired of watching movie on your laptop</h4></span>
            <p>
			</p>
             <div class="wrapper">
            <s:form action="MovieSelectAction" name="data" onchange="return validateForm()">
			<table >
			
			<tr><td>
			<s:select label="City" 
			headerKey="-1" headerValue="Select City"
			list="city" 
			name="selectedcity"/>
			
			</td>
			</tr>
			<tr><td>
			<s:select label="Movie" 
			headerKey="-1" headerValue="Select Movie"
			list="movies" 
			name="selectedmovie" onchange="this.form.submit()" /> 
			</s:form>
			</td>
			</tr>
			
			<s:form action="DateSelectAction" name="data" onchange="return validateForm()" >
			<s:hidden name="selectedcity"/>
			<s:hidden name="selectedmovie"/>
			<s:if test="selectedmovie!=NULL">		
			<tr><td>
			<s:select label="Date" 
			headerKey="-1" headerValue="Select Date"
			list="dates" 
			name="selecteddate" onchange="this.form.submit()"/>
			 
			</td>
			</tr>
			</s:if>
			</table>
			</s:form>
			
			
			</div>
          </div>
        </div>
         <div class="box">
           <div class="border-right">
             <div class="border-left">
               <div class="inner">
                <h3>Welcome to the world of <b><span>Cinemax</span></b></h3>
                <p>Cinemax where you find the most popular cinema halls, multiplexes, movie timings and events happening near your area.Cinemax  is a city specific local platform to help you plan your movie from comfort of your PC.</p>
                 <div class="img-box1"><img src="/CINEMAX/jsp/images/1page-img1.jpg" alt="" />Cinemax where you can book movie Tickets online. No more waiting in queues for Tickets. Just experience the convenience of booking a Ticket from the comfort of your home or office. You can even check the movie showtimes in Hyderabad, Bangalore, Delhi, Chennai, Mumbai, Pune & Kolkata etc...</div>
                <p></p>
              </div>
            </div>
          </div>
        </div>
         <div class="content">
          <h3>Now <span>Showing</span></h3>
          <ul class="movies">
            <li>
              <h4>Agnipath</h4>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/CINEMAX/jsp/images/agni.jpg" alt="" height="100" width="100"/>
              <p>In a small Indian village Mandwa, Vijay Dinanath Chauhan (Hrithik Roshan) is taught about the path of fire (Agneepath) by his principled father. His life is shattered completeley when the evil drug lord Kancha Cheena (Sanjay Dutt) hangs his father to death. Vijay leaves for Bombay with his pregnant mother played by Zarina Wahab, and takes an oath that he will return to Mandwa someday and bring back the glory of his father name. </p>
               <div class="wrapper"><a href="http://000proxy.com/browse.php?u=Oi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9MkJnZ2FNX2JDX3c%3D&b=1" class="link2"><span><span>View Trailor..</span></span></a></div>
            </li>
            <li>
              <h4>Underworld4:Awakening</h4>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/CINEMAX/jsp/images/urs.jpeg" alt="" height="100" width="100"/>
              <p>Kate Beckinsale, star of the first three films (Underworld, Underworld: Evolution, Rise of the Lyncans), returns in her lead role as the vampire warrioress Selene, who escapes imprisonment to find herself in a world where humans have discovered the existence of both Vampire and Lycan clans, and are conducting an all-out war to eradicate both immortal species.</p>
               <div class="wrapper"><a href="http://000proxy.com/browse.php?u=Oi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9RDRPTGQ5SlM0dTQmZmVhdHVyZT1mdnNy&b=1" class="link2"><span><span>View Trailor..</span></span></a></div>
            </li>
            <li class="last">
              <h4>Ek Mai Aur Ek Tu</h4>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/CINEMAX/jsp/images/imagtes.jpeg" alt="" height="100" width="100"/>
              <p>Rahul Kapoor (Imran Khan), 26, is on his way to become a carbon copy of his parentswhen he suddenly loses his job as an architect in Vegas. Afraid that he has let his parentsdown, Rahul decides to hide the truth and find another job. When by a twist of fate, hemeets Riana Braganza, a quick-witted hairstylist, who is everything he isn`t. A series of events lead them to meet on Christmas eve over a few drinks…</p>
               <div class="wrapper"><a href="#" class="link2" ><span><span>View Trailor..</span></span></a></div>
            </li>
            <li class="clear">&nbsp;</li>
          </ul>
        </div>
        
      </div>
       <div id="footer">
         <div class="left">
           <div class="right">
             <div class="footerlink">
              <p class="lf">Copyright &copy; 2012 <s:a href="#">Cinemax &reg</s:a> - All Rights Reserved</p>
              
               <div style="clear:both;"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>


</html>