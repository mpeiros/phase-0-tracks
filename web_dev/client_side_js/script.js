console.log("The script is running!");

var photo = document.getElementById("lizard-photo");

function addRedBorder(event) {
  event.target.style.border = '2px solid red';
}

function hide() {
  photo.hidden = true;
}

function reveal() {
  photo.hidden = false;
}

function addBlueBackground(event) {
  event.target.style.background = 'blue';
}

function resetBackground(event) {
  event.target.style.background = 'white';
}

function addPinkBorder(event) {
  event.target.style.border = '5px solid pink';
}

var div = document.getElementById('about-my-pet');
div.addEventListener('click', addRedBorder);

var hideButton = document.getElementById('hide');
hideButton.addEventListener('click', hide);

var revealButton = document.getElementById('reveal');
revealButton.addEventListener('click', reveal);

var para = document.getElementById('mouse-over');
para.addEventListener('mouseover', addBlueBackground);
para.addEventListener('mouseleave', resetBackground);

var ul = document.getElementById('list');
ul.addEventListener('dblclick', addPinkBorder);
