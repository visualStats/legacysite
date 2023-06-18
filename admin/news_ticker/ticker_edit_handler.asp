<%
response.buffer=true




	set conn = server.createObject("ADODB.Connection")
	if conn.state = 0 then conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "tbl_newsticker", conn, 1, 3

	tickertext = trim(request.form("tickertext"))
	tickertext = replace (tickertext, chr(34), chr(148))
	tickertext = replace (tickertext, chr(39), chr(146))

	tickerurl = trim(request.form("tickerurl"))



	rs.find "id=1"

	


	rs("newsticker_str") = tickertext
	rs("url") = tickerurl

	rs.update


	rs.close
	set rs=nothing
	conn.close


application("newsticker") = ""


response.redirect("../main.asp")

%>
