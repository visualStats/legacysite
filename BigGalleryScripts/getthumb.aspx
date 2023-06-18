<!--ASP.NET Simple PhotoGallery -->
<!--http://www.thezeal.com/software -->

<%@Import Namespace="System.Drawing.Imaging" %>
<%@Import Namespace="System.Drawing" %>
<script language="c#" runat="server">

public void Page_Load(Object sender, EventArgs e)
{
    // Read in the image filename to create a thumbnail of
    string imageUrl = Request.QueryString["img"];
    
    // Read in the width and height
    int imageHeight = Convert.ToInt32(Request.QueryString["h"]);
    int imageWidth  = Convert.ToInt32(Request.QueryString["w"]);

    //Make sure that the image URL doesn't contain any /'s or \'s
    //If imageUrl.IndexOf("/") >= 0 Or imageUrl.IndexOf("\") >= 0 then
    // We found a / or \
    //   Response.End()
    // End If
    
    //Add on the appropriate directory
    //imageUrl = imageUrl
    
    System.Drawing.Image fullSizeImg = System.Drawing.Image.FromFile(Server.MapPath(imageUrl));

    //Do we need to create a thumbnail?
    Response.ContentType = "image/jpeg";
    if ((imageHeight > 0) && (imageWidth > 0))
    {
      Bitmap bitmap1 = new Bitmap(imageWidth, imageHeight, fullSizeImg.PixelFormat);

      Graphics new_g  = Graphics.FromImage(bitmap1);
      new_g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
      new_g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
      new_g.DrawImage(fullSizeImg, 0, 0, bitmap1.Width, bitmap1.Height);

      bitmap1.Save(Response.OutputStream, ImageFormat.Jpeg);

      new_g.Dispose();
      bitmap1.Dispose();
      	  	
    }
    else
    {
      fullSizeImg.Save(Response.OutputStream, ImageFormat.Jpeg);  
    }
}
</script>

