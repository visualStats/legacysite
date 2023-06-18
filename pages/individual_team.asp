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
if request.querystring("section_name")="Juvenile" then 
	response.write "<img src=""../images/banner-kiltha-right.jpg"" width=""347"" height=""188"">"
else
	response.write "<img src=""../images/banner-james-right.jpg"" width=""347"" height=""188"">"
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

<%
team_id = request.querystring("team_id")
teamname = request.querystring("teamname")



	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../dynamic_files/data.mdb")


if request.querystring("section_name")="Juvenile" then 
	response.write "<h3>" & teamname & "</h3>" & chr(13) & chr(13) & "<a href=""http://www.kilthaog.com/Default.aspx"" target=""_blank"">Click here for Kiltha Og Website</a>" & chr(13) & chr(13)
else
	response.write "<h3>" & teamname & "</h3>" & chr(13) & chr(13)
end if

response.write "<table  width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""5"">" & chr(13)




<!-- ************* RECENT RESULTS *************  -->


response.write "<tr>" & chr(13)
response.write "<td  class=""maintext"" width=""48%"" valign=""top""><span class=""fixturesheading""><u><b>Recent Results</b></u></span><br><br>" & chr(13)


num_results = 7


'because we will eb working in direct sql script
' we are going to switch the localid to USA format temporarly mm/dd/yyy
' we will switch back later on this page

	session.lcid = 1033  'ie mm/dd/yyyy



if request.querystring("year") <> "" then num_results = 50000

results_sql = "select top " & num_results & " * from tbl_matches where fk_team_id=" & team_id

results_sql = results_sql  & " and matchdate <=#" & date() & "# "

if request.querystring("year") <> "" then results_sql = results_sql  & " and year(matchdate) =" & request.querystring("year")

results_sql = results_sql  & " order by matchdate desc"


set rs_results = conn.execute(results_sql)


	if not rs_results.eof then
		do while not rs_results.eof
			competition = trim(rs_results("competition"))
			hometeam = trim(rs_results("Home_team"))
			hometeam_score = trim(rs_results("Home_team_score"))
			awayteam = trim(rs_results("Away_team"))
			awayteam_score = trim(rs_results("Away_team_score"))
			'if awayteam_score = "" then awayteam_score = "_:_"
			'if hometeam_score = "" then hometeam_score = "_:_"
			venue = trim(rs_results("venue"))

			if rs_results("YN_date_to_be_confirmed") = 0 then 
				Match_Date = my_formatdatetime(rs_results("matchdate"))
			else
				Match_Date = "Date TBC"
			end if

			versus = ""
			if awayteam_score="" and hometeam_score ="" then versus = "v"

			fixturename = "<b>" & competition & ": " & Match_Date & "</b>: " & hometeam  & " <b>" & hometeam_score & "</b> " & versus & " " & awayteam & " <b>" & awayteam_score & "</b> " & chr(13)
			'if venue<> "" then fixturename = fixturename & " [" & venue & "]"

			fixturename=replace(fixturename, "championship", "C'ship", 1, -1, 1)


			if isnull(rs_results("Home_team_score")) or rs_results("Home_team_score")="" or isnull(rs_results("Away_team_score")) or rs_results("Away_team_score")="" then
				fixturename = fixturename & " [result not yet in]"
			end if


			response.write "<a  class=""resultsindi"" href=""match.asp?match_id=" & rs_results("match_id") & "&team_id=" & team_id & "&teamname=" & server.urlencode(teamname)  & "&thetype=results"">" & fixturename & "</a>"	

			response.write "<hr size=1 color=#bbbbbb width=""90%"" align=""left"">" & chr(13)& chr(13)
		rs_results.movenext
		loop

	else

		response.write "no results"

	end if


	rs_results.close
	set rs_results=nothing

response.write "<br><br><font size=-2>Archive: </font><select onchange=""document.location.href='individual_team.asp?team_id=" & team_id & "&teamname=" & server.urlencode(teamname) & "&year=' + this.options[this.selectedIndex].value;"" style=""COLOR: #FB5338; FONT-FAMILY:  Verdana,Arial,Helvetica; FONT-SIZE: 10px; TEXT-DECORATION: none;"" name=""archive"">"


