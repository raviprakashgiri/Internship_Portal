 //Author     : Sravan Kumar

function addField() {
		var addButton = document.getElementById('addBtn');
		var submitPaperForm = document.getElementById('addHere');
		var input = document.createElement('input');
		//input.style.width="40%";
		input.setAttribute("style","width:46%; margin-left:42.5%; ");
		input.setAttribute("name","addedEmail");
		input.placeholder="  Email id of co-author";
		var space = document.createElement('p');
		submitPaperForm.appendChild(input);
		submitPaperForm.appendChild(space);
		}