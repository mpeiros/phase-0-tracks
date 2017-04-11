console.log("The script is running!");

// function addPinkBorder(event) {
//   console.log("click happened! here's the click event:");
//   console.log(event);
//   event.target.style.border = "2px solid pink";
// }

// var photo = document.getElementById("lizard-photo");
// photo.addEventListener("click", addPinkBorder);

function addRedBorder(event) {
  event.target.style.border = '2px solid red';
}

function hide() {
  var photo = document.getElementById("lizard-photo");
  photo.hidden = true;
}

function reveal() {
  var photo = document.getElementById("lizard-photo");
  photo.hidden = false;
}

function addBlueBackground(event) {
  event.target.style.background = 'blue';
}

var div = document.getElementById('about-my-pet');
div.addEventListener('click', addRedBorder);

var hideButton = document.getElementById('hide');
hideButton.addEventListener('click', hide);

var revealButton = document.getElementById('reveal');
revealButton.addEventListener('click', reveal);

var para = document.getElementById('mouse-over');
para.addEventListener('mouseover', addBlueBackground);
