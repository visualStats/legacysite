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
                                                Replica Jersey</h3>
                                            <img border="1" width="400px" src="/images/jersey.jpeg">
                                            <p>Get your replica Castlemartyr GAA jersey in time for the East Cork Final.</p>
                                            <ul>
                                                <li>Ages 5-11: €25</li>
                                                <li>Ages 13-14 €35</li>
                                                <li>Adults €37</li>
                                            </ul>
                                            <p>
                                                To order a jersey <script type="text/javascript">
                                                                            var string1 = "pro.castlemartyr.cork";
                                                                            var string2 = "@";
                                                                            var string3 = "gaa";
                                                                            var string4 = ".ie";
                                                                            var string5 = string1 + string2 + string3 + string4;


                                                                            document.write("Email <a  href=" + "mail" + "to:" + string1 + string2 + string3 + string4 + " >" + string5 + "</a>");
    
</script> or text 0873365101 <strong>before Sept 16th</strong>.</p>
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
