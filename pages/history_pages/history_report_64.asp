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
<h3>The Year of '64</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Castlemartyr's Hurling Heroes - Cork County Junior Champions 1964</h4>					

<p>We salute the Castlemartyr Junior hurling team of 1964 who swept aside all opposition in East Cork and County to record a glorious triumph for the wearers of the famous red jerseys.
</p>


<p>The Castlemartyr hurling resurgence had in fact started two year's earlier in 1962, when the "Reds" as they are affectionately known contested the East Cork Final versus Carrigtwohill. Those two teams were very evenly matched and eventually it took three games to separate them after some glorious hurling encounters. Both sides met again the following year in the semi-final and again they finished level before the lads in the red jerseys won the replay and gained sweet revenge for the previous year's defeat. 
</p>

<p>With razor keen rivalry developing between those two hurling strongholds the luck of the draw kept them apart once more in the earlier rounds of 1964 which saw Castlemartyr defeat Whites Cross in the opening round on the scoreline of 3-9 to 2-6. According to press reports, Liam Dowling was in top form at full forward with his brother Nick and the O Keeffe brothers, Donie, John and Donnacha, also prominent.
</p>
<p>Sarsfields were next to fall in the quarterfinal defeated by 4-5 to 2-3. This game was played at Cobh. Denis Creed was outstanding in goal as were Val Dowling, Mick Mahony, Dominic Barry, Eddie O Riordan, Nick Dowling and Donie Keeffe. Scorers were Donie O'Keeffe 2-2, N. Dowling 1-3 and P. Scanlon1-0.
</p>

<p>Shanagarry Rovers were beaten 7-7 to 1-2 in the semi-final. Scorers were Val Dowling 2-3, Donnacha O Keeffe 1-2, Pat Scanlon, Dominic Barry, Nick Dowling, and Mick Mahony1-0 each, and Donie O Keeffe 0-2 to qualify to meet their old rivals Carrigtwohill once more in the East Cork Final played at Clonmult Memorial Park, Midleton.
</p>

<h4>Castlemartyr 2-10 Carrigtwohill 4-3</h4>



<p>Castlemartyr and Carrigtwohill adorned that particular divisional showpiece with the splendour of their skill and pure hurling ability and providing the huge attendance with skill and excitement as the defending champions retained their crown. Victory by the narrowest of margins brought the seventh title to the Reds. Facing the wind in the first half they showed great determination and caused Carrig problems with their speed and stamina. The game was level at the interval on the scoreline 1-3 each. The second half opened with exchanges becoming hot and this resulted in one of the 'Reds' getting his marching orders.
</p>


<p>However, soon after he was joined on the sideline by one of the Carrigtwohill defenders and this made matters even. From there to the finish it was neck and neck with the title being one of the hardest ever earned by the minimum of scores. John O'Keeffe gave a great display at centre back. John was captain and we must remember that he was only 19 years of age at the time. Others to shine in defence were Mossy Garde and Jim Dowling, Mick Mahony played well at midfield while in the attack Val Dowling, Nick Dowling, John Abernethy and Eddie O Riordan were most prominent. 
</p>


<p>The winning team was John Burke, Donie Creed, and Jim Dowling. Mossy Garde, Paul Hartnett, John O Keeffe (Capt.), Pat Barry, Donnacha O Keeffe, Mick Mahony, Nick Dowling, Donie O Keeffe, Eddie O Riordan. Dominic Barry, Val Dowling, John Abernethy. 
</p>


<p>The "Reds" then marched confidently on to the Inter Divisional County championship series and after demolishing Coursey Rovers on the score of 4-14 to 1-1 they met and defeated doughty warriors Ballinhassig by a single point in the semi-final on the score of 6-4 to 5-6 after a tremendous game of hurling to qualify for the county final for the second consecutive year where they met and conquered a fine Mid Cork side Cloughduv played at the old Cork Athletic Grounds to bring honour and glory to their native place.
</p>



<h4>Castlemartyr 4-5 Cloughduv 2-9</h4>




<p>The winning team lined out as follows John Burke, Donie Creed, Jim Dowling, Mossie Garde, Tim Ronayne, John 0 Keeffe 0-1, Pat Barry, Paul Hartnett, Mick 0 Mahony, Donnacha O'Keeffe, Donie O Keeffe 2-0, Nick Dowling 0-2, Dominic Barry 0-1, Pat Scanlon, John Abernethy 2-1.
</p>



<p>Others who participated during the year John Collins, Mick Condon, Denis Creed, Anthony Cunningham, Liam Dowling, Val Dowling, Hugh Forde, John Greene, Richard Hennessy, William Hennessy, Ned Morgan, Liam Roynane.
</p>


<p>Great credit is due to them when one considers that for various reasons they had to find replacements for seven players who took part in the County final of 1963 when Ballincollig pipped Castlemartyr. The seven who were unavailable for the 1964 final were Val Dowling, Liam Dowling, Lar Dunne, Mick O Regan, Noel Ryan, John Whyte and Eddie O Riordan.
</p>


<p><b>Selectors</b>: John Barry, Ted O Sullivan, Liam Scanlon, Paddy Walsh, Paddy Whyte.
</p>
<p><b>Trainer</b>: Sydney Frazer
</p>
<p><b>Club Officers</b>: Chairman: Paddy Walsh. Vice Chairman: Joseph Walsh. Secretary: Mick Lovett. Treasurer: Jim McGovern.
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

