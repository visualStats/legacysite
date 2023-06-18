var theUserAgent = navigator.userAgent;
var isMinNS4 = (navigator.appName.indexOf("Netscape") >= 0 &&
                parseFloat(navigator.appVersion) >= 4) ? 1 : 0;
var isMinIE4 = (document.all) ? 1 : 0;
var isMac = (theUserAgent.indexOf("Mac") >= 0) ? 1 : 0;
var isIE5 = ((theUserAgent.indexOf("5.0") >= 0)&&(theUserAgent.indexOf("MSIE") >= 0)) ? 1 : 0;


var visibleFlag="visible";
var hiddenFlag="hidden";
var loaded=false;

if (isMinNS4){
	visibleFlag="show";
	hiddenFlag="hide";
}

var hiliteColor="#FFFFFF";
var selectedColor="#CC9999";
var noHilite="#CCCCCC";
var whichWay,calTimeout;
		
var daysInMonth = new Array();
daysInMonth[0]=daysInMonth[2]=daysInMonth[4]=daysInMonth[6]=daysInMonth[7]=daysInMonth[9]=daysInMonth[11]=31;
daysInMonth[3]=daysInMonth[5]=daysInMonth[8]=daysInMonth[10]=30;
daysInMonth[1]=31;
var monthName = new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
var daysOfWeek = new Array("S","M","T","W","T","F","S");
		
var currDate = new Date();
var currentMonth=currDate.getMonth();
var validDay=currDate.getDate();
var currentDay=(validDay+0);
		
var departDay=arriveDay=selectedDay=currentDay;
var departMonth=arriveMonth=selectedMonth=currentMonth;
var departYear=arriveYear=selectedYear=currentYear=currDate.getFullYear();
		
function writeCal (){
	var i;
	var firstOfMonth=new Date(selectedYear,selectedMonth,1);
	var theString='<TABLE BORDER="0" CELLPADDING="2" CELLSPACING="0" WIDTH="190" CLASS="CalOutline" BGCOLOR="#CCCCCC"><TR class="cal"><TD class="cal" ><TABLE BORDER="0" CELLPADDING="0" CELLSPACING="2" WIDTH="100%"><TR class="cal"><TD class="cal"  WIDTH="25%">';
	theString+='<A HREF="javascript:previousMonth();"><font size=-1 color=black>&lt;&lt;</font><IMG SRC="cal_images/cal_left.gif" WIDTH=18 HEIGHT=18 BORDER=0 VALIGN="middle" ALT="Previous Month"></A>';
	theString+='</TD><TD class="cal"  BGCOLOR="#996666" ALIGN="center" VALIGN="middle" WIDTH="50%" CLASS="CalTDOutline"><SPAN STYLE="font-size:11px;font-family:Verdana;font-weight:bold;color:#FFFFFF;">'+monthName[selectedMonth]+' '+selectedYear+'</SPAN></TD><TD class="cal"  WIDTH="25%" ALIGN="right">';
	theString+='<A HREF="javascript:nextMonth();"><IMG SRC="cal_images/cal_right.gif" WIDTH=18 HEIGHT=18 BORDER=0 VALIGN="middle" ALT="Next Month"><font size=-1 color=black>&gt;&gt;</font></A>';
	theString+='</TD></TR></TABLE>';
	if (selectedMonth==1){isLeapYear(selectedYear);}
	theString+='<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="190"><tr align=center>';
	for (i=0;i<daysOfWeek.length;i++){
		theString+='<TD class="cal"  WIDTH="13%">';
		theString+=(isMinNS4)?'<SPAN STYLE="font-family:Verdana;font-size:8pt;">'+daysOfWeek[i]+'</SPAN>':daysOfWeek[i];
		theString+='</TD>';}
	theString+='</TR><TR class="cal"><TD class="cal"  COLSPAN="7"><HR COLOR="#000000" STYLE="height:1px;"></TD></TR><tr align=center>';
	var theDay=1;
	var realDay=firstOfMonth.getDay();
	for (i=1;i<=realDay;i++){
		theString+=(isMinNS4)?'<TD class="cal" ><SPAN STYLE="font-family:Verdana;font-size:8pt;">&nbsp;</SPAN></td>':'<TD class="cal" ></td>';
		theDay++;}
	for (i=1;i<=daysInMonth[selectedMonth];i++)

{
		theString += '<TD class="cal"  style="cursor:Hand"';


		if (1==2){
			//first 2 lines are if you DONT want the date to be clickable
			if (i==validDay){
			theString+=(isMinNS4)?'><SPAN STYLE="font-family:Verdana;font-size:8pt;color:#8F8F8F;background:'+selectedColor+'">'+i+'</SPAN></TD>':'style="color:#8F8F8F;background:'+selectedColor+'">'+i+'</TD>';}
			else{
			theString+=(isMinNS4)?'><SPAN STYLE="font-family:Verdana;font-size:8pt;color:#8F8F8F">'+i+'</SPAN></TD>':'style="color:#8F8F8F">'+i+'</TD>';
		}}

else{
			theString+=((i==selectedDay)&&(((departMonth==selectedMonth)&&(whichWay=="depart"))||(arriveMonth==selectedMonth)&&(whichWay=="arrive")))?'style="background:'+selectedColor+'" ':'onmouseover="this.style.background=hiliteColor" onmouseout="this.style.background=noHilite" ';
			theString+=(isMinNS4)?'><A href="javascript:setmatchform('+i+',selectedMonth,selectedYear);hideCal();releaseEvents(Event.CLICK);" STYLE="font-family:Verdana;font-size:8pt;text-decoration:none;">'+i+'</A></TD>':'onmousedown="this.style.background=selectedColor" onclick="setmatchform(this.innerText,selectedMonth,selectedYear);hideCal();">'+i+'</TD>';}
		if (theDay==7){theDay=0;theString+='</tr><tr align=center>';}
		theDay++;}



	theDay--;
	if ((0<theDay)&&(theDay<7)){
		theDay=7-theDay;
		theString+='<TD class="cal"  STYLE="font-family:Verdana;font-size:8pt;" COLSPAN="'+theDay+'"><SPAN STYLE="font-family:Verdana;font-size:8pt;">&nbsp;</SPAN></TD>';}
	theString+='</tr></table></TD></TR></TABLE>';
	if (isMinIE4){document.all['calendarLayer'].innerHTML=theString;
	}else if (isMinNS4){
		with (document.calendarLayer.document){
			write(theString);
			close();}}}
