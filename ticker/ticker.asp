<% 
application("newsticker") = ""
if application("newsticker") = "" then

	set conn = server.createObject("ADODB.Connection")
	if conn.state = 0 then conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("/dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "select * from tbl_newsticker where id=1", conn, 1, 3

	if not rs.eof then
		tickertext = rs("newsticker_str") 

		tickerurl = rs("url")
	else
		tickertext = "!!!"
		tickerurl  = "!!!"
	end if

	rs.close
	set rs=nothing
	conn.close

    ' 25510251 red
    ' 11255255 gray
	newsticker_str = "<script language=""JavaScript1.2"" type=""text/javascript"">" & chr(13) 

	newsticker_str= newsticker_str & "	if(navigator.appName.indexOf(""Microsoft"")>(-1)) {" & chr(13) 



	newsticker_str= newsticker_str & "		document.write('&nbsp;&nbsp;&nbsp;<applet codebase=""/ticker/applet_files"" code=""aTicker.class"" width=400 height=15 MAYSCRIPT>');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""cabbase"" value=""aticker.cab"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""file"" value=""s"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""cSep"" value=""^"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""speed"" value=""1"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""delay"" value=""28"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""local"" value=""true"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""bgcolor"" value=""16777215"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""Font1"" value=""Verdana, 12, 12, 16470840"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""Font2"" value=""Verdana, 12, 12, 16470840"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('<param name=""s0"" value=""" &    tickertext & "^ " & tickerurl & " ^  _parent"">');" & chr(13) 
	newsticker_str= newsticker_str & "		document.write('</applet>');" & chr(13) 
	newsticker_str= newsticker_str & "	}" & chr(13) 
	newsticker_str= newsticker_str & "	</script>" & chr(13) 

	application("newsticker") = newsticker_str

	response.write newsticker_str
else

	response.write application("newsticker")


end if
%>