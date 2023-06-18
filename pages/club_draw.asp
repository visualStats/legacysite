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
<html>
<head>
    <title>Castlemartyr GAA Club, Cork</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <link rel="stylesheet" href="../cm.css" type="text/css">
    <script src="../js.js" type="text/javascript"></script>
</head>
<body bgcolor="#DBD7D7" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0"
    rightmargin="0" bgcolor="#FFFFFF" text="#807C7B" link="#807C7B" vlink="#807C7B"
    alink="#807C7B">
    <table cellspacing="1" bgcolor="#FB5338" cellpadding="0" width="780" align="center"
        border="0">
        <tr>
            <td>
                <table cellspacing="0" bgcolor="#ffffff" cellpadding="0" width="780" border="0">
                    <tr>
                        <td>
                            <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td valign="top">
                                        <img src="../images/banner-left.jpg" width="433" height="163">
                                    </td>
                                    <td rowspan="2" valign="top">
                                        <img src="../images/banner-ruairi-right.jpg" width="347" height="188">
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" align="middle">
                                        <!--#include file="../ticker/ticker.asp"-->
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <!-- RED BAR -->
                        <td background="../images/reddot4.gif">
                            <img src="../images/trans.gif" width="280" height="2">
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff">
                            <img src="../images/trans.gif" width="280" height="7">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table bgcolor="#ffffff" cellspacing="9" cellpadding="0" width="100%" border="0">
                                <tr>
                                    <td valign="top" width="1">
                                        <!--#include file="../navigation/navigation.asp"-->
                                    </td>
                                    <td valign="top" width="10">
                                        <img src="../images/trans.gif" height="400" width="5">
                                    </td>
                                    <td valign="top" width="400" class="maintext">
                                        <h3>
                                            Annual Club Fundraising Draw 2013</h3>
                                        <p style="font-weight: 700">
			August Draw Results</p>
		<ul>
			<li>
				&euro;1,000 Hannah Beausang</li>
			<li>
				&euro;500 Jimmy Smiddy</li>
			<li>
				&euro;400 Mary O&#39;Donovan, Midleton</li>
			<li>
				&euro;300 William Martin</li>
			<li>
				&euro;100 Liam McLellan</li>
			<li>
				&euro;100 Paul Power</li>
			<li>
				&euro;100 Mary Lawton</li>
			<li>
				&euro;100 Maeve Aherne, Dungourney</li>
			<li>
				&euro;100 Damien McAulliffe</li>
			<li>
				&euro;100 Marie O&#39;Donovan c/o Jim Costin</li>
		</ul>
		<p style="font-weight: 700">
			June Draw Results</p>
		<ul>
			<li>
				&euro;1,000 Kevin Scully</li>
			<li>
				&euro;500 Liam Collins</li>
			<li>
				&euro;400 Pat Harrington</li>
			<li>
				&euro;300 John Joe Regan</li>
			<li>
				&euro;100 Elizabeth O&#39; Loughlin</li>
			<li>
				&euro;100 Faith Ansbro</li>
			<li>
				&euro;100 William Walsh</li>
			<li>
				&euro;100 Matt McAuliffe</li>
			<li>
				&euro;100 Margaret Harty</li>
			<li>
				&euro;100 Brid Fleming</li>
		</ul>                                      <p>
                                            2 MONTHLY DRAWS @ €25 PER MONTH </p>
                                        <p>
                                            ALMOST €6,000 IN PRIZE MONEY </p>
                                        <p>
                                            1st Draw – End of June 2013 </p>
                                        <p>
                                            2nd Draw – End of July 2013 </p>
                                        <p>
                                            Monthly Prizes
                                        </p>
                                        <ul>
                                            <li>1st €1,000 </li>
                                            <li>2nd €500 </li>
                                            <li>3rd €400 </li>
                                            <li>4th €300 </li>
                                            <li>5th-10th €100 each</li>
                                        </ul>
                                        <p>
                                            A Chara,
                                        </p>
                                        <p>
                                            We would like to inform you about our annual fundraising draw for 2013 which is 
                                            taking place over two months with draws to be held in June and July. The monthly 
                                            subscription is €25 with substantial cash prizes to be won each month.
                                        </p>
                                        <p>
                                            Our club caters for players from 5 years of age upwards, and fields teams in 
                                            both hurling and football at all ages from U8 to Adult. While we always strive 
                                            to produce good players and successful teams, the main focus of the club is to 
                                            facilitate and actively encourage as many players as possible, of all ages, to 
                                            participate in and gain enjoyment from our national games.
                                        </p>
                                        <p>
                                            At underage level, (U8 to U18), we are joined with our neighbours in Dungourney, 
                                            under the banner of Kiltha Og. This club caters for approx 160 young players and 
                                            continues to go from strength to strength.
                                        </p>
                                        <p>
                                            We are also delighted with the recent formation of Castlemartyr Camogie club 
                                            which caters for young girls from U6 to U14 (with older teams hopefully being 
                                            accommodated as things progress). Despite not being long in existence they have 
                                            already built up a very strong and enthusiastic group of players and mentors 
                                            alike. While not officially part of Castlemartyr GAA club the Camogie club has 
                                            unlimited access to our facilities and we will try to help them in whatever way 
                                            we can, in the years ahead.</p>
                                        <p>
