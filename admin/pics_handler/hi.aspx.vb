
Partial Class admin_pics_handler_hi
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim sql As String = String.Empty



        If Request.QueryString("pictype") = "EFL" Then sql = sql & " fk_tbl_events_features_lotto_id = " & Request.QueryString("item_id")
        If Request.QueryString("pictype") = "TEAMS" Then sql = sql & " fk_team_id = " & Request.QueryString("item_id")
        If Request.QueryString("pictype") = "MATCHES" Then sql = sql & " fk_match_id = " & Request.QueryString("item_id")


        ' Me.DS_Records.SelectCommand = "select * from tbl_pics where " & sql
    End Sub
End Class
