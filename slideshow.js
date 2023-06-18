uagent = window.navigator.userAgent.toLowerCase();
IEB = (uagent.indexOf('msie') != - 1) ? true : false;
OPB = (uagent.indexOf('opera') != - 1) ? true : false;
CRB = (uagent.indexOf('chrome') != - 1) ? true : false;
SFB = (uagent.indexOf('safari') != - 1) ? true : false;
var scompat = document.compatMode;
var slideshows = null;
var slideshowdescgoster = 0;
var slideshowthumbgoster = 0;
var slideshowcwidth = 0;
var slideshowcheight = 0;
var slideshowcalc = 0;
var slideshowtam = 0;
var slideshowkalan = 0;
var slideshowkalany = 0;
var slideshowts = "";
var slideshowds = "";
var slideshowjbtype = 0;
var slideshowrealcurrent = 0;
var slideshowtimeo = null;
slideshowthumbs_obj = null;
slideshowmoving_obj = null;
slideshowTotalThumbWidth = 0;
slideshowTotalThumbHeight = 0;
slideshowMoveIcWidth = 0;
var TBW = 0;
var CursorStr = "default";
var slideshowDescCalcWidth = 0;
var slideshowDescCalcHeight = 0;
var slideshowDescCalcIcWidth = 0;
var slideshowDescCalcIcHeight = 0;
var MoveWidth = 0;
var ThumbAreaWidth = 340;
var ThumbAreaHeight = 340;
slideshowimgarr = new Array();
slideshowthumbimgstr = new Array();
slideshowimgstr = new Array();
slideshowlinkstr = new Array();
slideshowclslinkstr = new Array();
slideshowtitarr = new Array();
slideshowdesarr = new Array();
slideshowimgarr[0] = new Image();
slideshowimgarr[0].c = 0;
slideshowimgarr[0].onload = slideshowsecondcomplate;
slideshowimgarr[0].src = slideshowfoldername + '../images/slideshow/slideshow1.JPG';
slideshowimgstr[0] = slideshowfoldername + '../images/slideshow/slideshow1.JPG';
slideshowthumbimgstr[0] = slideshowfoldername + '../images/slideshow/slideshow1.JPG';
slideshowlinkstr[0] = '<a href="../images/slideshow/slideshow1.jpg" target="_new" style="text-decoration: none;">';
slideshowclslinkstr[0] = '</a>';
slideshowtitarr[0] = "East Cork Champions 2009";
slideshowdesarr[0] = "East Cork Champions 2009";
slideshowimgarr[1] = new Image();
slideshowimgarr[1].c = 0;
slideshowimgarr[1].onload = slideshowsecondcomplate;
slideshowimgarr[1].src = slideshowfoldername + '../images/slideshow/slideshow2.JPG';
slideshowimgstr[1] = slideshowfoldername + '../images/slideshow/slideshow2.JPG';
slideshowthumbimgstr[1] = slideshowfoldername + '../images/slideshow/slideshow2.JPG';
slideshowlinkstr[1] = '<a href="../images/slideshow/slideshow2.jpg" target="_new" style="text-decoration: none;">';
slideshowclslinkstr[1] = '</a>';
slideshowtitarr[1] = "Captain Ollie Smiddy accepts the Jamsie Kelleher Cup";
slideshowdesarr[1] = "Captain Ollie Smiddy accepts the Jamsie Kelleher Cup";
slideshowimgarr[2] = new Image();
slideshowimgarr[2].c = 0;
slideshowimgarr[2].onload = slideshowsecondcomplate;
slideshowimgarr[2].src = slideshowfoldername + '../images/slideshow/slideshow3.JPG';
slideshowimgstr[2] = slideshowfoldername + '../images/slideshow/slideshow3.JPG';
slideshowthumbimgstr[2] = slideshowfoldername + '../images/slideshow/slideshow3.JPG';
slideshowlinkstr[2] = '<a href="../images/slideshow/slideshow3.jpg" target="_new" style="text-decoration: none;">';
slideshowclslinkstr[2] = '</a>';
slideshowtitarr[2] = "The teams parade before the big match.";
slideshowdesarr[2] = "The teams parade before the big match.";
slideshowimgarr[3] = new Image();
slideshowimgarr[3].c = 0;
slideshowimgarr[3].onload = slideshowsecondcomplate;
slideshowimgarr[3].src = slideshowfoldername + '../images/slideshow/slideshow4.JPG';
slideshowimgstr[3] = slideshowfoldername + '../images/slideshow/slideshow4.JPG';
slideshowthumbimgstr[3] = slideshowfoldername + '../images/slideshow/slideshow4.JPG';
slideshowlinkstr[3] = '<a href="../images/slideshow/slideshow4.jpg" target="_new" style="text-decoration: none;">';
slideshowclslinkstr[3] = '</a>';
slideshowtitarr[3] = "Let the celebrations begin!";
slideshowdesarr[3] = "Let the celebrations begin!";
if((IEB == true) && (scompat == "BackCompat" )) {
   slideshowcwidth = 400;
   slideshowcheight = 220;
   }
