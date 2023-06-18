<%
response.buffer=true


pic_id = request.querystring("pic_id")

imagename = request.querystring("imagename")

item_id = request.querystring("item_id")
pictype = request.querystring("pictype")
eflname = request.querystring("eflname")
teamname = request.querystring("teamname")
fixturename = request.querystring("fixturename")

combined_qs = "?item_id=" & item_id & "&pictype=" & pictype & "&eflname=" & server.urlencode(eflname) & "&teamname=" & server.urlencode(teamname)& "&fixturename=" & server.urlencode(fixturename)
%>
<HTML>
<HEAD>
<TITLE>PICS</TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">

<link rel=stylesheet href="../admin.css" type="text/css">



</HEAD>
<BODY BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>


<font face=verdana size=-2>

<%


	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")

	rs.open "tbl_pics", conn, 1, 3
	rs.find "pic_id=" & pic_id

	pic_description =	rs("pic_description") 


	if request.querystring("edit")	="yes" then

		pic_description = trim(request.form("pic_description"))
		pic_description = replace (pic_description, chr(34), chr(148))
		pic_description = replace (pic_description, chr(39), chr(146))

		rs("pic_description") = pic_description

		rs.update
		rs.close
		set rs=nothing
		conn.close

		response.redirect("pics.asp" & combined_qs)
	end if



	rs.close
	set rs=nothing
	conn.close





%>

<br><br>
<FORM name="uploadfiles" method="post"  action="edit_pic_description.asp<%=combined_qs%>&edit=yes&pic_id=<%=pic_id%>">

Pic Description:<br><textarea rows=3 cols=40 name="pic_description"><%=pic_description%></textarea>


<br><br>
<INPUT  TYPE="SUBMIT" VALUE="       update       ">


</FORM>
<br><br><a href="pics.asp<%=combined_qs%>"><- cancel and Go Back</a>
<br><br><img src="<%=imagename%>">
<br><br>
</font>
</body></html>
