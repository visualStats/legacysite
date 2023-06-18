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
<h3>Reference to Castlemartyr</h3>

<div style="margin-right:10px;line-height:150%">

<h4>"Lewis Topographical Dictionary 1837"</h4>

<h4>(by Samual Lewis)</h4>

<p>Castlemartyr, a post-town, partly in the parishes of Itermorrough, Ballyoughterra and Mogeely, barony of Imogeely, county of Cork and province of Munster, 19 miles from Cork and 127 from Dublin; containing 830 inhabitants. 
</p>

<p>This place is situated on the road from Youghal to Middleton, and on the mail-coach road from Dublin, by Waterford to Cork; it appears to have risen into importance at a very early period. 
</p><p>At the time of the English invasion, the castle, then called the castle of Imokilly, was resolutely defended by one of the Geraldines; but the English at length reduced it and kept a powerful garrison in it, until 1196, when Donald Mac Carthy besieged and destroyed it by fire, burying the garrison in its ruins, and putting to death all who escaped from the flames. The castle was afterwards rebuilt and became a very important fortress, commanding the pass between Cork and Youghal, and was strongly fortified and garrisoned by the English. 
</p><p>The town consists of one wide street, at one end of which is the demesne of the Earl of Shannon, and at the other a bridge, beyond which a cross-roads leads on the right to the villages on the sea coast and on the left to Imogeely, Fermoy and Tallow. On the right hand side of this crossroads, which is lined with fine ash trees, some neat houses have been recently built, forming a suburb to the town. The total number of houses is 129 most of which are large and well built and the whole being whitewashed gives the town a very cheerful appearance. 
</p><p>The approach from Middleton is by a magnificent avenue of lofty elms, one mile in length and terminating at the eastern gate of Lord Shannon's demesne. About two miles from the town are Ballynona flourmills, the property of Mr W. Jackson, who has a neat cottage residence adjoining; the mills are propelled by a mountain stream and produce about 12,000 bags of flour annually. Fairs are held here on the 2nd of May and October; a constabulary police force is stationed here; and petty sessions are held every alternate Wednesday.
</p>

<br>
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

