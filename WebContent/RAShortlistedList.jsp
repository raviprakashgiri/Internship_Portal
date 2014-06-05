<%-- 
    Author     : Sravan Kumar
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.iit.dbUtilities.DataService"%>
<%@page import="com.iit.controller.ActionServlet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>RA ShortListed List</title>

<!-- new datepicker begin -->
<link rel="stylesheet" href="css/datepicker1.css" type="text/css" />
 <link rel="stylesheet" media="screen" type="text/css" href="css/layout.css" />
 <script type="text/javascript" src="js/jquery.js"></script>
 <script type="text/javascript" src="js/datepicker.js"></script>
 <script type="text/javascript" src="js/eye.js"></script>
 <script type="text/javascript" src="js/layout.js?ver=1.0.2"></script>
<!--  new datepicker ends -->


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

<!--
Simple Popup Box using CSS and jQuery.
This tutorial by bijusubhash.com.
follow me on Twitter : http://www.twitter.com/bijusubhash
-->
<script type="text/javascript" src="popup/js/jquery.js" ></script>

<script type="text/javascript">
function input_value(){
    var theArray = new Array();  
    // var boxes = document.getElementsByTagName("input");  
    var boxes = document.getElementsByName("checkbox");
    for (var i=0;i<boxes.length;i++) {  
       var box = boxes[i];  
       if (box.type == "checkbox" && box.checked) {  
          theArray[theArray.length] = box.value;  
          alert(theArray[i]);
       }
    }
    
    
}

</script>


<script type="text/javascript">
function checkBoxValidation()
{
    boolean k=false;
    for(var i=0; i < document.form1.id.length; i++)
    {
        if(document.form1.id[i].checked)
         { k=true;
        }
    }
    
    if(k==false)
    {
        alert("Please Select Your favorite fruit");
        return false;
        }
    else
        {
        alert("Click OK to display your favorite fruit list");
        return true;
        }
</script>

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
//              $("#update-comment-"+id).fadeIn(100).text("Updated").fadeOut(3000);
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
    String query = "select ra_id,first_name,persuing,cgpa,stream,availabilityForF2F,email_id from ra_applicant where status='ShortListed'";
    ResultSet rs = DataService.getResultSet(query);
    Object[][] data = DataService.getDataFromResultSet(rs);
%>
    <form name="form1" action="ActionServlet" method="POST"  onsubmit="input_value();">
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
    <td width="98%" background="images/2.gif" class="bigtitlered"> ShortListed RA List      
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
                <td width="2%" height="25" align="left"
                    style="border-bottom: 1px solid; border-color: #FF6600;">Select</td>
                <td width="13%" height="25" align="left"
                    style="border-bottom: 1px solid; border-color: #FF6600;">Name</td>
                
                 <td width="13%" align="left" style="border-bottom:1px solid; border-color:#FF6600;">Persuing</td> 
                <td width="13%" align="left"
                    style="border-bottom: 1px solid; border-color: #FF6600;">CGPA</td>
                <td width="13%" align="left" bgcolor="#FFFFFF"
                    style="border-bottom: 1px solid; border-color: #FF6600;">Stream</td>
                <td width="13%" align="left" bgcolor="#FFFFFF"
                    style="border-bottom: 1px solid; border-color: #FF6600;">Internship Duration in months</td>
                
                <td width="13%" align="left" bgcolor="#FFFFFF"
                    style="border-bottom: 1px solid; border-color: #FF6600;">Availability for F2F</td>
                <td width="10%"
                    style="border-bottom: 1px solid; border-color: #FF6600;">View</td>
                <td width="10%"
                    style="border-bottom: 1px solid; border-color: #FF6600;">Actions</td>
            </tr>
            
            <%      
            
                        int ReportLength = data.length;
                    
                    for (int count = 0, cnt = 1; count < ReportLength; count++, cnt++) {%>
            <tr>
                <td align="left" class="tdbgwhite"><input type="checkbox" name="checkbox" id="checkbox" value="<%=data[count][0]%>"><%=data[count][0]%><BR></td>
                <td align="left" class="tdbgwhite"><%=data[count][1] %></td>
                    
                <td align="left" class="tdbgwhite"><%=data[count][2] %></td>
                <td align="left" class="tdbgwhite"><%=data[count][3] %></td>
                <td align="left" class="tdbgwhite"><%=data[count][4] %></td>
                <td align="left" class="tdbgwhite"><%=data[count][5] %></td>
                <td align="left" class="tdbgwhite"><%=data[count][6] %></td>
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
        <td background="images/8.gif"></td>

        <td bgcolor="#FFFFFF"><table width="98%" border="0" align="center"
                cellpadding="5" cellspacing="2"
                style="border: 0px solid; border-color: #CCCCCC;">



                <tr>
                    <td align="left" class="tdbgwhite"></td>
                    <td align="left" class="tdbgwhite">From:</td>

                    <td align="left" class="tdbgwhite"><input class="inputDate" id="inputDate" name="inputDate" value="06/14/2014" style="width: 101px; "/>
                    </td>
                    <td align="left" class="tdbgwhite">To:</td>
                    <td align="left" class="tdbgwhite"><input class="outputDate" id="outputDate" name="outputDate" value="06/14/2014" style="width: 101px; "/></td>
                    <% /*String fruits[]= request.getParameterValues("id");
                    for(int i=0;i<fruits.length;i++)
                        System.out.println("fruits : "+i+" is "+fruits[i]);
                    session.setAttribute("myObjectKey", fruits);*/
                    %>
                    <td align="left" class="tdbgwhite"><input name="submitButton" type="Submit" class="but"
                                                        id="submitButton" value="Submit" onClick="" >
                                                        <input name="WhatFor" type="hidden" id="WhatFor" value="shortlist"></td>
                    <td align="left" class="tdbgwhite"></td>
                    <td align="left" class="tdbgwhite"></td>
                    <td align="left" class="tdbgwhite">

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

</body>
</html>