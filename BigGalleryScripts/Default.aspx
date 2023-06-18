<%@ Import Namespace="System.IO" %>
<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="gallery_scripts_Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="head1">

<!--Change your title here -->
<title>Castlemartyr GAA La na gClub photos 10-05-09</title>

<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1" />
<meta http-equiv="PRAGMA" content="NO-CACHE" />


<style>
    html {	 repeat 0 640px;}
body {
	margin:0 ;
	
padding-top:7px;
	font:12px Arial, Helvetica, sans-serif;
	color:#25455b;
	
}

.myjumps {color:Black; font-size:11px;}

</style>



</head>
<body  link="#000000" vlink="#000000" alink="#000000">
<br />



        <center>
        <div style="line-height:180% ; font-family: Verdana; font-size:22px; color:Black; font-weight: bold;">
        <asp:Label ID="lblGalleryName" runat="server" />
        </div>
        </center>
<asp:DataList runat="server" id="dlPictures"  
     RepeatColumns="4" 
     GridLines = "Both"
     ItemStyle-HorizontalAlign="Center"
     cellpadding="20"
     cellspacing="0"
     BorderColor ="Black"
     BorderStyle="Solid"
     BorderWidth="1"
     HorizontalAlign="Center"
      RepeatDirection="Horizontal"
     >    
  <ItemTemplate>
    <%# Container.DataItem %>
  </ItemTemplate>
  
 
  
  
</asp:DataList>

<br /><br /><br />


</body>
</html>
