<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The Pursuit of Happiness- Home Page</title>
<link href="" rel="icon">
</head>
</head>
<body>
<h1 align="center">This international bestseller tells the incredible and heartbreaking love story of Sara and Jack as they learn to understand their differences in postwar New York.</h1>
<h1 align="center">The war is over, and Eric Smythe’s party was in full swing. All his clever Greenwich Village friends were there. So too was his sister Sara, an independent, outspoken young woman, starting to make her way in the big city.And then in walked Jack Malone, a U.S. Army journalist just back from a defeated Germany, a man whose world view was vastly different than that of Eric and his friends. </h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<br>
<h1><h3> Client Side IP Address </h3><br>
<%out.print( "Client IP Address :: " + request.getRemoteAddr() ); %><br>
<%out.print( "Client Name Host :: "+ request.getRemoteHost() );%><br></h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		Venkata Bhagyarju
		<br>
		<a href="mailto:devopstrainingblr@gmail.com"></a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>The Pursuit of Happiness</p>

</body>
</html>
