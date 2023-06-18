<%response.buffer=true%><html><HEAD>
<TITLE></TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">
<link rel=stylesheet href="../admin.css" type="text/css"></HEAD>
<BODY BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>
<font class="maintext">

<% 

item_id = request.querystring("item_id")


	Set xmlDoc = CreateObject("Msxml2.DOMDocument.4.0") 
	xmlDoc.async=false          
	xmlDoc.load(server.mappath("../../dynamic_files/teams_order.xml"))
	set root=xmlDoc.documentElement

	set items=root.selectsinglenode("sections")

	set the_item= items.selectsinglenode("//section/team[@team_id='" & item_id & "']")



' *** 1. Check if selected node is the last child in its parents family
	set the_siblings = the_item.parentnode
	set first_sib = the_siblings.firstchild
	first_sib_block_num = first_sib.getAttributeNode("team_id").value
	if first_sib_block_num = item_id then
    response.write  "The item you selected is already at the top."
	response.write "<br><br><a class=""adminhyper"" href=""teams_default.asp""><-Back</a>"
	response.end
	end if

' *** 2. Set the next sibling
	set prev_sib = 	the_item.previoussibling

' *** 3. Insert the next sibling before the node
	the_siblings.insertBefore the_item,prev_sib



	xmlDoc.save(server.mappath("../../dynamic_files/teams_order.xml"))

	response.redirect("teams_default.asp")

%></BODY>
</HTML>