else {
   slideshowcwidth = 400 - 2 * (1);
   slideshowcheight = 220 - 2 * (1);
   }
var slideshowicwidth = 400 - 2 * (1);
var slideshowicheight = 220 - 2 * (1);
slideshowDescCalcWidth = 260;
slideshowDescCalcHeight = 80;
if((IEB == true) && (scompat == "BackCompat" )) {
   slideshowDescCalcIcWidth = slideshowDescCalcWidth;
   slideshowDescCalcIcHeight = slideshowDescCalcHeight;
   }
else {
   slideshowDescCalcIcWidth = slideshowDescCalcWidth - 2 * (2) - 2 * (3);
   slideshowDescCalcIcHeight = slideshowDescCalcHeight - 2 * (2) - 2 * (3);
   }
document.write('<div style="position:relative;width:' + slideshowcwidth + 'px;height:' + slideshowcheight + 'px;overflow:hidden;border-style:' + 'solid' + ';border-width:' + 1 + 'px;border-color:#' + 'CCCCCC' + ';' + '' + '' + '">');
document.write('<div id="slideshowdv" style="position:relative;width:' + slideshowicwidth + 'px;height:' + slideshowicheight + 'px;overflow:hidden;padding:0px;margin:0px;z-index:1;' + 'FILTER: progid:DXImageTransform.Microsoft.Fade(Overlap=1.00,duration=1,enabled=false);' + '"' + ' onfilterchange=slideshowFadeBitti()' + '></div>');
for(i = 0; i < 4; i++) {
   if(0 == 0) {
      slideshowds = slideshowds + slideshowlinkstr[i];
      if(slideshowlinkstr[i].length > 2) {
         CursorStr = "pointer";
         }
      else {
         CursorStr = "default";
         }
      }
   slideshowds = slideshowds + '<div id="slideshowdesc' + i + '" style="position:absolute;top:' + 120 + 'px;left:' + 10 + 'px;width:' + slideshowDescCalcWidth + 'px;height:' + slideshowDescCalcHeight + 'px;visibility:hidden;overflow:hidden;cursor:' + CursorStr + ';z-index:20;">';
   slideshowds = slideshowds + '<div style="position:absolute;left:0px;top:0px;width:' + slideshowDescCalcWidth + 'px;height:' + slideshowDescCalcHeight + 'px;border-style:solid;border-width:0px;border-color:#000000;background-color:#' + '000000' + ';opacity: ' + '0.50' + ';filter:alpha(opacity=' + '50' + ');-moz-opacity:' + '0.50' + ';"></div>';
   slideshowds = slideshowds + '<div style="position:relative;left:0px;top:0px;width:' + slideshowDescCalcIcWidth + 'px;height:' + slideshowDescCalcIcHeight + 'px;overflow:hidden;padding:' + 3 + 'px;text-align:' + 'left' + ';border-style:' + 'solid' + ';border-width:' + 2 + 'px;border-color:#' + '990000' + ';color:#' + 'FFFFFF' + ';font-family:' + 'arial' + ';font-style:' + 'normal' + ';font-size: ' + '13px' + ';font-weight:' + 'normal' + ';text-decoration:' + 'none' + ';opacity: 1.0;filter:alpha(opacity=100);-moz-opacity:1.0;">';
   slideshowds = slideshowds + '<span style="color:#' + 'FECE3F' + ';font-family:' + 'arial' + ';font-style:' + 'normal' + ';font-size: ' + '14px' + ';font-weight:' + 'bold' + ';text-decoration:' + 'none' + ';">' + slideshowtitarr[i] + '</span><br />' + slideshowdesarr[i];
   slideshowds = slideshowds + '</div>';
   slideshowds = slideshowds + '</div>';
   if(0 == 0) {
      slideshowds = slideshowds + slideshowclslinkstr[i];
      }
   }
