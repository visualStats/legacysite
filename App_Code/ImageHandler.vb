Imports Microsoft.VisualBasic
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO
Imports web = System.Web.UI.WebControls
Imports System.Xml



Public Class MyImage
    Public Width As Int32
    Public Height As Int32
    Public FileName As String
    Public Type As ImageFormat
    Public FileSizeKb As Int32
End Class

Public Class MyImageUploadManager

    Public overwrite As Boolean = False
    Public allowedTypes As String = ".jpg .jpeg .gif .png"      'list of extensions, e.g. ".jpg .jpeg .gif", case-insensitive
    Public maxKiloBytes As Int32 = 300                          '500kb by default
    Public maxPixelWidth As Int32 = 600                         '380px by default
    Public namingPolicy As ImageNamingPolicy = ImageNamingPolicy.combine
    Public saveFolder As String                                 'the relative folder to save the image into (using a filename determined by the namingpolicy)
    Public AdjustWidthForPortraits As Boolean = False           'if this is true then if a portrait is uploaded then adjust the width so that it fits in the same area as a Landscape

#Region "create methods"

    'private function to copy the relevant properties from a Bitmap to a MyImage object
    Private Shared Function CreateMyImageFromBitmap(ByRef bmp As Bitmap, ByVal AbsolutePath As String) As MyImage
        Dim img As New MyImage()
        img.FileName = Path.GetFileName(AbsolutePath)
        img.Height = bmp.Height
        img.Width = bmp.Width
        img.Type = bmp.RawFormat
        Dim fi As FileInfo = New FileInfo(AbsolutePath)
        img.FileSizeKb = fi.Length / 1024   'kb
        Return img
    End Function

    'upload an image, based on a FileUpload control, with a specified width and height.  
    '   -1 for height or width means the parameter is ignored.
    Public Function Create(ByRef FileUpload As FileUpload, ByVal width As Int32, ByVal height As Int32) As MyImage

        If Not FileUpload.HasFile Then
            Throw New Exception("Error: fileupload does not contain a file")
        End If

        CheckFileType(FileUpload.FileName)
        CheckFileSize(FileUpload.FileBytes)

        Dim bmp As Bitmap = New Bitmap(New MemoryStream(FileUpload.FileBytes))

        'later if we are resizing we will have to "remember" the original image format
        Dim OrigImageFormat As System.Drawing.Imaging.ImageFormat = bmp.RawFormat

        Dim savePath As String = GetSavePath(FileUpload.FileName)  'the absolute path

        'resize the image if specified (for non-gif images, because they lose their bg-colour/palette during resize)
        If width > 0 Then
            If height > 0 Then
                bmp = MakeResizedImage(bmp, width, height) 'resize based on width and height
            Else



                'if a portrait is uploaded then adjust the width so that it fits in the same area as a Landscape
                If bmp.Height > bmp.Width And AdjustWidthForPortraits Then
                    width = CInt(width / 1.777)
                End If

                bmp = MakeResizedImage(bmp, width) 'resize based on width only

            End If
        End If





        'check if the new dimensions of the image conflict with the maxPixelWidth
        CheckMaxWidth(bmp)


        'upload the file
        'if we are working with JPGS then do some extra work
        If Path.GetExtension(savePath).ToLower() = ".jpg" Or Path.GetExtension(savePath).ToLower() = ".jpeg" Then

            Dim codec As ImageCodecInfo = ImageCodecInfo.GetImageEncoders(1) 'JPG only. ie the jpg codec is 2nd on the list

            Dim encoderInstance As System.Drawing.Imaging.Encoder
            Dim encoderParametersInstance As EncoderParameters
            Dim encoderParameterInstance As EncoderParameter
            'Quality
            encoderInstance = System.Drawing.Imaging.Encoder.Quality
            encoderParametersInstance = New EncoderParameters(2)
            encoderParameterInstance = New EncoderParameter(encoderInstance, 100L) 'TOP Quality
            encoderParametersInstance.Param(0) = encoderParameterInstance
            'Colour Depth
            encoderInstance = System.Drawing.Imaging.Encoder.ColorDepth
            encoderParameterInstance = New EncoderParameter(encoderInstance, 24L)
            encoderParametersInstance.Param(1) = encoderParameterInstance

            bmp.Save(savePath, codec, encoderParametersInstance)
        Else
            bmp.Save(savePath, OrigImageFormat)

        End If


        'create the MyImage object and copy the properties in from the Bitmap
        Return CreateMyImageFromBitmap(bmp, savePath)
    End Function

    'upload an image, based on a FileUpload control and a resize width. 
    Public Function Create(ByRef FileUpload As FileUpload, ByVal width As Int32) As MyImage
        Return Create(FileUpload, width, -1)    'use the other override, supplying -1 for the height, indicating that the height should be ignored
    End Function

    'upload an image, based on a FileUpload control. 
    Public Function Create(ByRef FileUpload As FileUpload) As MyImage
        Return Create(FileUpload, -1, -1)    'use the other override, supplying -1 for the width and height, indicating that the image should not be resized
    End Function
