<%@ Page Language="VB" AutoEventWireup="false" CodeFile="view_image.aspx.vb" Inherits="gallery_scripts_view_image" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
<style>
    html {	 repeat 0 640px;
          	  background-color:White;
          	 }
body { background-color:White;
	margin:0 ;
	
padding-top:7px;
	font:12px Arial, Helvetica, sans-serif;
	color:#25455b;
	
}

.myjumps {color:Black; font-size:11px;}

</style>




</head>

<body bgcolor="#AAAAAA">
    <form id="form1" runat="server">
  <br />
    
    
    
    <center>
    
     
        <center>
        <div style=" line-height:180%; font-family: Verdana; color:Black; font-weight: bold; padding-bottom:6px; padding-top:6px"">
        <asp:Label Font-Size="X-Large" ID="lblGalleryName" runat="server" /><br />
        
        <a class="myjumps" runat="server" id="hyper_previous">&lt;&lt; Previous Image</a>&nbsp;&nbsp;&nbsp;<a class="myjumps" id="hyper_back_to_thumbs" runat="server" >back to thumbnails</a>&nbsp;&nbsp;&nbsp;<a class="myjumps" runat="server" id="hyper_next" >Next Image &gt;&gt;</a> 
   
        
        </div>
        </center>
        
        
        
    <div>
    <asp:Image BorderWidth="10" ID="img1" runat="server" />
    </div>
    
    <br /><br />
    </center>
    </form>
</body>
</html>
