<HTML>
<HEAD>
<TITLE>Castlemartyr GAA</TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">


<link rel=stylesheet href="../admin.css" type="text/css">


</HEAD>
<BODY  marginheight="30" marginwidth="30" topmargin="30" leftmargin="30" BGCOLOR="#FFFFFF" TEXT="#000000" LINK="#0000FF" VLINK="#800080">
<font class="maintext">

<% 


	set conn = server.createObject("ADODB.Connection")
	if conn.state = 0 then conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")

	set rs = Server.Createobject("ADODB.Recordset")
	rs.open "select * from tbl_newsticker where id=1", conn, 1, 3


	tickertext = rs("newsticker_str") 

	tickerurl = rs("url")


	rs.close
	set rs=nothing
	conn.close

%>

Text for Scrolling Ticker:<br><br>

<form name="matchform" action="ticker_edit_handler.asp" onsubmit="if(this.tickertext.value ==''){alert('please supply text'); return false;}else{this.submit;return true;}" method="Post">

<input type="hidden" name="theaction" value="<%=request.querystring("theaction")%>">

Text*<br>
<input name="tickertext" size="36" value="<%=tickertext%>"><br><br>

URL<br>
<input name="tickerurl" size="50" value="<%=tickerurl%>">&nbsp;&nbsp;(eg http://www.astelemartyrgaa.com)

<br><br>
<input type="submit" class="formbutton" value="&nbsp;&nbsp;save&nbsp;&nbsp;"><br><br>
<font size=-2>* = req. fields</font>


</form>

<br><br>
<a class="adminhyper" href="../main.asp"><- Back</a>
</font>
</BODY>
</HTML>
