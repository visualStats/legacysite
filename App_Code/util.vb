Imports Microsoft.VisualBasic

Public Class util
    Public Shared Function ReplaceApostrophes(ByVal str As String) As String
        Dim res As String = ""

        'replace apostrophes
        res = Replace(str, Chr(39), Chr(146)) 'apostrophe
        res = Replace(res, Chr(34), Chr(146)) 'double quote

        'Note bizarly the replace fn returns Nothing if a zero length string is passed to it
        If res Is Nothing Then res = ""

        Return res

    End Function
End Class
