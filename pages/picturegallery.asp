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
<td rowspan="2" valign="top"><img src="../images/banner-adrian-right.jpg" width="347" height="188"></td></tr>
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

		<td valign="top" width="400" class="maintext">
<div style="margin-right:10px;">

<h3>Picture Gallery</h3>
You will find pictures (from the past) in the <a href="/pages/history_pages/sample_pics_history.asp" class="redlink">'sample pics'</a> in the Club History section.a
<p><a class="redlink" href="../BigGalleryScripts/default.aspx?GalleryName=Archive +Pictures&folder=~%2fimages%2foldpics" target="_blank">Click here for archive pictures from years gone by.</a> </p>
<p>


The following are pictures from some of the more recent matches: 
<center>
<br>
<%


if session("pics_gal")  = "" then
	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../dynamic_files/data.mdb")



		pics_sql = "select top 10 tbl_matches.*, tbl_teams.team_name as teamname, "
	
		pics_sql= pics_sql & " (select count(*) from tbl_pics where fk_match_id=match_id) as num_pics "
		pics_sql= pics_sql & " from tbl_matches"
		pics_sql= pics_sql & " inner join tbl_teams on  tbl_matches.fk_team_id = tbl_teams.team_id "
		pics_sql= pics_sql & " order by matchdate desc "


		set rs_match = conn.execute(pics_sql)


	do while not rs_match.eof
		match_id = rs_match("match_id")
		teamname = rs_match("teamname")
		num_pics  = rs_match("num_pics")

			competition = trim(rs_match("competition"))
			hometeam = trim(rs_match("Home_team"))
			awayteam = trim(rs_match("Away_team"))


			if rs_match("YN_date_to_be_confirmed") = 0 then 
				Match_Date = my_formatdatetime(rs_match("matchdate"))
			else
				Match_Date = "Date TBC"
			end if

			versus = "v"

			fixturename = "<br><br>" & competition & ": " & Match_Date & ":<br><b>" & hometeam  & " " & versus & " " & awayteam & "</b>" & chr(13)



		
		if num_pics > 0 then
			response.write fixturename & " <span class=""redtext"">[</span><a class=""redlink"" href=""match.asp?match_id=" & match_id & "&thetype=results&teamname=" & server.urlencode(teamname) & """>" & num_pics & " pics</a><span class=""redtext"">]</span><br>"
		end if
	

	rs_match.movenext
	loop

	session("pics_gal") = recent_pics_str2

	rs_match.close
	set rs_match = nothing
end if

	response.write session("pics_gal")
%>
</center>

<br><br>You will find older photos for individual teams and matches in <a class="redlink" href="teams.asp?page_title=Fixtures+and+Results">Fixtures & Results</a> section.
</p>


<p>You can download the East Cork Final 2009 photos <a class="redlink" href="../images/east_cork_final.zip">here.</a>
</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145">

<!-- RIGHT HAND COLUMN -->
<!--#include file="rhs.asp"-->
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

