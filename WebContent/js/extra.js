//   Author     : Sravan Kumar
var count = 0;
function addFields(){
			var numericCount=document.getElementById('numberOfAuthors').value;
			if((count+1)>=numericCount){
				alert("Number of email id's should be less than the count of total authors !");
				return false;
			}
			var field_area = document.getElementById('addHere');
			var li = document.createElement("li");
		    var input = document.createElement("input");
		    input.id = 'addedEmail'+count;
		    input.setAttribute("name","addedEmail");
		    input.type = "text"; //Type of field - can be any valid input type like text,file,checkbox etc.
			input.placeholder="  Email id of co-author";
			input.setAttribute("style","width:80%;");
		    li.appendChild(input);
		    field_area.appendChild(li);
		    //create the removal link
		    var removalLink = document.createElement('img');
		    removalLink.setAttribute("src","images/delete.jpg");
			removalLink.setAttribute("style","width:20px;height:20px;margin-left:1%;vertical-align:middle;");
		    removalLink.onclick = function(){
		        this.parentNode.parentNode.removeChild(this.parentNode);
		    };
		    var removalText = document.createTextNode('Remove Field');
		    removalLink.appendChild(removalText);
		    li.appendChild(removalLink);  
			count++;  
		    return false;
};

function check(){
			
			var EmailIds=document.getElementsByTagName('ul').length;
			if(EmailIds==null){
				EmailIds=0;
			}
			var authnum=document.getElementById('numberOfAuthors').value;
			if(authnum!=(EmailIds+1))
				{
				alert("Please enter Email id of co-authors !");
				return false;
				}
			else{
			return true;
			}
}
