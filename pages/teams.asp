<%

Set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=False
xmlDoc.load(server.mappath("../dynamic_files/hitcounter.xml"))
set root=xmlDoc.documentElement
set r = root.selectSingleNode("TEXT")
 
count_str= r.text
count_int_org=cdbl(count_str)

if session("counted") <> "yes" then
	session("counted") = "yes"
	count_int=count_int_org+1
	count_int_org = count_int
	r.text = count_int
	xmlDoc.save(server.mappath("../dynamic_files/hitcounter.xml"))
end if
%>
<HTML>
<HEAD>
<TITLE>Castlemartyr GAA Club, Cork</TITLE>
<META name="description" content="">
<META name="keywords" content="">
<link rel=stylesheet href="../cm.css" type="text/css">
<SCRIPT src="../js.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY bgcolor="#DBD7D7" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" rightmargin="0" BGCOLOR="#FFFFFF" TEXT="#807C7B" LINK="#807C7B" VLINK="#807C7B" ALINK="#807C7B">

<TABLE cellSpacing=1 bgcolor=#FB5338 cellPadding=0 width=780 align=center  border=0>

<tr><td>
<TABLE cellSpacing=0 bgcolor=#ffffff  cellPadding=0 width=780  border=0>



<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td valign="top"><img src="../images/banner-left.jpg" width="433" height="163"></td>

<td rowspan="2" valign="top">
<% 
if request.querystring("page_title")="Teams" and request.querystring("JuvenileLink")<>"yes" then 
	response.write "<img src=""../images/banner-derek-right.jpg"" width=""347"" height=""188"">"
elseif  request.querystring("JuvenileLink")="yes" then
	response.write "<img src=""../images/banner-kiltha-right.jpg"" width=""347"" height=""188"">"
else 'adult results
	response.write "<img src=""../images/banner-briansmiddy-right.jpg"" width=""347"" height=""188"">"
end if
%>	

</td></tr>



<tr><td valign="middle" align="middle"><!--#include file="../ticker/ticker.asp"--></td></tr>
</table>

</td>
</tr>



<tr><!-- RED BAR -->
<td  background="../images/reddot4.gif"><img src="../images/trans.gif" width="280" height="2"></td>
</tr>


<tr>
<td bgcolor="#ffffff"><img src="../images/trans.gif" width="280" height="7"></td>
</tr>




<tr>

<td>

	<TABLE  bgcolor=#ffffff cellSpacing=9   cellPadding=0 width="100%"  border=0>
	<tr>
		<td valign="top" width="1">

<!--#include file="../navigation/navigation.asp"-->


</td>
		<td valign="top"  width="10"><img src="../images/trans.gif" height="400" width="5"></td>

		<td valign="top" width="550" class="maintext">
<div style="margin-right:10px;">

<h3>
<%
page_title = request.querystring("page_title")

if request.querystring("JuvenileLink")="yes" then page_title = "Juvenile (Kiltha Óg) Teams"

response.write page_title


%></h3>
<% 
 if request.querystring("page_title") ="Fixtures and Results" then
	response.write "<span style=""font-size:10px;"">please click on team name....</font><br><br>"
elseif  request.querystring("JuvenileLink")="yes" then
	response.write "Kiltha Óg is a recently formed club fielding young players from the entire Imogeela parish i.e. Castlemartyr, Mogeely, Dungourney and Clonmult.<br><br>"

	response.write "<a class=""redlink"" href=""../dynamic_files/kilthaog2005.htm"" target=""_blank"">2005 Kiltha Óg end of year report</a><br><br><br>"
end if



%>
<table  width="100%" border="0" cellspacing="1" cellpadding="5">
<tr>

<%

set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("/dynamic_files/teams_order.xml"))
set root=xmlDoc.documentElement


if request.querystring("JuvenileLink") <> "yes" then

	response.write "<td valign=""top""><div style=""line-height:120%"">"

	response.write "<span class=""fixturesheading"">Adult Teams:</span><br><img height=""3"" src=""/images/trans.gif""><br>"




	set section = root.selectsinglenode("sections/section[@name='Adult']")


	write_team_list(section)


	response.write "</div></td>"

end if


response.write "<td valign=""top""><div style=""line-height:120%"">"

set section = root.selectsinglenode("sections/section[@name='Juvenile']")

response.write "<span class=""fixturesheading"">Juvenile (Kiltha Óg) Teams:</span><br><img height=""3"" src=""/images/trans.gif""><br>"

write_team_list(section)


response.write "</div></td>"
%>

</tr>

</table>


</div>


<br><br><br>

</td>



	</tr>




	</TABLE>
</td>
</tr>



<tr><!-- RED BAR -->
<td bgcolor="#FB5338" align="right">

	<table  width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td class="hitcounter"><i>&nbsp;&nbsp;<%=count_int_org%> visitors to <a class="hitcounterlink" href="http://www.castlemartyrgaa.com">Castlemartyr GAA</a> website</i></td>
	<td align="right">
	<!-- <img src="../images/trans.gif" width="5" height="3" align="absmiddle"><a class="mailtolink" href="mailto:eamon@hagroup.ie"><i>contact webmaster...</i></a>&nbsp;
	 --></td>

	</tr>
	</table>


</td>
</tr>

</TABLE>

</td></tr></TABLE>
<br><br>
</BODY>
</HTML>

<%

sub write_team_list(arg_section)

	set team_items = arg_section.selectnodes("team[@active='yes']")

	section_name = arg_section.getAttributeNode("name").value

	if team_items.length = 0 then response.write "<font class=""maintext"">no teams yet</font><br>"


	for each i in team_items

		teamname = i.getAttributeNode("teamname").value
		team_id = i.getAttributeNode("team_id").value
		if instr(1, teamname, "football", 1) > 0 then 
			little_gif = "football3.gif"
		else
			little_gif = "hurley3.gif"
		end if	
		response.write  "<img align=""absmiddle"" width=""23"" height=""21"" src=""/images/" & little_gif & """>&nbsp;"
		response.write  "<a class=""resultslink"" href=""individual_team.asp?team_id=" & team_id & "&teamname=" & server.urlencode(teamname) & "&section_name=" & server.urlencode(section_name) & """>" & teamname  & "</a><br>"

	next

end sub
%>