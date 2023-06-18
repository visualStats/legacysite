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

		<td valign="top" width="400" class="maintext">
<h3>History of Castlemartyr GAA (founded 1924)</h3>

<div style="margin-right:10px;">


<p class="redtext">
<b>Note</b>: A more comprehensive history is currently being compiled in print form.  This project is 
currently underway and various club members are gathering photos, newspaper articles, stories 
and anything else 
associated with the club. It is a once in a lifetime project that must be completed, thoroughly and professionally with regard to the long and 
proud tradition of the club. So we are asking everyone who reads this article to 
ask themselves can they help in any way :-
Resurrect some old picture or article from home and pass it on 
to us. Write or tell us a story that you know.
Contribute in any way by volunteering to help (everyone welcome) or some financial assistance towards the cost of 
the project.
Contact Patrick on 087 6473659 or email <a href="javascript:emailer('pro.castlemartyr.cork@e' ,'gaa.ie')"><img align="absmiddle" src="../../images/email_dagger2.gif" border="0"></a>

</p>



<p>Castlemartyr are one of the most progressive hurling and football clubs in the division. With two county titles to its credit, and All-Ireland hurling stars like Ted Sullivan, Billy Abernethy and the Dowling and O'Keeffe brothers in its hall of fame, Castlemartyr certainly has a proud record.
</p>

<p>The Castlemartyr hurling club was founded in 1924, although the area had been noted for its fine hurlers and footballers long before that year. It is also true that a football team existed in Castlemartyr at the end of the 19th century. The early days of the club were not marked by any notable triumph, but in the early thirties Castlemartyr began to create a big impression in the divisional championship. They reached the East Cork final in l935 and recorded the first of seven divisional successes.
</p>

<p>They went on to the county final afterwards, and though they failed to capture the crown after four famous encounters with Mayfield, two of which were abandoned, their triumph in East Cork proved to be ample compensation.
</p>

<p>Christy O'Brien, who had played with the Cork minors four years earlier, was one of the stars of the 1935 team. The late Dave O'Brien captained the side and the other players on the selection were Dermot Cusack, Willie O'Brien, Robin Forrest, Jerry Wade, Jack Whelan, Willie O'Reilly, Donnachadh O'Keeffe, Michael Dineen, Joe O'Brien, Jack Harte, Matty Harte, Liam Aherne, Willie John Hennessy, Joe Morgan,, Jackie Collins, Eddie Hayes, Jackie Kelleher and Mossie Moloney.
</p>

<h4>School Title</h4>


<p>The following year,1936, Castlemartyr won the East Cork School Shield and some of youngsters who helped in that victory later developed into top class junior players. In 1936 also, Dermot Cusack and Dave O'Brien were selected for the Cork junior team, while Maurice Penderville gained his place on the county minor side and won a Munster medal. But the man who really brought renown to Castlemartyr in the thirties was the dark-haired hurler who was to give great service to Cork right up to 1943. His name was Ted Sullivan.
</p>

<p>Ted had a lengthy and illustrious career on the club and intercounty scene. He played with the Rockies for some time but later won county senior awards with the Barrs. He took part in the famous thunder and lightning All-Ireland final of 1939 but it wasn't until 1941 that he won his first All-Ireland medal. He collected his second senior All-Ireland in 1943 and three years later he was back with his home club to help them in their successful bid to regain the divisional title.
</p>

<p>After Castlemartyr's triumph in East Cork, Ted returned to the intercounty scene in 1947 and won an All-Ireland junior medal. He was a member of the first Castlemartyr team to win the county championship in 1951 and he captained the side, which won the divisional title three years later in 1954.
</p>

<p>The Castlemartyr team which won the East Cork title for the second time in 1946 lined out as follows: Pete Wade (captain), Dermot Cusack, Dave Lawton (R.I.P.), Pakey Lawton, Val Dowling, David Barry, Edmond McCarthy, Alfie Smith, Anthony Brennan, Jackie Lwhyte, John Morgan, Paddy Cooney, Paddy Abernethy, Ted O'Sullivan (R.I.P.), Charlie McCarthy, and substitutes Garry Fleming, Sonny Draddy, Raymond Nugent, David Power, Billy Abernethy, Billy Kelly and Michael Cotter.
</p>

<h4>Representing the County Team</h4>


<p>Paddy Abernethy joined Ted Sullivan on the Cork junior team in 1947, while four Castlemartyr players were picked for the county minor side. One of these, Billy Abernethy, was destined to win a senior All-Ireland. The others were Anthony Brennan, the last Willie O'Connell and Michael Lawton. In 1948 Val Dowling, Billy Joyce and Patrick O'Flynn gained their places on the Cork minor team and the following year marked the arrival of Liam Dowling in the county minor colours.
</p>

<p>Liam Dowling, the towering, dark-haired youth, was destined to gain nation-wide fame as an All-Ireland hurler. Like Ted Sullivan, he played at full-forward and went on to win a county award with a senior club ( in his case, Sarsfields,in 1957). But it was with Castlemartyr that he made his name and in his long years on the hurling field he has given great service to his home club. He joined Christy Ring on the Cork senior team in the early 'fifties and won All-Ireland medals in 1952 and 1953. He made a comeback to the Cork team in the early sixties and took part in some memorable matches, and he won his second county medal with Castlemartyr in 1964.
</p>

<p>In 1950, Paddy Abernethy captained the Castlemartyr team which won the East Cork championship and he was at the helm again the following year when they retained the title. But 1951 was to bring more than divisional honours to the club, for in that historic year Castlemartyr went on to win their first county junior hurling championship.
</p>

