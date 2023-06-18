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
<h5>Team Name Edit</h5><% 
item_id = request.querystring("item_id")



set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../../dynamic_files/teams_order.xml"))
set root=xmlDoc.documentElement
set items=root.selectsinglenode("sections")

if request.querystring("action") = "new" then

	theaction = "new"

else


	set the_item= items.selectsinglenode("//section/team[@team_id='" & item_id & "']")
	teamname=the_item.getAttributeNode("teamname").value
	title = the_item.text

end if


%>

<form action="edit_team_handler.asp?item_id=<%=item_id%>" onsubmit="if(trim(this.teamname.value)==''){alert('please supply the team name'); return false;}else{this.submit;}" method="Post">

<input type="hidden" name="theaction" value="<%=theaction%>">
Team Name<br><br>
<input name="teamname" size="36" value="<%=teamname%>"><br><br>





<input type="submit" class="formbutton" value="&nbsp;&nbsp;save&nbsp;&nbsp;"><br><br>


</form>

<a class="adminhyper" href="teams_default.asp"><- Return without changing</a>
</BODY>
</HTML>
