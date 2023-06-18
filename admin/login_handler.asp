<%
response.buffer = true
Response.AddHeader "Pragma", "no-cache"
Response.Expires = 0
call getusernames_and_pw()

if session("status") = "unauthorised" then
	response.redirect ("index.asp?message=yes")
else
	call set_cookie() 
	response.redirect ("main.asp")
end if

sub getusernames_and_pw()
	session("status") = "unauthorised"
	if request.form("username") = "castlemartyrpro" and request.form("password")="Upthereds1" then
	session("status") = "authorised"
	end if
end sub

sub set_cookie()
response.Cookies("cmgaa")("uname") = request.form("username")
response.Cookies("cmgaa")("pword") = request.form("password")
Response.Cookies("cmgaa").Expires = #July 4, 2020#
end sub


%>