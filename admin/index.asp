<%
response.buffer = true
Response.AddHeader "Pragma", "no-cache"
Response.Expires = 0
%>
<html>
<head><title>Castlemartyr GAA - Admin Section</title><link rel=stylesheet href="admin.css" type="text/css"></head>
<body bgcolor=#ffffff><center>
<font class="maintext">

<h2>Castlemartyr GAA - Admin Section</h2>
<h2>Private Area Only !</h2>

<form action=login_handler.asp method=post>
<% 
message = ""
if request.querystring("message") = "yes" then
message = "Incorrect username and password pair. Try again"
end if
response.write "<font color=red>" & message & "</font><br><br>"

%>
<table>

<tr>
<td>Username:</td>
<td><input type=text name=username value=<%=Request.Cookies("cmgaa")("uname")%>>
</td>
</tr>


<tr>
<td>Password:</td>
<td><input type=password name=password value=<%=Request.Cookies("cmgaa")("pword")%>>

</td>
</tr>
<tr>
</table>

<br>

<input type=submit length=30 Value="     Continue      ">

</font>
</center>
<br><br>


</form>
</body>
</html>