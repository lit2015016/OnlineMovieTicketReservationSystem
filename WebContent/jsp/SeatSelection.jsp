<%@ page language="java" contentType="text/html;"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java" %> 

    <%@ taglib uri="/struts-tags" prefix="s" %>
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cinemax | Seat Selection</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<s:url value='/CINEMAX/jsp/css/style.css'/>" rel="stylesheet" type="text/css" />
<script src="/CINEMAX/jsp/js/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-yui.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/cufon-replace.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/Gill_Sans_400.font.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/script.js" type="text/javascript"></script>
<script src="/CINEMAX/jsp/js/seat.js" type="text/javascript"></script>



<head>

<body bgcolor="#E6E6E6">
<!-- START PAGE SOURCE -->
 
      
       <div id="content">
       
           <div class="border-right">
             <div class="border-left">
               <div class="inner">
               
                                        
                <div id="myTickets">
                
                    <h3>Make Your Seat Selection:</h3>
                
                
                <div id="key">
                    <p>&nbsp;&nbsp;<img id="imgAvail" src="" alt="Available" /> <b>= Available&nbsp;&nbsp;&nbsp;</b> <img id="imgMine" src="" alt="Mine" /> <b>= Selected&nbsp;&nbsp;&nbsp;</b>
                        <img id="imgTaken" src="" alt="Taken" /> <b>= Taken&nbsp;&nbsp;&nbsp;</b></p>
                </div>
            </div>
            <div id="seating">
                <h4>Platinum</h4>
                <table id="tblPremium"></table>
                <br/>
                <h4>Gold</h4>
                <table id="tblCheap"></table><br/>
                <h4>Silver</h4>
				<table id="tblCheap1"></table><br/>
                <div style="clear:both">
                </div>
                <br />
                
                <div id="theButtons">
                    <input type="button" value="Confirm Choices" id="confirm" />&nbsp;
                    <p><input type="button" id="checkout" value="Check Out" disabled="disabled" /></p>
                  <s:form action="PaymentAction" target="_parent">
                    <s:submit value="Proceed To Payment" ></s:submit>
                    <div id="myPrice">
                    <table>
                        <tr>
                            <td></td>
                            
                            <td id="totalprice"></td>
                        </tr>
                    </table>
                    
                    <div id="bookedSeatNos1">
                   
                    </div>
                      <s:hidden name="seat" id="availableseats"/>
                      <s:hidden name="seattype" id="type"></s:hidden>
                      <s:hidden name="selectedquantity" id="quantity"></s:hidden>
                      <s:hidden name="totalprice"></s:hidden>
                    <input type="text" id="bookedSeatNos" readonly="readonly" name="bookedseat"> 
                   
                </div>
                 </s:form>
                </div>
            </div>
                
                
             
              </div>
            </div>
          </div>
        </div>
        
        
        
        
        
       
   
<script type="text/javascript"> Cufon.now(); </script>

</body>
</html>