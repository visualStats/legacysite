<%

set xmlDoc = CreateObject("microsoft.xmldom")
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
<html>
<head>
<title>Castlemartyr GAA Club, Cork</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" href="../cm.css" type="text/css">
<script src="../js.js" type="text/javascript"></script>
</head>
<body bgcolor="#dbd7d7" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" rightmargin="0" text="#807c7b" link="#807c7b" vlink="#807c7b" alink="#807c7b" >

<table cellspacing="1" bgcolor="#fb5338" cellpadding="0" width="780" align="center"  border=0>

<tr><td>
<table cellspacing="0" bgcolor="#ffffff"     
      cellPadding=0 width=780 border=0>



<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td valign="top"><img src="../images/banner-left.jpg" width="433" height="163"></td>
<td rowspan="2" valign="top"><img src="../images/banner-brien-right.jpg" width="347" height="188"></td></tr>
<tr><td valign="center" align="middle"><!--#include file="../ticker/ticker.asp"--></td></tr>
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

	<table  bgcolor=#ffffff cellSpacing=9   cellPadding=0 width="100%"  
            border=0>
	<tr>
		<td valign="top" width="1"><!--#include file="../navigation/navigation.asp"-->


</td>
		<td valign="top"  width="10"><img src="../images/trans.gif" width="5" height="400"></td>

		<td valign="top" width="550" class="maintext">
<div style="MARGIN-RIGHT: 10px">

<h3>Castlemartyr GAA Fixtures & Events Calendar

<br><br> </h3>
<iframe src="http://www.google.com/calendar/embed?src=pro.castlemartyr.cork%40gaa.ie&ctz=Europe/Dublin" style="border: 0" width="550" height="600" frameborder="0" scrolling="no"></iframe>

</div>
</td>



	</tr>




	</table>
</td>
</tr>



<tr><!-- RED BAR -->
<td bgcolor="#fb5338" align="right">

	<table  width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td class="hitcounter"><i>&nbsp;&nbsp;<%=count_int_org%> visitors to <a class="hitcounterlink" href="http://www.castlemartyrgaa.com">Castlemartyr GAA</a> website</i></td>
	<td align="right"><!-- <img src="../images/trans.gif" width="5" height="3" align="absmiddle"><a class="mailtolink" href="mailto:eamon@hagroup.ie"><i>contact webmaster...</i></a>&nbsp;
	 --></td>

	</tr>
	</table>


</td>
</tr>

</table>

</td></tr></table>
<br><br>
</body>
</html>