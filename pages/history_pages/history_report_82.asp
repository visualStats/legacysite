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
<h3>The Year of '82</h3>

<div style="margin-right:10px;line-height:150%">

<h4>East Cork  Football Champions 1982</h4>				
<h4>Castlemartyr 0-7 Glenville 0-6</h4>	


<p>A little bit of history was made at Carrigtwohill yesterday when Castlemartyr deservedly won their First East Cork junior football championship after beating Glenville by the narrowest of margins.
</p>

<p>In a game which never reached any great heights, Castlemartyr laid the foundation for their win when playing against the wind in a rather dull and listless opening half. They turned over just one point in arrears after Glenville had failed to score from play for twenty nine minutes.
</p>

<p>Inside a minute of the restart full forward Bernard Lawton had given Castlemartyr the lead when he flashed over two opportunist points. Michael Burke soon stretched the lead with another minor and with full back Liam Mc Lellan playing powerfully, the half back line of Jim Cosgrave, Christy O'Sullivan and Brian Griffin well on top and Sean Bowes fetching magnificently at midfield carried the fight to their opponents.
</p>

<p>They missed a number of chances to consolidate their advantage however, and when Pat and Sean Callaghan swapped positions after twelve minutes an immediate improvement was noticeable in Glenville. Wing forward John Halbert came much more into the game and points from him and John Walsh levelled matters with just ten minutes remaining.
</p>

<p>Bowes continued to inspire Castlemartyr and gradually they got on top again. With nine minutes to go Michael Burke pointed a free and four minutes later with another free, this time with an excellent kick from forty five rnetres, he eased Castlemartyr a clear two points ahead.
</p>

<p>Glenville refused to give in, however, and three minutes from time James Callaghan burst through to narrow the gap to one point. With time ticking away, the losers had their final chance of salvaging the contest when John Halbert was fouled going through. He took the resultant free kick himself but his effort from an acute angle was well held by Castlemartyr's man of the match Sean Bowes and the referee's whistle sounded almost immediately to give the new champions their very first title.
</p>

<p><b>Scorers</b>: CASTLEMARTYR: M. Burke (0-4, 0-2 frees), B. Lawton (0-2), K. Murphy (0-1). GLENVILLE: S. Callaghan (0-2, 0-1 free), P. Callaghan (0-1, , 50m), J. Walsh (0-1), J. Halbert (0-1 free), J. Callaghan (0-1). 
</p>

<p><b>CASTLEMARTYR</b>: Noel Murphy  Pat Walsh  Liam Mc Lellan  John Burke  Jim Cosgrave   Christy O'Sullivan  Brian Griffin  Sean Bowes  Derry Guilfoyle   Michael White  Michael 
</p>

<p><b>GLENVILLE</b>: D Murphy  D Callaghan  E Ryan  J Ryan  J Callaghan  P Callaghan   D Kearney S Callaghan J Walsh J Halbert  P Regan  J Callaghan  P Walsh  D Farrell  F Halbert
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

