<%response.buffer=true%><HTML>
<HEAD>
<TITLE></TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">
<link rel=stylesheet href="../admin.css" type="text/css">

<script language="Javascript">

function trim(strText) { 
    // this will get rid of leading spaces 
    while (strText.substring(0,1) == ' ') 
        strText = strText.substring(1, strText.length);

    // this will get rid of trailing spaces 
    while (strText.substring(strText.length-1,strText.length) == ' ')
        strText = strText.substring(0, strText.length-1);

   return strText;
} 


</script>

</HEAD>
<BODY BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>
<font class="maintext">
<h5>Guestbook - Add Entry</h5><% 





if request.querystring("submitted") = "yes" then


	set xmlDoc = CreateObject("microsoft.xmldom")
	xmlDoc.async=false
	xmlDoc.load(server.mappath("../../dynamic_files/guestbook.xml"))
	set root=xmlDoc.documentElement
	set items=root.selectsinglenode("guestbook_submissions")

	set new_sub= xmlDoc.createElement("submission")
	new_sub.setattribute "name", trim(request.form("personname"))
	new_sub.setattribute "thedate", trim(request.form("thedate"))
	new_sub.setattribute "email_address", trim(request.form("personemail"))
	new_sub.setattribute "location", trim(request.form("personlocation"))

	new_sub.text = trim(request.form("comment"))


	items.appendchild new_sub
	xmlDoc.save(server.mappath("../../dynamic_files/guestbook.xml"))

	response.write "<br>Added!!<br><br>"

	response.write "<a  class=""adminhyper""  href=""../main.asp""><- Back</a><br><br>"

end if


%>

<form action="guestbook.asp?submitted=yes" method="Post">


Person Name<br>
<input name="personname" size="36"><br><br>

Person Location<br>
<input name="personlocation" size="36"><br><br>

Person Email<br>
<input name="personemail" size="36"><br><br>

Comment<br>
<textarea name="comment" rows="5" cols="30"></textarea><br><br>

Date (e.g. May 2005)<br>
<input name="thedate" size="36"><br><br>

<input type="submit" class="formbutton" value="&nbsp;&nbsp;save&nbsp;&nbsp;"><br><br>


</form>

<a class="adminhyper" href="../main.asp"><- Return without changing</a>
</BODY>
</HTML>