function previousMonth (){
	if (selectedMonth==0){
		selectedYear--;
		selectedMonth=11;
	}else{selectedMonth--;}
	writeCal();}
function nextMonth (){
	if (selectedMonth==11){
		selectedYear++;
		selectedMonth=0;
	}else{selectedMonth++;}
	writeCal();}
function isLeapYear (theYear) {
if (((theYear % 4)==0) && ((theYear % 100)!=0) || ((theYear % 400)==0)){daysInMonth[1]=29;
	}else{daysInMonth[1]=28;} }
function isLeapYearERRORIfYouUse (theYear) {
	if (((theYear % 4)==0) && ((theYear % 100)!=0) || ((theYear % 400)==0)){daysInMonth[1]=29;
	}else{daysInMonth[1]=28;}}
		
function setmatchform (theDay,theMonth,theYear){
	selectedDay=theDay;
	selectedMonth=theMonth;
	selectedYear=theYear;
	if (whichWay=="depart"){
		departDay=theDay;
		departMonth=theMonth;
		departYear=theYear;
		if (isMinIE4){
			if ((theDay<10) && (theMonth<9)){
			with (document.forms.matchform){
				Departure_Date.value=+ "0" + theDay + "/0" + ++theMonth + "/" + theYear;}}
			else if (theDay<10){
			with (document.forms.matchform){
				Departure_Date.value=+ "0" + theDay + "/" + ++theMonth + "/" + theYear;}}
			else if (theMonth<9){
			with (document.forms.matchform){
				Departure_Date.value=+ theDay + "/0" + ++theMonth + "/" + theYear;}}
			else{
			with (document.forms.matchform){
				Departure_Date.value=+ theDay + "/" + ++theMonth + "/" + theYear;}}
		}else if (isMinNS4){
			if ((theDay<10) && (theMonth<9)){
			with (document.forms.matchform.elements){
				Departure_Date.value="0" + theDay + "/0" + ++theMonth + "/" + theYear;}}
			else if (theDay<10){
			with (document.forms.matchform.elements){
				Departure_Date.value="0" + theDay + "/" + ++theMonth + "/" + theYear;}}
			else if (theMonth<9){
			with (document.forms.matchform.elements){
				Departure_Date.value=+ theDay + "/0" + ++theMonth + "/" + theYear;}}
			else{
			with (document.forms.matchform.elements){
				Departure_Date.value=+ theDay + "/" + ++theMonth + "/" + theYear;}}}
	}else if (whichWay=="arrive"){
		arriveDay=theDay;
		arriveMonth=theMonth;
		arriveYear=theYear;
		if (isMinIE4){
			if ((theDay<10) && (theMonth<9)){
			with (document.forms.matchform){
				Match_Date.value=+ "0" + theDay + "/0" + ++theMonth + "/" + theYear;}}
			else if (theDay<10){
			with (document.forms.matchform){
				Match_Date.value=+ "0" + theDay + "/" + ++theMonth + "/" + theYear;}}
			else if (theMonth<9){
			with (document.forms.matchform){
				Match_Date.value=+ theDay + "/0" + ++theMonth + "/" + theYear;}}
			else{
			with (document.forms.matchform){
				Match_Date.value=+ theDay + "/" + ++theMonth + "/" + theYear;}}
		}else if (isMinNS4){
			if ((theDay<10) && (theMonth<9)){
			with (document.forms.matchform.elements){
				Match_Date.value="0" + theDay + "/0" + ++theMonth + "/" + theYear;}}
			else if (theDay<10){
			with (document.forms.matchform.elements){
				Match_Date.value="0" + theDay + "/" + ++theMonth + "/" + theYear;}}
			else if (theMonth<9){
			with (document.forms.matchform.elements){
				Match_Date.value=+ theDay + "/0" + ++theMonth + "/" + theYear;}}
			else{
			with (document.forms.matchform.elements){
				Match_Date.value=+ theDay + "/" + ++theMonth + "/" + theYear;}}}
	}else{
		whichWay="depart";
		setmatchform(selectedDay,selectedMonth,selectedYear);
		whichWay="arrive";
		setmatchform(selectedDay,selectedMonth,selectedYear);}
	selectDates(theMonth,theYear,whichWay);}



