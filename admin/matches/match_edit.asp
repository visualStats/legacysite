<HTML>
<HEAD>
<TITLE>Castlemartyr GAA</TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">

<SCRIPT language=JavaScript1.2 src="cal_images/cal.js"></SCRIPT>
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
<BODY onload="loaded=true;" onclick="if(loaded)hideCal();" marginheight="30" marginwidth="30" topmargin="30" leftmargin="30" BGCOLOR="#FFFFFF" TEXT="#000000" LINK="#0000FF" VLINK="#800080">
<font class="maintext">
      <DIV id=calendarLayer onmouseover=clearTimeout(calTimeout); 
      style="FONT-SIZE: 8pt; Z-INDEX: 15; LEFT: 107px; VISIBILITY: hidden; WIDTH: 200px; FONT-FAMILY: verdana; POSITION: absolute; TOP: 350px" 
      onclick=self.event.cancelBubble=true; 
      onmouseout="calTimeout=setTimeout('hideCal()',300);"><IMG height=18 
      alt="Previous Month" 
      src="cal_images/cal_left.gif" width=18 
      border=0><IMG height=1 alt="" 
      src="cal_images/gen_spacer_trans.gif" width=2 
      border=0><IMG height=1 alt="" 
      src="cal_images/gen_spacer_trans.gif" width=2 
      border=0><IMG height=18 alt="Next Month" 
      src="cal_images/cal_right.gif" width=18 
      border=0></DIV>
<% 

team_id = request.querystring("team_id")
match_id = request.querystring("match_id")
teamname = request.querystring("teamname")


if request.querystring("theaction") = "edit" then

	set conn = server.createObject("ADODB.Connection")
	if conn.state = 0 then conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "select * from tbl_matches where match_id=" & match_id, conn, 1, 3


	competition = rs("competition") 
	hometeam = rs("Home_team")
	hometeam_score = rs("Home_team_Score")
	awayteam = rs("Away_team")
	awayteam_score = rs("Away_team_Score")
	venue = rs("venue")
	Match_Date = rs("matchdate")

	session.lcid = 2057  'ie dd/mm/yyyy

		'if Match_Date <> "" and not isnull(Match_Date) then 
			'Match_Date = conv_euro_to_usa_date(Match_Date)
		'end if
	timeofmatch = rs("matchtime")
	match_date_tbc = rs("YN_date_to_be_confirmed")
	if match_date_tbc = true then 
		tbc_is_checked="checked"
	else
		tbc_is_checked=""
	end if
	othernotes = rs("other_notes") 
	matchreport = rs("matchreport")


	rs.close
	set rs=nothing
	conn.close
end if
%>

Fixture for <%=teamname%>

<form name="matchform" action="match_edit_handler.asp?team_id=<%=team_id%>&teamname=<%=server.urlencode(teamname)%>&match_id=<%=match_id%>" onsubmit="if(trim(this.competition.value)==''){alert('please supply the competition name'); return false;}if(trim(this.hometeam.value)==''){alert('please supply the home team name'); return false;}if(trim(this.awayteam.value)==''){alert('please supply the away team name'); return false;}if(this.Match_Date.value=='' && this.match_date_tbc.checked==false){alert('please supply date of match or else tick the TBC box');return false;}else{this.submit;}" method="Post">

<input type="hidden" name="theaction" value="<%=request.querystring("theaction")%>">

Competition*<br>
<input name="competition" size="36" <%if request.querystring("theaction") = "edit" then response.write "value=""" & competition & """"%>><br><br>

Home Team*<br>
<input name="hometeam" size="22" <%if request.querystring("theaction") = "edit" then response.write "value=""" & hometeam & """"%>>&nbsp;&nbsp;

Score: <input name="hometeam_score" size="10" value="<%=hometeam_score%>">&nbsp;&nbsp;<font size=-2>(leave blank until match is played)</font><br><br>


Away Team*<br>
<input name="awayteam" size="22" <%if request.querystring("theaction") = "edit" then response.write "value=""" & awayteam & """"%>>&nbsp;&nbsp;

Score: <input name="awayteam_score" size="10" value="<%=awayteam_score%>">&nbsp;&nbsp;<font size=-2>(leave blank until match is played)</font><br><br>

Venue (optional, only use if neutral venue)<br>
<input name="venue" size="36" value="<%=venue%>"><br><br>


Date of Match: <INPUT onclick="document.matchform.match_date_tbc.checked=false" size=10 name=Match_Date value="<%=Match_Date%>"><A 
                        onclick="document.matchform.match_date_tbc.checked=false;showCal('arrive',event);if(isMinIE4)self.event.cancelBubble=true;" 
                        href="javascript:cal()"><IMG height=27 
                        alt="Click here to select Arrival Date from our Calendar." 
                        src="cal_images/cal_popup.gif" 
                        width=27 border=0></A>

&nbsp;&nbsp;&nbsp;
to be confirmed: <input type="checkbox" name="match_date_tbc" value="1" <%=tbc_is_checked%> onclick="document.matchform.Match_Date.value=''">
<br><br>
Time of Match: <input name="timeofmatch" size="7" value="<%=timeofmatch%>"><br><br>

<!-- Other Notes<br>
<textarea name="othernotes" rows=3 cols=30><%=othernotes%></textarea><br><br>
 -->
Match Report (copy and paste from ms word)<br>
<textarea name="matchreport" rows=10 cols=80><%=matchreport%></textarea><br><br>

<input type="submit" class="formbutton" value="&nbsp;&nbsp;save&nbsp;&nbsp;"><br><br>
<font size=-2>* = req. fields</font>


</form>
<br><br>
<a class="adminhyper" href="match_list.asp?team_id=<%=team_id%>&teamname=<%=server.urlencode(teamname)%>"><- Return without changing</a>
</font>
</BODY>
</HTML>
<%
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
