<%response.buffer=true%>
<HTML>
<HEAD>
<TITLE></TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">

<link rel=stylesheet href="../admin.css" type="text/css">

<script language="Javascript">
function checksbmt()
{

if(document.f1.teamname.value==''){alert('please supply team name'); return false;}

else
{return true;}
}


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
<h5>Castlemartyr GAA Teams</h5>
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

	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="edit_team.asp?item_id=<%=team_id%>">edit</a></td>

	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="teamdel.asp?item_id=<%=team_id%>">delete</a></td>

	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="team_moveup.asp?item_id=<%=team_id%>">move up</a></td>
	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="team_movedown.asp?item_id=<%=team_id%>">move down</a></td>
	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="team_details.asp?item_id=<%=team_id%>&teamname=<%=server.urlencode(teamname)%>">TEAM DETAILS</a></td>
	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" target="_blank" href="../pics_handler/pics.aspx?item_id=<%=team_id%>&teamname=<%=server.urlencode(teamname)%>&pictype=TEAMS">pics</a></td>

	<%
	next  
	response.write "</td></tr></table></td></tr></table>" & chr(13)



%>

<br><br>
<form  action="edit_team_handler.asp" onsubmit="if(trim(this.teamname.value)==''){alert('please supply team name'); return false;}else{this.submit;return true;}" method="Post">
<input type="hidden" name="theaction" value="new">
<input type="hidden" name="section" value="<%=s.getAttributeNode("name").value%>">
<u>ADD NEW <%=ucase(s.getAttributeNode("name").value)%> TEAM</u>:<br><br>
Team Name:<br><br>
<input name="teamname" size="36"><br><br>

<!-- to top: <input  type="radio" name="toporbottom" value="top">&nbsp;&nbsp;&nbsp;
to bottom: <input checked type="radio" name="toporbottom" value="bottom">&nbsp;&nbsp;&nbsp; 
<br><br>-->
<input type="submit" class="formbutton" value="&nbsp;&nbsp;add&nbsp;&nbsp;"><br><br>
</form><br><br><hr size=1 color=blue><br><br>

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