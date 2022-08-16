'use strict';

// // Lettercase Percentage Ratio
// let letterPercentages = function (string) {
//   let charClass = {};
//   charClass.lowercase = string.match(/[a-z]/g) || [];
//   charClass.uppercase = string.match(/[A-Z]/g) || [];
//   charClass.neither   = string.match(/[^a-z]/g) || [];

//   Object.keys(charClass).forEach(key => {
//     charClass[key] = ((charClass[key].length / string.length) * 100).toFixed(2);
//   });

//   return charClass;
// };

// console.log(letterPercentages('abCdef 123'));
// // { lowercase: "50.00", uppercase: "10.00", neither: "40.00" }

// console.log(letterPercentages('AbCd +Ef'));
// // { lowercase: "37.50", uppercase: "37.50", neither: "25.00" }

// console.log(letterPercentages('123'));
// // { lowercase: "0.00", uppercase: "0.00", neither: "100.00" }


// // Triangle Sides
// let triangle = function (...sides) {
//   sides.sort((a, b) => a - b);
//   if (sides.some(side => side === 0)
//       || sides[0] + sides[1] <= sides[2]) {
//     return 'invalid';
//   } else if (sides.every(side => side === sides[1])) {
//     return 'equilateral';
//   } else if (sides[0] !== sides[1]
//              && sides[0] !== sides[2]
//              && sides[1] !== sides[2]) {
//     return 'scalene';
//   } else {
//     return 'isosceles';
//   }
// };

// console.log(triangle(3, 3, 3));        // "equilateral"
// console.log(triangle(3, 3, 1.5));      // "isosceles"
// console.log(triangle(3, 4, 5));        // "scalene"
// console.log(triangle(0, 3, 3));        // "invalid"
// console.log(triangle(3, 1, 1));        // "invalid"


// // Tri-Angles
// let triangle = function (...angles) {
//   angles.sort((a, b) => a - b);
//   if (angles.some(angle => angle === 0)
//       || angles[0] + angles[1] + angles[2] !== 180) {
//     return 'invalid';
//   } else if (angles[2] === 90) {
//     return 'right';
//   } else if (angles[2] < 90) {
//     return 'acute';
//   } else {
//     return 'obtuse';
//   }
// };

// console.log(triangle(60, 70, 50));       // "acute"
// console.log(triangle(30, 90, 60));       // "right"
// console.log(triangle(120, 50, 10));      // "obtuse"
// console.log(triangle(0, 90, 90));        // "invalid"
// console.log(triangle(50, 50, 50));       // "invalid"


// // Unlucky Days
// let fridayThe13ths = function (year) {
//   const FRIDAY_DAY = 5;
//   let fridays = 0;

//   for (let month = 0; month < 12; month += 1) {
//     let date = new Date(String(year), month, 13);
//     if (date.getDay() === FRIDAY_DAY) fridays += 1;
//   }

//   return fridays;
// };

// console.log(fridayThe13ths(1986));      // 1
// console.log(fridayThe13ths(2015));      // 3
// console.log(fridayThe13ths(2017));      // 2


// // Next Featured Number
// let duplicateDigits = function (number) {
//   let digits = String(number).split('');
//   let duplicate = {};

//   for (let idx = 0; idx < digits.length; idx += 1) {
//     if (duplicate[digits[idx]]) return true;
//     duplicate[digits[idx]] = true;
//   }

//   return false;
// };

// let featured = function (number) {
//   if (number >= 9876543201) return 'There is no possible....';
//   do {
//     number += 1;
//   } while (number % 7 !== 0 && number % 2 === 0);

//   while (duplicateDigits(number)) {
//     number += 14;
//   }

//   return number;
// };

// console.log(featured(12));           // 21
// console.log(featured(20));           // 21
// console.log(featured(21));           // 35
// console.log(featured(997));          // 1029
// console.log(featured(1029));         // 1043
// console.log(featured(999999));       // 1023547
// console.log(featured(999999987));    // 1023456987
// console.log(featured(9876543186));   // 9876543201
// console.log(featured(9876543200));   // 9876543201
// console.log(featured(9876543201));   // "There is no possible number that fulfills those requirements."


// // Sum Square - Square Sum
// let sumSquareDifference = function (num) {
//   let sum = 0;
//   let squareSum = 0;

//   for (let int = 1; int <= num; int += 1) {
//     sum += int;
//     squareSum += int ** 2;
//   }

//   return (sum ** 2) - squareSum;
// };

// console.log(sumSquareDifference(3));      // 22 --> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
// console.log(sumSquareDifference(10));     // 2640
// console.log(sumSquareDifference(1));      // 0
// console.log(sumSquareDifference(100));    // 25164150


// Bubble Sort
let bubbleSort = function (array) {
  let swaps;
  do {
    swaps = 0;
    for (let idx = 0; idx < array.length - 1; idx += 1) {
      if (array[idx] > array[idx + 1]) {
        [ array[idx], array[idx + 1] ] = [array[idx + 1], array[idx]];
        swaps += 1;
      }
    }
  } while (swaps > 0);

  return array;
};

const array1 = [5, 3];
bubbleSort(array1);
console.log(array1);    // [3, 5]

const array2 = [6, 2, 7, 1, 4];
bubbleSort(array2);
console.log(array2);    // [1, 2, 4, 6, 7]

const array3 = ['Sue', 'Pete', 'Alice', 'Tyler', 'Rachel', 'Kim', 'Bonnie'];
bubbleSort(array3);
console.log(array3);    // ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]
