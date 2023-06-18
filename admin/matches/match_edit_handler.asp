<%
response.buffer=true


team_id = request.querystring("team_id")
match_id = request.querystring("match_id")
teamname = request.querystring("teamname")


	set conn = server.createObject("ADODB.Connection")
	if conn.state = 0 then conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "tbl_matches", conn, 1, 3

	competition = trim(request.form("competition"))
	competition = replace (competition, chr(34), chr(148))
	competition = replace (competition, chr(39), chr(146))

	hometeam = trim(request.form("hometeam"))
	hometeam = replace (hometeam, chr(34), chr(148))
	hometeam = replace (hometeam, chr(39), chr(146))

	hometeam_score = trim(request.form("hometeam_score"))

	awayteam = trim(request.form("awayteam"))
	awayteam = replace (awayteam, chr(34), chr(148))
	awayteam = replace (awayteam, chr(39), chr(146))

	awayteam_score = trim(request.form("awayteam_score"))

	venue = trim(request.form("venue"))
	venue = replace (venue, chr(34), chr(148))
	venue = replace (venue, chr(39), chr(146))


	Match_Date= request.form("Match_Date")

	match_date_tbc = request.form("match_date_tbc")

	timeofmatch = trim(request.form("timeofmatch"))
	timeofmatch = replace (timeofmatch, chr(34), chr(148))
	timeofmatch = replace (timeofmatch, chr(39), chr(146))

	othernotes= request.form("othernotes")

	matchreport= request.form("matchreport")



if request.form("theaction") = "new" then
	rs.addnew
else
	rs.find "match_id=" & match_id
end if
	


	rs("fk_team_id") = team_id
	rs("competition") = competition
	rs("Home_team") = hometeam
	rs("Home_team_Score") = hometeam_score
	rs("Away_team") = awayteam
	rs("Away_team_Score") = awayteam_score
	rs("venue") = venue


	session.lcid = 2057  'ie dd/mm/yyyy ie EUROPEAN

	if Match_Date <> "" then
		rs("matchdate") = cdate(Match_Date)
	else
		rs("matchdate") = null
	end if

	rs("matchtime") = timeofmatch
	rs("YN_date_to_be_confirmed") = cint(match_date_tbc) + 0
	rs("other_notes") = othernotes
	rs("matchreport") = matchreport

	rs.update


	rs.close
	set rs=nothing
	conn.close





response.redirect("match_list.asp?team_id=" & team_id & "&teamname=" & server.urlencode(teamname) & "&nocache=" & server.urlencode(now()))

function conv_euro_to_usa_date(arg_date)
	eur = arg_date
	pos_first_slash =instr(eur, "/")
	pos_second_slash=instr(instr(eur, "/") + 1, eur, "/")
	leftnum = left(eur, pos_first_slash - 1)
	midnum = mid(eur, pos_first_slash + 1, (pos_second_slash - pos_first_slash - 1))
	rightnum= right(eur, (len(eur)-pos_second_slash))
	usa_format = midnum & "/" & leftnum & "/" & rightnum
	conv_euro_to_usa_date = usa_format
end function
%>
