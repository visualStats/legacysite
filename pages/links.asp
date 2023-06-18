<%

Set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=False
xmlDoc.load(server.mappath("../dynamic_files/hitcounter.xml"))
set root=xmlDoc.documentElement
set r = root.selectSingleNode("TEXT")
 
count_str= r.text
count_int_org=cdbl(count_str)

if session("counted") <> "yes" then
	session("counted") = "yes"
	count_int=count_int_org+1
	count_int_org = count_int
	r.text = count_int
	xmlDoc.save(server.mappath("../dynamic_files/hitcounter.xml"))
end if
%>
<HTML>
<HEAD>
<TITLE>Castlemartyr GAA Club, Cork</TITLE>
<META name="description" content="">
<META name="keywords" content="">
<link rel=stylesheet href="../cm.css" type="text/css">
<SCRIPT src="../js.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY bgcolor="#DBD7D7" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" rightmargin="0" BGCOLOR="#FFFFFF" TEXT="#807C7B" LINK="#807C7B" VLINK="#807C7B" ALINK="#807C7B">

<TABLE cellSpacing=1 bgcolor=#FB5338 cellPadding=0 width=780 align=center  border=0>

<tr><td>
<TABLE cellSpacing=0 bgcolor=#ffffff  cellPadding=0 width=780  border=0>



<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td valign="top"><img src="../images/banner-left.jpg" width="433" height="163"></td>
<td rowspan="2" valign="top"><img src="../images/banner-eanna-right.jpg" width="347" height="188"></td></tr>
<tr><td valign="middle" align="middle"><!--#include file="../ticker/ticker.asp"--></td></tr>
</table>

</td>
</tr>



<tr><!-- RED BAR -->
<td  background="../images/reddot4.gif"><img src="../images/trans.gif" width="280" height="2"></td>
</tr>


<tr>
<td bgcolor="#ffffff"><img src="../images/trans.gif" width="280" height="7"></td>
</tr>




<tr>

<td>

	<TABLE  bgcolor=#ffffff cellSpacing=9   cellPadding=0 width="100%"  border=0>
	<tr>
		<td valign="top" width="1">

<!--#include file="../navigation/navigation.asp"-->


</td>
		<td valign="top"  width="10"><img src="../images/trans.gif" height="400" width="5"></td>

		<td valign="top" width="400" class="maintext">
<div style="margin-right:10px;line-height:150%">



<h3>Links</h3>

<a target="_blank"  class="ordlink1" href="http://www.castlemartyr.net/">Castlemartyr & Mogeely Community Council</a><br><br />

<a target="_blank"  class="ordlink1" href="http://www.gaa.ie/">Official GAA site</a><br>
<a target="_blank"  class="ordlink1" href="http://www.hoganstand.com">Hogan Stand</a><br>
<a target="_blank"  class="ordlink1" href="http://www.anfearrua.com">An Fear Rua - The GAA Unplugged</a><br>

<a target="_blank"  class="ordlink1" href="http://www.clubgaa.ie">Club GAA</a><br>
<a target="_blank"  class="ordlink1" href="http://www.rebelgaa.com">Rebel GAA</a><br>
<a target="_blank"  class="ordlink1" href="http://www.corkgaaresults.com">Cork GAA Results</a><br>
<a target="_blank"  class="ordlink1" href="http://www.examiner.ie/pport/web/sport/gaa/index.asp">Examiner GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.rte.ie/sport/gaa/newsindex.html">RTE GAA</a><br>
<a target="_blank"  class="ordlink1" href="http://www.breakingnews.ie/sport/gaa/index.asp">Breaking News GAA</a><br>
<br>

<a target="_blank"  class="ordlink1" href="http://www.eastcorkgaa.com/">East Cork GAA</a><br>


<a target="_blank"  class="ordlink1" href="http://www.aghabulloguegaa.com">Aghabullogue GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.ballincolliggaa.org">Ballincollig GAA</a><br>
<a target="_blank"  class="ordlink1" href="http://www.newtownshandrum.com/">Newtownshandrum GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.erinsowngaa.ie/">Erins Own GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.killeaghgaa.com">Killeagh GAA</a><br>


<a target="_blank"  class="ordlink1" href="http://www.mayfieldgaa.com/">Mayfield GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.ballyheagaa.com/">Ballyhea GAA</a><br>



<a target="_blank"  class="ordlink1" href="http://www.sarsfieldshurlingclub.com/">Sarsfields GAA Club Cork</a><br>

<a target="_blank"  class="ordlink1" href="http://www.cloynegaa.com">Cloyne GAA</a><br>



<a target="_blank"  class="ordlink1" href="http://www.blackrockhurling.org">Blackrock GAA</a><br>
<a target="_blank"  class="ordlink1" href="http://www.ballymaguigan.com">St. Trea's GAA</a><br>
<a target="_blank"  class="ordlink1" href="http://www.blarneygaa.ie">Blarney GAA</a><br>



<a target="_blank"  class="ordlink1" href="http://www.canoveegaa.org">Canovee GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.carrigalinegaa.com">Carrigaline GAA</a><br>
<a target="_blank"  class="ordlink1" href="http://www.castlehavengaa.com">Castlehaven GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.castlemagner.com">Castlemagner GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.inniscarragaa.com">Inniscarra GAA</a><br>





<a target="_blank"  class="ordlink1" href="http://www.kildorrerygaa.com">Kildorrery GAA</a><br>





<a target="_blank"  class="ordlink1" href="http://www.napiarsaigh.com">Na Piarsaigh GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.nemorangers.ie">Nemo Rangers GAA</a><br>



<a target="_blank"  class="ordlink1" href="http://www.charleville.com">Charleville GAA</a><br>


<a target="_blank"  class="ordlink1" href="http://www.stmichaelsgaa.com">St Michael's GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.youghalgaa.com">Youghal GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.nagaa.org">GAA America</a><br>
<a target="_blank"  class="ordlink1" href="http://www.bostongaa.org">Boston GAA</a><br>

<a target="_blank"  class="ordlink1" href="http://www.chicagostbrendans.com">Chicago GAA</a><br>


</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145">

<!-- RIGHT HAND COLUMN -->
<!--#include file="rhs.asp"-->
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
	<!-- <img src="../images/trans.gif" width="5" height="3" align="absmiddle"><a class="mailtolink" href="mailto:eamon@hagroup.ie"><i>contact webmaster...</i></a>&nbsp;
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

