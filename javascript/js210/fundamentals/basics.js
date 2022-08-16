// Conditionals Part 1
// const myBoolean = true;
// const myString = 'hello';
// const myArray = [];
// const myOtherString = '';

// if (myBoolean) {
//   console.log('Hello');
// }

// if (!myString) {
//   console.log('World');
// }

// if (!!myArray) {
//   console.log('World');
// }

// if (myOtherString || myArray) {
//   console.log('!');
// }


// Arithmetic Integer
// const rlSync = require('readline-sync');
// let num1 = Number(rlSync.question('Enter the first number:\n'));
// let num2 = Number(rlSync.question('Enter the second number:\n'));

// console.log(`${num1} + ${num2} = ${num1 + num2}`);
// console.log(`${num1} - ${num2} = ${num1 - num2}`);
// console.log(`${num1} * ${num2} = ${num1 * num2}`);
// console.log(`${num1} / ${num2} = ${Math.round(num1 / num2)}`);
// console.log(`${num1} % ${num2} = ${num1 % num2}`);
// console.log(`${num1} ** ${num2} = ${num1 ** num2}`);


// Counting the Number of Characters
// const rlSync = require('readline-sync');
// let phrase = rlSync.question('Please enter a phrase: ');
// let phraseLessSpacesLength = phrase.replace(/[^a-zA-Z]/g, '').length;
// console.log(`There are ${phraseLessSpacesLength} characters in "${phrase}".`)


// Convert a String to a Number
// function stringToInteger(string) {
//   const numbers = { '0': 0, '1': 1, '2': 2, '3': 3, '4': 4,
//                     '5': 5, '6': 6, '7': 7, '8': 8, '9': 9 };

//   let number = 0;
//   for (power = 0; power < string.length; power += 1) {
//     number += numbers[string[string.length - 1 - power]] * (10 ** power);
//   }

//   return number;
// }

// console.log(stringToInteger('4321'));      // 4321
// console.log(stringToInteger('570'));       // 570


// Convert a String to a Signed Number
// function stringToSignedInteger(string) {
//   const numbers = { '0': 0, '1': 1, '2': 2, '3': 3, '4': 4,
//                     '5': 5, '6': 6, '7': 7, '8': 8, '9': 9 };
//   const signs = ['+', '-'];

//   let negative;
//   if (signs.includes(string[0])) {
//     negative = (string[0] === '-') ? true : false;
//     string = string.slice(1);
//   }

//   let number = 0;
//   for (power = 0; power < string.length; power += 1) {
//     number += numbers[string[string.length - 1 - power]] * (10 ** power);
//   }

//   return negative ? -number : number;
// }

// console.log(stringToSignedInteger('4321'));      // 4321
// console.log(stringToSignedInteger('-570'));      // -570
// console.log(stringToSignedInteger('+100'));      // 100


// Convert a Number to a String
function integerToString(integer) {
  const numberStrings = [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

  let string = '';
  do {
    string = numberStrings[integer % 10] + string;
    integer = Math.floor(integer / 10);
  } while (integer > 0)

  return string;
}

// console.log(integerToString(4321));      // "4321"
// console.log(integerToString(0));         // "0"
// console.log(integerToString(5000));      // "5000"


// Convert a Signed Number to a String
function signedIntegerToString(integer) {
  let negative;
  if (integer < 0) negative = true;

  let string = integerToString(Math.abs(integer));

  return negative ? '-' + string : string;
}

console.log(signedIntegerToString(4321));      // "+4321"
console.log(signedIntegerToString(-123));      // "-123"
console.log(signedIntegerToString(0));         // "0"
