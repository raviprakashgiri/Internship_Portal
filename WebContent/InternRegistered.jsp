<%-- 
    
    
    Author     : Sravan Kumar
--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Registration Success.</title>

<link rel="stylesheet" type="text/css" href="css/style.css">
<!--top slide panel starts-->
  	<link rel="stylesheet" href="css/topslide_css/style.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="css/topslide_css/slide.css" type="text/css" media="screen" />

    <!-- jQuery - the core -->
	<script src="scripts/topslide_js/jquery-1.3.2.min.js" type="text/javascript"></script>
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
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="form1" method="post" action="">

<table width="100%"  border="0" cellspacing="0" cellpadding="4">
  <tr>
    <td width="41%"><script src="scripts/header.js"></script></td>
  </tr>
</table>

<table width="100%" border="0" cellspacing="4" cellpadding="10">
  <tr>
    <td width="80%" valign="top" bgcolor="#EFEFEF"><table width="101%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" valign="top">
          
          <table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="30" class="report_title" style="border-bottom: 1px dashed; border-color:#cccccc;">&nbsp;&nbsp;Success Message</td>
              <td height="30" align="right" class="report_title" style="border-bottom: 1px dashed; border-color:#cccccc;">&nbsp;&nbsp;</td>
              </tr>
            </table>
          <br>
          <table width="100%"  border="0" cellpadding="10" cellspacing="0" class="content">
            <tr>
              <td width="18%" height="160" align="center" class="text"><p><strong>Your internship application registered successfully</strong> </p>
               <%--  <p>MOM ID is <strong><%=session.getAttribute("MomID")%></strong></p> --%></td>
              </tr>

            <tr>
              <td align="center" class="text" style="border-top: 1px dashed; border-color:#cccccc;"><span class="text" style="border-top: 1px dashed; border-color:#cccccc;">
                <!-- <input name="button" type="button" class="but" id="button" value="Create New MoM" onClick="location.href='CreateMoM.jsp'"> -->
              </span>
                <!-- <input name="button4" type="button" class="but" id="button4" value="Create Minutes" onClick="location.href='CreateMinutes.jsp'">
                <input name="Reset" type="reset" class="butgrey" id="button5" value="Cancel" onClick="location.href='CreateMoM.jsp'"> --></td>
              </tr>
            <tr>
              <td class="text">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
    </table></td>
    </tr>
</table>
</form>
</body>
</html>
