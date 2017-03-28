// Function takes a string and returns the reversed string
// create an empty string that will accumulate the reversed characters
// loop through the string passed in as the argument in reverse
// inside the loop, grab the current character and add it to the accumulator
// return the accumulator string

function reverseString(str) {
  revStr = '';

  for (var i = str.length - 1; i >= 0; i--) {
    letter = str[i];
    revStr += letter;
  }

  return revStr;
}

var reversedString = reverseString('Javascript');

if (!false) {
  console.log(`Javascript reversed is ${reversedString}`);
}