response.write "<option value="""">choose year...</a>"
for yr_loop =  year(date()) to 2004 step -1

	response.write "<option "

	if cstr(yr_loop) = cstr(request.querystring("year")) then response.write  " selected "
	response.write " value=""" & yr_loop & """>All results for " & yr_loop & "</option>"

next

response.write "</select><br><br>"




response.write "</td>" & chr(13) & chr(13)

response.write "<td  width=""2%"" background=""/images/linedown.gif"">&nbsp;</td>" & chr(13) & chr(13)




<!-- ************* UPCOMING FIXTURES *************  -->


response.write "<td  class=""maintext"" width=""48%"" valign=""top""><span class=""fixturesheading""><u><b>Upcoming Fixtures</b></u></span><br><br>" & chr(13)

	upcoming_sql = "select * from tbl_matches where fk_team_id=" & team_id

	upcoming_sql = upcoming_sql  & " and (matchdate >#" & date() & "#"
	upcoming_sql = upcoming_sql  & " or matchdate is null) "
	upcoming_sql = upcoming_sql  & " order by matchdate"

	set rs_upcoming = conn.execute(upcoming_sql)

	if not rs_upcoming.eof then
		do while not rs_upcoming.eof
			competition = trim(rs_upcoming("competition"))
			hometeam = trim(rs_upcoming("Home_team"))
			awayteam = trim(rs_upcoming("Away_team"))
			venue = trim(rs_upcoming("venue"))
			matchtime = trim(rs_upcoming("matchtime"))

			if rs_upcoming("matchdate") <> "" or not isnull(rs_upcoming("matchdate")) then 
				Match_Date = my_formatdatetime(rs_upcoming("matchdate"))
			else
				Match_Date = "Date TBC"
			end if

			timeofmatch	= rs_upcoming("matchtime")
			YN_date_to_be_confirmed = rs_upcoming("YN_date_to_be_confirmed")


			fixturename = "<b>" & competition & ": " & Match_Date & "</b>: " & hometeam & " v "& awayteam
			if venue<> "" then fixturename = fixturename & " [" & venue & "]"
			if matchtime<> "" then fixturename = fixturename & " [" & matchtime & "]"

			fixturename=replace(fixturename, "championship", "C'ship", 1, -1, 1)

			response.write "<a class=""upfixturesindi"" href=""match.asp?match_id=" & rs_upcoming("match_id") & "&team_id=" & team_id & "&teamname=" & server.urlencode(teamname)  & "&thetype=upcoming"">" & fixturename & "</a>"	& chr(13)

			response.write "<hr size=1 color=#bbbbbb width=""90%"" align=""left"">" & chr(13)& chr(13)
		rs_upcoming.movenext
		loop
	else

		response.write "no upcoming fixtures"

	end if
	
	rs_upcoming.close
	set rs_upcoming=nothing

	

response.write "</td></tr><tr><td  class=""maintext"" colspan=3>"






recent_match_pics = false


if recent_match_pics then



response.write "<br><br><span  class=""fixturesheading"">Recent Match Pics:</span><br><br>"


num_pics = 5

pics_sql = "select top " & num_pics & " * from tbl_pics "
pics_sql = pics_sql  & " left join tbl_matches on tbl_pics.fk_match_id = tbl_matches.match_id "
pics_sql = pics_sql  & " where tbl_matches.fk_team_id=" & team_id

pics_sql = pics_sql  & " and date_of_upload >= #1/1/" & year(date()) & "#"

pics_sql = pics_sql  & " order by tbl_pics.date_of_upload"


set rs_pics = conn.execute(pics_sql)
	counter=0

	if not rs_pics.eof then
		do while not rs_pics.eof


			if isdate(rs_pics("matchdate")) then 
				matchdate = formatdatetime(rs_pics("matchdate"),1)
			else
				matchdate = ""
			end if

			caption = rs_pics("Home_team") & " v " & rs_pics("Away_team") & " [" & matchdate & "].&nbsp;&nbsp;"
			caption = caption & rs_pics("pic_description")
			caption = replace (caption, chr(34), chr(148))
			caption = replace (caption, chr(39), chr(146))

			response.write "<a href=""javascript:image_pop('" & rs_pics("mainimage_filename") & "', " & rs_pics("main_width")  & ", " & rs_pics("main_height")  & ",55, '" & caption & "')""><img title=""click to enlarge"" border=""1"" src=""/dynamic_files/pics_thumbs/" & rs_pics("thumbnail_filename") & """></a>&nbsp;&nbsp;" & chr(13) & chr(13)


		counter =counter  + 1
		if counter mod 5 = 0 then response.write "<br><img src=""/images/trans.gif"" height=""8""><br>"


		rs_pics.movenext
		loop
	else
		response.write "no recent match pics"
	end if


