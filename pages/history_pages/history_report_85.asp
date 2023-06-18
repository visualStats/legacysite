<%

Set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=False
xmlDoc.load(server.mappath("../../dynamic_files/hitcounter.xml"))
set root=xmlDoc.documentElement
set r = root.selectSingleNode("TEXT")
 
count_str= r.text
count_int_org=cdbl(count_str)

if session("counted") <> "yes" then
	session("counted") = "yes"
	count_int=count_int_org+1
	count_int_org = count_int
	r.text = count_int
	xmlDoc.save(server.mappath("../../dynamic_files/hitcounter.xml"))
end if
%>
<HTML>
<HEAD>
<TITLE>Castlemartyr GAA Club, Cork</TITLE>
<META name="description" content="">
<META name="keywords" content="">
<link rel=stylesheet href="../../cm.css" type="text/css">
<SCRIPT src="../../js.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY bgcolor="#DBD7D7" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" rightmargin="0" BGCOLOR="#FFFFFF" TEXT="#807C7B" LINK="#807C7B" VLINK="#807C7B" ALINK="#807C7B">

<TABLE cellSpacing=1 bgcolor=#FB5338 cellPadding=0 width=780 align=center  border=0>

<tr><td>
<TABLE cellSpacing=0 bgcolor=#ffffff  cellPadding=0 width=780  border=0>



<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td valign="top"><img src="../../images/banner-left.jpg" width="433" height="163"></td>
<td rowspan="2" valign="top"><img src="../../images/banner-eoin-right.jpg" width="347" height="188"></td></tr>
<tr><td valign="middle" align="middle"><!--#include file="../../ticker/ticker.asp"--></td></tr>
</table>

</td>
</tr>



<tr><!-- RED BAR -->
<td  background="../../images/reddot4.gif"><img src="../../images/trans.gif" width="280" height="2"></td>
</tr>


<tr>
<td bgcolor="#ffffff"><img src="../../images/trans.gif" width="280" height="7"></td>
</tr>




<tr>

<td>

	<TABLE  bgcolor=#ffffff cellSpacing=9   cellPadding=0 width="100%"  border=0>
	<tr>
		<td valign="top" width="1">

<!--#include file="../../navigation/navigation.asp"-->


</td>
		<td valign="top"  width="10"><img src="../../images/trans.gif" height="400" width="5"></td>

		<td valign="top" width="400" class="maintext">
<h3>1985 East Cork Football Final</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Castlemartyr 0-6, Glenville 0-6</h4>

<h4>Late Point from Morgan saves the day</h4>
								
<p>A super point from a very acute angle by 16 years old John Morgan, gave Castlemartyr a share of the spoils in the final of the East Cork Junior Football Championship, in Carrigtwohill on Saturday night, where both sides provided a magnificent display of powerful football.
</p>

<p>It was a game where Castlemartyr, powered by the hero of Imokilly's great victory in '84 Senior Final, Kieran Murphy, shone like a beacon. A strong cross wind made conditions difficult for scoring and at the interval, Castlemartyr led by 0-3 to 0-1, Murphy scoring two. Glenville, a sister club of Watergrasshill, who lost the hurling final, made a tremendous start to the second half, when Jim Ryan, a son of former Cork trainer Eamonn picked off a beautiful point inside forty five seconds. Kieran Murphy however, tormented the Glenville defence and when in possession was the signal for danger for Glenville.
</p>

<p>He added two points to leave Castlemartyr three points clear. Play fluctuated from end to end and entering the last quarter Glenville were just a point in arrears, their scores coming from Dan O'Riordan and Joe O'Riordan from a free. With nine minutes to go, Glenville were awarded a penalty and when John Halbert's effort was well saved by Noel Murphy, one felt that this game was leaving the lads from the "Hill, but it in effect gave them a new lease of life and inside two minutes Jim Ryan and Sean O'Callaghan pointed to leave them ahead for the first time in the game.
</p>

<p>Castlemartyr introduced young John Morgan, who won an Under 16 F.A.I. cup medal with Midleton last season and with three minutes to go he showed his class, when picking a loose ball near the corner flag he cut inside the Glenville defence and pointed what was final score in a game that had all the ingredients of a cracker.
</p>

<p>Best for Castlemartyr were Noel Murphy, Noel Curtin, Liam Mc Lellan, Jim Cosgrave, Sean Bowes, Kieran Murphy, Derry Guilfoyle, while Dermot O'Callaghan, Billy Leahy, Andrew O'Callaghan, John Halbert, skipper Pat O'Callaghan and Jim Ryan excelled for Glenville.
</p>


<p><b>Scorers for Castlemartyr</b>: K Murphy 0-4, D Guilfoyle and J Morgan (0-1).
</p>


<p><b>Scorers for Glenville</b>: J Ryan (0-3), D O'Riordan, J O'Riordan, S O'Callaghan (0-1) each
</p>

<p><b>Castlemartyr</b>: N Murphy  N Curtin  L McLellan  S Lawton  A Beausang  J Cosgrave   P Walsh  S Bowes  D Guilfoyle   C Enright  C O'Sullivan   K Murphy (Captain)  F Murphy  J Hayes   B Lawton.   Sub: J Morgan for J Hayes
</p>


<p><b>Glenville</b>: D Murphy  D O'Callaghan  B Leahy  D O'Callaghan  K Barry   A O'Callaghan  J Halbert  P O'Callaghan  John Walsh (Capt)   S O'Callaghan  James O'Callaghan  F Halbert  J O'Riordan  J Ryan  D O'Riordan. Subs: D Kearney for D O'Riordan   P Walsh for James O'Callaghan. 
</p>

<p><b>Referee</b>: J Motherway,Aghada.
</p>

<br>
<a class="redlink" href="match_reports_history_index.asp"><- Back to index of Historical Match Reports</a>


</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145">

<!-- RIGHT HAND COLUMN -->
<!--#include file="../rhs.asp"-->
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
	<!-- <img src="../../images/trans.gif" width="5" height="3" align="absmiddle"><a class="mailtolink" href="mailto:eamon@hagroup.ie"><i>contact webmaster...</i></a>&nbsp;
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

