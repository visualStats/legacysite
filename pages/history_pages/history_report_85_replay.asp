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
<h3>1985 East Cork Football Final Replay</h3>

<div style="margin-right:10px;line-height:150%">



<h4>Second Title for Castlemartyr</h4>

<h4>Castlemartyr 1-5 Glenville 1-2</h4>

<p>CHRISTY O'Sullivan, the former Kerry footballer, turned in a brilliant performance and his golden goal in the 17th minute of the first half, plus some fine points, were the main factors in Castlemartyr's three points victory over Glenville in the replay of the East Cork junior football championship at Carrigtwohill.
</p>

<p>Glenville controlled the opening thirty minutes, but erratic shooting and the tough Castlemartyr defence, where Pat Walsh, Seanie Bowes, Seamus Lawton, Noel Curtin and Liam McLellan excelled, saw them trail at the interval by 1-2 to 0-1.
</p>

<p>While Glenville, whose sister club Watergrasshill also lost the divisional hurling final, opened the scoring in the second half from a Pat O'Callaghan free, it was Castlemartyr who dominated. Kieran Murphy, who was well policed by Andrew O'Callaghan, got Castlemartyrs first score in this period in the 47th.minute. Despite the trojan efforts of John Walsh and Pat O'Callaghan in the centrefield position for Glenville, Jim Cosgrove, Donal Burke and for a period Derry Guilfoyle curbed their first half superiority and with the attack moving well on a heavy ground, the winners had two more magnificent points from Christy O'Sullivan.
</p>

<p>Glenville introduced three substitutes in the hour, but their second half display fell short of their opening half. They did manage to scramble a goal through Sean O'Callaghan, who played exceptionally well, but missed two golden chances of goals from 14 metres out in the first half.
</p>
<p><b>Scorers for Castlemartyr</b>: Christy O'Sullivan 1-3, Kieran Murphy 0-2.
</p>

<p><b>Scorers for Glenville</b>: Andrew O'Callaghan 1-0, Dan O'Riordan 0-1 Pat O'Callaghan 0-1 (both from frees).
</p>
<p><b>Castlemartyr</b>: Noel Murphy,   Noel Curtin,  Liam McLellan,  Seamus Lawton,  Anthony Beausang,   Seanie Bowes,  Pat Walsh,  Jim Cosgrove,  Donal Burke,  Kieran Murphy (capt.),  Derry Guilfoyle,  Christy Enright,  Finbarr Murphy,   Bernard Lawton,  Christy O'Sullivan. Sub. John Morgan for F. Murphy (injured).
</p>
<p><b>Glenville</b>: Denis Murphy   Dermot O'Callaghan,  Danny O'Farrell,  Donal O'Callaghan,   Kevin Barry,  John Halbert,  Andrew O'Callaghan,  John Walsh,   Pat O'Callaghan (capt.),  JoeO'Riordan,  James O'Callaghan,   Dan O'Riordan,  Sean O'Callaghan,  Jim Ryan,  Frank Halbert. Subs.   Pat Walsh for Joe O'Riordan  Michael O'Leary for James O'Callaghan   Dan Kearney for Frank Halbert
</p>
<p><b>Referee</b>: Dan Kenneally (Dungourney)		
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

