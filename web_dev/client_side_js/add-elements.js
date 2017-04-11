console.log('Script is running');

// Add new item to list
var newLi = document.createElement('li');
var liText = document.createTextNode('I am a new list item');
newLi.appendChild(liText);

var ul = document.getElementById('list');

function addListItem() {
  ul.appendChild(newLi);
}

window.setTimeout(addListItem, 3000);

// Add a new paragraph to the page
var newP = document.createElement('p');
var pText = document.createTextNode('I am a new paragraph');
newP.appendChild(pText);

var parent = ul.parentNode;
parent.insertBefore(newP, ul);
