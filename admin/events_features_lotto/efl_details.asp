<%response.buffer=true%><HTML>
<HEAD>
<TITLE></TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">
<link rel=stylesheet href="../admin.css" type="text/css">

<script language="Javascript">

function trim(strText) { 
    // this will get rid of leading spaces 
    while (strText.substring(0,1) == ' ') 
        strText = strText.substring(1, strText.length);

    // this will get rid of trailing spaces 
    while (strText.substring(strText.length-1,strText.length) == ' ')
        strText = strText.substring(0, strText.length-1);

   return strText;
} 


</script>

</HEAD>
<BODY BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>
<font class="maintext">

<% 


item_id = request.querystring("item_id")
pagetype = request.querystring("type")

%>
<h5><%=pagetype%> Details Edit (<%=request.querystring("eflname")%>)</h5>
<%
	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "tbl_events_features_lotto", conn, 1, 3

	rs.find "row_id=" & item_id
	
	if request.querystring("submitted") = "yes" then

		efl_title = trim(request.form("efl_title"))
		efl_title = replace (efl_title, chr(34), chr(148))
		efl_title = replace (efl_title, chr(39), chr(146))

		efl_description = trim(request.form("efl_description"))
		efl_description = replace (efl_description, chr(34), chr(148))
		efl_description = replace (efl_description, chr(39), chr(146))

		rs("row_title") = efl_title
		rs("row_description") = efl_description
		rs.update

		set xmlDoc = CreateObject("microsoft.xmldom")
		xmlDoc.async=false
		xmlDoc.load(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))
		set root=xmlDoc.documentElement
		set items=root.selectsinglenode("sections")
		set the_item= items.selectsinglenode("//section/efl[@efl_id='" & item_id & "']")
		the_item.setattribute "efl_title", efl_title
		xmlDoc.save(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))
		set xmlDoc = nothing		
		
		response.redirect ("efl_default.asp?type=" & pagetype)
		rs.close
		set rs=nothing
		conn.close

	end if

  		efl_title = rs("row_title")
		efl_description = rs("row_description")


	rs.close
	set rs=nothing
	conn.close

%>

<form method="post" action="efl_details.asp?item_id=<%=item_id%>&submitted=yes&type=<%=pagetype%>">

Title:<br><br>
<input name="efl_title" size="40" value="<%=efl_title%>">
<br><br>

Description:<br><br>
<textarea name="efl_description" rows="8" cols="55"><%=efl_description%></textarea>
<br><br>



<input type="submit" class="formbutton" value="&nbsp;&nbsp;save&nbsp;&nbsp;"><br><br>


</form>

<a class="adminhyper" href="efl_default.asp?type=<%=pagetype%>"><- Return without changing</a>
</BODY>
</HTML>
