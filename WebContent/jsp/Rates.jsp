<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rates</title>

<link href="/CINEMAX/jsp/css/style.css" rel="stylesheet" type="text/css" />
<script src="/CINEMAX/jsp/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-yui.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-replace.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/Gill_Sans_400.font.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/script.js" type="text/javascript"></script>
<script type="text/javascript">

function calculate()
{
	
   document.getElementById("amount").value=((document.getElementById("selectedrate").value).split("-")[1]*document.getElementById("quantity").value);
   return ((document.getElementById("selectedrate").value).split("-")[1]*document.getElementById("quantity").value);
}
function validateForm()
{
var x=document.forms["seat"]["selectedrate"].value;
var y=document.forms["seat"]["selectedquantity"].value;

if (x==0)
  {
  alert("Please select the rate");
  return false;
  }
if (y==0)
{
alert("Please select the quantity");
return false;
}

}
</script>
</head>
 <%@ taglib uri="/struts-tags" prefix="s" %>
<body>
<br/><br/>
<s:form action="SeatSelectAction" name="seat" onsubmit="return validateForm()">
<center>
<h2>
<s:select label="Rate" 
			headerKey="0" headerValue="Select Rate"
			list="rates" 
			name="selectedrate" id="selectedrate" onchange="calculate()" />
			
		
<s:select label="Quantity"   headerKey="0"     headerValue="Select Quantity" list="#{'01':'1','02':'2','03':'3','04':'4','05':'5','06':'6','07':'7','08':'8','09':'9'}"  id="quantity"  name="selectedquantity" onchange="calculate()"/>
<s:textfield id="amount" readonly="true" label="Rs." name="totalprice"></s:textfield>
<s:submit value="Proceed to Seat Selection"  align="center" ></s:submit>
<table><tr><td>Theatre: <s:property value="sh.getTheatre().getName()"/></td></tr>
<tr><td>Movie  :  <s:property value="sh.getMovie().getName()"/></td></tr>
<tr><td>Date   :   <s:property value="sh.getShowdate()"/></td></tr>
<tr><td>Time   :  <s:property value="sh.getTime()"/><br/></td></tr>


</table>
<s:hidden name="showid" value="sh.getShowid()"></s:hidden>
<h3><p></p></h3>


<p  align="right"><h4>Note: A convenience charge(per ticket) will be levied.<br/>
Check the same before completing the transaction</h4></p><br/><br/>






</h2>

</center>
</s:form>

</body>
</html>