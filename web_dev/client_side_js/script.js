var pText = document.getElementsByTagName('p');
var i;

for (i=0; i < pText.length; i++) {
	pText[i].style.border = "2px solid pink";
}

function dancing(event) {
  var position = 0;
  var id = setInterval(frame, 15);
  function frame() {
    if (position == 1920) {
      clearInterval(id);
    } else {
      position++;
      event.target.style.top = position + 'px';
      event.target.style.left = position + 'px';
    }
  }
}

var carlton = document.getElementById("animate");
carlton.addEventListener("click", dancing);