rs_pics.close
set rs_pics = nothing

end if


response.write "&nbsp;</td></tr><tr><td class=""maintext""  colspan=3>"



general_pics = false

if general_pics then
response.write "<br><span  class=""fixturesheading"">General Pics:</span><br><br>"

pics_sql2 = "select * from tbl_pics where fk_team_id=" & team_id

pics_sql2 = pics_sql2  & " and date_of_upload >= #1/1/" & year(date()) & "#"

pics_sql2 = pics_sql2  & " order by date_of_upload"


set rs_pics2 = conn.execute(pics_sql2)
	counter=0

	if not rs_pics2.eof then
		do while not rs_pics2.eof
			response.write "<a href=""javascript:image_pop('" & rs_pics2("mainimage_filename") & "', " & rs_pics2("main_width")  & ", " & rs_pics2("main_height")  & ",50, '" & rs_pics2("pic_description") & "')""><img title=""click to enlarge"" border=""1"" src=""/dynamic_files/pics_thumbs/" & rs_pics2("thumbnail_filename") & """></a>&nbsp;&nbsp;"

		counter =counter  + 1
		if counter mod 5 = 0 then response.write "<br><img src=""/images/trans.gif"" height=""8""><br>"



		rs_pics2.movenext
		loop
	else
		response.write "no general pics"
	end if

rs_pics2.close
set rs_pics2 = nothing


end if



response.write "&nbsp;</td></tr>"








response.write "<tr><td class=""maintext""  colspan=3>"

	set rs_teamdetails = Server.Createobject("ADODB.Recordset")

	rs_teamdetails.open "tbl_teams", conn, 1, 3

	rs_teamdetails.find "team_id=" & team_id




	if not rs_teamdetails.eof then

		response.write "<span  class=""fixturesheading"">Team notes: </span><br><br>"
		response.write replace_for_browser(rs_teamdetails("team_notes"))

		response.write "<br><br><span  class=""fixturesheading"">Team trainers: </span><br><br>"
		response.write replace_for_browser(rs_teamdetails("team_trainers"))
	else
		response.write "!"
	end if

rs_teamdetails.close
set rs_teamdetails = nothing


response.write "</td></tr>"




response.write "</table>" & chr(13)



conn.close
set conn=nothing





session.lcid = 2057  'ie dd/mm/yyyy

%>
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
		response.write  "<a class=""resultslink"" href=""individual_team.asp?team_id=" & team_id & """>" & teamname  & "</a><br>"

	next

end sub


function my_formatdatetime(arg)

	my_date_str = weekdayname(datepart("w",arg), true) & " " & datepart("d",arg) & ", " & monthname(datepart("m",arg), true) & " " & right(year(arg),2)
	my_date_str = replace(my_date_str,"Thu ","Thur ") 
	my_formatdatetime = my_date_str

end function



function replace_for_browser(arg)   
	
	g=arg

	if not isnull(g) then
		g=replace(g, chr(13) & chr(10), "<br>")
		g=replace(g, chr(10) & chr(13), "<br>")
		g=replace(g, chr(10), "<br>")
		g=replace(g, chr(13), "<br>")
	end if

	replace_for_browser=g
end function

%>