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
<h3>Tribute to John Morgan</h3>

<div style="margin-right:10px;line-height:150%">

<h4>June 2004</h4>


<p>On Sunday evening (27/06/04), as the news came through of John's sudden death a cloud of sorrow and shock spread over Castlemartyr. Suddenly the result of the Munster Final was unimportant. Our thoughts immediately went to John and his family. Little did we think that when John left that morning with his great friends Michael and Charlotte to enjoy a day out at Thurles for the Munster Final that we would not meet him again in his beloved Castlemartyr. One small consolation was that John spent a great day with his friends and club members at the match - doing what he loved so much.
</p>
<p>John was a great family man. His whole life revolved around his family and even though things were not always easy, especially with the death of his wife Mary six years ago, his commitment to his children never wavered. His eight children are a testament to his family values. In his own quiet way he was very proud of them. In recent years of course, his grandchildren served to increase his pleasure and pride in his growing family. He will be sadly missed by them all. We can only offer our condolence to them and hope and pray that time will help to dull the pain of his loss.
</p>
<p>John was a great neighbour and friend. He was always on hand to help out at a moments notice. Nothing was too much trouble for him. You never had to ask John for help - he always offered it first.
</p>
<p>John had a great love for Castlemartyr and worked tirelessly for the community. He was a founder member of the local Community Council and took over as Chairman for several years. His energy and enthusiasm knew no bounds. We enjoy many of the improvements around the village thanks to John's hard work.
</p>
<p>John's other big interest in life was the GAA, in particular Castlemartyr GAA Club. He was a life-long supporter of the club and held the position of Chairman for a number of years until the time of his sudden death. He wasn't just a figurehead, but was a real 'hands-on' Chairman. During his time in charge of the club he became one of the most effective leaders the club ever had. He led by example and had the great ability of bringing people with him so that things were done quickly and efficiently. John never did anything 'tomorrow' - he did it 'today'. As a small example of his dedication to the club he took the jerseys home after each match and washed them himself -something unheard of in many clubs. He never asked anybody to do anything he wasn't willing to do himself. His attention to detail and his great feelings of pride in the local GAA facilities was always evident in the condition of the pitch and surrounds for championship matches. The hard work ensured that everything always ran like clockwork. 
</p>
<p>He showed particular interest in developing the youth of the club. He had a great rapport with them. The youth of the club paid a great tribute to him last night in the large numbers that took part in the guard of honour outside the church.
</p>
<p>He will be greatly missed and never forgotten by all in the club.
</p>
<p>John was one of nature's gentlemen - a quiet man with a big heart. All of our lives will be poorer for his passing. He has left a legacy that will ensure that he will never be forgotten in Castlemartyr and far beyond.
</p>
<p>Ar dheis Dé go raibh a hAinm.
</p>

<p><i><b>(Graveside Oration by Christy O'Sullivan)</b></i></p>

<br><br>
<a class="redlink" href="articles_index.asp"><- Back to index of Articles</a>

</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145">

<!-- RIGHT HAND COLUMN -->
<img border="1" width="140" height="143" src="/images/jm.jpg"><br><br>

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

