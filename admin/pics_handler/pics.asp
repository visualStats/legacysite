<%
response.buffer=true


item_id = request.querystring("item_id")
pictype = request.querystring("pictype")
eflname = request.querystring("eflname")
teamname = request.querystring("teamname")
fixturename = request.querystring("fixturename")

combined_qs = "?submitted=yes&item_id=" & item_id & "&pictype=" & pictype & "&eflname=" & server.urlencode(eflname) & "&teamname=" & server.urlencode(teamname)& "&fixturename=" & server.urlencode(fixturename) & "&nocache=" & server.urlencode(now())
%>
<HTML>
<HEAD>
<TITLE>PICS -</TITLE>
<META name="description" content="">
<META name="keywords" content="">
<META name="generator" content="CuteHTML">

<link rel=stylesheet href="../admin.css" type="text/css">

<script language="Javascript">
function sbmt()
{

if (document.uploadfiles.MAINIMAGE.value == "") 
{
alert ("please choose an image to upload")
return false
}




if (!valid_extension(document.uploadfiles.MAINIMAGE.value))
{
alert ("Error. You may only upload files of type GIF, JPG")
return false
}




else{
		document.uploadfiles.action = "pics.asp<%=combined_qs%>"
		document.uploadfiles.method = "Post"
		document.uploadfiles.submit
		return true
	}
}

function valid_extension(arg)
{
ok = false
allow = new Array(".gif", ".jpg", ".JPG", ".GIF")
str=arg
len = str.length
substr = str.substring((len-4), len)
	for (var i = 0; i < allow.length; i++) 
	{
	if (allow[i] == substr)
	{
	ok = true
	}
	}
return ok
}



</script>
</HEAD>
<BODY BGCOLOR="#ffffff"  topmargin=30 leftmargin=30>
<font face=verdana size=-2>

<%
response.write "<h5>Pics for: " & request.querystring("eflname") & request.querystring("teamname") & request.querystring("fixturename") & "</h5>"





	set conn = server.createObject("ADODB.Connection")
	conn.open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.mappath("../../dynamic_files/data.mdb")


	'if a record is deleted.....
	if request.querystring("delpic") = "yes" then
		del_str = "delete * from tbl_pics where pic_id=" & request.querystring("pic_id")
		conn.execute(del_str)
	end if



	set rs = Server.Createobject("ADODB.Recordset")

	sql = "select * from tbl_pics where "


	if request.querystring("pictype") = "EFL" then sql = sql & " fk_tbl_events_features_lotto_id = " & request.querystring("item_id")
	if request.querystring("pictype") = "TEAMS" then  sql = sql & " fk_team_id = " & request.querystring("item_id")
	if request.querystring("pictype") = "MATCHES" then sql = sql & " fk_match_id = " & request.querystring("item_id")



	rs.open sql, conn, 1, 3






	Set mySmartUpload = Server.CreateObject("aspSmartUpload.SmartUpload")



