function image_pop(arg_imagename, arg_width, arg_height, arg_textheight, arg_description)
{
	var leftPos = 80;
    var topPos = 80;
	var winheight = arg_height + arg_textheight + 50;
	var winwidth = arg_width + 50;
    var imagesource = '/dynamic_files/pics/' + arg_imagename;
	var newDateObj = new Date()
	var a = "win" + newDateObj.getTime()
	var name = a;
    var features = 'height=' + winheight + ',width=' + winwidth + ',location=no,menubar=no,resizable=no,scrollbars=yes,' +
      'toolbar=no,status=no,screenX=' + leftPos + ',left='+ leftPos +',screenY=' + topPos + ',top=' + topPos;

    var generator = window.open('', name, features, false);
		
  generator.document.write('<html><head><title>Image</title>');
  generator.document.write('</head><body bottommargin=0 bgcolor="#ffffff">');
  generator.document.write('<center><table cellspacing=3 cellpadding=0 bgcolor=#FB5338><tr><td><table cellspacing=2 cellpadding=0 bgcolor=#ffffff><tr><td><img style="border-color:#FB5338;" border="1" src="' + imagesource + '"></td></tr></table></td></tr></table>');

  generator.document.write('<br><font face=verdana size=-2>' + arg_description + '</font>');
  generator.document.write('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:self.close()"><img border=0 align=absmiddle src="/images/closethiswindow.gif"></a></p>');
  generator.document.write('</center></body></html>');
  generator.document.close();

}


function image_pop_historical(arg_imagename, arg_width, arg_height, arg_textheight, arg_description)
{
	var leftPos = 80;
    var topPos = 80;
	var winheight = arg_height + arg_textheight + 50;
	var winwidth = arg_width + 50;
    var imagesource = '/images/historical_pics/' + arg_imagename;
	var newDateObj = new Date()
	var a = "win" + newDateObj.getTime()
	var name = a;
    var features = 'height=' + winheight + ',width=' + winwidth + ',location=no,menubar=no,resizable=no,scrollbars=yes,' +
      'toolbar=no,status=no,screenX=' + leftPos + ',left='+ leftPos +',screenY=' + topPos + ',top=' + topPos;

    var generator = window.open('', name, features, false);
		
  generator.document.write('<html><head><title>Image</title>');
  generator.document.write('</head><body bottommargin=0 bgcolor="#ffffff">');
  generator.document.write('<center><table cellspacing=3 cellpadding=0 bgcolor=#FB5338><tr><td><table cellspacing=2 cellpadding=0 bgcolor=#ffffff><tr><td><img style="border-color:#FB5338;" border="1" src="' + imagesource + '"></td></tr></table></td></tr></table>');

  generator.document.write('<br><font face=verdana size=-2>' + arg_description + '</font>');
  generator.document.write('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:self.close()"><img border=0 align=absmiddle src="/images/closethiswindow.gif"></a></p>');
  generator.document.write('</center></body></html>');
  generator.document.close();

}


function emailer(addr1, addr2)
{

document.location.href='mai' + 'lto:' + addr1 + addr2;


}

