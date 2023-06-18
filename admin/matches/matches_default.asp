<%response.buffer=true%>
<HTML>
<HEAD>
<TITLE></TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">

<link rel=stylesheet href="../admin.css" type="text/css">


</HEAD>
<BODY BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>
<font class="maintext">
<h5>Castlemartyr GAA - Fixtures & Results</h5>
<p align=right><a href="../main.asp" class="mainlink"><- Back to Main Admin page</a></p>
<table width="604" cellpadding="0" cellspacing="0" border="0"><tr><td  class="maintext" align="right"><!-- Priority -->&nbsp;</td></tr></table><br>

<%


set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../../dynamic_files/teams_order.xml"))
set root=xmlDoc.documentElement


set sections = root.selectnodes("sections/section")


for each s in sections

	set team_items = s.selectnodes("team[@active='yes']")





	response.write "<h5>" & s.getAttributeNode("name").value & " Teams:</h5>"


	response.write "<table cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td>" & chr(13)
	response.write "<table cellpadding=""6"" cellspacing=""1"" border=""0"" bgcolor=""#777777"">" & chr(13)

	if team_items.length = 0 then response.write "<font class=""maintext"">no teams yet</font>"


	for each i in team_items

	teamname = replace_for_browser2(i.getAttributeNode("teamname").value)
	team_id = i.getAttributeNode("team_id").value


	'if len(teamname) > 40 then item_title=left(teamname,40) & "..."

	response.write "<tr><td valign=""top"" width=""300"" class=""priority2"  & chr(34) & " bgcolor=""#ffffff"">"


	response.write  teamname 

	response.write "&nbsp;</td>" & chr(13)

	%>

	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="match_list.asp?team_id=<%=team_id%>&teamname=<%=server.urlencode(teamname)%>">Fixtures & Results</a></td>


	<%
	next  
	response.write "</td></tr></table></td></tr></table>" & chr(13)



%>

<br><br>
<br><br><hr size=1 color=blue><br><br>

<%next%>

<p align=left><a href="../main.asp" class="mainlink"><- Back to Main Admin page</a></p>

</BODY>
</HTML>

<% 
function replace_for_browser2(arg)   

	g=arg
	g=replace(g, chr(13) & chr(10), "<br><br>")
	g=replace(g, chr(10), "<br>")
	g=replace(g, chr(13), "<br>")


replace_for_browser2=g
end function
%>