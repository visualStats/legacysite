<% 

response.buffer=true

item_id = request.querystring("item_id")
pagetype = request.querystring("type")



if request.querystring("sure") = "yes" then
	item_id = request.querystring("item_id")

set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))
set root=xmlDoc.documentElement

set items=root.selectsinglenode("sections")
	
set the_item= items.selectsinglenode("//section/efl[@efl_id='" & item_id & "']")

	

	the_item.setattribute "active", "no"
	
	xmlDoc.save(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))



	response.redirect("efl_default.asp?type=" & pagetype)
end if
%><html><link rel=stylesheet href="../admin.css" type="text/css"><title>Delete- Are You Sure ?</title> 
</head>
<body bgcolor="#ffffff" topmargin=60 leftmargin=60>

<br>

<br>
<a class="adminhyper" href="efldel.asp?sure=yes&item_id=<%=item_id%>&type=<%=pagetype%>">YES, I am FULLY SURE that I want to delete this efl. Go ahead DELETE</a><br><br>
<a class="adminhyper"  href="efl_default.asp?type=<%=pagetype%>">NO, don't do anything, go back</a>

</body></html>