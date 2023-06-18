Imports System.IO
Imports System.Collections.ObjectModel

Partial Class gallery_scripts_view_image
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load



        Dim imagepath As String = Request.QueryString("img") ' this will include a ~  eg ~/gallery/folder1/1.jpg
        Dim folder As String = Request.QueryString("folder") ' this will include a ~  eg ~/gallery/folder1
        Dim galleryname As String = Request.QueryString("GalleryName")



        'Show the Image
        Me.img1.ImageUrl = imagepath

        'Display the Gallery Name at the top and also in the Browser Title bar
        Me.lblGalleryName.text = galleryname
        Me.Page.Title = galleryname


        'find where in the list of files the Image is located
        Dim files As ReadOnlyCollection(Of String)
        files = My.Computer.FileSystem.GetFiles(Server.MapPath(folder), FileIO.SearchOption.SearchTopLevelOnly, "*.jpg")
        Dim curr_index As Integer = files.IndexOf(Server.MapPath(imagepath))
        Dim num_files As Integer = files.Count



        'Create the PREVIOUS IMAGE button, if one is relevant
        If curr_index > 0 Then
            Dim prev_image_path As String = files(curr_index - 1)
            Dim prev_image_name As String = System.IO.Path.GetFileName(prev_image_path)
            Me.hyper_previous.HRef = "view_image.aspx?GalleryName=" & Server.UrlEncode(galleryname) & "&folder=" & Server.UrlEncode(folder) & "&img=" & Server.UrlEncode(folder & "/" & prev_image_name)
        Else
            Me.hyper_previous.Visible = False
        End If



        'Create the NEXT IMAGE button, if one is relevant
        If curr_index + 1 < num_files Then
            Dim next_image_path As String = files(curr_index + 1)
            Dim next_image_name As String = System.IO.Path.GetFileName(next_image_path)
            Me.hyper_next.HRef = "view_image.aspx?GalleryName=" & Server.UrlEncode(galleryname) & "&folder=" & Server.UrlEncode(folder) & "&img=" & Server.UrlEncode(folder & "/" & next_image_name)
        Else
            Me.hyper_next.Visible = False
        End If



        Me.hyper_back_to_thumbs.HRef = "default.aspx?GalleryName=" & Server.UrlEncode(galleryname) & "&folder=" & Server.UrlEncode(folder)


    End Sub
End Class
