<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 
    Author     : Priyanka & Ravi
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.iit.dbUtilities.DataService"%>
<%@page import="com.iit.controller.ActionServlet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Selected RA</title>

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

<!--popup div starts-->
	<link href="popup/css/styles.css" rel="stylesheet" media="screen"  />


<script type="text/javascript" src="popup/js/jquery.js" ></script>


<script  type="text/javascript" language="javascript">
$(document).ready(function(){
	$(".QTPopup").css('display','none')
	$(".lnchPopop").click(function(){
		$(".QTPopup").animate({width: 'show'}, 'slow');})
		$(".closeBtn").click(function(){
			$(".QTPopup").css('display', 'none');
		})
})
</script>
<!--popup div ends-->
<script type="text/javascript">
$(document).ready(function(){
$("select").change(function(){
		var id=$(this).attr("class");
		var status_id=$(this).val();
		console.log("Status changed" + status_id);
		
		$.ajax({
			url: 'ActionServlet',
			type: 'POST',
			data: {'WhatFor':'shiftCandidate','candidate_id':id,'status_id':status_id},
			success: function(){
//				$("#update-comment-"+id).fadeIn(100).text("Updated").fadeOut(3000);
				window.location.reload();
				$('#actions').val(0);
				}
		});
	});
});
</script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<%
	java.sql.Date dd=2014-04-30;
	String query = "select ra_id,first_name,last_name,date_from from ra_shortlisted where date_from=56";
	ResultSet rs = DataService.getResultSet(query);
	Object[][] data = DataService.getDataFromResultSet(rs);
	System.out.println("It's ravi!!"+data[0][3]);
%>
	<form name="form1" method="POST" >
		<!-- <table width="100%" border="0" cellspacing="0" cellpadding="4">
			<tr>
				<td width="41%"><script src="scripts/header.js"></script></td>
			</tr>
		</table> -->

		<table width="100%" border="0" cellspacing="2" cellpadding="10">
			<tr>
				<td width="80%" valign="top" bgcolor="#EFEFEF"><table
						width="95%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<!-- <tr>
							<td>&nbsp;</td>
							<td align="right" class="bigtitlered"><input type="button"
								name="button6" id="button5" value="Logout" class="but"
								onclick="location.href='ActionServlet?WhatFor=logOut'" /></td>
							<td>&nbsp;</td>
						</tr> -->
						<!--  <tr>
          <td width="1%"><img src="images/1.gif" alt="" width="16" height="57"></td>
          <td width="98%" background="images/2.gif" class="bigtitlered">Search | <span class="title">Action By - Jaideep Verma </span></td>
          <td width="1%"><img src="images/3.gif" alt="" width="15" height="57"></td>
        </tr> -->
<tr>
	<td width="1%"><img src="images/1.gif" alt="" width="16"
		height="57"></td>
	<td width="98%" background="images/2.gif" class="bigtitlered"> Selected RA List		
	</td>
	<td width="1%"><img src="images/3.gif" alt="" width="15"
		height="57"></td>
</tr>
<tr>
	<td background="images/8.gif"></td>
	<% if(data!=null){ %>
	<td bgcolor="#FFFFFF"><table width="98%" border="0" align="center"
			cellpadding="5" cellspacing="2"
			style="border: 0px solid; border-color: #CCCCCC;">
			<tr align="left" bgcolor="#FFFFFF" class="table_head">
				<td width="13%" height="25" align="left"
					style="border-bottom: 1px solid; border-color: #FF6600;">User Id</td>
				
				 <td width="13%" align="left" style="border-bottom:1px solid; border-color:#FF6600;">First Name</td> 
				<td width="13%" align="left"
					style="border-bottom: 1px solid; border-color: #FF6600;">Last Name</td>
				
				<td width="10%"
					style="border-bottom: 1px solid; border-color: #FF6600;">View</td>
				<td width="10%"
					style="border-bottom: 1px solid; border-color: #FF6600;">Actions</td>
			</tr>
			
			<%		
			
						int ReportLength = data.length;
					
					for (int count = 0, cnt = 1; count < ReportLength; count++, cnt++) {%>
			<tr>
				
				<td align="left" class="tdbgwhite"><%=data[count][0] %></td>
					
				<td align="left" class="tdbgwhite"><%=data[count][1] %></td>
				<td align="left" class="tdbgwhite"><%=data[count][2] %></td>
				
				<td align="left" class="tdbgwhite"><a href="RADetails.jsp?ra_id=<%=data[count][0]%>">View</a></td>
				<td align="left" class="tdbgwhite">
					<select name="actions" id="actions" class="<%=data[count][0]%>">
						<option value = "0" selected="selected">--Select Action--</option>
						<option value="delete">Delete</option>
					</select>
				</td>
			</tr>
			<%} 
					
			%>
			<!-- <tr>
				<td align="left" class="tdbgwhite"></td>
				</tr> -->
		
		</table></td>
		<%}else{ 
		%>
		<td>No data found.</td>
		<%} %>
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

</body>
</html>