<%

set xmlDoc = CreateObject("microsoft.xmldom")
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
<html>
<head>
<title>Castlemartyr GAA Club, Cork</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link rel="stylesheet" href="../../cm.css" type="text/css">
<script src="../../js.js" type="text/javascript"></script>
</head>
<body bgcolor="#dbd7d7" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" rightmargin="0" text="#807c7b" link="#807c7b" vlink="#807c7b" alink="#807c7b" >

<table cellspacing="1" bgcolor="#fb5338" cellpadding="0" width="780" align="center"  border=0>
  <tbody>

<tr><td>
<table cellspacing="0" bgcolor="#ffffff"     
      cellPadding=0 width=780 border=0>
        <tbody>



<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td valign="top"><img src="../../images/banner-left.jpg" width="433" height="163"></td>
<td rowspan="2" valign="top"><img src="../../images/banner-eoin-right.jpg" width="347" height="188"></td></tr>
<tr><td valign="center" align="middle"><!--#include file="../../ticker/ticker.asp"--></td></tr>
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

	<table  bgcolor=#ffffff cellSpacing=9   cellPadding=0 width="100%"  
            border=0>
              <tbody>
	<tr>
		<td valign="top" width="1"><!--#include file="../../navigation/navigation.asp"-->


</td>
		<td valign="top"  width="10"><img src="../../images/trans.gif" width="5" height="400"></td>

		<td valign="top" width="400" class="maintext">
<h3>Roll of Honour</h3>

<div style="MARGIN-RIGHT: 10px">

 

<span class="redtext">Junior 'A' Hurling  East Cork Champions:</span><br>	 
1935,	 
1946, 1950, 1951, 1954, 1963, 1964, 2009, 2010, 2013, 2014.	
<br><br>


<span class="redtext">Junior 'A' Hurling  Cork County Champions:</span><br> 	
1951, 1964	
    <br />
    <br />
    <span class="redtext">Junior 'C' Hurling East Cork Champions:</span><br>2010<br />
    <br>

<span class="redtext">Intermediate County Football  League Champions:</span><br>
1992
<br><br>

<span class="redtext">Junior 'A' Football  East Cork Champions:</span><br>
1982, 1985, 1986, 1987, 1990, 1991
<br><br>


<span class="redtext">Junior 'B' Football  East Cork Champions:</span><br>
1978
<br><br>

<span class="redtext">U21 'B' Football  East Cork Champions:</span><br>
1976, 1980, 1983, 2004
<br><br>

<span class="redtext">U21 'B' Hurling  East Cork Champions:</span><br>
1973
<br><br><br>




<h4>All Ireland Medal Winners</h4>

<span class="redtext">Senior Hurling:</span><br>
Ted O Sullivan 1941, 1943,  Fr. Billy Abernethy 1952, Liam Dowling 1952 , 1953
<br><br>

<span class="redtext">Intermediate Hurling:</span><br>
Mossie Garde 1965, 
                  
Donie O Keeffe  1965, John O Keeffe  1965, John White 1965,  Jimmy Smiddy 1997, Brian Lawton 2009, Barry Lawton 2014
<br><br>

<span class="redtext">Junior Hurling:</span><br>
Paddy Abernethy 1947, Ted O Sullivan 1947
<br><br>

<span class="redtext">U21 Hurling:</span><br>
Sylvie O Mahony 1976
<br><br>

<span class="redtext">Minor  Hurling:</span><br>
Jackie White 1939,  Nick Dowling 1964, Brian Smiddy 2001
<br><br>

<span class="redtext">Junior Football:</span><br>
Sean Bowes 1987, John Morgan 1993, Christy Enright 1993
<br><br>



<br><br>
<center>
<a class="ordlink1" href="/pages/history_pages/intro_history.asp">History Intro</a>&nbsp;|&nbsp;
<a class="ordlink1" href="/pages/history_pages/sample_pics_history.asp">Sample Pics</a><br>
<a class="ordlink1" href="/pages/history_pages/sample_reports_history.asp">Sample Match Reports</a>&nbsp;|&nbsp;
<a class="ordlink1" href="/pages/history_pages/roll_of_honour_history.asp">Roll of Honour</a>
<center>
								


</div>


<br><br><br></center></center></td>


		<td valign="top" align="left" width="145"><!-- RIGHT HAND COLUMN --><!--#include file="../rhs.asp"-->
</td></tr></tbody></table></td></tr>



<tr><!-- RED BAR -->
<td bgcolor="#fb5338" align="right">

	<table  width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td class="hitcounter"><i>&nbsp;&nbsp;<%=count_int_org%> visitors to <a class="hitcounterlink" href="http://www.castlemartyrgaa.com">Castlemartyr GAA</a> website</i></td>
	<td align="right"><!-- <img src="../../images/trans.gif" width="5" height="3" align="absmiddle"><a class="mailtolink" href="mailto:eamon@hagroup.ie"><i>contact webmaster...</i></a>&nbsp;
	 --></td>

	</tr>
	</table>


</td>
</tr></tbody></table></td></tr></tbody></table>
<br><br>
</body>
</html>

