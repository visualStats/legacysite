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
<td rowspan="2" valign="top"><img src="../../images/banner-paddy-right.jpg" width="347" height="188"></td></tr>
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

		<td valign="top" width="550" class="maintext">
<h3>Historical Photos (small sample)</h3>

<div style="margin-right:10px;">

<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><a title="Click to Enlarge" href="javascript:image_pop_historical('1935eastcork.jpg', 600, 421,60, 'Castlemartyr - 1935 East Cork Junior Champions')"><img border="0" width="300" height="211" src="/images/historical_pics/1935eastcork_small.jpg"></a></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>click image to enlarge</font></td></tr>
</table>
</center>

<br><br>
<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><a title="Click to Enlarge" href="javascript:image_pop_historical('1963eastcork.jpg', 585, 413,60, 'Castlemartyr - 1963 East Cork Junior Champions')"><img border="0" width="300" height="212" src="/images/historical_pics/1963eastcork_small.jpg"></a></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>click image to enlarge</font></td></tr>
</table>
</center>

<br><br>
<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><a title="Click to Enlarge" href="javascript:image_pop_historical('1974_u16.jpg', 600, 447,60, 'Castlemartyr - 1974 East Cork U16 Champions')"><img border="0" width="300" height="224" src="/images/historical_pics/1974_u16_small.jpg"></a></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>click image to enlarge</font></td></tr>
</table>
</center>



<br><br>
<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><a title="Click to Enlarge" href="javascript:image_pop_historical('eoin_mcGovern_marching_1970s.jpg', 600, 403,60, 'Castlemartyr - 1975 East Cork Finalists')"><img border="0" width="300" height="202" src="/images/historical_pics/eoin_mcGovern_marching_1970s_small.jpg"></a></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>click image to enlarge</font></td></tr>
</table>
</center>

<br><br>
<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><a title="Click to Enlarge" href="javascript:image_pop_historical('cobh_90s.jpg', 600, 412,60, '1991 East Cork Champions')"><img border="0" width="300" height="206" src="/images/historical_pics/cobh_90s_small.jpg"></a></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>click image to enlarge</font></td></tr>
</table>
</center>


<br><br>
<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><a title="Click to Enlarge" href="javascript:image_pop_historical('1990_vs_erinsown.jpg', 600, 392,60, 'Castlemartyr - 1990 East Cork Football Champions')"><img border="0" width="300" height="196" src="/images/historical_pics/1990_vs_erinsown_small.jpg"></a></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>click image to enlarge</font></td></tr>
</table>
</center>

<br><br>
<center>
<a class="ordlink1" href="/pages/history_pages/intro_history.asp">History Intro</a>&nbsp;|&nbsp;
<a class="ordlink1" href="/pages/history_pages/sample_pics_history.asp">Sample Pics</a><br>
<a class="ordlink1" href="/pages/history_pages/sample_reports_history.asp">Sample Match Reports</a>&nbsp;|&nbsp;
<a class="ordlink1" href="/pages/history_pages/roll_of_honour_history.asp">Roll of Honour</a>
<center>
								


</div>


<br><br><br>
</td>

<!--
		<td valign="top" align="left" width="145">


 <img border=1 src="../../images/flags140c.jpg" width="140" ><br><br>
<a href="javascript:image_pop_historical('brendan_entrance.jpg', 570, 505, 55, 'Castlemartyr GAA clubman Brendan Wade at the entrance to Paddy Walsh Memorial Park')" title="Click to Enlarge"><img border=1 src="../../images/plaque.jpg" width="140" height="89"></a><div align="right"><font face=Verdana size=-2>click image to enlarge</font></div>

</td>

 -->

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

