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
<td rowspan="2" valign="top"><img src="../images/banner-eddie-right.jpg" width="347" height="188"></td></tr>
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
match_id = request.querystring("match_id")
teamname = request.querystring("teamname")
team_id = request.querystring("team_id")
thetype = request.querystring("thetype")

	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../dynamic_files/data.mdb")


response.write "<a class=""resultslink"" href=""javascript:history.go(-1)""><img border=""0"" align=""right"" src=""/images/back.gif""></a><h3>" & teamname & "</h3>" & chr(13) & chr(13)


results_sql = "select * from tbl_matches where match_id=" & match_id


set rs_match = conn.execute(results_sql)


	if not rs_match.eof then

			competition = trim(rs_match("competition"))
			hometeam = trim(rs_match("Home_team"))
			hometeam_score = trim(rs_match("Home_team_score"))
			awayteam = trim(rs_match("Away_team"))
			awayteam_score = trim(rs_match("Away_team_score"))
			'if awayteam_score = "" then awayteam_score = "_:_"
			'if hometeam_score = "" then hometeam_score = "_:_"
			venue = trim(rs_match("venue"))

			if rs_match("YN_date_to_be_confirmed") = 0 then 
				Match_Date = my_formatdatetime(rs_match("matchdate"))
			else
				Match_Date = "Date TBC"
			end if

			matchtime = rs_match("matchtime")

			versus = ""
			if awayteam_score="" and hometeam_score ="" then versus = "v"

			fixturename = "<b>" & competition & ": " & Match_Date & "</b>:<br><br> " & hometeam  & " <b>" & hometeam_score & "</b> " & versus & " " & awayteam & " <b>" & awayteam_score & "</b> " & chr(13)
			
			if thetype = "upcoming" then


				if venue<> "" then 
					fixturename = fixturename & "<br><br>[" & venue & "]"
				else
					fixturename = fixturename & "<br><br>[home team is listed first]"	
				end if


				if matchtime <> "" then 
					fixturename = fixturename & "<br><br>[Time: " & matchtime & "]"
				else
					fixturename = fixturename & "<br><br>[Time: ?]"
				end if


			end if



			if thetype = "results" then
				if isnull(rs_match("Home_team_score")) or rs_match("Home_team_score")="" or isnull(rs_match("Away_team_score")) or rs_match("Away_team_score")="" then
					fixturename = fixturename & "<br><br>[result not yet in]"
				end if
			end if

			match_report = rs_match("matchreport")



			response.write fixturename & "<br>"

	end if


	rs_match.close
	set rs_match=nothing








if thetype = "results" then



	response.write "<br><br><span  class=""fixturesheading"">Match Pics: (click to enlarge)</span><br><br>"




	pics_sql = "select  * from tbl_pics "
	pics_sql = pics_sql  & " where fk_match_id=" & match_id
	'pics_sql = pics_sql  & " order by tbl_pics.date_of_upload"


	set rs_pics = conn.execute(pics_sql)
		counter=0

		if not rs_pics.eof then
			do while not rs_pics.eof

				caption = rs_pics("pic_description")
				caption = replace (caption, chr(34), chr(148))
				caption = replace (caption, chr(39), chr(146))

				main_image = rs_pics("mainimage_filename")
				main_width = rs_pics("main_width") 
				main_height = rs_pics("main_height")
				mid_filename = rs_pics("mid_filename")
				response.write "<a href=""javascript:image_pop('" &  main_image & "', " & main_width  & ", " &  main_height & ",55, '" & caption & "')""><img title=""click to enlarge"" border=""1"" src=""/dynamic_files/pics_thumbs/" & rs_pics("thumbnail_filename") & """></a>&nbsp;&nbsp;" & chr(13) & chr(13)

				





			counter =counter  + 1
			if counter mod 7 = 0 then response.write "<br><img src=""/images/trans.gif"" height=""8""><br>"


			rs_pics.movenext
			loop
		else
			response.write "no recent match pics"
		end if


	rs_pics.close
	set rs_pics = nothing


			if not isnull(match_report)  and len(match_report) <> 0 then 
						response.write  "<br><br><br><span  class=""fixturesheading"">Match Report</span>:<br><br><span style=""width:400px;"">" & replace_for_browser(match_report) & "</span>"
			else
						response.write  "<br><br><br><span  class=""fixturesheading"">Match Report</span>:<br><br>None submitted"
			end if
end if


response.write "<p align=""right""><a class=""resultslink"" href=""javascript:history.go(-1)""><-back</a></p>"








conn.close
set conn=nothing
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