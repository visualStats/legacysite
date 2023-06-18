<% 

response.buffer=true
item_id = request.querystring("item_id")

if request.querystring("sure") = "yes" then
	item_id = request.querystring("item_id")

set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../../dynamic_files/teams_order.xml"))
set root=xmlDoc.documentElement

set items=root.selectsinglenode("sections")
	
set the_item= items.selectsinglenode("//section/team[@team_id='" & item_id & "']")

	
'functionality disabled to prevent teams being deleted Damien Roche 27/10/14 
	'the_item.setattribute "active", "no"
	
	'xmlDoc.save(server.mappath("../../dynamic_files/teams_order.xml"))



	response.redirect("teams_default.asp")
end if
%><html><link rel=stylesheet href="../admin.css" type="text/css"><title>Delete- Are You Sure ?</title> 
</head>
<body bgcolor="#ffffff" topmargin=60 leftmargin=60>

<br>

<br>
<a class="adminhyper" href="teamdel.asp?sure=yes&item_id=<%=item_id%>">YES, I am FULLY SURE that I want to delete this team. Go ahead DELETE</a><br><br>
<a class="adminhyper"  href="teams_default.asp">NO, don't do anything, go back</a>

</body></html>