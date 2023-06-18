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
<HTML>
<HEAD>
<TITLE>Castlemartyr GAA Club, Cork</TITLE>
<META name="description" content="">
<meta charset="UTF-8">
<META name="keywords" content="">
<link rel=stylesheet href="../cm.css" type="text/css">
<SCRIPT src="../js.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY bgcolor="#DBD7D7" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0" rightmargin="0" BGCOLOR="#FFFFFF" TEXT="#807C7B" LINK="#807C7B" VLINK="#807C7B" ALINK="#807C7B">
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div id="fb-root"></div>

<div id="fb-root"></div>

<div id="fb-root"></div>
<div id="fb-root"></div>
<div id="fb-root"></div>


<TABLE cellSpacing=1 bgcolor=#FB5338 cellPadding=0 width=780 align=center  border=0>

<tr><td>
<TABLE cellSpacing=0 bgcolor=#ffffff  cellPadding=0 width=780  border=0>



<tr>
<td>
<table cellpadding="0" cellspacing="0" border="0">
<tr><td valign="top"><img src="../images/banner-left.jpg" width="433" height="163"></td>
<td rowspan="2" valign="top"><img src="../images/banner-barra-right.jpg" width="347" height="188"></td></tr>
<tr><td valign="middle" align="middle"><!--#include file="../ticker/ticker.asp"--></td></tr>
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
<div style="margin-right:10px;">

<h3>Club News</h3>


<div class="fb-like-box" data-href="https://www.facebook.com/castlemartyrgaaclub" data-width="413" data-height="650" data-colorscheme="light" data-show-faces="false" data-header="false" data-stream="true" data-show-border="true"></div>




<%
	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "tbl_events_features_lotto", conn, 1, 3



set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../dynamic_files/events_features_lotto_order.xml"))
set root=xmlDoc.documentElement


set s = root.selectsinglenode("sections/section[@name='News']")



	set efl_items = s.selectnodes("efl[@active='yes']")



	if efl_items.length = 0 then response.write "<font class=""maintext"">No items yet have been added yet.</font>"


	for each i in efl_items

		efl_id = i.getAttributeNode("efl_id").value

		rs.movefirst

		rs.find "row_id=" & efl_id

  		efl_title = rs("row_title")
		efl_description = rs("row_description")

		'response.write "<h4>" & efl_title & "</h4>"
		'response.write replace_for_browser(efl_description)







							pics_sql = "select  * from tbl_pics "
							pics_sql = pics_sql  & " where fk_tbl_events_features_lotto_id=" & efl_id



							set rs_pics = conn.execute(pics_sql)
							counter=0

							if not rs_pics.eof then


							'response.write "<br><br><span  class=""fixturesheading"">Pics: (click to enlarge)</span><br><br>"

								do while not rs_pics.eof
					
									caption = rs_pics("pic_description")
									caption = replace (caption, chr(34), chr(148))
									caption = replace (caption, chr(39), chr(146))

									main_image = rs_pics("mainimage_filename")
									main_width = rs_pics("main_width") 
									main_height = rs_pics("main_height")
									mid_filename = rs_pics("mid_filename")
									'response.write "<a href=""javascript:image_pop('" &  main_image & "', " & main_width  & ", " &  main_height & ",55, '" & caption & "')""><img title=""click to enlarge"" border=""1"" src=""/dynamic_files/pics_thumbs/" & rs_pics("thumbnail_filename") & """></a>&nbsp;&nbsp;" & chr(13) & chr(13)

				





								counter =counter  + 1
								if counter mod 5 = 0 then response.write "<br><img src=""/images/trans.gif"" height=""8""><br>"


								rs_pics.movenext
								loop

							end if


						rs_pics.close
						set rs_pics = nothing












		'response.write "<br><hr size=1 color=#FB5338>" & chr(13)




	next  


%>

</div>

<!--#include file="news_inc.asp"-->
<br><br><br>
</td>


		<td valign="top" align="left" width="145">

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

<% 
function replace_for_browser(arg)   
	
	g=arg
	g=replace(g, chr(13) & chr(10), "<br>")
	g=replace(g, chr(10) & chr(13), "<br>")
	g=replace(g, chr(10), "<br>")
	g=replace(g, chr(13), "<br>")


replace_for_browser=g
end function
%>