function showCal(theWay,e){
	var theLayer,xloc,yloc;
	var popOffset=1;
	if (isMinIE4){
		xloc = event.clientX+document.body.scrollLeft;
		yloc = event.clientY+document.body.scrollTop;
		theLayer=document.all.calendarLayer.style;
	}else if (isMinNS4){
		yloc=e.pageY;
		xloc=e.pageX;
		theLayer=document.layers.calendarLayer;}
	if (theLayer.visibility==visibleFlag) {theLayer.visibility=hiddenFlag; }
	whichWay=theWay;
	if (whichWay=="depart"){
		selectedDay=departDay;
		selectedMonth=departMonth;
		selectedYear=departYear;
	}else if (whichWay=="arrive"){
		selectedDay=arriveDay;
		selectedMonth=arriveMonth;
		selectedYear=arriveYear;
	}else{alert('there has been an error in write cal');}
	theLayer.top=yloc-popOffset;
	theLayer.left=xloc-popOffset;
	writeCal();
	theLayer.visibility=visibleFlag;
	if (isMinNS4) {
		captureEvents(Event.CLICK);
		onclick=nsClickHandler;}}
function nsClickHandler (e){
	var theLayer = document.layers.calendarLayer;
    if ( !((e.pageX > theLayer.left+theLayer.clip.left) && (e.pageX < ((theLayer.left+theLayer.clip.left) + theLayer.clip.width)) && (e.pageY > theLayer.top+theLayer.clip.top) && (e.pageY < ((theLayer.top+theLayer.clip.top)+ theLayer.clip.height))) ) {
		releaseEvents(Event.CLICK);
		hideCal();}}
function hideCal(){
	if (isMinIE4) {setTimeout('document.all.calendarLayer.style.visibility=hiddenFlag',10);}else if (isMinNS4){setTimeout('document.layers.calendarLayer.visibility=hiddenFlag',10);}}
function selectMonth (theObject,theWay){
	var theSelection=theObject.selectedIndex;
	if (theWay=="depart"){
		departMonth=theSelection;
		departYear=selectYear(theSelection,departYear);
		selectDates(departMonth,departYear,theWay);
	}else if(theWay=="arrive"){
		arriveMonth=theSelection;
		arriveYear=selectYear(theSelection,arriveYear);
		selectDates(arriveMonth,arriveYear,theWay);}}
function selectYear (theMonth,theYear){
	if ((theMonth<currentMonth)&&(theYear==currentYear)){return(++theYear);
	}else if ((theMonth>=currentMonth)&&(theYear>currentYear)){return(--theYear);
	}else{return theYear;}}


function selectDates (theMonth,theYear,theWay){
	var theObject;
	if (theMonth==1){isLeapYear(theYear);}
	if (isMinIE4){theObject=document.forms.matchform;
	}else if (isMinNS4){theObject=document.layers.bookContent.document.forms.matchform.elements;}
	theObject=(theWay=='depart')?theObject.Match_Date:theObject.Departure_Date;
	//fixDateFields(theObject,daysInMonth[theMonth]);   
	// COMMENTED OUT BY ER
} 


function setSchedulesForm (theDay,theMonth,theYear){
	if (isMinIE4){
		with (document.forms.schedulesForm){
			DayFrom.selectedIndex=--theDay;
			MonthFrom.selectedIndex=theMonth;}
	}else if (isMinNS4){
		with (document.layers.schedulesContent.document.forms.schedulesForm.elements){
			DayFrom.selectedIndex=--theDay;
			MonthFrom.selectedIndex=theMonth;}}}
function fixSchedulesDates (){
	var theObject;
	if (isMinIE4) {theObject = document.forms.schedulesForm;
	}else if (isMinNS4){theObject=document.layers.schedulesContent.document.forms.schedulesForm.elements;}
	with (theObject){
		if (MonthFrom.selectedIndex==1) {isLeapYear(YearFrom[YearFrom.selectedIndex].value);}
		fixDateFields(DayFrom,daysInMonth[MonthFrom.selectedIndex]);}}

function fixDateFields (theField,newDays){
	if (theField.length>newDays){
		var oldSelection=theField.selectedIndex;
		for (i=theField.length;newDays<i;i--){
			theField.options[i-1]=null;}
		if (oldSelection>theField.length-1){
			theField.selectedIndex=theField.length-1;}
	}else if (theField.length<newDays){
		for (i=theField.length;i<newDays;i++){
			theField.options[i]=new Option(i+1, null);}}}


function myKeyHandler(){if (event.srcElement=="javascript:cal()") event.returnValue=false;}
function cal(){}
