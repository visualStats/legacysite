<%response.buffer=true%>
<HTML>
<HEAD>
<TITLE></TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">

<link rel=stylesheet href="../admin.css" type="text/css">

<script language="Javascript">
function checksbmt()
{

if(document.f1.eflname.value==''){alert('please supply efl name'); return false;}

else
{return true;}
}


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

<%

pagetype = request.querystring("type")


%>



<h5>Castlemartyr GAA <%=pagetype%></h5>
<p align=right><a href="../main.asp" class="mainlink"><- Back to Main Admin page</a></p>
<table width="604" cellpadding="0" cellspacing="0" border="0"><tr><td  class="maintext" align="right"><!-- Priority -->&nbsp;</td></tr></table><br>

<%


set xmlDoc = CreateObject("microsoft.xmldom")
xmlDoc.async=false
xmlDoc.load(server.mappath("../../dynamic_files/events_features_lotto_order.xml"))
set root=xmlDoc.documentElement


set s = root.selectsinglenode("sections/section[@name='" & pagetype & "']")



	set efl_items = s.selectnodes("efl[@active='yes']")


	response.write "<table cellpadding=""0"" cellspacing=""0"" border=""0""><tr><td>" & chr(13)
	response.write "<table cellpadding=""6"" cellspacing=""1"" border=""0"" bgcolor=""#777777"">" & chr(13)

	if efl_items.length = 0 then response.write "<font class=""maintext"">no items yet</font>"


	for each i in efl_items

	eflname = replace_for_browser2(i.getAttributeNode("efl_title").value)
	efl_id = i.getAttributeNode("efl_id").value


	response.write "<tr><td valign=""top"" width=""300"" class=""priority2"  & chr(34) & " bgcolor=""#ffffff"">"


	response.write  eflname 

	response.write "&nbsp;</td>" & chr(13)

	%>

	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="efldel.asp?item_id=<%=efl_id%>&type=<%=pagetype%>">delete</a></td>

	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="efl_moveup.asp?item_id=<%=efl_id%>&type=<%=pagetype%>">move up</a></td>
	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="efl_movedown.asp?item_id=<%=efl_id%>&type=<%=pagetype%>">move down</a></td>
	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" href="efl_details.asp?item_id=<%=efl_id%>&eflname=<%=server.urlencode(eflname)%>&type=<%=pagetype%>">item DETAILS</a></td>
	<td  valign="top"  class="maintext" bgcolor="#ffffff"><a  class="adminhyper" target="_blank" href="../pics_handler/pics.aspx?item_id=<%=efl_id%>&eflname=<%=server.urlencode(eflname)%>&pictype=EFL">pics</a></td>

	<%
	next  
	response.write "</td></tr></table></td></tr></table>" & chr(13)



%>

<br><br>
<form  action="edit_efl_handler.asp" onsubmit="if(trim(this.eflname.value)==''){alert('please fill in all boxes'); return false;}else{this.submit;return true;}" method="Post">
<input type="hidden" name="theaction" value="new">
<input type="hidden" name="section" value="<%=pagetype%>">
<input type="hidden" name="toporbottom" value="top">
<u>ADD NEW item to <%=ucase(pagetype)%> page</u>:<br><br>
<%=pagetype%> Title:<br><br>
<input name="eflname" size="36"><br><br>
Text:<br>
<textarea name="efldescription" rows="6" cols="55"></textarea>
<!-- to top: <input  type="radio" name="toporbottom" value="top">&nbsp;&nbsp;&nbsp;
to bottom: <input checked type="radio" name="toporbottom" value="bottom">&nbsp;&nbsp;&nbsp; 
<br><br>-->
<br><br>
<input type="submit" class="formbutton" value="&nbsp;&nbsp;add&nbsp;&nbsp;"><br><br>
</form><br><br><br>



<p align=left><a href="../main.asp" class="mainlink"><- Back to Main Admin page</a></p>

</BODY>
</HTML>



<% 
function replace_for_browser2(arg)   
	
	g=arg
	g=replace(g, chr(13) & chr(10), "<br><br>")
	g=replace(g, chr(10), "<br>")
	g=replace(g, chr(13), "<br>")


replace_for_browser2=g
end function
%>