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
<td rowspan="2" valign="top"><img src="../../images/banner-eddie-right.jpg" width="347" height="188"></td></tr>
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
<h3>Tribute to Donie Creed</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Wednesday, September 05, 2001</h4>

<p>It was with deep sorrow and regret that the club recently learnt of the untimely passing of one of its finest sons, Mr. Donal Creed.
</p>

<p>Donie was born and bred in Castlemartyr and, like all the youth of his time, grew up steeped in the hurling tradition of the village. He played at all underage levels in the club, but success was not easy to garner in that era when little grading occurred. However, Donie was part of the breakthrough, when in 1960, under the guidance of Ted Sullivan and Paddy Walsh, the u16 team won the East-Cork hurling championship title. Donie was already showing his future role as he lined out at full-back on that team and was rock solid in defence during that campaign. Hurling in that era was a game of no compromise and, as a player who played outside him in defence commented recently, "Playing outside Donie was a pleasure, as you were sure that any attacking movement that might pass you in the half-back line, you could rest assured that it was not going to pass further, with Donie in the full-back line behind you, to cover for you."
</p>
<p>Donie played in all the campaigns of the early sixties, losing to Carrigtwohill in the epic East-Cork final in 1962, when it went to a second replay, before helping the club to win its sixth East-Cork title in 1963, defeating Ballincurra in the final, before been beaten in the County final by Ballincollig.
</p>
<p>However, it was in 1964 that Donie had his finest year in the "Red" jersey, which he wore with such pride. He was ever present in the fullback line as Castlemartyr defeated White's Cross, Sarsfield's and Shanagarry before avenging '62 by defeating Carrigtwohill in the final. But more success was to come as Castlemartyr went on to defeat Coursey Rovers and then Cloughduv in the final to lift the County title for the second time in the history of the club.
</p>
<p>Donie had the honour of playing intermediate hurling in 1965 and continued to line out for the club into the 70's. When he married Maureen and moved to Cork, he still kept in touch with the club and on his many visits to see his mother, Madge and family, he always enquired of the club and supported it in any ventures that it was involved in. He will always be remembered for his ready smile and witty greetings to people during these visits, sometimes shouted from the cab of his truck as he drove through the village while working as a driver for CIE.
</p>
<p>Donie was again to show his brave character at the end, when, through a difficult illness, he maintained a courageous front for his wife and family in their hour of need. To his wife, Maureen, and family, his mother Madge, his brothers and sisters and extended family, we extend our deepest sympathy for your great loss.
</p>
<p>Ar dheis Dé go raibh a anam dilis. Ni docha go mbeidh a leitheid ann aris.
</p>			

<br>
<a class="redlink" href="articles_index.asp"><- Back to index of Articles</a>

</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145">

<!-- RIGHT HAND COLUMN -->
<a href="javascript:image_pop_historical('donie_creed_group.jpg', 600, 379, 55, 'Donie Creed, pictured 2nd from left. 3rd from left is Donie\'s brother Denis. This photo was taken at a training session before the 1975 East Cork final against Erins Own. Full photo lineup: Johnnie Mc Lellan, Donie Creed, Denis Creed, Ger O Sullivan, George Mc Lellan')" title="Click to Enlarge"><img border=1 src="../../images/doniecreed.jpg" width="140" height="148"></a><div align="right"><font face=Verdana size=-2>click image to see group photo</font></div>

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

