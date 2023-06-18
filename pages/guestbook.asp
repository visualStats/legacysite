<%

'Set xmlDoc = CreateObject("microsoft.xmldom")
'xmlDoc.async=False
'xmlDoc.load(server.mappath("../dynamic_files/hitcounter.xml"))
'set root=xmlDoc.documentElement
'set r = root.selectSingleNode("TEXT")
' 
'count_str= r.text
'count_int_org=cint(count_str)

'if session("counted") <> "yes" then
'	session("counted") = "yes"
'	count_int=count_int_org+1
'	count_int_org = count_int
'	r.text = count_int
'	xmlDoc.save(server.mappath("../dynamic_files/hitcounter.xml"))
'end if
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
<td rowspan="2" valign="top"><img src="../images/banner-evan-right.jpg" width="347" height="188"></td></tr>
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
<div style="margin-right:10px;line-height:150%">
<h3>Guestbook</h3>

<% 


if request.querystring("submitted")="yes" then


	Set objMail = Server.CreateObject("CDONTS.NewMail")
	objMail.Subject="Castlemartyr GAA Website - Guestbook"
	objMail.From= "eamon@rochetree.com"
	objMail.To= "eamon@rochetree.com"

	body_str = "From: " & request.form("Person_Name") & "<br>"
	body_str = body_str & "Location: " & request.form("Location") & "<br>"
	body_str = body_str & "Email: " & request.form("Email") & "<br>"
	body_str = body_str & "Comment: " & request.form("Comment") & "<br>"

	objMail.BodyFormat = 0 
    objMail.MailFormat = 0 

	objMail.Body=body_str
	objMail.Send

	response.write "Thank you for your submission!"
else
%>



<p>If you wish to leave a comment, suggestion or word of encouragement to the club you may do so by using the form below.</p>
<p>At regular intervals we will post these comments on the website for general viewing.</p>




<form action="gue-----stbook.asp?submitted=yes" method="post" onsubmit="if(this.Person_Name.value=='' || this.Comment.value==''){alert('please supply Name and Comment');return false;}else{this.submit;return true;}">

<table class="maintext" width="350" border="0" cellspacing="1" cellpadding="5">
<tr><td valign="top">Your Name:</td><td valign="top"><input name="Person_Name" size="28" class="maintext"></td></tr>
<tr><td valign="top">Location&nbsp;(optional):</td><td valign="top"><input name="Location" size="28" class="maintext"></td></tr>
<tr><td valign="top">Email&nbsp;(optional):</td><td valign="top"><input name="Email" size="28" class="maintext"></td></tr>
<tr><td valign="top">Comment:</td><td valign="top"><textarea rows="7" cols="30" name="Comment" class="maintext"></textarea></td></tr>

<tr><td valign="top">&nbsp;</td><td valign="top"><input style="background-color:#FB5338; color:#ffffff;" type="submit" value="Submit"></td></tr>

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

