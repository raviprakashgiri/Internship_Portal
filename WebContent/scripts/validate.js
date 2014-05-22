function verify(form) {
	/*if(document.form.MeetingDate.value.length==10){
		document.form.MeetingDate.value="0"+document.form.MeetingDate.value;
	}	
	var a = document.form.MeetingDate.value.toUpperCase().split("-");
	a[1] = (("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(a[1]) / 3 + 101) + "").substr(1);
	var today = new Date();
	var thisDay = today.toLocaleFormat('%d-%b-%Y');
	var b = thisDay.toUpperCase().split("-");
	b[1] = (("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(b[1]) / 3 + 101) + "").substr(1);
	var c = Date.parse(a[2] + "-" + a[1] + "-" + a[0]);
	var d = Date.parse(b[2] + "-" + b[1] + "-" + b[0]);
	if(c>d){
		alert("Sorry.. You Cannot create Minutes Of Meeting to future dates");
		return false;
	}*/
	var SSTam = '', ASTam = '', SETam = '', AETam = ''; var SSThours=''; var ASThours = ''; var SEThours = ''; var AEThours = ''; var SSTminutes=''; var ASTminutes = ''; var SETminutes = ''; var AETminutes = '';
	for(var i=0; i<document.form.SSTam.length; i++){ 
		if(document.form.SSTam[i].checked){
			SSTam = document.form.SSTam[i].value; 
		}		
	}
	for(var i=0; i<document.form.ASTam.length; i++){ 
		if(document.form.ASTam[i].checked){
			ASTam = document.form.ASTam[i].value; 
		}
	}
	for(var i=0; i<document.form.SETam.length; i++){ 
		if(document.form.SETam[i].checked){
			SETam = document.form.SETam[i].value; 
		}		
	}
	for(var i=0; i<document.form.AETam.length; i++){ 
		if(document.form.AETam[i].checked){
			AETam = document.form.AETam[i].value; 
		}
	}
			SSThours = document.form.SSThours.value;
			ASThours = document.form.ASThours.value;
			SEThours = document.form.SEThours.value;
			AEThours = document.form.AEThours.value;
		
			SSTminutes=document.form.SSTminutes.value;
			ASTminutes=document.form.ASTminutes.value;
			SETminutes=document.form.SETminutes.value;
			AETminutes=document.form.AETminutes.value;
			
	var MeetingSchStartTime = SSThours+SSTminutes+SSTam;
	var MeetingActStartTime = ASThours+ASTminutes+ASTam;
	var MeetingSchEndTime = SEThours+SETminutes+SETam;
	var MeetingActEndTime = AEThours+AETminutes+AETam;
	
	var SST = SSThours+":"+SSTminutes+":00 "+SSTam;
	var AST = ASThours+":"+ASTminutes+":00 "+ASTam;
	var SET = SEThours+":"+SETminutes+":00 "+SETam;
	var AET = AEThours+":"+AETminutes+":00 "+AETam;
	var message = "";
	var cnt = 1;
	var dtStart = new Date("1/1/2007 " + SST);
	var dtEnd = new Date("1/1/2007 " + SET);
	var dtStart1 = new Date("1/1/2007 " + AST);
	 var dtEnd1 = new Date("1/1/2007 " + AET);
	   difference_in_milliseconds = dtEnd - dtStart;
	   if (difference_in_milliseconds < 0)
	   {
	      alert("Scheduled Start Time is before Scheduled End Time!");
	      return false;
	      
	   }
	   difference_in_milliseconds = dtEnd - dtStart;
	   if(difference_in_milliseconds == 0){
		   alert("Scheduled Start Time and Scheduled End Time Are Same!");
		      return false;  
	   }
	  difference_in_milliseconds = dtEnd1 - dtStart1;

		   if (difference_in_milliseconds < 0)
		   {
		      alert("Actual Start Time is before Actual End Time!");
		      return false;
		   }
		   difference_in_milliseconds = dtEnd1 - dtStart1;
			if(difference_in_milliseconds == 0){
			   alert("Actual Start Time and Actual End Time Are Same!");
			      return false;  
		   } 
	if (document.form.MeetingType.value=="0") {
		message = message + cnt + '. ' + "Enter Meeting type\n";
		cnt++;
	}
	if (document.form.MeetingDate.value=="") {
		message = message + cnt + '. ' + "Enter Meeting Date\n";
		cnt++;
	}
	if (document.form.MeetingSubject.value=="") {
		message = message + cnt + '. ' + "Enter Meeting Subject\n";
		cnt++;
	}
	if (document.form.MeetingVenue.value=="") {
		message = message + cnt + '. ' + "Enter Venue\n";
		cnt++;
	}
	if (document.form.MeetingChairedBy.value=="") {
		message = message + cnt + '. ' + "Enter Chaired By\n";
		cnt++;
	}
	if (document.form.MeetingPreparedBy.value=="") {
		message = message + cnt + '. ' + "Enter Minutes Prepared By\n";
		cnt++;
	}
	if (MeetingSchStartTime.length!=6) {
		message = message + cnt + '. ' + "Enter Scheduled Start Time Correctly.\n";
		cnt++;
	}
	if (MeetingActStartTime.length!=6) {
		message = message + cnt + '. ' + "Enter Actual Start Time Correctly.\n";
		cnt++;
	}
	if (MeetingSchEndTime.length!=6) {
		message = message + cnt + '. ' + "Enter Scheduled End Time Correctly.\n";
		cnt++;
	}
	if (MeetingActEndTime.length!=6) {
		message = message + cnt + '. ' + "Enter Actual End Time Correctly.\n";
		cnt++;
	}
	if (document.form.InternalParticipants.value=="") {
		message = message + cnt + '. ' + "Enter Internal Participants Correctly.\n";
		cnt++;
	}
	if(message=="")
	{
		//document.form.MeetingDate.focus();
	return true;
	}	
	else{
		alert(message);
		return false;
		//document.form.MeetingDate.focus();
	}
	}

