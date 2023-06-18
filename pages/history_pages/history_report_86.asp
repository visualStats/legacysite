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
<h3>1986 East Cork Football Final</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Castlemartyr narrowly retain East Cork football title</h4>

<h4>Castlemartyr 2-7 Cobh 0-10</h4>



<p>The old adage that fortune honours the brave must have grated the throats and weighed heavily on the hearts of Cobh players last Sunday after Castlemartyr narrowly retained their East Cork junior A football title at Midleton. For after playing disciplined and often scintillating football for three-quarters of this game, perpetual underdogs Cobb were sent reeling by two goals borne of uncharacteristic defensive lapses in rapid succession mid-way through the second half, which cruelly heralded their demise. Castlemartyr only showed the signs of their champion status in the final passages of play when victory beckoned as for the remainder of the game they were almost totally outplayed by a courageous Cobh team.
</p>
<h4>Fine Awareness</h4>

<p>Cobb, not for the first time in this campaign, displayed a great tactical awareness as immediately on the start of the game John Hegarty, selected at centre-forward, switched to the wing to curb the potent attacking threat of Imokilly captain Kieran Murphy. Hegarty, who had to cope with Cork's Conor Counihan in the semi-final, excelled in this role from which he led the Cobh attack with considerable vigour and a large quota of skill. Full-forward Patsy Ronan opened Cobh's account with a pointed free after eight minutes as Cobh, playing with the stiff breeze, settled quickly. A minute later Hegarty made a dashing solo through the Castlemartyr rear-guard and added a lovely ace, while by the eleventh minute Ger Morgan had stretched Cobb's advantage with a close range free, made even easier in the light of a dissenting Castlemartyr voice.
</p>

<h4>Hauled Back</h4>

<p>Castlemartyr hauled back their challengers somewhat when Mick Burke converted two frees in the 14th and 16th minutes but their attack was finding it difficult to penetrate the strong defending of Conor McCarthy,Pat Devlln and Stephen Mulvihill. Joe Murphy then reinforced Cobh's dwindling advantage a minute later when good close control earned him a point, and as only the outstanding Sean Bowes and the tenacious Noel Curtin were mastering their tasks in Castlemartyr's defence, Cobh fashioned two scores of rare quality approaching half-time.




<p>On 23 minutes John Ronan linked with' Devlin on the left wing of Cobh's defence. Devlin in turn found the ubiquitous Hegarty who then placed John Morgan with a raking pass, giving him the opportunity to find the range with a confident 40 yard kick. Three minutes later John Morgan and Joe Murphy were involved in a ground passing movement worthy of the Ramblers themselves to allow Ger Morgan to whip the ball over the bar directly from the slick Midleton turf.
</p>
<h4>'A Hat-Trick'</h4>


<p>Castlemartyr, as if not to miss out on the cohesion spree carved out some combination play of their own a minute later as the strong running Derry Guilfoyle, set free by a Christy Enright pass, found corner-forward Finbarr Murphy who released Mick Burke to complete his hat-trick of first-half points.
</p>

<p>As the second half began with Cobh nurturing a three point lead they immediately set about securing their position further. In the 35th minute Ger Morgan pointed another free and three minutes later Tony O'Connor was very prominent in yet another flowing movement which set up Hegarty for Cobb's eighth point. Two minutes later the rampant Ger Morgan displayed aplomb in abundance when notching a sweet point and immediately raised his right fist, clinched in jubilation, as Cobh seemed invincible. A short five minutes later jubilation had turned into desperation as Cobh's challenge collapsed. After 43 minutes diminutive corner-forward Finbarr Murphy was allowed grab a long Jim Cosgrove free kick, six yards from goal, and he duly tucked the ball away. A minute later Guilfoyle scored his only point and as the game edged over the three-quarter hour Bernard Lawton was on hand to punish hesitancy in Cobh defence with the ultimate price, another goal.
</p>

<h4>Tiring Limbs</h4>

<p>Even though Ger Morgan equalised in the 49th minute with a point for Cobh, they were now a side of tiring limbs and drained confidence after watching a six point lead whisked away in a matter of rnoments.In contrast Castlemartyr were swept forward on a sigh of relief indubidably tangible. Their title was still intact and once wily captain Christy O'Sullivan had shrugged off three tackles to give Castlemartyr the lead again in the 50th minute, they never looked back. Burke added another pointed free three minutes later and with Cosgrove and at last Kieran Murphy playing dominant roles, Finbarr Murphy kicked the "insurance" point in the last minute of normal time.
</p>

<p>For a gallant Cobh side there must surely be another day. But as the Jim Ryan Memorial Trophy will rest for another year on Castlemartyr's sideboard they have, perhaps with arrogance of champions, undermined a time worn and trusted old saying.
</p>
<p><b>Scorers for Castlemartyr</b>:   M. Burke0-4 (0-3 frees), F. Murphy 1-1, B.Lawton 1-0, D.Guilfoyle, C.O'Sullivan 0-1 each
</p>
<p><b>Scorers for Cobh</b>: G.Morgan 0-5 (0-2 frees), J. Hegarty 0-2,P.Ronan 0-1 (0-1 frees), J. Morgan and J. Murphy 0-1 each.
</p>
<p><b>Castlemartyr</b>: N  Murphy  N Curtin  L McLellan   P Walsh  K Murphy  S Bowes  C Enright  J Cosgrove  D Burke B Lawton  D Guilfoyle  M Burke  F Murphy  S Lawton  C O'Sullivan. Sub. - J Morgan for S Lawton.
</p>
<p><b>Cobh</b>: B Farrell  A Flynn  S Mulvihill   J Ronan  B Frahill  C McCarthy  P Devlin  T O'Connor   J Morgan  G Morgan J Hegarty  M O'Driscoil  J Murphy  P Ronan  J Donovan. Sub. - T Butler for T O'Connor.
</p>
<p><b>Referee</b>: B. Cody (Midleton)
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

