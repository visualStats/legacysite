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
<td rowspan="2" valign="top"><img src="../images/banner-jimmy-right.jpg" width="347" height="188"></td></tr>
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

		<td valign="top" width="400" class="maintext">
<div style="MARGIN-RIGHT: 10px">



<h3>Current Officers of the club</h3>


<table  class="maintext" width="400" border="0" cellspacing="1" cellpadding="5"><!--<tr><td valign="top" width="80"><b>President:</b></td><td width="320" valign="top">Christy O'Sullivan<br>(021 4667325)</td></tr>-->
<tr><td valign="top"><b>Chairman:</b></td><td valign="top">Bernard Lawton<br>(tel: 087 2477194)</td></tr>
<tr><td valign="top"><b>Vice&nbsp;Chairman:</b></td><td valign="top">
                        <p>Michael Carroll<br>(tel: 086 2577214)</p>  </td></tr>
<tr><td valign="top"><b>Secretary:</b></td><td valign="top">Donagh McCarthy<br>(tel: 
    087 2115205)
    <br>

<script type="text/javascript">
    var string1 = "secretary.castlemartyr.cork";
    var string2 = "@";
    var string3 = "gaa";
    var string4 = ".ie";
    var string5 = string1 + string2 + string3 + string4;


    document.write("Email <a  href=" + "mail" + "to:" + string1 + string2 + string3 + string4 + " >" + string5 + "</a>");
    
</script>
    
    </td></tr>
<tr><td valign="top"><b>Assist.&nbsp;Secretary:</b></td><td valign="top">Mick Leahy<br>(tel: 021 4667519)</td></tr>
<tr><td valign="top"><b>Treasurer:</b></td><td valign="top">Frank Hayes<br></td></tr>
<tr><td valign="top"><b>PRO:</b></td><td valign="top">Dave Scully<br>(tel: 086 8637712)<br>

<script type="text/javascript">
    var string1 = "pro.castlemartyr.cork";
    var string2 = "@";
    var string3 = "gaa";
    var string4 = ".ie";
    var string5 = string1 + string2 + string3 + string4;


    document.write("Email <a  href=" + "mail" + "to:" + string1 + string2 + string3 + string4 + " >" + string5 + "</a>");
    
</script>
</td></tr>


</table>


</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145"><!-- RIGHT HAND COLUMN --><!--#include file="rhs.asp"-->
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

