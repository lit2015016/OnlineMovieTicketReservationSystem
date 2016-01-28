<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WELCOME TO CINEMAX</title>
</head>
<body bgcolor="lightblue">
 <%@ taglib uri="/struts-tags" prefix="s" %>
<center>

  <s:url id="client" action="MovieSelectAction">
             </s:url>
<a href="${client}"><h1>Client</h1></a>
 <s:url id="server" action="ServerAction">
             </s:url>
<a href="${server}"><h1>ADMIN</h1></a>
</center>
</body>
</html>