document.write('' + slideshowds);
function slideshowShowCurrentDesc() {
   if((slideshowdescgoster == 1) && ( (slideshowtitarr[slideshowrealcurrent].length > 0) || (slideshowdesarr[slideshowrealcurrent].length > 0) )) {
      after_des = document.getElementById('slideshowdesc' + slideshowrealcurrent);
      after_des.style.visibility = "visible";
      }
   }
function slideshowHideCurrentDesc() {
   before_des = document.getElementById('slideshowdesc' + slideshowvcurr);
   before_des.style.visibility = "hidden";
   }
function slideshowHighlightCurrTumb() {
   if((0 == 1) && (0 == 0)) {
      slideshowbeforethumb = document.getElementById('slideshowthumb' + slideshowvcurr);
      slideshowafterthumb = document.getElementById('slideshowthumb' + slideshowrealcurrent);
      slideshowbeforethumb.style.borderColor = '999999';
      slideshowafterthumb.style.borderColor = '990000';
      }
   }
document.write('</div>');
function slideshowzindx() {
   slideshowobjn.style.visibility = "visible";
   slideshowobjc.style.zIndex = 2;
   slideshowobjn.style.zIndex = 3;
   }
function slideshowThumbOut(tobj, nm) {
   if((slideshowvcurr == nm) && (0 == 0)) {
      }
   else {
      tobj.style.borderColor = '999999';
      }
   }
function slideshowThumbOver(tobj, nm) {
   tobj.style.borderColor = '990000';
   }
function slideshowSonrakiClick(c, n) {
   slideshowvcurr = c;
   slideshowvnext = n;
   slideshowobjc = document.getElementById('slideshowd' + slideshowvcurr);
   slideshowobjn = document.getElementById('slideshowd' + slideshowvnext);
   if(slideshowfademi != 1) {
      slideshowobjc.style.visibility = "visible";
      slideshowobjn.style.visibility = "visible";
      }
   }
function slideshowSonraki() {
   slideshowvcurr = slideshowvnext;
   slideshowvnext = slideshowvnext + 1;
   if(slideshowvnext >= 4) {
      slideshowvnext = 0;
      slideshowtam = 1;
      }
   slideshowobjc = document.getElementById('slideshowd' + slideshowvcurr);
   slideshowobjn = document.getElementById('slideshowd' + slideshowvnext);
   }
function slideshowsecondcomplate() {
   this.c = 1;
   }
function slideshowdevam(fm, pt) {
   if((slideshowimgarr[slideshowvnext].c == 1) && (slideshowimgarr[slideshowvcurr].c == 1)) {
      slideshowtimeo = setTimeout(fm + '()', pt);
      }
   else {
      setTimeout('slideshowdevam("' + fm + '")', 500);
      }
   var slideshowcagain = 1;
   for(i = 0; i < 4; i++) {
      if(slideshowimgarr[i].c == 1) {
         }
      else {
         slideshowcagain = 0;
         }
      }
   if(slideshowcagain == 1) {
      slideshowtam = 1;
      }
   }
