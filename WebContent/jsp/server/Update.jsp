<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin | Update</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/CINEMAX/jsp/server/style1.css" rel="stylesheet"
	type="text/css" />
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
<div id="site_title"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
	href="/CINEMAX/jsp/server/Login.jsp">Cinemax</a></span></div>
</div>
<div id="header_right"></div>


<div id="menu">
<div id="menu_left"></div>
<div id="menu_middle">
<ul>
	<li><a href="/CINEMAX/jsp/server/Login.jsp" onclick="return valid()" name="valid"><span>Home</span></a></li>
        <li><a href="/CINEMAX/jsp/server/ScreenChooser.jsp" >Screen Chooser</a></li>
        <li><a href="/CINEMAX/jsp/server/Update.jsp" class="current">Update</a></li>
        
        <li><a href="/CINEMAX/jsp/server/AboutUs.jsp">About Us</a></li>
        <li><a href="/CINEMAX/jsp/server/ContactUs.jsp">Contact Us</a></li>
</ul>
</div>
<div id="menu_right"></div>
</div>
</div>
<div id="content">
<div id="left_column">
<div id="site_title">
<h1>Welcome to <span>Cinemax</span></h1>
</div>


<center>
<h3>Update Movie Timing,Rate,Date</h3>
<br />
<br />



<s:form action="updateMovieInfo1">

	<s:select name="showDate" value="date" list="sysdates"
		label="Select Date">

	</s:select>
	<table border="1">
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie1" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time1" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate1" />
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie2" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time2" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate2" />
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie3" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time3" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate3" />
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie4" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time4" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate4" />
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie5" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time5" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate5" />
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie6" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time6" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate6" />
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie7" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time7" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate7" />
				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			<table>
				<tr>
					<s:select label="Movie" headerKey="-1" headerValue="Select Movie"
						list="movies" name="selectedmovie8" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:textfield name="time8" label="Time" />
				</tr>
			</table>
			</td>
			<td>
			<table>
				<tr>
					<s:select label="Rate Type" headerKey="-1"
						headerValue="Select Type" list="type" name="selectedrate8" />
				</tr>
			</table>
			</td>
		</tr>
<tr><td align="center"><table><tr><s:submit name="update" value="Update" align="center" cssClass="submit" /></tr></table></td>
<td align="center"><table><tr><s:reset name="clear" value="Clear" align="center" cssClass="submit"/></tr></table></td>
<td align="center"><table><tr></tr></table></td>
</tr>
	</table>

	
	
	
</s:form> <br />
<br />
<s:form action="currentMovieInfo">

	<s:submit value="MODIFY" cssClass="submit"/>
	
</s:form>
</center>


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
<h2>Member LogOut <s:form action="logout">
	<div class="button"><s:form action="logout">
		<s:submit name="logout" value="Logout" align="right" cssClass="submit" />
	</s:form></div>
</s:form></h2>
</div>
<div class="section2">
<h2>Media Partner</h2>
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
