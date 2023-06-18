<%response.buffer=true%><HTML>
<HEAD>
<TITLE></TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">
<link rel=stylesheet href="../admin.css" type="text/css">



</HEAD>
<BODY BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>
<font class="maintext">
<h5>Email Alerts Subscribers List</h5><% 





		Set xmlDoc = CreateObject("microsoft.xmldom")
		xmlDoc.async=False
		xmlDoc.load(server.mappath("../../dynamic_files/email_alerts.xml"))
		set root=xmlDoc.documentElement
		set subscribers = root.selectSingleNode("subscribers")

for each p in subscribers.childnodes

		response.write p.getAttributeNode("name").value & " [" & p.getAttributeNode("email_address").value & "]<br>"


next

		set xmlDoc  =nothing

%>



<br><br><a class="adminhyper" href="../main.asp"><- Return</a>
</BODY>
</HTML>
