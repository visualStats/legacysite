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
<h3>The Year of '92</h3>

<div style="margin-right:10px;line-height:150%">



<h4>Cork County Intermediate Football Champions 1992</h4>

<h4>Castlemartyr 1-16 Knocknagree 2-11 (after extra time)</h4>			


<p>In their first year in the grade, Castlemartyr won the Cork county intermediate football league title when they had two points to spare over Knocknagree played at Glantane yesterday.
</p>

<p>The victory is all the more meritorious given that the East Cork side had to come from nine points down early in the second half, before finally getting home in a welter of excitement. Difficult underfoot conditions made good football impossible, but nevertheless both sides served up a most entertaining game. With the strong wind to their hacks in the opening half, Knocknagree turned over 1-7 to 0-3 in front.
</p>

<p>Castlemartyr's task was made that bit more difficult when Knocknagree goaled from a penalty early in the second half to open up a commanding nine point lead, but gradually the East Cork side began to whittle away the lead, and were just the minimum in arrears with time almost up.
</p>

<p>The very accurate John Morgan was given the 'chance to tie the scores when Castlemartyr were awarded a 13-metre free out near the touchline, but his effort fell short and they looked to have blown their chance.
</p>

<p>Fortunately for Morgan, his effort was gathered by Fr. Martin Conroy who became his side's hero when he kicked the equaliser and send the game into extra time.
</p>


<p>With both sides showing signs of weariness, the East Cork side, aided by the wind were just two points in front at the end of the opening period of extra-time and it didn't appear to be enough.
</p>


<p>However, Knocknagree were unable to take full advantage and the sides shared six points in a tremendously second period of extra time. 
    Tony Barrett, came off the bench and kicked 3 points for the Reds. Amid tremendous scenes of jubilation, Co. Board PRO Brian Barrett presented the cup to the winning captain.
</p>
<p>It was a marvellous achievement for Castlemartyr and the new season cannot come around quick enough for them. Ronnie Barrett, Jim Cosgrove, 
    Tony Barrett, Kieran Murphy, Seanie Bowes and John Morgan, who contributed the huge score of 10 points, were best for the winners.
</p>


<br>
<a class="redlink" href="match_reports_history_index.asp"><- Back to index of Historical Match Reportss</a>




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