#End Region

#Region "delete methods"
    'delete an image based on its filename
    Public Sub Delete(ByRef FileName As String)
        Dim AbsolutePath As String = Path.Combine(HttpContext.Current.Server.MapPath(Me.saveFolder), FileName)
        Try
            File.Delete(AbsolutePath)
        Catch ex As UnauthorizedAccessException
            'try again by removing read-only attribute
            RemoveReadOnlyFileAttribute(AbsolutePath)
            File.Delete(AbsolutePath)
            'could still fail with an UnauthorizedAccessException if write permissions are not set
        End Try
    End Sub

    'delete an image based on the filename in the MyImage.Filename property
    Public Sub Delete(ByRef img As MyImage)
        Delete(img.FileName)    'use the other function
    End Sub
#End Region

#Region "resize methods"

    'check to make sure the new dimensions do not conflict with the maxPixelWidth
    Private Sub CheckMaxWidth(ByRef bmp As Bitmap)
        If bmp.Width > Me.maxPixelWidth Then
            bmp = MakeResizedImage(bmp, Me.maxPixelWidth)
        End If
    End Sub

    'calculate the height to width ration of an image
    Private Function GetScale(ByRef bmp As Bitmap) As Decimal
        Dim orig_width As Integer = CInt(bmp.Width)
        Dim orig_height As Integer = CInt(bmp.Height)
        Return orig_height / orig_width
    End Function

    'private method to resize an image based on a Bitmap, width + height
    Private Function MakeResizedImage(ByRef bmp As Bitmap, ByVal width As Int32, ByVal height As Int32) As Bitmap
        Dim resized As Bitmap = New Bitmap(bmp, width, height)
        Return resized
    End Function

    'private method to resize an image based on a Bitmap and width 
    Public Function MakeResizedImage(ByVal bmp As Bitmap, ByVal width As Int32) As Bitmap
        Dim new_bitmap As Bitmap = New Bitmap(bmp, width, width * GetScale(bmp))
        Return new_bitmap
    End Function

    'resize an image based on the filename and width.
    Public Function Resize(ByVal FileName As String, ByVal width As Int32) As MyImage
        Dim AbsolutePath As String = Path.Combine(HttpContext.Current.Server.MapPath(Me.saveFolder), FileName)
        Dim bmp As Bitmap = Bitmap.FromFile(AbsolutePath)
        Dim resizedBmp As Bitmap = MakeResizedImage(bmp, width, width * GetScale(bmp))
        CheckMaxWidth(resizedBmp)   'check if new dimensions are ok and shrink resizedBmp if not
        Dim SavePath As String = GetSavePath(Path.GetFileName(AbsolutePath))
        resizedBmp.Save(SavePath, bmp.RawFormat)
        Return CreateMyImageFromBitmap(resizedBmp, SavePath)
    End Function

    'resize an image based on the filename and width and height.
    Public Function Resize(ByVal FileName As String, ByVal width As Int32, ByVal height As Int32) As MyImage
        Dim AbsolutePath As String = Path.Combine(HttpContext.Current.Server.MapPath(Me.saveFolder), FileName)
        Dim bmp As Bitmap = Bitmap.FromFile(AbsolutePath)
        Dim resizedBmp As Bitmap = MakeResizedImage(bmp, width, height)
        CheckMaxWidth(resizedBmp)   'check if new dimensions are ok and shrink resizedBmp if not
        Dim SavePath As String = GetSavePath(Path.GetFileName(AbsolutePath))
        resizedBmp.Save(SavePath, bmp.RawFormat)
        Return CreateMyImageFromBitmap(resizedBmp, SavePath)
    End Function


    'resize an image based on a MyImage object, width and height. 
    Public Function Resize(ByRef img As MyImage, ByVal width As Int32, ByVal height As Int32) As MyImage
        Dim AbsolutePath As String = Path.Combine(HttpContext.Current.Server.MapPath(saveFolder), img.FileName)
        Dim bmp As Bitmap = Bitmap.FromFile(AbsolutePath)
        Dim resizedBmp As Bitmap = MakeResizedImage(bmp, width, height)
        CheckMaxWidth(resizedBmp)   'check if new dimensions are ok  and shrink resizedBmp if not
        Dim SavePath As String = GetSavePath(img.FileName)
        resizedBmp.Save(SavePath, bmp.RawFormat)
        img = CreateMyImageFromBitmap(resizedBmp, SavePath)
        Return img
    End Function

    'resize an image based on a MyImage object, width. 
    Public Function Resize(ByRef img As MyImage, ByVal width As Int32) As MyImage
        Dim AbsolutePath As String = Path.Combine(HttpContext.Current.Server.MapPath(saveFolder), img.FileName)
        Dim bmp As Bitmap = Bitmap.FromFile(AbsolutePath)

        Dim resizedBmp As Bitmap = MakeResizedImage(bmp, width, width * GetScale(bmp))
        CheckMaxWidth(resizedBmp)   'check if new dimensions are ok
        Dim SavePath As String = GetSavePath(img.FileName)
        resizedBmp.Save(SavePath, bmp.RawFormat)
        img = CreateMyImageFromBitmap(resizedBmp, SavePath)
        Return img
    End Function