function ThumbClick(clicked_img, tobj) {
   if(slideshowjbtype == 1) {
      return;
      }
   clearTimeout(slideshowtimeo);
   slideshowSonrakiClick(slideshowrealcurrent, clicked_img);
   if(slideshowfademi == 1) {
      if(IEB == true) {
         if(slideshowtam == 0) {
            slideshowdevam("slideshowdotrans", 5000);
            }
         else {
            slideshowdotrans();
            }
         }
      else {
         if(slideshowtam == 0) {
            slideshowdevam("slideshowbeftrans", 5000);
            }
         else {
            slideshowbeftrans();
            }
         }
      }
   else if(slideshowfademi == 2) {
      if(slideshowtam == 0) {
         slideshowdevam("slideshowDoSlide", 5000);
         }
      else {
         slideshowDoSlide();
         }
      }
   else if(slideshowfademi == 3) {
      if(slideshowtam == 0) {
         slideshowdevam("slideshowDoScrollUp", 5000);
         }
      else {
         slideshowDoScrollUp();
         }
      }
   else if(slideshowfademi == 4) {
      if(slideshowtam == 0) {
         slideshowdevam("slideshowDoBlindX", 5000);
         }
      else {
         slideshowDoBlindX();
         }
      }
   else if(slideshowfademi == 5) {
      if(slideshowtam == 0) {
         slideshowdevam("slideshowDoBlindY", 5000);
         }
      else {
         slideshowDoBlindY();
         }
      }
   }
function slideshowsl() {
   slideshowfademi = 1;
   slideshowvcurr = 0;
   slideshowvnext = 0;
   slideshowvssdiv = null;
   stepc = 20 * (1);
   slideshowdif = 0.00;
   slideshowop = 1.00;
   slideshowdif = (1.00 / stepc);
   dstr1 = '<div id="';
   dstr2 = '" style="position:absolute;visibility:hidden;' + 'left:0px;top:0px;' + 'padding:0px;margin:0px;overflow:hidden;">';
   dstr23 = '<table cellspacing="0" cellpadding="0" style="position:relative;left:0px;top:0px;padding:0px;margin:0px;"><tr><td style="width:' + slideshowicwidth + 'px;height:' + slideshowicheight + 'px;left:0px;top:0px;padding:0px;margin:0px;text-align:' + 'center' + ';vertical-align:' + 'middle' + ';">';
   dstr3 = '<img id="slideshowimg';
   dstr4 = '" src="';
   dstr5 = '" border="0" style="position:relative;border-style:' + 'solid' + ';border-width:' + '0' + 'px;border-color:' + '#CCCCCC' + ';' + "" + '" alt=""></img>';
   dstr56 = '</td></tr></table>';
   dstr6 = '</div>';
   this.slideshowdotrans = slideshowdotrans;
   this.slideshowinitte = slideshowinitte;
   this.slideshowinitte2 = slideshowinitte2;
   this.slideshowbeftrans = slideshowbeftrans;
   this.slideshowdotransff = slideshowdotransff;
   }
function slideshowFadeBitti() {
   slideshowjbtype = 0;
   slideshowShowCurrentDesc();
   }
function slideshowdotrans() {
   slideshowjbtype = 1;
   slideshowHideCurrentDesc();
   if(IEB == true) {
      slideshowvssdiv.filters[0].apply();
      }
   slideshowobjc.style.visibility = "hidden";
   slideshowobjn.style.visibility = "visible";
   if(IEB == true) {
      slideshowvssdiv.filters[0].play();
      }
   slideshowrealcurrent = slideshowvnext;
   slideshowHighlightCurrTumb();
   slideshowSonraki();
   if(slideshowtam == 0) {
      slideshowdevam("slideshowdotrans", ((1000 * 1) + 5000));
      }
   else {
      slideshowtimeo = setTimeout('slideshowdotrans()', ((1000 * 1) + 5000));
      }
   }
function slideshowdotransff() {
   slideshowop = slideshowop - slideshowdif;
   if(slideshowop < (0.00)) {
      slideshowop = 0.00;
      }
   slideshowobjc.style.opacity = slideshowop;
   slideshowobjn.style.opacity = 1.00 - slideshowop;
   if(slideshowop > (0.00)) {
      setTimeout('slideshowdotransff()', 50);
      }
   else {
      slideshowobjc.style.zIndex = 2;
      slideshowobjn.style.zIndex = 3;
      slideshowrealcurrent = slideshowvnext;
      slideshowShowCurrentDesc();
      slideshowHighlightCurrTumb();
      slideshowSonraki();
      if(slideshowtam == 0) {
         slideshowdevam("slideshowbeftrans", 5000);
         }
      else {
         slideshowtimeo = setTimeout('slideshowbeftrans()', 5000);
         }
      slideshowjbtype = 0;
      }
   }
