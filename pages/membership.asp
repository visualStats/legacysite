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
                                        <div style="margin-right: 10px;">
                                            <h3>
                                                Membership</h3>
                                            <p>
                                                Membership for 2015 is now due. The GAA membership year runs from April 1st to the following March 31st. 
Persons must have their Club fees paid on a date prior to March 31st as laid down by the Club.</p>

<p>To pay you membership, please contact the club registrar Jimmy Smiddy or any club officer.</p>

<p> A number of different rates apply :</p>
                                            <ul>
                                                <li>Player in employment: €100</li>
                                                <li>Payer & partner or family €125</li>
                                                <li>Player not in employment, non-playing Adult or 3rd level student: €50</li>
                                                <li>Non playing couple: €70</li>
                                                <li>2nd level student or OAP: €25</li>
                                            </ul>
                                            
                                           <!-- <h3>
                                                Members 2013</h3>
                                            <table border="0" cellpadding="15px" style="font-size: 12px">
                                                <tr>
                                                    <td>
                                                        Brian Smiddy
                                                    </td>
                                                    <td>
                                                        Ger Swayne
                                                    </td>
                                                    <td>
                                                        Robert O’Donovan
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        James Barry
                                                    </td>
                                                    <td>
                                                        David Scully
                                                    </td>
                                                    <td>
                                                        Eddie Clifford
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Donagh McCarthy</td>
                                                    <td>
                                                        Liam Barry</td>
                                                    <td>
                                                        Marty Fleming
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Damien Roche</td>
                                                    <td>
                                                        Alan Collins</td>
                                                    <td>
                                                        Maurice Hodnett</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Damien McAulliffe</td>
                                                    <td>
                                                        Seanie Hennessy</td>
                                                    <td>
                                                        Evan O’Keeffe</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Jimmy Smiddy</td>
                                                    <td>
                                                        Steve Collins</td>
                                                    <td>
                                                        &nbsp;John Walsh</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        David Fleming</td>
                                                    <td>
                                                        Adrian Bowens</td>
                                                    <td>
                                                        M J Cremin</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;Bernard Lawton</td>
                                                    <td>
                                                        Barry Lawton</td>
                                                    <td>
                                                        Brian Lawton</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Donnacha Ó Tuama</td>
                                                    <td>
                                                        Barra Ó Tuama</td>
                                                    <td>
                                                        Brian Ó Tuama</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        David Smiddy</td>
                                                    <td>
                                                        Michael Abernethy</td>
                                                    <td>
                                                        Mossy Hodnett</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Adam McAulliffe</td>
                                                    <td>
                                                        Colm Beausang</td>
                                                    <td>
                                                        David O’Keeffe</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Jim Cosgrave</td>
                                                    <td>
                                                        Paddy Whyte</td>
                                                    <td>
                                                        Nora Whyte</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Oliver Smiddy</td>
                                                    <td>
                                                        Cha O’Neill</td>
                                                    <td>
                                                        Mick Leahy</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Ciaran Collins</td>
                                                    <td>
                                                        Bill Moran</td>
                                                    <td>
                                                        Chris Moran</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Carey Joyce</td>
                                                    <td>
                                                        Christy O&#146;Sullivan</td>
                                                    <td>
                                                        Marty O’Brien</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Pa Beausang</td>
                                                    <td>
                                                        Charles O&#39;Neill Snr</td>
                                                    <td>
                                                        Kieran Murphy</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Ultan Murphy</td>
                                                    <td>
                                                        John Whyte</td>
                                                    <td>
                                                        Brendan Cantwell</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Sonny Shannahan</td>
                                                    <td>
                                                        Fergus Lynch</td>
                                                    <td>
                                                        &nbsp;</td>
                                                </tr>
                                            </table>-->
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
		