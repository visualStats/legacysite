Imports System.Collections.ObjectModel
Imports System.IO

Partial Class gallery_scripts_Default2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim folderpath1 As String
        Dim galleryname As String


        folderpath1 = Request.QueryString("folder")
        galleryname = Request.QueryString("GalleryName")

        Me.Page.Title = galleryname
        Me.lblGalleryName.Text = galleryname

        'Modify these numbers for the thumbnail size you want
        Dim maxWidth As Integer = 200
        Dim maxHeight As Integer = 200


        Dim pics As New ArrayList
        Dim html As String
        Dim imgHeight As Integer
        Dim imgWidth As Integer

        Dim files As ReadOnlyCollection(Of String)
        files = My.Computer.FileSystem.GetFiles(Server.MapPath(folderpath1), FileIO.SearchOption.SearchTopLevelOnly, "*.jpg")

        For Each s As String In files
            Dim currentImage As System.Drawing.Image = System.Drawing.Image.FromFile(s)

            imgHeight = currentImage.Height
            imgWidth = currentImage.Width

            If ((imgWidth > maxWidth) Or (imgHeight > maxHeight)) Then

                Dim deltaWidth As Integer
                deltaWidth = imgWidth - maxWidth

                Dim deltaHeight As Integer
                deltaHeight = imgHeight - maxHeight


                Dim scaleFactor As Double

                If deltaHeight > deltaWidth Then
                    scaleFactor = Convert.ToDouble(maxHeight) / imgHeight
                Else
                    scaleFactor = Convert.ToDouble(maxWidth) / imgWidth
                End If

                imgWidth = Convert.ToInt32(imgWidth * scaleFactor)
                imgHeight = Convert.ToInt32(imgHeight * scaleFactor)

            End If



            Dim imgfilename As String
            imgfilename = folderpath1 + "/" + Path.GetFileName(s)


            If ((imgHeight <> currentImage.Height) Or (imgWidth <> currentImage.Width)) Then

                html = "<a href=""view_image.aspx?GalleryName=" & Server.UrlEncode(galleryname) & "&folder=" & Server.UrlEncode(folderpath1) & "&img=" & Server.UrlEncode(imgfilename) & """>"
                html += "<img border=""2"" src=""getthumb.aspx?img=" & Server.UrlEncode(imgfilename) & "&w=" & imgWidth.ToString & "&h=" & imgHeight.ToString & """ " & "height=""" & imgHeight.ToString & """ width=""" & imgWidth.ToString + """>"
                html += "</a>"

            Else

                html = "<a href=""view_image.aspx?GalleryName=" & Server.UrlEncode(galleryname) & "&folder=" & Server.UrlEncode(folderpath1) & "&img=" & Server.UrlEncode(imgfilename) & """>"
                html += "<img border=""2"" src=""getthumb.aspx?img=" & Server.UrlEncode(imgfilename) & """ " & "height=""" & imgHeight.ToString & """ width=""" & imgWidth.ToString & """>"
                html += "</a>"

            End If

            pics.Add(html)
            currentImage.Dispose()


        Next

        dlPictures.DataSource = pics
        dlPictures.DataBind()

  
    End Sub
End Class
