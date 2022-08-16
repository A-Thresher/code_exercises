// How Old is Teddy
// const age = Math.floor((Math.random() * 181) + 20);
// console.log(`Teddy is ${age} years old!`);


// Searching 101
// const readlineSync = require('readline-sync');

// const requestID = ['1st', '2nd', '3rd', '4th', '5th', 'last'];
// let numbers = [];
// let searchTerm;

// for (let request of requestID) {
//   let input = readlineSync.question(`Enter the ${request} number: `);

//   request === 'last' ? searchTerm = input : numbers.push(input);
// }

// if (numbers.includes(searchTerm)) {
//   console.log(`The number ${searchTerm} appears in [${numbers.join(', ')}].`);
// } else {
//   console.log(`The number ${searchTerm} does not appear in [${numbers.join(', ')}].`);
// }


// When Will I Retire
// const readlineSync = require('readline-sync');

// let age = readlineSync.question('What is your age? ');
// let retirement = readlineSync.question('At what age would you like to retire? ');
// let yearsTillRetire = retirement - age;
// let currentYear = new Date().getFullYear();

// console.log(`It's ${currentYear}. You will retire in ${currentYear + yearsTillRetire}.`);
// console.log(`You have only ${yearsTillRetire} years of work to go!`)


// Palindromic Strings Part 1
// function isPalindrome(string) {
//   let reverseString = string.split('').reverse().join('');
//   return string === reverseString;
// }

// console.log(isPalindrome('madam'));               // true
// console.log(isPalindrome('Madam'));               // false (case matters)
// console.log(isPalindrome("madam i'm adam"));      // false (all characters matter)
// console.log(isPalindrome('356653'));              // true


// Palindromic Strings Part 2
// function isRealPalindrome(string) {
//   let strippedString = string.toLowerCase().replace(/[^a-z0-9]/gi, '');

//   return isPalindrome(strippedString);
// }

// console.log(isRealPalindrome('madam'));               // true
// console.log(isRealPalindrome('Madam'));               // true (case does not matter)
// console.log(isRealPalindrome("Madam, I'm Adam"));     // true (only alphanumerics matter)
// console.log(isRealPalindrome('356653'));              // true
// console.log(isRealPalindrome('356a653'));             // true
// console.log(isRealPalindrome('123ab321'));            // false


// Palindromic Number
// function isPalindromicNumber(number) {
//   return isPalindrome(String(number));
// }

// console.log(isPalindromicNumber(34543));        // true
// console.log(isPalindromicNumber(123210));       // false
// console.log(isPalindromicNumber(22));           // true
// console.log(isPalindromicNumber(5));            // true


// Running Totals
// function runningTotal(array) {
//   let total = 0;
//   return array.map(num => total += num);
// }

// console.log(runningTotal([2, 5, 13]));             // [2, 7, 20]
// console.log(runningTotal([14, 11, 7, 15, 20]));    // [14, 25, 32, 47, 67]
// console.log(runningTotal([3]));                    // [3]
// console.log(runningTotal([]));                     // []


// Letter Swap
// function swap(string) {
//   let words = string.split(' ');
//   words = words.map(word => {
//     if (word.length === 1) return word;
//     return word.at(-1) + word.slice(1, -1) + word[0];
//   });
//   return words.join(' ');
// }

// console.log(swap('Oh what a wonderful day it is'));  // "hO thaw a londerfuw yad ti si"
// console.log(swap('Abcde'));                          // "ebcdA"
// console.log(swap('a'));                              // "a"


// Letter Counter Part 1
function wordSizes(string) {
  let words = string.split(' ');
  let lengthCounter = {};

  for (let word of words) {
    word = word.replace(/[^a-z]/gi, '');
    if (word.length === 0) {
      continue;
    } else if (lengthCounter[word.length]) {
      lengthCounter[word.length] += 1;
    } else {
      lengthCounter[word.length] = 1;
    }
  }

  return lengthCounter;
}

// console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 1, "6": 1 }
// console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 1, "7": 2 }
// console.log(wordSizes("What's up doc?"));                              // { "2": 1, "4": 1, "6": 1 }
// console.log(wordSizes(''));                                            // {}

console.log(wordSizes('Four score and seven.'));                       // { "3": 1, "4": 1, "5": 2 }
console.log(wordSizes('Hey diddle diddle, the cat and the fiddle!'));  // { "3": 5, "6": 3 }
console.log(wordSizes("What's up doc?"));                              // { "5": 1, "2": 1, "3": 1 }
console.log(wordSizes(''));                                            // {}
