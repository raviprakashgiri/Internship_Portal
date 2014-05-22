//Author     : Sravan Kumar
function checkSession(a){
     		if(a=='null'){
     			alert("Session Expired.. Please login again");
     			window.parent.parent.window.location ="Welcome.jsp";
     		}
     	}