//   Author     : Sravan Kumar
var intTextBox=0;
            //FUNCTION TO ADD TEXT BOX ELEMENT
            function addElement()
            {
                intTextBox = intTextBox + 1;
                var contentID = document.getElementById('content');
                var newTBDiv = document.createElement('div');
                newTBDiv.setAttribute('id','strText'+intTextBox);
                newTBDiv.innerHTML = " WeightName: <input type='text' id='wn'+'"+intTextBox+"'   name='wn'+'"+intTextBox+"'/>"
				                    +" WeightScore: <input type='text' id='ws'+'"+intTextBox"'    name='ws'+'"+intTextBox+"'/> ";
                contentID.appendChild(newTBDiv);
            }
            //FUNCTION TO REMOVE TEXT BOX ELEMENT
            function removeElement()
            {
                if(intTextBox != 0)
                {
                    var contentID = document.getElementById('content');
                    contentID.removeChild(document.getElementById('strText'+intTextBox));
                    intTextBox = intTextBox-1;
                }
            }