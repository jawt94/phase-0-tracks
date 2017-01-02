console.log("The script is running!");

function addRedBorder(event) {
	console.log("moused over!");
	console.log(event);
	event.target.style.border = "5px solid red";
}

var header = document.getElementsByTagName("h1");
header[0].addEventListener("mouseover", addRedBorder);
