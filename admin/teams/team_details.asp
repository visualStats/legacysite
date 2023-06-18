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
<h5>Team Details Edit (<%=request.querystring("teamname")%>)</h5>

<% 


item_id = request.querystring("item_id")



	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "tbl_teams", conn, 1, 3

	rs.find "team_id=" & item_id
	
	if request.querystring("submitted") = "yes" then


		team_trainers = trim(request.form("team_trainers"))
		team_trainers = replace (team_trainers, chr(34), chr(148))
		team_trainers = replace (team_trainers, chr(39), chr(146))


		team_notes = trim(request.form("team_notes"))
		team_notes = replace (team_notes, chr(34), chr(148))
		team_notes = replace (team_notes, chr(39), chr(146))

		rs("team_trainers") = team_trainers
		rs("team_notes") = team_notes
		rs.update
		

		rs.close
		set rs=nothing
		conn.close

		response.redirect ("teams_default.asp")
	end if

  		team_trainers = rs("team_trainers")
		team_notes = rs("team_notes")


	rs.close
	set rs=nothing
	conn.close

%>

<form action="team_details.asp?item_id=<%=item_id%>&submitted=yes&teamname=<%=server.urlencode(request.querystring("teamname"))%>"  method="Post">


Team Trainers:<br><br>
<textarea name="team_trainers" rows="8" cols="40"><%=team_trainers%></textarea>
<br><br>

Team Notes:<br><br>
<textarea name="team_notes" rows="8" cols="40"><%=team_notes%></textarea>
<br><br>



<input type="submit" class="formbutton" value="&nbsp;&nbsp;save&nbsp;&nbsp;"><br><br>


</form>

<a class="adminhyper" href="teams_default.asp"><- Return without changing</a>
</BODY>
</HTML>
