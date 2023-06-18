
Partial Class admin_pics_handler_pics
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim sql As String = String.Empty



        If Request.QueryString("pictype") = "EFL" Then sql = sql & " fk_tbl_events_features_lotto_id = " & Request.QueryString("item_id")
        If Request.QueryString("pictype") = "TEAMS" Then sql = sql & " fk_team_id = " & Request.QueryString("item_id")
        If Request.QueryString("pictype") = "MATCHES" Then sql = sql & " fk_match_id = " & Request.QueryString("item_id")


        Me.DS_Records.SelectCommand = "select * from tbl_pics where " & sql
        Me.GridView1.DataBind()



        Me.lblErrorMessage.Text = ""

    End Sub

    Protected Sub lbAddNewUnit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbAddNewUnit.Click
        Me.pnlUnitDetails.Visible = True
        Me.pnlUnitList.Visible = False

        Me.dvUnit.ChangeMode(DetailsViewMode.ReadOnly) 'this is just a small trick to BLANK the fields so that previous inputs are wiped
        Me.dvUnit.ChangeMode(DetailsViewMode.Insert)


    End Sub






    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Me.pnlUnitDetails.Visible = False
    End Sub




    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

        ViewState("selectedpic") = Me.GridView1.SelectedValue

        Me.pnlUnitDetails.Visible = True
        Me.pnlUnitList.Visible = False
        Me.dvUnit.ChangeMode(DetailsViewMode.Edit)



    End Sub



    Protected Sub dvUnit_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles dvUnit.ItemInserted
        Me.pnlUnitDetails.Visible = False
        Me.pnlUnitList.Visible = True


        Me.GridView1.DataBind()
        Me.GridView1.SelectedIndex = -1

    End Sub



    Protected Sub dvUnit_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles dvUnit.ItemUpdated
        Me.pnlUnitDetails.Visible = False
        Me.pnlUnitList.Visible = True
        Me.GridView1.DataBind()
    End Sub




    Protected Sub dvUnit_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewCommandEventArgs) Handles dvUnit.ItemCommand

        'NOTE: the Update and Insert will also enter this sub but will not do anything if the commandname is specified....

        If e.CommandName = "Cancel" Then
            Me.pnlUnitDetails.Visible = False
            Me.pnlUnitList.Visible = True
        End If

    End Sub

    Protected Sub dvUnit_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles dvUnit.ItemInserting
        'handle the uploading of the photo
        Dim myupload As FileUpload = Me.dvUnit.FindControl("uplImage")
        If myupload.HasFile Then
            PhotoFileUpload(Me.AccessDataSource2.InsertParameters, myupload, e, "inserting")
        End If
    End Sub

    Protected Sub PhotoFileUpload(ByRef param_collection As ParameterCollection, ByVal fileup As FileUpload, ByRef e As Object, ByVal mode As String)


        Dim Manager As New MyImageUploadManager
        Manager.namingPolicy = MyImageUploadManager.ImageNamingPolicy.combine


        Manager.maxKiloBytes = 3000
        Manager.maxPixelWidth = 5000



        Manager.AdjustWidthForPortraits = True


        Dim pic_description As String = CType(Me.dvUnit.FindControl("txtDescription"), TextBox).Text
        pic_description = util.ReplaceApostrophes(pic_description)

        Try

            Manager.saveFolder = "../../dynamic_files/pics"

            Dim LargeImage As MyImage = Manager.Create(fileup)

            Dim large_image_height As Integer = LargeImage.Height
            Dim large_image_width As Integer = LargeImage.Width
            Dim thumbheight As Integer = 35
            Dim thumbwidth As Integer = thumbheight * large_image_width / large_image_height



            Manager.saveFolder = "../../dynamic_files/pics_mid"

            Dim MidImage As MyImage = Manager.Create(fileup, 140)




            Manager.saveFolder = "../../dynamic_files/pics_thumbs"

            Dim ThumbImage As MyImage = Manager.Create(fileup, thumbwidth, thumbheight)





            Dim fk_tbl_events_features_lotto_id As Integer = 0
            Dim fk_team_id As Integer = 0
            Dim fk_match_id As Integer = 0


            If Request.QueryString("pictype") = "EFL" Then fk_tbl_events_features_lotto_id = CInt(Request.QueryString("item_id"))
            If Request.QueryString("pictype") = "TEAMS" Then fk_team_id = CInt(Request.QueryString("item_id"))
            If Request.QueryString("pictype") = "MATCHES" Then fk_match_id = CInt(Request.QueryString("item_id"))



            If mode = "inserting" Then
                Me.AccessDataSource2.InsertCommand = String.Format("insert into tbl_pics (pic_description, mainimage_filename, main_width, main_height, thumbnail_filename, thumbnail_width , thumbnail_height, mid_filename, mid_width, mid_height, fk_tbl_events_features_lotto_id, fk_team_id, fk_match_id)  values ('{0}', '{1}', {2}, {3}, '{4}', {5}, {6}, '{7}', {8}, {9}, {10}, {11}, {12})", pic_description, LargeImage.FileName, LargeImage.Width, LargeImage.Height, ThumbImage.FileName, ThumbImage.Width, ThumbImage.Height, MidImage.FileName, MidImage.Width, MidImage.Height, fk_tbl_events_features_lotto_id, fk_team_id, fk_match_id)
            ElseIf mode = "updating" Then

            End If



        Catch ex As Exception

            Me.pnlErrorMessage.Visible = True
            Me.lblErrorMessage.Text = ex.Message


            'Now we must CANCEL the inserting or updating if an exception was thrown by the image uploading
            If e.GetType.Equals(GetType(DetailsViewUpdateEventArgs)) Then
                Dim uea As DetailsViewUpdateEventArgs = CType(e, DetailsViewUpdateEventArgs)
                uea.Cancel = True
            ElseIf e.GetType.Equals(GetType(DetailsViewInsertEventArgs)) Then
                Dim iea As DetailsViewInsertEventArgs = CType(e, DetailsViewInsertEventArgs)
                iea.Cancel = True
            End If


        End Try


    End Sub

    Protected Sub dvUnit_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdateEventArgs) Handles dvUnit.ItemUpdating
        Dim pic_description As String = CType(Me.dvUnit.FindControl("txtDescription"), TextBox).Text
        pic_description = util.ReplaceApostrophes(pic_description)
        Me.AccessDataSource2.UpdateCommand = "update tbl_pics set pic_description = '" & pic_description & " ' where pic_id=" & ViewState("selectedpic")
    End Sub
End Class