if request.querystring("submitted")="yes" and request.querystring("delpic") <> "yes" then



	mySmartUpload.Upload







	if (mySmartUpload.files(1).size > 300000) then
		response.write "<font color=red>ERROR: FILESIZE OF IMAGE CANNOT EXCEED 300k.</font>"
		file_too_big=true
	else


		' ***** SAVE MAIN IMAGE
		pth = server.mappath("../../dynamic_files/pics")


		usersfilename = mySmartUpload.files(1).FileName
		usersfilename_ext = mySmartUpload.files(1).FileExt


		main_filename = convert_into_alphanumeric(now() & "." & usersfilename_ext)



		main_filename_and_path = pth & "\" & main_filename

		mySmartUpload.files(1).SaveAs (main_filename_and_path)


		Set Image = Server.CreateObject("AspImage.Image")

		' load the main image onto the image canvas
		Image.LoadImage (main_filename_and_path)

		image_width = Image.MaxX
		image_height = Image.MaxY



		' ***** SAVE THUMBNAIL IMAGE
		pth_th = server.mappath("../../dynamic_files/pics_thumbs")
		thumb_filename = convert_into_alphanumeric(now() & "_th" & right(usersfilename,5))
		thumb_filename_and_path = pth_th & "\" & thumb_filename
		Image.FileName = thumb_filename_and_path
		Image.ImageFormat = 1
		Image.JPEGQuality = 70

		thumb_height = 35
		thumb_width = (image_width * thumb_height) / image_height

		Image.Resize thumb_width, thumb_height
		Image.SaveImage



		' ***** SAVE MIDSIZE IMAGE

		Image.LoadImage (main_filename_and_path)   'reload the image to its former size

		pth_mid = server.mappath("../../dynamic_files/pics_mid")
		mid_filename = convert_into_alphanumeric(now() & "_mid" & right(usersfilename,5))
		mid_filename_and_path = pth_mid & "\" & mid_filename
		Image.FileName = mid_filename_and_path
		Image.ImageFormat = 1
		Image.JPEGQuality = 70

		'mid_height = 180
		'mid_width = (image_width * mid_height) / image_height

		mid_width = 140
		mid_height = mid_width * image_height / image_width


		Image.Resize mid_width, mid_height
		Image.SaveImage




		set Image = nothing




	rs.addnew
		

	pic_description = trim(mySmartUpload.form("pic_description"))
	pic_description = replace (pic_description, chr(34), chr(148))
	pic_description = replace (pic_description, chr(39), chr(146))

	rs("pic_description") = pic_description
	rs("mainimage_filename") = main_filename
	rs("main_width") = image_width
	rs("main_height") = image_height
	rs("thumbnail_filename") = thumb_filename
	rs("thumbnail_width") = thumb_width
	rs("thumbnail_height") = thumb_height
	rs("mid_filename") = mid_filename
	rs("mid_width") = mid_width
	rs("mid_height") = mid_height
	if request.querystring("pictype") = "EFL" then rs("fk_tbl_events_features_lotto_id") = item_id
	if request.querystring("pictype") = "TEAMS" then rs("fk_team_id") = item_id
	if request.querystring("pictype") = "MATCHES" then rs("fk_match_id") = item_id

	rs.update

	new_team_id=rs(0)


	session("recent_pics_str") = ""

	end if

end if
	




' *** DISPLAY EXISTING 


if not rs.eof then
	rs.movefirst
	
	do while not rs.eof
		response.write "<a target=_blank href=""../../dynamic_files/pics/" & rs("mainimage_filename") & """><img align=absmiddle border=0 src=""../../dynamic_files/pics_thumbs/" & rs("thumbnail_filename") & """></a>"

		response.write "&nbsp;&nbsp;" & left(rs("pic_description"),30)
		if len(rs("pic_description")) > 30 then response.write "..."
		if rs("pic_description") = "" or isnull(rs("pic_description")) then response.write "no description given"
		response.write "&nbsp;&nbsp;&nbsp;"

		response.write "<a href=""pics.asp" & combined_qs & "&delpic=yes&pic_id=" & rs(0) & """><font color=red>delete</font></a>"

		response.write "&nbsp;&nbsp;&nbsp;"

		response.write "<a href=""edit_pic_description.asp" & combined_qs & "&pic_id=" & rs(0) & "&imagename=" & server.urlencode("../../dynamic_files/pics/" & rs("mainimage_filename")) & """>edit pic description</a>"

		response.write "<hr>"


	rs.movenext

	loop

else

	response.write "No pics uploaded yet."

end if










	rs.close
	set rs=nothing
	conn.close





%>

<br><br>
<FORM name="uploadfiles"  ENCTYPE="multipart/form-data" onsubmit="return sbmt()">
<input type=hidden name="theaction" value="new">

<br><Br>

Locate image (please use jpg or gif only):
<br><INPUT TYPE="FILE" NAME="MAINIMAGE" SIZE="50">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<br><br>
Pic Description:<br><textarea rows=3 cols=40 name="pic_description"></textarea>


<br><br>
<INPUT  TYPE="SUBMIT" VALUE="       Upload       ">


</FORM>
</font>
<br>
<a href="javascript:this.close()">CLOSE THIS WINDOW WHEN FINISHED UPLOADING PICS</a>
</body></html>
<% 
function convert_into_alphanumeric(arg)

		for lp = 1 to len(arg)
			char = mid(arg, lp ,1)
			if (asc(char) >=48 and asc(char) <= 57) or (asc(char) >=97 and asc(char) <= 122) or (asc(char) >=65 and asc(char) <= 90) or (asc(char) = 46) or (asc(char) = 95) then
			convert_into_alphanumeric = convert_into_alphanumeric & char
			end if
		next

end function

%>
