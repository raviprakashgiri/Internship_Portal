<%-- 
    
    
    Author     : Sravan Kumar
--%>

<!DOCTYPE HTML>
<!--
	Striped 2.5 by HTML5 Up!
	html5up.net | @n33co
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Chair Registration</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400italic,700|Open+Sans+Condensed:300,700" rel="stylesheet" />
		<script src="js/jquery.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/skel-panels.min.js"></script>
		<script src="js/init-iframe.js"></script>
		<script src="js/CheckSession.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel-noscript.css" />
			<link rel="stylesheet" href="css/iframeCss.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
			<link rel="stylesheet" href="css/style-wide.css" />
			<link rel="stylesheet" href="css/style-narrower-iframe.css" />
		</noscript>
		<!--[if lte IE 9]><link rel="stylesheet" href="css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><script src="js/html5shiv.js"></script><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
		<!--[if lte IE 7]><link rel="stylesheet" href="css/ie7.css" /><![endif]-->
	</head>
	<!--
		Note: Set the body element's class to "left-sidebar" to position the sidebar on the left.
		Set it to "right-sidebar" to, you guessed it, position it on the right.
	-->
	<body class="left-sidebar">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Content -->
					<div id="content">
						<div id="content-inner">
					
							<!-- Post -->
								<!-- <article class="is-post is-post-excerpt"> -->
								
								
								<div style="padding-top:5%;">
									<form action="peerServlet" method="POST">
										<table id= "chairRegForm">	
										<tr>									
											<td >First Name</td>
											<td > <input type="text" placeholder="First Name" name="firstName" id="firstName" style="border-radius:3px;"></input></td>
											
										</tr>
										<tr>
											<td >Last Name</td>
											<td > <input type="text" placeholder="Last Name" name="lastName" id="lastName" style="border-radius:3px;"></input></td>
										</tr>
											
										<tr>
											<td >Contact Number</td>
											<td ><input type="text" placeholder="Contact Number" name="contactNumber" id="contactNumber" style="border-radius:3px;"></input></td>
										</tr>
										
										<tr>
											<td >E-mail</td>
											<td ><input type="email" placeholder="someone@example.com" name="chairEmailID" id="chairEmailID" style="border-radius:3px;"></input></td>
										</tr>
										
										<tr>
											<td >University/College name</td>
											<td ><input type="text" name="college" id="college" style="border-radius:3px;"></input></td>
										</tr>
										<tr>
											<td >CGPA/Percentage</td>
											<td ><input type="text" name="percentage" id="percentage" style="border-radius:3px;"></input></td>
										</tr>
										
										<tr>
											<td > Your Java Skills (Inclusive of JAVA, JSP and Servlets)</td>
											<td>
											1.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											2.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											3.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											4.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											5.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											
											</td>
										</tr>
										
										<tr>
											<td>  Your Android Development Skills </td>
											<td>
											Worst 1.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											2.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											3.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											4.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											Bset 5.<input type="radio" name="percentage" id="percentage" style="border-radius:3px;"></input>
											
											</td>
										</tr>
										<tr>
											<td>
												Feasible Joining Date:
											</td>
											<td>
												<input type="text" name="joiningDate" id = "joiningDate" >
											</td>
										</tr>
										<tr>
											<td>
												Feasible Leaving Date:
											</td>
											<td>
												<input type="text" name="leavingDate" id = "leavingDate" >
											</td>
										</tr>
										
										<tr>
											<td>
												Internship duration in months:
											</td>
											<td>
												<input type="text" name="internshipDuration" id = "internshipDuration" >
											</td>
										</tr>
										
										<tr>
											<td>
												 Confirm Authenticity
												 
											</td>
												<input type="checkbox" name="conformation" id = "conformation" >
											<td>
												
												I confirm that all the information rendered in the
												above form is true. If any information found to be false,
												I will be responsible for the consequences and the actions
												taken by the IIT-B Authorities.
											</td>
										</tr>
										
										<tr>
											<td>
												 Resume
											</td>
											<td>
												<input type="file" name="resume" id = "resume" ><br>
												Maximum size is 2MB.
											</td>
										</tr>
										
										
										
										<tr>
											<input type="hidden" name="req_type" id="req_type" value="addChair"></input>
											<td><input class="submit-button" type="submit" value="Submit"/>
										</tr>	
										</table>
									</form>
								</div>
								
								<!-- </article> -->
						</div>
					</div>
	</div>
			<!-- Sidebar -->
					<div id="sidebar">
					
						<!-- Logo -->
							<div id="logo">
								<h2>Chair Registration</h2>
							</div>
			</div>

	</body>
</html>