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

// Release 2: Generate Random Test Data
// function takes an integer for length and returns an array of strings of the given length
// declare an empty array that will accumulate the strings generated later in the function
// declare a loop that will run a number of times equal to the length passed in
// within the loop, declare an empty string that will accumulate characters generated later in the loop
// within the loop, generate a random number between 1 and 10 inclusive
// within the loop, declare a nested loop that will run a number of times equal to the random number generated
// within the nested loop, generate a random character and add it to the accumulator string
// back in the outer loop, add the accumulator string into the accumulator array
// back in the function, return the accumulator array

function generateData(length) {
  var stringArray = [];

  for (var i = 0; i < length; i++) {
    randomWord = '';
    randomNum = Math.floor(Math.random() * 10) + 1;

    for (var j = 0; j < randomNum; j++) {
      // generates a number between 97 and 122, which corresponds to the ASCII character codes for a-z
      randomWord += String.fromCharCode(Math.floor(Math.random() * (26)) + 97);
    }

    stringArray.push(randomWord);
  }

  return stringArray;
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

// Test code for Release 2
console.log('\nTests for Release 2')

for (var i = 0; i < 10; i++) {
  testArray = generateData(5);
  console.log(testArray);
  console.log('Longest word = ' + findLongestWord(testArray));
}
