<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Selected Menu List</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--top slide panel starts-->
<link rel="stylesheet" href="css/topslide_css/style.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="css/topslide_css/slide.css" type="text/css"
	media="screen" />

<!-- PNG FIX for IE6 -->
<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
<!--[if lte IE 6]>
		<script type="text/javascript" src="scripts/topslide_js/pngfix/supersleight-min.js"></script>
	<![endif]-->

<!-- jQuery - the core -->
<script src="scripts/topslide_js/jquery-1.3.2.min.js"
	type="text/javascript"></script>
<!-- Sliding effect -->
<script src="scripts/topslide_js/slide.js" type="text/javascript"></script>

<!--top slide panel ends-->
<!-- To display calender in top pannel START-->	
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
    <link rel="stylesheet" href="css/style.css" />
    <style type="text/css">
              #tabs, #ui-datepicker-div, .ui-datepicker{ font-size: 85%; }
    </style>
<!-- To display calender in top pannel END-->

<script>
function loadPage(pageName)
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET",pageName,true);
xmlhttp.send();
}
</script>

<style type="text/css">
.right-bar {
	float: right;
	margin-top: 50px;
	height: 100%;
	width: 100%;
	margin-right: 20px;
}

</style>

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
	<form name="form1" action="ActionServlet" method="POST">
		<table width="100%" border="0" cellspacing="0" cellpadding="4">
			<tr>
				<td width="41%"><script src="scripts/header.js"></script></td>
			</tr>
		</table>

		<table width="100%" border="0" cellspacing="2" cellpadding="10">
			<tr>
				<td width="80%" valign="top" bgcolor="#EFEFEF"><table
						width="95%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td>&nbsp;</td>
							<td align="right" class="bigtitlered"></td>
							<td>&nbsp;</td>
						</tr>
						<!--  <tr>
          <td width="1%"><img src="images/1.gif" alt="" width="16" height="57"></td>
          <td width="98%" background="images/2.gif" class="bigtitlered">Search | <span class="title">Action By - Jaideep Verma </span></td>
          <td width="1%"><img src="images/3.gif" alt="" width="15" height="57"></td>
        </tr> -->
       <!--  <input type="hidden" name="WhatFor" id="WhatFor" value=""/>-->
<tr>
	<td width="1%"><img src="images/1.gif" alt="" width="16"
		height="57"></td>
	<td width="98%" background="images/2.gif" class="bigtitlered"> Welcome. Please choose the list you want.	
	</td>
	<td width="1%"><img src="images/3.gif" alt="" width="15"
		height="57"></td>
</tr>
<tr>
	<td background="images/8.gif"></td>
	<td bgcolor="#FFFFFF">
	<table><tr>
	<td>Date From:</td>
	<td><input type="text" id="fromDate" name="fromDate"></td>
	<td>Date To:</td>
	<td><input type="text" id="toDate" name="toDate"></td>
	<td><input name="submitButton" type="Submit" class="butgrey"
														id="submitButton" value="Submit" onClick="" >
	<input name="WhatFor" type="hidden" id="WhatFor" value="session_setting">
	</td>
	
	</tr></table>
	<table width="50%" border="0"
			cellpadding="3" cellspacing="1"
			style="border: 0px solid; border-color: #CCCCCC;">
			<tr align="left" bgcolor="#FFFFFF" class="table_head">
				<td width="20%" height="25" align="left">
					<!-- <input type="button" name="button6" id="button5" value="Click here to view Interns List" class="but"
								onclick="href='InternsList.jsp' target='content-iframe'" /> -->
				<a class= "toplink" href = 'SelectedIntern.jsp' target='content-iframe'>&bull; Interns List</a>
				<br>
				
				</td>
				
				 <td width="20%" align="left">
				 	<!-- <input type="button" size="50"
								name="button6" id="button5" value="Click here to view Experienced List" class="butgrey"
								onclick="loadPage('EmployersList.jsp');" /> -->
					<a class= "toplink" href = 'SelectedJob.jsp' target='content-iframe'>&bull; Experienced List</a>
					<br>
				
				</td> 
				<td width="20%" align="left">
				<!-- <input type="button"
								name="button6" id="button5" value="Click here to view RA Applicants" class="but"
								onclick="loadPage('RAapplicantsList.jsp');" /> -->
					<a class= "toplink" href = 'SelectedRA.jsp' target='content-iframe'>&bull; RA List</a>
					<br>
				
				</td>
				
			</tr>
			
			
				
		
		</table></td>
	<td background="images/4.gif"></td>
</tr>
<tr>
	<td><img src="images/7.gif" alt="" width="16" height="17"></td>
	<td background="images/6.gif"></td>
	<td><img src="images/5.gif" alt="" width="15" height="17"></td>
</tr>
</table>
</td>
</tr>
</table>
</form>
<table width="100%" border="0" cellspacing="2" cellpadding="10">
	<!-- <div id="myDiv"></div> -->
	

</table>
<!-- <div> -->
			<iframe name="content-iframe" src="" width="1350px;" height="500px" frameBorder="0"></iframe>

		<!-- </div> -->
</body>
</html>