function slideshowbeftrans() {
   slideshowjbtype = 1;
   slideshowHideCurrentDesc();
   slideshowop = 1.00;
   slideshowobjc.style.visibility = "visible";
   slideshowobjn.style.visibility = "visible";
   slideshowobjc.style.zIndex = 3;
   slideshowobjn.style.zIndex = 2;
   slideshowobjc.style.opacity = 1.00;
   slideshowobjn.style.opacity = 1.00;
   slideshowdotransff();
   }
function slideshowDoSlide() {
   slideshowjbtype = 1;
   slideshowHideCurrentDesc();
   slideshowkalan = slideshowkalan - Math.ceil(slideshowkalan / 1);
   slideshowobjc.style.left = "" + (slideshowkalan - slideshowicwidth) + "px";
   slideshowobjn.style.left = "" + slideshowkalan + "px";
   if(slideshowkalan <= 0) {
      slideshowrealcurrent = slideshowvnext;
      slideshowShowCurrentDesc();
      slideshowHighlightCurrTumb();
      slideshowSonraki();
      slideshowkalan = slideshowicwidth;
      slideshowobjn.style.left = "" + slideshowkalan + "px";
      slideshowzindx();
      slideshowjbtype = 0;
      if(slideshowtam == 0) {
         slideshowdevam("slideshowDoSlide", 5000);
         }
      else {
         slideshowtimeo = setTimeout('slideshowDoSlide()', 5000);
         }
      }
   else {
      setTimeout('slideshowDoSlide()', 50);
      }
   }
function slideshowDoScrollUp() {
   slideshowjbtype = 1;
   slideshowHideCurrentDesc();
   slideshowkalan = slideshowkalan - Math.ceil(slideshowkalan / 1);
   slideshowobjc.style.top = "" + (slideshowkalan - slideshowicheight) + "px";
   slideshowobjn.style.top = "" + slideshowkalan + "px";
   if(slideshowkalan <= 0) {
      slideshowrealcurrent = slideshowvnext;
      slideshowShowCurrentDesc();
      slideshowHighlightCurrTumb();
      slideshowSonraki();
      slideshowkalan = slideshowicheight;
      slideshowobjn.style.top = "" + slideshowkalan + "px";
      slideshowzindx();
      slideshowjbtype = 0;
      if(slideshowtam == 0) {
         slideshowdevam('slideshowDoScrollUp', 5000);
         }
      else {
         slideshowtimeo = setTimeout('slideshowDoScrollUp()', 5000);
         }
      }
   else {
      setTimeout('slideshowDoScrollUp()', 50);
      }
   }
function slideshowDoBlindX() {
   slideshowjbtype = 1;
   slideshowHideCurrentDesc();
   slideshowkalan = slideshowkalan - Math.ceil(slideshowkalan / 1);
   slideshowobjc.style.left = "" + (slideshowicwidth - slideshowkalan) + "px";
   slideshowobjn.style.left = "" + slideshowkalan + "px";
   if(slideshowkalan <= 0) {
      slideshowrealcurrent = slideshowvnext;
      slideshowShowCurrentDesc();
      slideshowHighlightCurrTumb();
      slideshowSonraki();
      slideshowkalan = slideshowicwidth;
      slideshowobjn.style.left = "" + slideshowkalan + "px";
      slideshowzindx();
      slideshowjbtype = 0;
      if(slideshowtam == 0) {
         slideshowdevam("slideshowDoBlindX", 5000);
         }
      else {
         slideshowtimeo = setTimeout('slideshowDoBlindX()', 5000);
         }
      }
   else {
      setTimeout('slideshowDoBlindX()', 50);
      }
   }
