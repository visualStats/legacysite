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

	useragent = lcase( request.servervariables("HTTP_USER_AGENT"))

	if instr(useragent, "bot") = 0 and instr(useragent, "slurp") = 0 and instr(useragent, "crawl") = 0 then 'exclude bots and yahoo slurp spider
		count_int=count_int_org+1
		count_int_org = count_int
		r.text = count_int
		xmlDoc.save(server.mappath("../dynamic_files/hitcounter.xml"))

	end if
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
<td rowspan="2" valign="top"><img src="../images/banner-robert-right.jpg" width="347" height="188"></td></tr>
<tr><td valign="middle" align="middle">


</td></tr>
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
<!--<div style="margin-right:10px;">



<div class="cornerBox">
<div class="corner TL"></div>
<div class="corner TR"></div>
<div class="corner BL"></div>
<div class="corner BR"></div>
<div class="cornerBoxInner">

<script>    var slideshowfoldername = '';</script><script src="../slideshow.js" type="text/javascript"></script>

</div>
</div>-->

<a class="twitter-timeline" href="https://twitter.com/CastlemartyrGAA" data-widget-id="311774657328070657">Tweets by @CastlemartyrGAA</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>



<br />

<h3>Welcome</h3>

<p>Welcome to the Castlemartyr GAA Club website. Founded in 1924, the club caters for 
players at all age levels in hurling, football.
</p>

<p>This club is located in East Cork, about 20 miles east of Cork City. We are currently a Junior Club with adult teams in both Hurling and Football and a very active under-age section down to the age at which they can first hold a hurley or kick a ball (6 months). 
</p>
<p>The bulk of our players come from the villages of Castlemartyr and Mogeely and we play in the Imokilly division in Cork County. We have a long and distinguished history having won many honours and provided many great players and administrators to both Imokilly division and Cork. While the club can be traced back to 1924 without a break, records show that Castlemartyr contested a County Football Final in the 1890's and that the club existed for some years between 1892 and 1924. 
</p>




<p>The club, as always, welcomes new members, both in a playing, coaching or team-assistance capacity. Furthermore, if you wish 
to make contributions to this website in terms of match reports or photographs, your input will be appreciated.
</p>
            

<a href="newmembers.asp"><img border="0" src="../images/newmembers.gif" /></a>

</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145">

<!-- RIGHT HAND COLUMN -->

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
