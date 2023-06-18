<%
response.buffer=true


item_id = request.querystring("item_id")


set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../../dynamic_files/teams_order.xml"))
set root=xmlDoc.documentElement

set sectionsgroup = root.selectsinglenode("sections")


	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "tbl_teams", conn, 1, 3

	teamname = trim(request.form("teamname"))
	teamname = replace (teamname, chr(34), chr(148))
	teamname = replace (teamname, chr(39), chr(146))



if request.form("theaction") = "new" then

	rs.addnew
		
	rs("team_name") = teamname
	rs.update

	new_team_id=rs(0)







	set items=sectionsgroup.selectsinglenode("section[@name='" & request.form("section") & "']")

	set firstitem = items.firstchild

	set the_item= xmlDoc.createElement("team")
	the_item.setattribute "team_id", new_team_id
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





else

		rs.find "team_id=" & item_id
		rs("team_name") = teamname
		rs.update

		set the_item= sectionsgroup.selectsinglenode("//section/team[@team_id='" & item_id & "']")

end if
	

	rs.close
	set rs=nothing
	conn.close



	'check that there isn't team within this section using this teamname
	set other_node = the_item.parentnode.selectsinglenode("team[@teamname='" & teamname & "' and @team_id != '" & item_id & "']")
	if not other_node is nothing then
		response.write "<html><body   topmargin=30 leftmargin=30><font face=verdana size=-2>Sorry, this team name is already being used.<br><br><a href=""teams_default.asp"">BACK</a></font></body></html>"
		response.end
	end if
	
	the_item.setattribute "teamname", teamname



xmlDoc.save(server.mappath("../../dynamic_files/teams_order.xml"))

response.redirect("teams_default.asp")


%>