function slideshowDoBlindY() {
   slideshowjbtype = 1;
   slideshowHideCurrentDesc();
   slideshowkalan = slideshowkalan - Math.ceil(slideshowkalan / 1);
   slideshowobjc.style.top = "" + (slideshowicheight - slideshowkalan) + "px";
   slideshowobjn.style.top = "" + slideshowkalan + "px";
   if(slideshowkalan <= 0) {
      slideshowrealcurrent = slideshowvnext;
      slideshowShowCurrentDesc();
      slideshowHighlightCurrTumb();
      slideshowSonraki();
      slideshowkalan = slideshowicheight;
      slideshowobjn.style.top = "" + slideshowkalan + "px";
      slideshowzindx();
      slideshowjbtype = 0;
      if(slideshowtam == 0) {
         slideshowdevam("slideshowDoBlindY", 5000);
         }
      else {
         slideshowtimeo = setTimeout('slideshowDoBlindY()', 5000);
         }
      }
   else {
      setTimeout('slideshowDoBlindY()', 50);
      }
   }
function slideshowinitte2() {
   slideshowthumbs_obj = document.getElementById('slideshowthumbsid');
   slideshowmoving_obj = document.getElementById('slideshowmovingdiv');
   slideshowvssdiv = document.getElementById("slideshowdv");
   if(4 > 0) {
      slideshowobjc = document.getElementById('slideshowd' + 0);
      slideshowobjc.style.visibility = "visible";
      }
   if(4 > 1) {
      slideshowvcurr = 0;
      slideshowvnext = 0;
      slideshowrealcurrent = 0;
      if(slideshowfademi == 0) {
         slideshowvcurr = 0;
         slideshowvnext = 1;
         slideshowrealcurrent = 0;
         setTimeout('slideshowdotrans()', 5000);
         }
      else if(slideshowfademi == 1) {
         if(IEB == true) {
            slideshowSonraki();
            slideshowShowCurrentDesc();
            slideshowHighlightCurrTumb();
            slideshowdevam("slideshowdotrans", 5000);
            }
         else {
            slideshowSonraki();
            slideshowShowCurrentDesc();
            slideshowHighlightCurrTumb();
            slideshowdevam("slideshowbeftrans", 5000);
            }
         }
      else if(slideshowfademi == 2) {
         slideshowkalan = slideshowicwidth;
         slideshowSonraki();
         slideshowrealcurrent = 0;
         slideshowShowCurrentDesc();
         slideshowHighlightCurrTumb();
         slideshowobjn.style.left = "" + slideshowkalan + "px";
         slideshowzindx();
         slideshowdevam("slideshowDoSlide", 5000);
         }
      else if(slideshowfademi == 3) {
         slideshowkalan = slideshowicheight;
         slideshowSonraki();
         slideshowrealcurrent = 0;
         slideshowShowCurrentDesc();
         slideshowHighlightCurrTumb();
         slideshowobjn.style.top = "" + slideshowkalan + "px";
         slideshowzindx();
         slideshowdevam("slideshowDoScrollUp", 5000);
         }
      else if(slideshowfademi == 4) {
         slideshowkalan = slideshowicwidth;
         slideshowSonraki();
         slideshowrealcurrent = 0;
         slideshowShowCurrentDesc();
         slideshowHighlightCurrTumb();
         slideshowobjn.style.left = "" + slideshowkalan + "px";
         slideshowzindx();
         slideshowdevam("slideshowDoBlindX", 5000);
         }
      else if(slideshowfademi == 5) {
         slideshowkalan = slideshowicheight;
         slideshowSonraki();
         slideshowrealcurrent = 0;
         slideshowShowCurrentDesc();
         slideshowHighlightCurrTumb();
         slideshowobjn.style.top = "" + slideshowkalan + "px";
         slideshowzindx();
         slideshowdevam("slideshowDoBlindY", 5000);
         }
      }
   }
function slideshowinitte() {
   i = 0;
   innertxt = "";
   for(i = 0; i < 4; i++) {
      innertxt = innertxt + dstr1 + "slideshowd" + i + dstr2 + dstr23 + slideshowlinkstr[i] + dstr3 + i + dstr4 + slideshowimgstr[i] + dstr5 + slideshowclslinkstr[i] + dstr56 + dstr6;
      }
   spage = document.getElementById('slideshowdv');
   spage.innerHTML = "" + innertxt;
   setTimeout('slideshowinitte2()', 100);
   }
function slideshowBas() {
   slideshows = new slideshowsl();
   slideshows.slideshowinitte();
   }
setTimeout('slideshowBas()', 100);
