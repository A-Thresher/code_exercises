// Odd Numbers
// for (let i = 1; i <= 99; i += 2) {
//   console.log(i);
// }

// function printOddNumbers(min, max) {
//   if (min % 2 === 0) min += 1;

//   while (min < max) {
//     console.log(min);
//     min += 2;
//   }
// }

// printOddNumbers(10, 35);


// Even Numbers
// function printEvenNumbers(min, max) {
//   if (min % 2 === 1) min += 1;

//   while (min < max) {
//     console.log(min);
//     min += 2;
//   }
// }

// printEvenNumbers(5, 30);


// How Big is the Room
// const readlineSync = require('readline-sync');
// const SQ_M_TO_FT = 10.7639;
// const SQ_FT_TO_M = 1/SQ_M_TO_FT;

// let inputUnit =
//   readlineSync.question('Enter your unit of choice ("meters" or "feet", defaults to "meters"): ');
// let length =
//   Number(readlineSync.question('Enter the length of the room: '));
// let width =
//   Number(readlineSync.question('Enter the width of the room: '));

// let areaInput = (length * width).toFixed(2);

// let convUnit;
// let conversion;
// if (inputUnit === 'feet') {
//   convUnit = 'meters';
//   conversion = SQ_FT_TO_M;
// } else {
//   inputUnit = 'meters';
//   convUnit = 'feet';
//   conversion = SQ_M_TO_FT;
// }

// let areaConv = (areaInput * conversion).toFixed(2);

// console.log(
//   `The area of the room is ${areaInput} square ${inputUnit} (${areaConv} square ${convUnit}).`
// );


// Tip Calculator
// const readlineSync = require('readline-sync');

// let bill = parseFloat(readlineSync.question('What is the bill? '));
// let perc = parseFloat(readlineSync.question('What is the tip percentage? '));

// let tip = bill * (perc / 100);

// console.log(`The tip is $${tip.toFixed(2)}`);
// console.log(`The total is $${(bill + tip).toFixed(2)}`);


// Sum or Product of Consecutive Integers
// const readlineSync = require('readline-sync');

// const inputInteger = parseInt(readlineSync.question(
//   'Please enter an integer greate than 0: '
// ));

// const operation = readlineSync.question(
//   'Enter "s" to compute the sum, or "p" to compute the product: '
// );

// function consSum(number) {
//   let sum = 0;
//   while (number > 0) {
//     sum += number
//     number--
//   }

//   return sum;
// }

// function consProduct(number) {
//   let product = 1;
//   while (number > 0) {
//     product *= number
//     number--
//   }

//   return product;
// }

// if (operation === 's') {
//   console.log(
//     `The sum of the integers between 1 and ${inputInteger} is ${consSum(inputInteger)}.`
//   );
// } else if (operation === 'p') {
//   console.log(
//     `The product of the integers between 1 and ${inputInteger} is ${consProduct(inputInteger)}.`
//   );
// }


// Short Long Short
// function shortLongShort(string1, string2) {
//   if (string1.length > string2.length) {
//     return (string2 + string1 + string2);
//   } else {
//     return (string1 + string2 + string1);
//   }
// }

// console.log(shortLongShort('abc', 'defgh'));    // "abcdefghabc"
// console.log(shortLongShort('abcde', 'fgh'));    // "fghabcdefgh"
// console.log(shortLongShort('', 'xyz'));         // "xyz"


// Leap Years Part 1
// let isLeapYear = function(year) {
//   if (year % 400 === 0) {
//     return true;
//   } else if (year % 100 === 0) {
//     return false;
//   } else if (year % 4 === 0) {
//     return true;
//   } else {
//     return false;
//   }
// }

// console.log(isLeapYear(2016)   === true);
// console.log(isLeapYear(2015)   === false);
// console.log(isLeapYear(2100)   === false);
// console.log(isLeapYear(2400)   === true);
// console.log(isLeapYear(240000) === true);
// console.log(isLeapYear(240001) === false);
// console.log(isLeapYear(2000)   === true);
// console.log(isLeapYear(1900)   === false);
// console.log(isLeapYear(1752)   === true);
// console.log(isLeapYear(1700)   === false);
// console.log(isLeapYear(1)      === false);
// console.log(isLeapYear(100)    === false);
// console.log(isLeapYear(400)    === true);


// Leap Years Part 2
// let isLeapYear = function(year) {
//   if (year > 1752) {
//     return (year % 400 === 0 || (year % 100 !== 0 && year % 4 === 0));
//   } else {
//     return year % 4 === 0;
//   }
// }

// console.log(isLeapYear(2016)  === true);
// console.log(isLeapYear(2015)  === false);
// console.log(isLeapYear(2100)  === false);
// console.log(isLeapYear(2400)  === true);
// console.log(isLeapYear(20000) === true);
// console.log(isLeapYear(20001) === false);
// console.log(isLeapYear(2000)  === true);
// console.log(isLeapYear(1900)  === false);
// console.log(isLeapYear(1752)  === true);
// console.log(isLeapYear(1700)  === true);
// console.log(isLeapYear(1)     === false);
// console.log(isLeapYear(100)   === true);
// console.log(isLeapYear(400)   === true);


// Multiples of 3 and 5
// function multisum(number) {
//   let sum = 0;
//   for (let i = 3; i <= number; i += 1) {
//     if (i % 3 === 0 || i % 5 === 0) sum += i;
//   }

//   return sum;
// }

// console.log(multisum(3));       // 3
// console.log(multisum(5));       // 8
// console.log(multisum(10));      // 33
// console.log(multisum(1000));    // 234168


// UTF-16 String Value
const utf16Value = (string) => {
  let codeSum = 0;
  for (let char of string) {
    codeSum += char.charCodeAt(0);
  }

  return codeSum;
}

console.log(utf16Value('Four score')    === 984);
console.log(utf16Value('Launch School') === 1251);
console.log(utf16Value('a')             === 97);
console.log(utf16Value('')              === 0);

// The next three lines demonstrate that the code
// works with non-ASCII characters from the UTF-16
// character set.
const OMEGA = "\u03A9";             // UTF-16 character 'Ω' (omega)
console.log(utf16Value(OMEGA)                  === 937);
console.log(utf16Value(OMEGA + OMEGA + OMEGA)  === 2811);
