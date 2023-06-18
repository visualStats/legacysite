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
<h3>The Year of '78</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Castlemartyr win 'B' Football Title</h4>


<h4>Castlemartyr 2-5 White's Cross 1-5</h4>

<p>The red jersey of Castlemartyr has been a garment of grandeur in East Cork hurling for the better part of a half a century, however it has never been worn with greater distinction than at Cobh on Sunday last where "the Reds" against the expectations of the majority, captured the 'B' football title at the gallant Whites Cross expense. 
</p>

<p>This was a magnificent match, quite the best club football game that I have seen this year, as two sides gave everything to win this final game of the season. It was a sternly contested affair all the way, and while no quarter was asked for or given it was very sportingly contested. It may not have produced football in the classic mould, but it was packed with interest and exciting incident piled on incident in a see-saw struggle that is the very stuff of championship fare. In the heel of the hunt Castlemartyr, fitter and more constructive, got the match-winning score seven minutes from normal time as they strained every muscle and every nerve in a bid to get an equalising point. The move turned up trumps for the 'Reds' as the ball ended up in the net and try as Whites Cross did, they could not get close enough to the Castlemartyr goal to save the game.
</p>
<h4>First Title</h4>

<p>So the late goal gave Castlemartyr their first ever football title at adult level, but what a big part the referee played in the score, Brian O'Meara who had just come on as a substitute gained possession some forty yards from Whites Cross goal, he was fouled and stood for his free however the referee waved play in and O'Meara soloed on to pass to Finbarr Murphy who made no mistake from close range to give Castlemartyr the lead back which they held until the final whistle.
</p>

<p>Castlemartyr opened as though they would toy with Whites Cross challenge. They made all the early running thanks to Ollie Moloney dominating mid field and when they raced into a six point lead looked all set to score the most comprehensive of wins. Seanie Bowes, Finbarr Murphy and Ollie Moloney , the outstanding trio in this campaign, got the early points while in a hectic onslaught on the Whites Cross goal, Joe Morgan was cut off as he drove into score, as was F. Murphy, before Seanie Bowes picked up, to slip inside two tackles and crash the ball to the net. In the second quarter Whites Cross with Ricky Burke inspiring them gradually got back into the game, points from Tom Hickey and fine fisted effort by Mick Murphy and Pat Collins cut the deficit to a goal as they displayed a refreshing and confident approach in fact they were unlucky not to be on level terms when Liam Bowen fisted an Andrew Hickey cross off the cross bar just before the break. Whites Cross, however restarted in tremendous fashion, they had to get to grips with the game as playing with the wind they failed to push home the advantage. Andrew Hickey booting first time on a Joe Murphy clearance put the ball over the bar, a poor kick our followed, Tom Hickey collected to slip inside the full back and goal to give Whites Cross the lead for the first time after 36 minutes of play.
</p>

<h4>In Front</h4>

<p>Ollie Moloney levelled the game as the see-saw struggle began, Whites Cross got their noses in front when Pat Collins collecting a side line kick scored a smashing point, and they kept in front until seven minutes from the end when Murphy goaled and Seanie Bowens finished the scoring with a point and victory going to Castlemartyr.
</p>

<p>Essentially a team effort, Castlemartyr must nevertheless hold a special place of honour for Ollie Moloney whose inspirational running was a decisive factor, not far behind him was Seanie Bowens, he was always in the thick of things, as was Finbarr Murphy, Liam McLellan, Tom O'Shea, Liam Collins, Joe Murphy and Willie Moran, despite a shaky start.
</p>
<p>One could not but have had sympathy for Whites Cross, but the truth of the matter was that a lot of their players were not suited to the heavy going, as they looked a very good side during the Summer months. The absence of John Sullivan and Ger McEvoy was a loss, yet they can have few excuses as they lead seven minutes from time. It must feel terrible to be on the losing side of both 'B' finals, certainly the pain must have been greater for Ricky Burke, John Cooke, Pat Collins, Andrew Hickey and A. Crowley.
</p>

<p><b>Castlemartyr</b>: L. Guilfoyle, W. Moran, J. Murphy, D. Guilfoyle, L. McLellan, K. Curtain, T. O'Shea, S. Bowens, 1-2; L. Collins, F. Murphy, 1-1; O. Moloney, 0-2; J. Morgan, J. Whyte, D. McGovern, B. Hennessy. Subs: L. Wade, B. O'Meara.
</p>

<p><b>Whites Cross</b>: G. Brady, J. Fitzgerald, J. Cooke, A. Crowley, V. Ring, R. Burke, A. Moylan, P. Collins, 0-2; G. O'Leary, A. Hickey, J. Crowley, D. McEvoy, T. Hickey, M. Murphy, Subs: J. Callaghan.
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

