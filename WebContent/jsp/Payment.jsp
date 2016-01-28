<%@ page language="java" contentType="text/html;"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java" %> 

    <%@ taglib uri="/struts-tags" prefix="s" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cinemax|Payment </title>

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
var x=document.forms["bank"]["to"].value;
var atpos=x.indexOf("@");
var dotpos=x.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
}







function checkIt(evt)
{
var charCode=(evt.which)?evt.which:event.keyCode;
if(charCode>31 && (charCode<48 || charCode>57))
{
alert("Please enter the numbers only.");
return false;
}
return true;
}

</script>



<head>
<body id="page1">
<!-- START PAGE SOURCE -->
 <div class="tail-top">
   <div class="tail-bottom">
     <div id="main">
       <div id="header">
         <div class="row-1">
           <div class="fleft"><a href="/CINEMAX/client/MovieSelectAction"><span>Cinemax</span></a></div>
          
        </div>
         
      
       <div id="content">
         <div id="slogan">
           <div class="image png"></div>
           <div class="inside">
             <div class="wrapper">
			<table>
			</table>
			</div>
          </div>
        </div>
         <div class="box">
           <div class="border-right">
             <div class="border-left">
               <div class="inner">
               
               
               
               
                <h2><b><span>User and Payment Details</span></b></h2>
              This is Order Summary
<s:form action="SendEmailAction" name="bank"   onsubmit="return validateForm()">

<table align="right"><tr><td>Theatre: <s:property value="sh1.getTheatre().getName()"/></td></tr>
<tr><td>Movie  :  <s:property value="sh1.getMovie().getName()"/></td></tr>
<tr><td>Date   :   <s:property value="sh1.getShowdate()"/></td></tr>
<tr><td>Time   :  <s:property value="sh1.getTime()"/><br/></td></tr>
<tr><td>Seat No   :  <s:property value="bookedseat"/><br/></td></tr>
<tr><td>Total price  :  <s:property value="totalprice"/><br/></td></tr>
<tr><td>Convenience Charge (Rs. 10 per ticket) has  been applied<br/></td></tr>
</table>
<table>
<tr>
<td>
<s:select label="Bank" 
		headerKey="-1" headerValue="Select Bank"
		list="#{'01':'IDBI','02':'ICICI','03':'HDFC','04':'AXIS'}"
  		name="banktype" /></td>
  		
  		
        <tr>        <s:textfield label="Card No" onkeypress="return checkIt(event)" maxlength="16"/></b></h4>
                
                 
                <h4><b>
            
                <s:textfield label="CVV" onkeypress="return checkIt(event)" maxlength="3"/></b></h4>
                
                

<s:textfield name="to" label="EmailID" required="true" ></s:textfield>
<s:textfield  label="Mob No." required="true" onkeypress="return checkIt(event)" maxlength="10"></s:textfield>

<s:hidden name="bookedseat"></s:hidden>
<s:submit value="Make the Payment" ></s:submit>
</table>
</s:form>
              
              
                
                 
                <p></p>
              </div>
            </div>
          </div>
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