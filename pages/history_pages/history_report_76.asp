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
<h3>The Year of '76</h3>

<div style="margin-right:10px;line-height:150%">

<h4>East Cork U21 Football Champions 1976</h4>


<h4>Castlemartyr 4-7 Killeagh 0-4</h4>


<p>In winning the under 21 'B' football for the first time, Castlemartyr also brought a football crown to the club for the first time when they beat a disappointing Killeagh side at Youghal. The "Reds" had matters all their own way in a game that lacked excitement, with a standard of football way below expectations.
</p>

<p>Killeagh never got going and after conceding two early goals in the space of a minute it was obvious that their neighbours, Castlemartyr, were going to make their piece of history.The game, played on a very wet pitch, was a personal triumph for 15 year old Michael Burke, playing at corner forward he scored 3-5 of his side's tally, 2-4 coming from placed balls, and his first goal was the best score of the game.
</p>

<p>The two early goals that killed this game came in the 6th and 7th minutes. The first came when a Seanie Bowens taken free landed in the goalmouth, in the melee Joe Murphy got his hands to the ball to push it into the net. The second was a beauty, Bernard Kane brought the ball up the left wing on the ground before crossing high into the goalmouth where M. Burke rose high to fist the ball to the net off the cross bar. Castlemartyr had to wait until the 28th minute for the next score when M. Burke pointed a 30 yard free. In between Killeagh had points from Kevin Galvin, Martin Cronin and Noel Driscoll to leave them trailing by four points at the break 2-1 to 0-4. Killeagh made many positional changes during the break. The main one was bringing out Tom Seward from goals to lead the attack, with James Fogarty going to goals. Of the two Fogarty was by far the busier, he had to stand for two penalties, which Michael Burke tucked away nicely in the net. Burke should have put another one past him in the 38th minute when he had a goal at his mercy only to see his shot go over the bar.
</p>

<p>Yes this half was all Castlemartyr; they scored 2-6 to a Bobby Lee point for Killeagh. When it was all over I was sorry I didn't go to the county final. I expected a real tough game and all I got was Sean Bowes, John Burke, Sylvester Mahoney, the Guilfoyles, John L. Sullivan, M. Burke and company handing out a beating to a Killeagh side who were not up to it.
</p>

<p>Noel Driscoll, Con Coakley, Brian Griffin, and Frank O'Neill were the best for a weak side.
</p>

<p><b>CASTLEMARTYR</b>: B. Lawton, Kevin Curtin, Dave Guilfoyle, Derry Guilfoyle, J. L. O'Sullivan, Sean Bowes, Sylvester O'Mahoney, John Burke, Barry Guilfoyle, 0-1, Joe Morgan, Bernard Kane, John Whyte, 1-0, Finbar Murphy, Joe Murphy, M. Burke, 3-5.
</p>

<p><b>Killeagh</b>: T. Seward, C. O'Leary, F. O'Neill, J. Fogarty, C. Coakley, F. Walsh, D. Sexton, N. Driscoll, 0-1, B. Griffin, B. Lee, K. Collins, G. Gleeson, K. Galvin, M. Cronin, W. Lane.
</p>
<p><b>Referee</b>: Liam Leahy, Youghal
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