#End Region

#Region "load image methods"
    Public Function LoadImage(ByVal FileName As String) As MyImage
        Dim AbsolutePath As String = Path.Combine(HttpContext.Current.Server.MapPath(Me.saveFolder), FileName)
        Dim bmp As Bitmap = Bitmap.FromFile(AbsolutePath)
        Return CreateMyImageFromBitmap(bmp, AbsolutePath)
    End Function
#End Region

#Region "utility methods"

    'check the type of the file against the Allowed Types
    Private Sub CheckFileType(ByVal filePath As String)
        Dim uploadFileType As String = Path.GetExtension(filePath).ToLower()
        If Not Me.allowedTypes.ToLower().Contains(uploadFileType) Then
            Throw New BadImageFormatException("Allowed file types are " & Me.allowedTypes)
        End If
    End Sub

    'check the size of the file against the size limit
    Private Sub CheckFileSize(ByRef Bytes() As Byte)
        If Bytes.Length > maxKiloBytes * 1024 Then
            Throw New FileTooBigException(String.Format("The maximum size of a file is {0} Kb", maxKiloBytes))
        End If
    End Sub

    'return the full path of the image to save, also checks if the new name would conflict with the overwrite setting
    Private Function GetSavePath(ByVal fileName As String) As String
        Dim newFileName As String
        Select Case Me.namingPolicy
            Case ImageNamingPolicy.unique
                newFileName = Guid.NewGuid().ToString().Substring(0, 8) & Path.GetExtension(fileName)
            Case ImageNamingPolicy.nochange
                newFileName = MakeAlphaNumeric(fileName)
            Case Else   'combined, by default
                newFileName = Path.GetFileNameWithoutExtension(MakeAlphaNumeric(fileName)) & Guid.NewGuid().ToString().Substring(0, 8) & Path.GetExtension(fileName)
        End Select

        'check the overwrite flag
        Dim fullPath As String = Path.Combine(HttpContext.Current.Server.MapPath(saveFolder), newFileName)
        If File.Exists(fullPath) And Me.overwrite = False Then
            Throw New OverwriteNotAllowedException()
        End If

        Return fullPath
    End Function

    Public Function MakeAlphaNumeric(ByVal name As String) As String
        Dim s As String = ""
        For Each c As Char In name.ToCharArray()
            If Char.IsLetterOrDigit(c) Or c = "_" Then
                s += c
            End If
        Next
        Return s
    End Function


    ' Returns a description of a number of bytes, in appropriate units.
    ' e.g. 
    '		passing in 1024 will return a string "1 Kb"
    '		passing in 1230000 will return "1.23 Mb"
    ' Megabytes and Gigabytes are formatted to 2 decimal places.
    ' Kilobytes are rounded to whole numbers.
    ' If the rounding results in 0 Kb, "1 Kb" is returned, because Windows behaves like this also.
    Public Function GetFileSize(ByVal numBytes As Long) As String
        Dim fileSize As String = ""
        If (numBytes > 1073741824) Then
            fileSize = String.Format("{0:0.00} Gb", CDbl(numBytes) / 1073741824)
        ElseIf (numBytes > 1048576) Then
            fileSize = String.Format("{0:0.00} Mb", CDbl(numBytes) / 1048576)
        Else
            fileSize = String.Format("{0:0} Kb", CDbl(numBytes) / 1024)
        End If
        Return fileSize
    End Function


    ' try to remove 'read-only' attribute on the file.  e.g. Visual Studio may have set ReadOnly, or when copying files from CD etc. 
    Public Shared Sub RemoveReadOnlyFileAttribute(ByVal path As String)
        Dim fi As FileInfo = New FileInfo(path)
        If Not (fi.Attributes And FileAttributes.ReadOnly) = 0 Then
            fi.Attributes -= FileAttributes.ReadOnly
        End If
    End Sub
#End Region

#Region "custom image exceptions"
    Public Class BadImageFormatException
        Inherits Exception
        Public Sub New(ByVal msg As String)
            MyBase.new(msg)
        End Sub
    End Class

    Public Class FileTooBigException
        Inherits Exception
        Public Sub New(ByVal msg As String)
            MyBase.new(msg)
        End Sub
    End Class

    Public Class OverwriteNotAllowedException
        Inherits Exception
    End Class


#End Region

    Public Enum ImageNamingPolicy
        nochange
        unique
        combine
    End Enum

End Class











