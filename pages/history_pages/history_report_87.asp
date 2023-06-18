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
<h3>1987 East Cork Football Final</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Castlemartyr Win Third Title in a Row</h4>

<h4>Castlemartyr 0-11 Aghada 1-4</h4>

<p>Castlemartyr's junior footballers won a remarkable third consecutive East Cork title at Ballymacoda last Saturday in a match which underscored the inherent folly of playing such an important fixture in December.
</p>

<p>A bitterly cold wind gusted down the pitch and this dictated the match and its outcome more than any technical or tactical element of either team's play. This is simply not right. Kicking and especially shooting, games fundamentals, either with or against the wind became a complex test of judgement and even luck, which many sadly failed, epitomized in the fact that only six of fifteen scores came from play.
</p>

<p>The strength of the wind can be gauged by the fact that both teams only scored once against it. Aghada's score coming within twenty seconds of the start after a precise pass from Martin Hennessy gave Donal Morrissey the chance to goal. They had to wait 43 minutes for another score.
</p>

<p>Castlemartyr recovered with the composure of weathered campaigners from that unwelcome jolt and Mick Burke pointed two frees inside two minutes. Captain Sean Bowes and Bernard Lawton promptly took a firm grip at centre-field and the onslaught began in earnest.
</p>

<p>After nine minutes John Morgan placed veteran Christy O Sullivan in a good position only to see his vicious shot from eight yards deflected for a point by a marvelous Ger Looney save. Castlemartyr then took the lead when the excellent Kieran Murphy. playing in an unfamiliar forward role, kicked a point from near the sideline, which alone probably vindicated the switch from halfback.
</p>

<p>The trail of scores continued with three more pointed frees from Mick Burke and points off play from Finbarr Murphy, Lawton and Morgan. Then three minutes before the break Castlemartyr were presented a chance to put themselves into an unassailable lead when they won a penalty. However Burke's kick was straight at Looney who was grateful indeed. The 0-10 to 1-0 half-time score may have looked impressive but the reality it thinly cloaked was that seven points was a timid enough advantage. That reality though gradually and decisively changed as the second half progressed.
</p>

<p>For the third quarter Aghada enjoyed a dominance that was commensurate with the wind which was now aiding them. On the scoreboard however things fell drastically out of proportion as they scored only one point through a Billy Aherne free on 43 minutes. A psychological battle had been won and lost.
</p>

<p>Conor Counihan whose Cork and Ireland involvement had forced the continued postponement of the championship continued to toil tirelessly for Aghada as did Hennessy but the goals they now needed were not forthcoming . Castlemartyr's excellent full-back line of Noel Curtin, John Roche and Pat Walsh saw to that.
</p>

<p>Aherne added three more points, two from frees, and Burke replied for Castlemartyr but by this time the important business had been done and Castlemartyr were deservedly crowned champions yet again.
</p>

<p><b>Scorers for Castlemartyr</b>  M Burke (O-6 frees), F Murphy, B Lawton, J Morgan, C O'Sullivan and K Murphy (0-1 each)
</p><p><b>Scorers for Aghada</b> B. Ahern 0-4, (0-3 frees) D Morrissey (1-0).
</p><p><b>Castlemartyr</b>: N Murphy J Roche N Curtin P Walsh C Enright D Guilfoyle D Burke S Bowes B Lawton S Leahy K Murphy J Morgan F Murphy M Burke C O Sullivan
</p><p><b>Aghada</b>: G Looney J O'Leary B Counihan D Healy J Hartnett A Devoy J Reaney C Counihan A Berry B Aherne D Morrissey P O'Douoghue M Lewis M Hennessy K OKeeffe Sub P Cashman for D Morrissey J O'Sullivan for K OKeeffe
</p><p><b>Referee</b>: T Canavan,Cloyne.
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

