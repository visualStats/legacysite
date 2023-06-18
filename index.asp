<% 




strQ=lcase(request.servervariables("SERVER_NAME"))

if instr(strQ, "www.rochetree.com") > 0 then
	response.redirect ("rochetree/website/index.html")
else
	response.redirect ("pages/home.asp")
end if

%>

