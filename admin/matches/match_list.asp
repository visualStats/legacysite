<%

response.buffer=true

team_id = request.querystring("team_id")
teamname = request.querystring("teamname")


%><HTML>
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


function confirmDelete(arg_match_id) {
  if (confirm("Are you sure you want to delete this match?")) {
    document.location = 'match_list.asp?del=yes&team_id=<%=team_id%>&teamname=<%=server.urlencode(teamname)%>&match_id=' + arg_match_id;
  }
}

</script>


</HEAD>
<BODY  BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>



<font class="maintext">
<h5>Fixtures and Results for <%=teamname%></h5>

<% 
	set conn = server.createObject("ADODB.Connection")
	if conn.state = 0 then conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")



' **** if the delete link was clicked....
if request.querystring("del") = "yes" then
	del_sql="delete * from tbl_matches where match_id=" & request.querystring("match_id")
	conn.execute(del_sql)
end if





'because we will be working in direct sql script
' we are going to switch the localid to USA format temporarly mm/dd/yyy
' we will switch back later on this page

	session.lcid = 1033  'ie mm/dd/yyyy






' ****** FIRST SHOW THE UPCOMING FIXTURES ie date of match is after the current date

upcoming_sql = "select * from tbl_matches where fk_team_id=" & team_id

upcoming_sql = upcoming_sql  & " and (matchdate >=#" & date() & "#"
upcoming_sql = upcoming_sql  & " or matchdate is null) "
upcoming_sql = upcoming_sql  & " order by matchdate"

'response.write upcoming_sql & "<br>"
'response.end

set rs_upcoming = conn.execute(upcoming_sql)

response.write "<u>Upcoming Fixtures</u><br><br>"


if not rs_upcoming.eof then
	do while not rs_upcoming.eof
		competition = rs_upcoming("competition")
		hometeam = rs_upcoming("Home_team")
		awayteam = rs_upcoming("Away_team")
		venue = rs_upcoming("venue")

		if rs_upcoming("matchdate") <> "" or not isnull(rs_upcoming("matchdate")) then 
			Match_Date = formatdatetime(rs_upcoming("matchdate"),1)
		else
			Match_Date = "Date TBC"
		end if

		timeofmatch	= rs_upcoming("matchtime")
		YN_date_to_be_confirmed = rs_upcoming("YN_date_to_be_confirmed")


		fixturename = "<b>" & Match_Date & "</b>: " & hometeam & " v "& awayteam & ", " & competition

		response.write fixturename

		response.write "&nbsp;&nbsp;<a href=""javascript:confirmDelete(" & rs_upcoming("match_id") & ")"">del</a>"

		response.write "&nbsp;&nbsp;<a href=""match_edit.asp?theaction=edit&match_id=" & rs_upcoming("match_id") & "&team_id=" & team_id & "&teamname=" & server.urlencode(teamname)  & """>edit</a>"	

		response.write "&nbsp;&nbsp;<a  class=""adminhyper"" target=""_blank"" href=""../pics_handler/pics.aspx?item_id=" & rs_upcoming("match_id") & "&fixturename=" & server.urlencode(fixturename) & "&pictype=MATCHES"">pics</a>"
		response.write "<br>"
	rs_upcoming.movenext
	loop
else

	response.write "no upcoming fixtures"

end if



if request.querystring("num_results") ="" then
	num_results = 5
else
	num_results = request.querystring("num_results")
end if




' ****** NOW SHOW THE RESULTS ie date of match has now passed



results_sql = "select top " & num_results & " * from tbl_matches where fk_team_id=" & team_id

results_sql = results_sql  & " and matchdate <#" & date() & "#"

results_sql = results_sql  & " order by matchdate desc"

'response.write results_sql & "<br>"

set rs_results = conn.execute(results_sql)

response.write "<br><br><u>Results</u><br><br>"


if not rs_results.eof then
	do while not rs_results.eof
		competition = rs_results("competition")
		hometeam = rs_results("Home_team")
		hometeam_score = rs_results("Home_team_score")
		awayteam = rs_results("Away_team")
		awayteam_score = rs_results("Away_team_score")
		if awayteam_score = "" then awayteam_score = "_:_"
		if hometeam_score = "" then hometeam_score = "_:_"
		venue = rs_results("venue")

		if rs_results("YN_date_to_be_confirmed") = 0 then 
			Match_Date = formatdatetime(rs_results("matchdate"),1)
		else
			Match_Date = "Date TBC"
		end if


		fixturename = "<b>" & Match_Date & "</b>: " & hometeam & "(" & hometeam_score & ") " & awayteam & "(" & awayteam_score & "), " & competition

		response.write fixturename

		if isnull(rs_results("Home_team_score")) or rs_results("Home_team_score")="" or isnull(rs_results("Away_team_score")) or rs_results("Away_team_score")="" then
			response.write " <font color=red>[result not yet in]</font>"
		end if

		response.write "&nbsp;&nbsp;<a href=""javascript:confirmDelete(" & rs_results("match_id") & ")"">del</a>"

		response.write "&nbsp;&nbsp;<a href=""match_edit.asp?theaction=edit&match_id=" & rs_results("match_id") & "&team_id=" & team_id & "&teamname=" & server.urlencode(teamname)  & """>edit</a>"	
		response.write "&nbsp;&nbsp;<a  class=""adminhyper"" target=""_blank"" href=""../pics_handler/pics.aspx?item_id=" & rs_results("match_id") & "&fixturename=" & server.urlencode(fixturename) & "&pictype=MATCHES"">pics</a>"

		response.write "<br>"
	rs_results.movenext
	loop


	response.write "<br><br><br><a class=""mainlink"" href=""match_list.asp?num_results=50&team_id=" & team_id & "&teamname=" & server.urlencode(request.querystring("teamname")) & """>earlier ...</a>"
else

	response.write "no results"

end if




session.lcid = 2057  'ie dd/mm/yyyy

%>
<br><br><br><br><a  class="adminhyper"  href="match_edit.asp?theaction=new&team_id=<%=team_id%>&teamname=<%=server.urlencode(teamname)%>">Add New Fixture</a><br><br><br><br><br>

<a class="adminhyper" href="matches_default.asp"><- Return without changing</a>
</BODY>
</HTML>