function check(form) {
	if(document.form.MinutesDueDate.value.length==10){
		document.form.MinutesDueDate.value="0"+document.form.MinutesDueDate.value;
	}
	var a = document.form.MinutesDueDate.value.toUpperCase().split("-");
	a[1] = (("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(a[1]) / 3 + 101) + "").substr(1);
	var today = new Date();
	var thisDay = today.toLocaleFormat('%d-%b-%Y');
	var b = thisDay.toUpperCase().split("-");
	b[1] = (("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(b[1]) / 3 + 101) + "").substr(1);
	var c = Date.parse(a[2] + "-" + a[1] + "-" + a[0]);
	var d = Date.parse(b[2] + "-" + b[1] + "-" + b[0]);
	if(c<d){
		alert("Sorry.. You Cannot assign DueDate To Previous dates");
		return false;
	}
	if (document.form.Minutes.value=="") {
	alert("Please enter Minutes");return false;
	}
	if (document.form.MinutesReason.value=="Select Category") {
	alert("Please enter Category");return false;
	}
	if (document.form.MinutesStatus.value=="Select Status" && document.form.MinutesReason.value=="Action") {
	alert("Please enter Status");return false;
	}
	if (document.form.MinutesReason.value=="Information" || document.form.MinutesReason.value=="Discussion") {
		if(document.form.MinutesStatus.value=="Select Status"){
		document.getElementById('Status').value='-';
		}
		}
	if(document.form.MinutesReason.value=="Action")
		{
			if(document.form.MinutesActionBy.value=="")
			{
		     alert("Please enter ActionBy");return false;
		   	}
		    if(document.form.MinutesDueDate.value=="")
		    {
		     alert("Please enter Due Date");return false;
		   	}
		}
		else{
	 return true;
	 }
	}

function disabled() {
	if(document.getElementById('MinutesActionBy').disabled == false && document.getElementById('MinutesDueDate').disabled == false){

	        if (document.form.MinutesActionBy.value=="") {
	        	alert("Please enter ActionBy");return false;
	        	}
	        	if (document.form.MinutesDueDate.value=="") {
	        	alert("Please enter Due Date");return false;
	        	}
	        	}else return true;
	}

function findselected() {
	   var selMenu = document.getElementById('MinutesReason');
	    var txtField = document.getElementById('MinutesActionBy');
	    var txtField2 = document.getElementById('MinutesDueDate');
	   if (document.getElementById('MinutesReason').value=="Action") {
	    	document.getElementById("ActionBy").style.display='block'; // Show Options
	    	document.getElementById("DueDate").style.display='block';
	    	}
	   else{
	    	document.getElementById("ActionBy").style.display='none'; // hide Options
	    	document.getElementById("DueDate").style.display='none';
	    	document.getElementById("MinutesActionBy").value = "";
	    	document.getElementById("MinutesDueDate").value = "";
	    	}
	    }

function check2(form) {
	/*if(document.form.MinutesDueDate.value.length==10){
		document.form.MinutesDueDate.value="0"+document.form.MinutesDueDate.value;
	}
	var a = document.form.MinutesDueDate.value.toUpperCase().split("-");
	a[1] = (("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(a[1]) / 3 + 101) + "").substr(1);
	var today = new Date();
	var thisDay = today.toLocaleFormat('%d-%b-%Y');
	var b = thisDay.toUpperCase().split("-");
	b[1] = (("JANFEBMARAPRMAYJUNJULAUGSEPOCTNOVDEC".indexOf(b[1]) / 3 + 101) + "").substr(1);
	var c = Date.parse(a[2] + "-" + a[1] + "-" + a[0]);
	var d = Date.parse(b[2] + "-" + b[1] + "-" + b[0]);
	if(c<d){
		alert("Sorry.. You Cannot assign DueDate To Previous dates");
		return false;
	}*/
	if (document.form.Minutes.value=="") {
	alert("Please enter Minutes");return false;
	}
	if (document.form.MinutesReason.value=="Select Category") {
	alert("Please enter Category");return false;
	}
	if (document.form.MinutesStatus.value=="0" && document.form.MinutesReason.value=="Action") {
	alert("Please enter Status");return false;
	}
	if (document.form.MinutesReason.value=="Information" || document.form.MinutesReason.value=="Discussion") {
		if(document.form.MinutesStatus.value=="0"){
		document.getElementById('Status').value='-';
		}}
	if(document.form.MinutesReason.value=="Action")
		{
			if(document.form.MinutesActionBy.value=="" || document.form.MinutesActionBy.value=="-")
			{
		     alert("Please enter ActionBy");return false;
		     //document.form.MinutesActionBy.value="";
		   	}
		    if(document.form.MinutesDueDate.value=="" || document.form.MinutesDueDate.value=="-")
		    {
		     alert("Please enter Due Date");return false;
		   	}
		    
	    }
		return true;
	}

function findselected2() {
	var selMenu = document.getElementById('MinutesReason');
    var txtField = document.getElementById('MinutesActionBy');
    var txtField2 = document.getElementById('MinutesDueDate');
    var dropDown = document.getElementById('Status');
      	
    if (document.getElementById('MinutesReason').value=="Action") {
    	document.getElementById("ActionBy").style.display='block'; // Show Options
    	document.getElementById("DueDate").style.display='block';
    	document.getElementById('Status').style.display='block';
    		if(document.getElementById('MinutesActionBy').value=="-"){
    		document.getElementById("MinutesActionBy").value="";
    		}
       }
   else{
    	document.getElementById("ActionBy").style.display='none'; // hide Options
    	document.getElementById("DueDate").style.display='none';
    	document.getElementById('Status').style.display='none';
    	document.getElementById("MinutesActionBy").value = "-";
    	document.getElementById("MinutesDueDate").value = "";
    	document.getElementById('MinutesStatus').value="0";
    	}
    }

function see(UploadForm){
	
	if(document.getElementById("file").value==""){
		alert(document.getElementById("file").value+"Plase select a file");	
		return false;
	}
	
}

function SubmitForm(val){
	document.form.ButtonPressed.value = val;
		if(val=="UpdateMinutes"){
			if(check2()==true){
			document.form.submit();	
		}
		
	} 
		else{
	document.form.submit();	
	//alert('asdsad');
		}
}
function SubmitUploadForm(val){
	if(val=="Upload"){
			if(document.getElementById("file").value==""){
			alert("Plase chosse a file to upload");	
			return false;
			}
	}
	if(val=="Delete"){
			var obj = document.UploadForm.checkbox;
			var status =false;
			if(obj.length){
			for(var i=0; i<obj.length; i++){
				if(obj[i].checked)
					status = true;
			}
			if(status==false){
				alert("Please select a file to delete");
				return false;
			}	 		
			}else{
				if(obj.checked){
					status=true;
				}
				if(status==false){
					alert("Please select a file to delete");
					return false;
				}	
			}
	}
	document.UploadForm.UploadDelete.value = val;
	document.UploadForm.submit();	 
}


function SubmitUploadForm2(val){
if(val=="Upload2"){
		if(document.getElementById("file").value==""){
		alert("Plase chosse a file to upload");	
		return false;
		}
}
if(val=="Delete2"){
		var obj = document.UploadForm.checkbox;
		var status =false;
		if(obj.length){
		for(var i=0; i<obj.length; i++){
			if(obj[i].checked)
				status = true;
		}
		if(status==false){
			alert("Please select a file to delete");
			return false;
		}	 		
		}else{
			if(obj.checked){
				status=true;
			}
			if(status==false){
				alert("Please select a file to delete");
				return false;
			}	
		}
}
if(document.UploadForm.UploadDelete2!=null){
document.UploadForm.UploadDelete2.value = val;
}
document.UploadForm.submit();	 
}
