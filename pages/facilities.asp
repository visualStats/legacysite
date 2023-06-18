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
<td rowspan="2" valign="top"><img src="../images/banner-brien-right.jpg" width="347" height="188"></td></tr>
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

		<td valign="top" width="550" class="maintext">
<div style="margin-right:10px;">

<h3>Club Facilities</h3>

<p>Paddy Walsh Memorial Park accommodates two full size GAA pitches, four dressingrooms and equipment room.</p>

<p>Both pitches have floodlighting facilities enabling training of teams through Winter months. The older of the two pitches has a Steel Stand structure to protect the spectators from the elements.</p>


<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><img border="0" width="300" height="211" src="/images/newpitch.jpg"></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>The New Pitch (Opened May 2001)</font></td></tr>
</table>
</center>

<br><br>

<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><img border="0" width="300" height="211" src="/images/stand.jpg"></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>The Stand adjacent to the Old Pitch</font></td></tr>
</table>
</center>
<br><br>

<center><table border="0" bgcolor=#807C7B cellspacing="1" cellpadding="0">
<tr><td valign="top"><img border="0" width="300" height="211" src="/images/dressingrooms.jpg"></td></tr>
<tr><td bgcolor=#ffffff valign="top" class="maintext" align="center"><font size=-2>Dressing Rooms, as seen behind top goalposts<br>of Old Pitch</font></td></tr>
</table>
</center>

<br><br><br>

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

