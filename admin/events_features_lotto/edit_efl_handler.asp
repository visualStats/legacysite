<%
response.buffer=true



pagetype = request.form("section")




set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))
set root=xmlDoc.documentElement

set sectionsgroup = root.selectsinglenode("sections")


	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "tbl_events_features_lotto", conn, 1, 3

	eflname = trim(request.form("eflname"))
	eflname = replace (eflname, chr(34), chr(148))
	eflname = replace (eflname, chr(39), chr(146))

	efldescription = trim(request.form("efldescription"))
	efldescription = replace (efldescription, chr(34), chr(148))
	efldescription = replace (efldescription, chr(39), chr(146))

	rs.addnew
	rs("row_title") = eflname
	rs("row_description") = efldescription
	rs.update

	new_efl_id=rs(0)







	set items=sectionsgroup.selectsinglenode("section[@name='" & pagetype & "']")

	set firstitem = items.firstchild

	set the_item= xmlDoc.createElement("efl")
	the_item.setattribute "efl_id", new_efl_id
	the_item.setattribute "active", "yes"


	if request.form("toporbottom") = "top" then
			if not firstitem is nothing  then

				items.insertBefore the_item, firstitem
			else
				items.appendchild the_item
			end if

	else
		items.appendchild the_item
	end if




	

	rs.close
	set rs=nothing
	conn.close


	
	the_item.setattribute "efl_title", eflname



xmlDoc.save(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))

response.redirect("efl_default.asp?type=" & pagetype)


%>
