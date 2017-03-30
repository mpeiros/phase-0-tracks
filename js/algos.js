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

function findMatch(firstObj, secondObj) {
  
  for (var firstObjKey in firstObj) {
    if (secondObj.hasOwnProperty(firstObjKey)) {
      if (firstObj[firstObjKey] === secondObj[firstObjKey]) {
        return true;
      }
    }
  }

  return false;
}


// Test code for Release 0
console.log('Tests for Release 0');
var testWords = ['long phrase', 'longest phrase', 'longer phrase'];
console.log(findLongestWord(testWords));

var moreTestWords = ['elephant', 'dog', 'cat', 'moose', 'sloth'];
console.log(findLongestWord(moreTestWords));

var evenMoreTestWords = ['computer', 'ruby', 'javascript', 'html', 'css', 'dev bootcamp'];
console.log(findLongestWord(evenMoreTestWords));

// Test code for Release 1

console.log('\nTests for Release 1')
var firstTestObj = { name: 'Steven', age: 54 };
var secondTestObj = { name: 'Tamir', age: 54 };
console.log(findMatch(firstTestObj, secondTestObj));

var thirdTestObj = {
  name: 'Mark',
  age: 99,
  location: 'San Francisco'
};

var fourthTestObj = {
  name: 'Mark Smith',
  age: 75,
  'location': 'San Francisco'
};

console.log(findMatch(thirdTestObj, fourthTestObj));

var fifthTestObj = {
  bedrooms: 5,
  bathrooms: 3,
  address: '123 Fake Street'
};

var sixthTestObj = {
  make: 'Toyota',
  model: 'Prius',
  year: 2009,
  color: 'gray'
};

console.log(findMatch(fifthTestObj, sixthTestObj));
