// Release 0: Find the Longest Phrase
// function that takes array of strings and returns the longest one
// assign first string in the array to a longestWord variable
// starting at the second string in the array, loop through the array and compare lengths to longestWord.length
// if length of comparison string is greater, reassign that string to longestWord
// after looping through the array, return longestWord

function findLongestWord(words) {
  var longestWord = words[0];

  for (var i = 1; i < words.length; i++) {
    if (words[i].length > longestWord.length) {
      longestWord = words[i];
    }
  }

  return longestWord;
}

// Release 1: Find a Key-Value Match
// function takes two objects and returns true if the objects share at least one key-value pair (returns false otherwise)
// iterate through the first object using a for in loop
// for each key in the first object, check if the second object has the same key
// if keys match, check if the values match
// if the values match, then return true
// end function by returning false, which will get executed if no matches are found




// Test code for Release 0
console.log('Tests for Release 0');
var testWords = ['long phrase', 'longest phrase', 'longer phrase'];
console.log(findLongestWord(testWords));

var moreTestWords = ['elephant', 'dog', 'cat', 'moose', 'sloth'];
console.log(findLongestWord(moreTestWords));

var evenMoreTestWords = ['computer', 'ruby', 'javascript', 'html', 'css', 'dev bootcamp'];
console.log(findLongestWord(evenMoreTestWords));
