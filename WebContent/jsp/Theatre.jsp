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

<link rel="stylesheet" type="text/css" href="/CINEMAX/jsp/css/shadowbox.css">
<script type="text/javascript" src="/CINEMAX/jsp/js/shadowbox.js"></script>
<script type="text/javascript">
Shadowbox.init({modal: true});
</script>





</head>


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
            <li><a href="/CINEMAX/client/MovieSelectAction" class="active">Theatre</a></li>
      
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
             <s:form action="TheatreSelectAction">
			<table >
			
			<tr><td>
			<s:select label="City" 
			headerKey="-1" headerValue="Select City"
			list="city" 
			name="selectedcity" />
			
			</td>
			</tr>
			<tr><td>
			<s:select label="Movie" 
			headerKey="-1" headerValue="Select Movie"
			list="movies" 
			name="selectedmovie" onchange="this.form.submit()"/> 
			</s:form>
			</td>
			</tr>
			
<s:form action="DateSelectAction">
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
			</s:form>
			</table>
			</div>
          </div>
        </div>
         <div class="box">
           <div class="border-right">
             <div class="border-left">
               <div class="inner">
                <h3>Available <b><span>Shows</span></b></h3>
                <p></p>
                 <div class="img-box1">
                 <s:iterator id="Show" value="showList">
             <s:url id="action" action="RateSelectAction">
             <s:param name="showid"><s:property value="showid"/></s:param>
             </s:url>
            
<s:property value="theatre.getName()"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a rel="shadowbox;height=700;width=1400" href="${action}" ><s:property value="time"/></a><br/><br/>


</s:iterator>
                 </div>
                <p></p>
              </div>
            </div>
          </div>
        </div>
         <div class="content">
         
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