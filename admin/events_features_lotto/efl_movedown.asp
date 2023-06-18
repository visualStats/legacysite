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
pagetype = request.querystring("type")

	Set xmlDoc = CreateObject("Msxml2.DOMDocument.4.0") 
	xmlDoc.async=false          
	xmlDoc.load(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))
	set root=xmlDoc.documentElement

	set items=root.selectsinglenode("sections")
	set the_item= items.selectsinglenode("//section/efl[@efl_id='" & item_id & "']")



' *** 1. Check if selected node is the last child in its parents family
	set the_siblings = the_item.parentnode

	set last_sib = the_siblings.lastchild


	last_sib_block_num = last_sib.getAttributeNode("efl_id").value
	if last_sib_block_num = item_id then
    response.write  "The item you selected is already at the bottom."
	response.write "<br><br><a class=""adminhyper"" href=""efl_default.asp?type=" & pagetype & """><-Back</a>"
	response.end
	end if

' *** 2. Set the next sibling
	set next_sib = 	the_item.nextsibling

' *** 3. Insert the next sibling before the node
	the_siblings.insertBefore next_sib,the_item



	xmlDoc.save(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))

	response.redirect("efl_default.asp?type=" & pagetype)

%></BODY>
</HTML>