&nbsp;As you can appreciate, the provision and maintenance of our facilities, along with the running costs associated with 
                                            all our teams, place a substantial financial burden on our club.
                                        </p>
                                        <p>
                                            We have noticed the need to provide a meeting room/kitchen at our field. This 
                                            would be used to primarily entertain teams that would have travelled long 
                                            distances to play against us especially at underage level. We have been the 
                                            beneficiaries of this hospitality when we travel away to these clubs, and it is 
                                            vital that we would be in a position to return the favour, in a setting that we 
                                            can be proud of. The room will also be a place where parents dropping their kids 
                                            to training can go in to for a cup of tea and a chat, and a place where our 
                                            committee and teams can meet, in a room of their own.
                                        </p>
                                        <p>
                                            Unfortunately this will all cost money, but we cannot afford to stand still. Our 
                                            main source of income in meeting these costs is our Club Development Draw. In 
                                            the past all our members and supporters have been very supportive of this draw 
                                            and we would be very grateful of your continued support.
                                        </p>
                                        <p>
                                            Club members will be calling around to houses within the next couple of weeks, 
                                            to collect subscriptions for our first draw to be held in late June. 
                                            Alternatively you may contact one of the club officers as per details below. As 
                                            always your support would be greatly appreciated.
                                        </p>
                                        <ul>
                                            <li>Carey Joyce (Chairman) – 086 3681382 </li>
                                            <li>Bernard Lawton (Vice Chairman) – 087 2477194 </li>
                                            <li>Barra O Tuama – 087 2073053 </li>
                                            <li>Mick Leahy – 021 4667509</li>
                                        </ul>
                                    </td>
                                    <td valign="top" align="left" width="145">
                                        <!-- RIGHT HAND COLUMN -->
                                        <!--#include file="rhs.asp"-->
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <!-- RED BAR -->
                        <td bgcolor="#FB5338" align="right">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td class="hitcounter">
                                        <i>&nbsp;&nbsp;<%=count_int_org%>
                                            visitors to <a class="hitcounterlink" href="http://www.castlemartyrgaa.com">Castlemartyr
                                                GAA</a> website</i>
                                    </td>
                                    <td align="right">
                                        <!-- <img src="../images/trans.gif" width="5" height="3" align="absmiddle"><a class="mailtolink" href="mailto:eamon@hagroup.ie"><i>contact webmaster...</i></a>&nbsp;
	 -->
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br>
    <br>
</body>
</html>
