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
<h3>1991 East Cork Football Final</h3>

<div style="margin-right:10px;line-height:150%">


<h4>Castlemartyr Retain Title</h4>						

<h4>Castlemartyr 1-11  St. Catherines 0-7</h4>

<p>CASTLEMARTYR retained their East Cork Junior Football Championship title when they overcame first time finalists St. Catherine's by double scores in Cobh last evening. A purple patch midway through the first-half, when playing against the very strong wind, proved decisive as the winners registered 1-6 without reply, leaving St. Catherine's chasing the game thereafter.
</p>

<p>Things looked quite gloomy for the rookies, who trailed by 1-6 to 0-2, entering the final five minutes of the opening period, but they battled back well, scoring 0-4 on the trot and indeed, one of those points should have been a goal.It could have been an entirely different match if right corner-forward Sean Buckley had elected to opt for accuracy rather than power, when placed one-on-one with goalkeeper William Martin, two minutes before the break. A goal then, instead of a point, would have worked wonders for St. Catherine's.
</p>

<p>However, in many ways that miss typified the main difference between the teams. Castlemartyr were slicker and that bit craftier, nearly always choosing the right option and their goal was worthy of winning any match.
</p>

<p>Fittingly, it was scored by impressive centre-forward Michael Broderick, who was on the Fr. O'Neill's team which lost the hurling decider last Sunday. The 16th minute goal was a text book score, with the move starting deep in their full-back line and a series of astute passes setting up Broderick, who slammed home the only goal.Still Castlemartyr's 1-6 to 0-6 interval lead did not look that intimidating, despite the huge threat posed by star forward John Morgan, but St. Catherine's could not add to their tally again until substitute Billy Carr pointed six minutes from the end.
</p>

<p>In between sound defensive work by Carey Joyce and Donal Burke, plus the tireless work of mid-fielder Jim Cosgrove, helped the winners to put the tie beyond reach as Derry Guilfoyle and Morgan shared 0-4 equally before St. Catherines rallied again.They were denied goals by a timely tackle which put Pat O'Sullivan on the deck just as he tried his luck, nine minutes from time, and then Martin dived smartly to his left to stop Patsy Donahue's effort, six minures later.
</p>


<p>Footnote. William Martin playing in his first ever championship game in goal was magnificent all through despite having got married 24 hours previously.
</p>
<p><b>Scorers for Castlemartyr</b>: M. Broderick (1-1), J. Morgan(0-5, 0-3 frees), D. Guilfoyle(0-3), C. Joyce and C. Enright(0-1) each. St. Catherine's: D. Walsh (0-2, 0-1 free), P. Donahue, S.Buckley, PJ. Lonergan, D.O'Leary and B. Carr (0-1)each.
</p>



<p><b>CASTLEMARTYR</b>: W. Martin; P. Beausang, S. Bowes, P. Walsh; C. Joyce, N. Curtin, D. Burke, (captain); J. Cosgrove, C. Enright; R. Barrett, M. Broderick, J. Morgan; D. Guilfoyle, M. Conroy, S. Leahy.
</p><p><b>ST. CATHERINE'S</b>: P. Murphy, M. Walsh, B. O'Regan, M. Hartnett; S. Neville, S. O'Connell, captain, K. Barry; D. Walsh, E. Galvin; P. Donahue, C. Casey, D. O'Leary; S. Buckley, PJ. Lonergan, P. O'Sullivan. Subs. B. Carr for Galvin, J. Mangan for Buckley and T. O'Leary for O'Sullivan.
</p><p><b>Referee</b>. P. O'Connor (Aghada).</p>


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

