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
<h3>1990 East Cork Football Final</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Castlemartyr Regain Title</h4>					

<h4>Castlemartyr 2-7 Erins Own 0-7</h4>	


<p>CASTLEMARTYR regained the East Cork junior football championship title they last held in 1987 when at sun drenched Midleton yesterday they defeated Erins Own, who were making their debut in the final. However, if they hope to make an impression in the county championship, they will have to show a vast improvement on yesterday's form.
</p>

<p>Erin's Own, who were missing some key players, never got going. except for a short period in the second-half when they struck over some fine points. All their efforts for a vital goal failed, however, due mainly to the vigilant goalkeeping of Noel Murphy and the great defensive work of Sean Bowes, James Furlong. Noel Curtin and Pat Walsh. who dealt with everything that came their way.
</p>

<p>Castlemartvr dominated the opening half and got a dream start when a sideline free from John Morgan was mishandled by Paul Twomev in the Erin's Own goal. He allowed the ball drop out of his hands and over his goalline in the very first minute.After six minutes they were ahead 1-3 to 0-0 and while Raymond O'Connor pointed a close in free in the 10th minute, it was Castlemartyr who went into the second-half leading 1-6 to 0-2.
</p>

<p>Beaten in midfield and their backs under severe pressure from John Morgan, Tony Barrett and Kieran Murphy, Erin's Own made numerous positional switches and were forced to make many more as the second-half progressed. They did look more impressive in the second-half but try as they did they found their task to goal a difficult one.
</p>

<p>They reduced the lead to five points and were beginning to come more into the game when their dreams of glory were shattered. John Morgan lobbed the ball out to Tony Barrett who fired in a great effort which forced a great save from Twomey. He failed to hold the ball, however. and Sean Leahy, who was just on as a sub, came charging in and goaled.
</p>

<p>Tim Kelliher, Brian Corcoran, Matt Nicholl. Frank Horgan, Paul Geazley and Colm Touhig tried their best for Erins Own and managed to pick off two points. Jim Cosgrove, who had a great game for the winners, then made the issue safe with a point, only Castlemartyrs second score in this half. Brian Corcoran got a consolation point for Erins Own in the 57th minute.
</p>

<p><b>Scorers for Castlemartyr</b>: J.Morgan 1-1 (frees), S. Leahy 1-0, T. Barrett 0-2. J. Cosgrove 0-2. C. Enright and C. O'Sullivan 0-1 each.  Erins Own: B. Corcoran 0-3. B. O'Connor 0-2. C. Touhig and P. Geazley 0-1 each.
</p><p><b>CASTLEMARTYR</b>: N Murphy P Beausang S Bowes J Furlong J Roche N Curtin (capt) P Walsh J Cosgrove C Enright J Morgan D Guilfoyle D Burke T Barrett K Murphy C O'Sullivan. Subs. S Leahy for C. O'Sullivan M Conroy for Barrett injured
</p><p><b>ERINS OWN</b>: P Twomey D Long M Nicholl D Collins K Murphy T Kelleher D Cunningham F Horgan P J Murphy P Geasley (capt) B Corcoran C Dillon R OConnor C Touhig T OKeeffe. Subs. T Dunlea for P J Murphy S Moore for K Murphy.
</p><p><b>Referee</b>: N. Barrett Carrigtwohill</p>

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