<p>The selection consisted of Paddy Abernethy (captain), John Burke, Raymond Nugent, Pakey Lawton, Anthony Brennan, Val Dowling, Liam Dowling, Michael Lawton, Alfie Smith, Paddy Cooney, Billy Abernethy, John O'Shea, Dominic Barry, Ted O'Sullivan, Jackie Whyte, Billy Finn, Garry Fleming, Maurice White, Dermot Whyte, Patrick Morgan, Dave O'Donnell and Patrick Morgan.
</p>

<h4>Winners Again</h4>


<p>Three years later,1954, Castlemartyr won the East Cork title again but this time some new faces had joined the old stars on the team. John Baker, Mossie Garde, Paddy Walsh, Frank O'Brien, Marty Fleming, John Abernethy, John Garde, Michael O'Brien and a minor star named Pat Dowling had arrived in the red and white colours of Castlemartyr. John Abernethy had played with Farranferris in the Harty Cup final in 1952 and lined out with the Cork minors for two years. Pat Dowling was destined to win an All-Ireland junior medal in 1955, a Munster senior medal in '56, a county senior medal with Sars in '57. He later emigrated to America and was one of the finest hurlers on the New York team.
</p>

<p>In 1956, Castlemartyr won the East Cork minor championship having captured the award previously in 1946 and '47. But it wasn't until the early sixties that the club returned in a big way to the county championship. In 1963 Liam Dowling led them to win their sixth East Cork junior title but in the county final they were beaten by Ballincollig. However, the following year, they were back again, this time under the leadership of the U.C.C. player, John O'Keeffe.
</p>

<p>They defeated White's Cross, Sarsfields and Shanagarry on their way to the divisional final and in the decider itself they beat Carrigtwohill by 2-10 to 4-3. Then they scored an impressive win over Courcey Rovers and in the county semi-final they beat Ballinhassig by one point after a great game. Their opponents in the county final were Cloughduv and after an exciting and hard-fought game, Castlemartyr wen on to win by 4-5 to 2-9.
</p>

<p>The successful 1964 selection read as follows: John O'Keeffe (captain), John Burke, Donie Creed, Jim Dowling, Mossie Garde,Tim Ronayne, Pat Barry, Paul Hartnett, Mick O'Mahony, Donough O'Keeffe, Donie O'Keeffe, Nick Dowling, Dominic Barry, Eddie O' Riordan, Val Dowling, Liam Dowling, Anthony Cunningham, John Greene, Denis Creed and Mick Condon ( incidently, the 1963 players who didn't play in 64 were Lar Dunne, Mick Regan, John Whyte, Noel Ryan, Donal O'Riordan and Fr.Joe Hennessy).
</p>

<h4>Still There</h4>


<p>In the next few years, Castlemartyr remained one of the foremost teams in the Imokilly division. They reached the final again in 1967 but were beaten by Killeagh. Castlemartyr regained the East Cork School Shield Hurling Title after a lapse of 30 years. For a club of its size, Castlemartyr has certainly produced more than its share of top class players. Ted O'Sullivan, Liam Dowling and Billy Abernethy won 5 All-Ireland Senior Hurling medals between them, Pat Dowling won All-Ireland Junior and Munster Senior awards. Jackie Whyte ( 1939) and Nick Dowling ( 19 ) gained All-Ireland Minor Hurling medals with Cork, Paddy Abernethy won a junior All-Ireland with Cork in 1947 and Donie O'Keeffe, John O'Keeffe, Mossie Garde and John Whyte won an All-Ireland Intermediate medal in 1965. Donie O'Keeffe went on to win another Intermediate All-Ireland medal with London in 1967 when they beat Cork in the final. The Club record for East Cork junior hurling medals is held by Dominic Barry who won 2 county and 5 east cork championship medals with Castlemartyr.
</p>

<p>Castlemartyr won their only u-21East-Cork hurling title in 1973, defeating Erin's Own in a thrilling final,while they were to be defeated in the 1975 East-Cork Junior hurling final by the same Erin's Own. 1978 was to see our first victory in football for many years when we won the B grade Championship. Castlemartyr went on to win their first east-Cork junior A football championship in 1982, before they put 3 titles back to back in 1985, 86 and 87.Players like Christy O'Sullivan,ex-Kerry senior footballer, Seanie Bowens, ex Galway minor,Dermot o'Shea, ex Millstreet senior player and Mossie Hodnett, Ex Youghal senior footballer contributed to this upsurge of football in the club along with much home grown talent. They again won east-cork junior A football titles in 1990 and 1991, a year when they went on to contest the county final. In 1992, the club played at Intermediate level in football and succeeded in lifting the county Intermediate football League title that year. During this time, the club also amassed a total of 7 East-cork football A league titles. 
</p>

<p>Since 2009, the clubs has had some great success. Four East Cork hurling titles have been captured in 2009, 2010, 2013 and 2014. During this time also we have had a number of players represent Cork at various levels. Brian Lawton is currently part of the Cork senior squad, while Barry Lawton and Barra O’Tuama were part of the Cork intermediate panel that won the All Ireland title in 2014.</p>



<center>
<a class="ordlink1" href="/pages/history_pages/intro_history.asp">History Intro</a>&nbsp;|&nbsp;
<a class="ordlink1" href="/pages/history_pages/sample_pics_history.asp">Sample Pics</a><br>
<a class="ordlink1" href="/pages/history_pages/match_reports_history_index.asp">Sample Match Reports</a>&nbsp;|&nbsp;
<a class="ordlink1" href="/pages/history_pages/roll_of_honour_history.asp">Roll of Honour</a>
<center>
								


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

