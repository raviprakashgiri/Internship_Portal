<%-- 
    
    Author     : Sravan Kumar
--%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login to Project Management System</title>

<link rel="stylesheet" type="text/css" href="css/style.css">
<!--show-hide table code start-->
<script>
function show(obj,obj1,obj2,obj3) {
	document.getElementById(obj).style.display = 'inline';
	document.getElementById(obj1).style.display = 'none';
	document.getElementById(obj2).style.display = 'none';
	document.getElementById(obj3).style.display = 'none';
}

function hide(obj,obj1,obj2,obj3){
//show('divReason');
	document.getElementById(obj).style.display = 'none';
	document.getElementById(obj1).style.display = 'none';
	document.getElementById(obj2).style.display = 'none';
	document.getElementById(obj3).style.display = 'none';
}
</script>
<!--show-hide table code end-->
<!--top slide panel starts-->
  	<link rel="stylesheet" href="css/topslide_css/style.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="css/topslide_css/slide.css" type="text/css" media="screen" />

  	<!-- PNG FIX for IE6 -->
  	<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="scripts/topslide_js/pngfix/supersleight-min.js"></script>
	<![endif]-->

    <!-- jQuery - the core -->
	<script src="scripts/topslide_js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<!-- Sliding effect -->
	<script src="scripts/topslide_js/slide.js" type="text/javascript"></script>

	<!--top slide panel ends-->
    <script src="scripts/dropdowncontent.js"></script>
    <script type="text/javascript">
    function loginCheck(){
    	//alert('a');
    	if(document.getElementById('userName')){
    		if(document.getElementById('userName').value==''){
    			alert('Please Enter UserName');
    			return false;
    		}
    		else{
    			return true;
    		}
    	}
		/* if(document.getElementById('')){
    		
    	} */
    }
    </script>
    

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">


<form action="ActionServlet" method="POST" enctype="multipart/form-data" name="form" onsubmit="return loginCheck();">

<table width="100%"  border="0" cellspacing="0" cellpadding="4">
  <tr>
    <td width="41%"><script src="scripts/header.js"></script></td>
  </tr>
</table>

<table width="100%" border="0" cellspacing="4" cellpadding="10">
  <tr>
    <td width="80%" valign="top" bgcolor="#EFEFEF">
  <div id="mom_details">
  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
   
    <tr>
      <td width="1%"><img src="images/1.gif" alt="" width="16" height="57"></td>
      <td width="98%" background="images/2.gif" class="bigtitlered"></td>
      <td width="1%"><img src="images/3.gif" alt="" width="15" height="57"></td>
      </tr>
    <tr>
      <td background="images/8.gif"></td>
      <td bgcolor="#FFFFFF"><table width="100%"  border="0" cellpadding="10" cellspacing="0" class="content">
        <tr>
          <td colspan="4" align="right" class="text"  style="border-bottom:1px solid; border-color:#DEDEDE;">
            <tr>
              <td class="text" align="center">User Name:
              <input type="text" name="userName" class="textbox" id="userName" size="20" autocomplete="off" autofocus="autofocus" required>
              </td>
           </tr>
          </td>
          </tr>
        <tr>
           <td class="text" align="center">Pass Word:
           <input type="password" name="passWord" class="textbox" id="passWord" size="20" required>
           <input type="hidden" name="WhatFor" id="WhatFor" value="login" />
          </td>
        </tr>
        <tr>
          <td height="66" colspan="4" align="center" valign="top" nowrap class="text">
          <input name="button5" type="submit" class="but" id="button8" value="login">
             <input name="Reset" type="reset" class="butgrey" id="button5" value="Clear" >
            </td>
          </tr>
        <%
        	if(request.getParameter("auth")!=null){
        		%>
        		<font color="red">Wrong username and password. Please try again.</font>
        		<%
        	}
        %>
        </table></td>
      <td background="images/4.gif"></td>
      </tr>
    <tr>
      <td><img src="images/7.gif" alt="" width="16" height="17"></td>
      <td background="images/6.gif"></td>
      <td><img src="images/5.gif" alt="" width="15" height="17"></td>
      </tr>
    </table>
  </div></td>
    </tr>
    </table>
</table>
</form>

<script type="text/javascript">
//Call dropdowncontent.init("anchorID", "positionString", glideduration, "revealBehavior") at the end of the page:

dropdowncontent.init("searchlink", "right-bottom", 500, "mouseover")
dropdowncontent.init("contentlink", "left-top", 300, "click")

</script>

</body>
</html>
