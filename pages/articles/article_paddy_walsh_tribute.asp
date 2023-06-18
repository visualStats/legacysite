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
<h3>Tribute to Paddy Walsh</h3>

<div style="margin-right:10px;line-height:150%">

<h4>Monday, April 30, 2001</h4>

<p>On Saturday morning last, 7th April, when the tragic news had spread of Paddy Walsh's sudden and unexpected death at an underage match in Youghal, there was an air of gloom around the Mogeely and Castlemartyr area. The shock and sadness on the faces of everyone bore testimony to the fact that someone much loved and respected in the community had passed on.
</p>
<p>Paddy was an extraordinary man. In the short time available to me here, it would be impossible to do him justice.
</p>
<p>You could write a book on Paddy. He really was a legend in his own lifetime. He was an unassuming and an uncomplicated man. He always spoke his mind and you always knew where you stood with him. The energy, drive, commitment and unbounded enthusiasm that Paddy brought to everything that he was involved in, right up to the very final week of his passing, was simply amazing.
</p>
<p>His whole life revolved around the Mogeely/Castlemartyr area. Paddy's life was his family, his farm, horse racing and of course, the GAA. Paddy ran a very successful farm enterprise, he was a modern and efficient farmer and typical of Paddy in all his endeavours, he did it right and always gave it 110%. His father was one of the founder member of the local co-op, a fact that Paddy was very proud of. He carried on his father's work and, for many years, he was a director on the committee during the co-ops formative years.
</p>
<p>Paddy was a great neighbour and was always available to lend a helping hand to anyone in need of the local community.
</p>
<p>He was, of course, very involved in horse racing and, along with his brother, Maurice, they built up a very successful enterprise from something that started as a hobby, and this in the tough 'cut and thrust' world of the horse racing industry. They became well known in the racing business, both in Ireland and across the water. We all remember some of their well-known horses, like "Luxury", who was very successful on the flat in England, and "Vanessa Princess" who was victorious so often over fences in Ireland. One of Paddy's favourites was "Master Lawrence," who was also trained and ran here in Ireland. They were also involved in the breeding industry and bred many a successful horse.
</p>
<p>But, without doubt, it was through the GAA that Paddy was more widely known. He was an avid GAA man and his all-consuming passion was the Red jersey of Castlemartyr GAA club. Paddy put his heart, soul and very lifeblood into the club. There were no half measures with him!
</p>
<p>He played with Mogeely and Castlemartyr for many years and, in fact, in 1952, he captained Mogeely in an East Cork final against Castlemartyr.
</p>
<p>He wore the red jersey with pride always. He also went on to represent Imokilly at County Championship level.
</p><p>But it was an administrator that Paddy became best known, not only at local level, but throughout the county.
</p>
<p>He occupied very position in the club during his days, from Club President, Club Chairman for many years, field administrator, selector, team manager, East-Cork Board delegate, County Board delegate, developer of dressing rooms, guardian of the fields, pursuer of players, in fact, every job, no matter how difficult that was needed to be done to keep a small rural club, very often, simply afloat and also, at times, unbelievably successful.
</p>
<p>He was involved with all the Castlemartyr successes from 1946 onwards.
</p>
<p>His greatest achievement, perhaps, was his involvement with the teams of '63 and '64. After that great county championship success of '51, Castlemartyr hit a barren period. A lot of great players had drifted away from the club, but Paddy singlehandedly resurrected the club and enticed all these players back and in '62 after three epic replays, they narrowly lost out to Carrigtwohill in the East Cork final. They reversed the outcome in '63 by winning out in East Cork but failed narrowly in the county final.
</p><p>But Paddy was not a quitter. He rallied the team around and in '64 they went all the way and brought the county hurling championship back to Castlemartyr.
</p>
<p>We could go on and on about Paddy's achievements but by far his greatest strength was to be seen when the club was at its lowest ebb. Paddy never abandoned the club, but kept things going, often almost on his own, even though success on the field was, at times, rare.
</p>
<p>He had such pride in the club. He often said that he wasn't that worried about not winning but that he hated to be beaten!
</p>
<p>He was a great motivator of teams; he always instilled in Castlemartyr teams the belief that they were always capable of winning, no matter what the odds.
</p>
<p>He was associated in one way or another with GAA for over 60 years and that is a phenomenal record. We have a total of 20 players who have won All-Ireland medals in the club, and every one of them owes their success in some way or the other, to Paddy. Paddy was so proud of people like Ted O'Sullivan, Jackie Whyte, the Abernethys, the Dowlings and the O'Keeffes, to mention but a few.
</p>
<p>But it was always at local level that Paddy's strength was most obvious. In recent years, he was very involved in the underage side of the club, and drew immense hope from the fact that the juvenile section of the club had been so successful in recent years. In fact, in the last 50 years there have not been many of the youth whose lives were not influenced in some positive way by Paddy. He made great players out of lads that never had any intention of playing GAA. Nobody ever said no to Paddy.
</p>
<p>He always tried to instill into people the need for loyalty, dedication and pride in their village. He was incredible proud of Castlemartyr GAA. His most recent project was the opening of our second pitch. Within a short period of time, he motivated everyone, used all of his considerable influence to ensure a high profile game on the night and to gather the necessary finance to ensure that the event would be a huge success.
</p>
<p>Sadly, Paddy will not be there to see the fruits of his labour on May 4th. But he was happy that everything was ready for the big day. It is now up to us to ensure that the opening of the pitch will be a proud day for Paddy.
</p>
<p>We are sure that Paddy is up there now with his old friends Frank McLellan, Joseph Walsh, Pete Wade and many others. It's a pity that we cannot tune in and listen to their conversation because it would surely be most interesting, especially if the Reds are playing a match at the time.
</p>
<p>Paddy will be sadly missed by his wide circle of friends and neighbours. He will be an immeasurable loss to Castlemartyr GAA club. We'll miss him pacing up and down the sideline during matches or arriving with a careful of underage players for a faraway match to make sure that we fielded a team. 
</p><p>Paddy will be sorely missed by his sister Irene. All in the club offer Irene our deepest sympathy.
</p>
<p>However, let us all rejoice that Paddy has left us with such a great legacy and so many memories.
</p><p>As they say in the Blaskets; 
</p>
<p>
"Ni bheidh a leitheid aris ann."<br>
"Paddy, may the sod rest lightly on your grave."<br>
"Requiescant in pacem."<br>
</p>					
<p><i><b>(Graveside Oration by Christy O'Sullivan)</b></i></p>

<br><br>
<a class="redlink" href="articles_index.asp"><- Back to index of Articles</a>

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

