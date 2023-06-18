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
<td rowspan="2" valign="top"><img src="../images/banner-brian-dwane-right.jpg" width="347" height="188"></td></tr>
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

<h3>Email Alerts</h3>



<% 


if request.querystring("submitted")="yes" then

		Set xmlDoc = CreateObject("microsoft.xmldom")
		xmlDoc.async=False
		xmlDoc.load(server.mappath("../dynamic_files/email_alerts.xml"))
		set root=xmlDoc.documentElement
		set subscribers = root.selectSingleNode("subscribers")

		'test to see if the person is already subscribed
		set p = subscribers.selectsinglenode("person[@email_address='" & trim(request.form("email")) & "']")





		if not p is nothing then
				if request.form("removeme")="1" then
					subscribers.removechild p
					xmlDoc.save(server.mappath("../dynamic_files/email_alerts.xml"))
					response.write "Thank you. Your email address has been removed from the list."
				else
					response.write "The email address " & request.form("email") & " is already on the list.<br>"
				end if
		else
				set new_person= xmlDoc.createElement("person")
				new_person.setattribute "name", trim(request.form("thename"))
				new_person.setattribute "email_address", trim(request.form("email"))
				subscribers.appendchild new_person
				xmlDoc.save(server.mappath("../dynamic_files/email_alerts.xml"))

				response.write "Thank you! Your email address has been added to our EMAIL ALERT list."
		end if

		set xmlDoc  =nothing
else


		if request.querystring("optout")<>"yes" then
				response.write "Sign up! Use the form below to receive an EMAIL each "
				response.write "time a match result, article or piece of news is posted on the website:<br>"
		else
				response.write "To remove yourself from the EMAIL ALERT list, put your name and email address in the spaces below and click submit.<br>"
		end if


%>
<form name="f1" method="post" action="emailalerts.asp?submitted=yes" onsubmit="if(this.thename.value=='' || this.email.value==''){alert('please supply both name and email address');return false}else{this.submit;return true;}">

<table class="maintext" width="350" border="0" cellspacing="1" cellpadding="5">
<tr><td valign="top">Your Name:</td><td valign="top"><input size="25" name="thename"></td></tr>
<tr><td valign="top">Email Address:</td><td valign="top"><input size="25" name="email"></td></tr>


<%if request.querystring("optout")="yes" then%>
<tr><td colspan="2" align="center"><font color=red><b>REMOVE ME FROM THE LIST</b></font><input name="removeme" type="hidden" value="1"></td></tr>
<%end if%>


<tr><td valign="top">&nbsp;</td><td valign="top"><input style="background-color:#FB5338; color:#ffffff;" type="submit" value="SUBMIT"></td></tr>
</table>


</form>

<%
end if

%>

</div>


<br><br><br>
</td>


		<td valign="top" align="left" width="145">

<!-- RIGHT HAND COLUMN -->
<img border=1 src="../images/flags140c.jpg" width="140" ><br><br>
<a href="javascript:image_pop_historical('brendan_entrance.jpg', 570, 505, 55, 'Castlemartyr GAA clubman Brendan Wade at the entrance to Paddy Walsh Memorial Park')" title="Click to Enlarge"><img border=1 src="../../images/plaque.jpg" width="140" height="89"></a><div align="right"><font face=Verdana size=-2>click image to enlarge</font></div>

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
	g=replace(g, chr(13) & chr(10), "<br><br>")
	g=replace(g, chr(10), "<br>")
	g=replace(g, chr(13), "<br>")


replace_for_browser=g
end function
%>

