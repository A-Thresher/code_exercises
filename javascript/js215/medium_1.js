'use strict';

// Rotation Part 1
/*
Problem:
  Given an array return a new array with the first element moved to the end

  Input: Array
    - any element type
    - empty array? return empty array
    - non array? return undefined
  Output: Array
    - new array, do not mutate the input

Examples:
  See Test Cases

Data:
  Array

Algorithm
  - return a slice starting from the 1st index of the input array concatinated
    with the first element of the input array
*/
// function rotateArray(array) {
//   if (!Array.isArray(array)) return undefined;
//   if (array.length === 0) return [];

//   return array.slice(1).concat(array[0]);
// }

// console.log(rotateArray([7, 3, 5, 2, 9, 1]));       // [3, 5, 2, 9, 1, 7]
// console.log(rotateArray(['a', 'b', 'c']));          // ["b", "c", "a"]
// console.log(rotateArray(['a']));                    // ["a"]
// console.log(rotateArray([1, 'a', 3, 'c']));         // ["a", 3, "c", 1]
// console.log(rotateArray([{ a: 2 }, [1, 2], 3]));    // [[1, 2], 3, { a: 2 }]
// console.log(rotateArray([]));                       // []

// // return `undefined` if the argument is not an array
// console.log(rotateArray());                         // undefined
// console.log(rotateArray(1));                        // undefined


// // the input array is not mutated
// const array = [1, 2, 3, 4];
// console.log(rotateArray(array));                    // [2, 3, 4, 1]
// console.log(array);                                 // [1, 2, 3, 4]


// Rotation Part 2
/*
Problem:
  Given two numbers, x and n, rotate the last n digits of x by one place, moving
  the nth digit to the end

  Input: Number
    - number 1 must have at least as many digits as the value of number 2
    - number 2 must be positive
    - No non-number inputs
  Output: Number

  Rules:
    - from least to most significant, rotate digits one to the left
    - number 2 position is 1 based

Examples:
  See Test Cases

Data:
  Numbers: Input, output
  Arrays: used to manipulate digits, necessary to reverse
  String: mid point to array

Algorithm:
  - transform the first input number into an array of digits from least to most
    significant
  - concatenate the element at index (number2 - 1) with the elements up to that
    index and the numbers after that index
  - transform the new array into a number (reverse of step 1)
*/
// function rotateRightmostDigits(number, place) {
//   let digits = String(number).split('').reverse();
//   let index = place - 1;
//   let rotated = [digits[index]]
//     .concat(digits.slice(0, index), digits.slice(index + 1));

//   return Number(rotated.reverse().join(''));
// }

// console.log(rotateRightmostDigits(735291, 1));      // 735291
// console.log(rotateRightmostDigits(735291, 2));      // 735219
// console.log(rotateRightmostDigits(735291, 3));      // 735912
// console.log(rotateRightmostDigits(735291, 4));      // 732915
// console.log(rotateRightmostDigits(735291, 5));      // 752913
// console.log(rotateRightmostDigits(735291, 6));      // 352917


// Rotation Part 3
/*
Problem:
  Given a number retunr its maximum rotation

  Input: Number
    - non numbers? no
    - integer
  Output: Number

  Rules:
    - Maximum rotation: rotate leading digit to the end, rotate second most
      significant digit, rotate third most significant digit, etc
    - Leading zeros are dropped

Examples
  See Test Cases

Data:
  Number: input output
  Function: rotateRightmostDigits above

Algorithm:
  - convert the input number to a string
  - iterate length of input times, from max length to 2
    - rotate the string number using the iterator as the place
    - reassign the string to the rotated string
  - return the string converted into a number
*/
// function maxRotation(number) {
//   for (let iter = String(number).length; iter > 1; iter -= 1) {
//     number = rotateRightmostDigits(number, iter);
//   }

//   return number;
// }

// console.log(maxRotation(735291));          // 321579
// console.log(maxRotation(3));               // 3
// console.log(maxRotation(35));              // 53
// console.log(maxRotation(105));             // 15 -- the leading zero gets dropped
// console.log(maxRotation(8703529146));      // 7321609845


// Stack Machine Interpretation
// // eslint-disable-next-line max-lines-per-function
// function minilang(instructions) {
//   instructions = instructions.split(' ');
//   let register = 0;
//   let stack = [];

//   // eslint-disable-next-line max-lines-per-function
//   instructions.forEach(instruction => {
//     if (Number.isInteger(Number(instruction))) register = Number(instruction);

//     switch (instruction) {
//       case 'PUSH':
//         stack.push(register);
//         break;
//       case 'ADD':
//         register += stack.pop();
//         break;
//       case 'SUB':
//         register -= stack.pop();
//         break;
//       case 'MULT':
//         register *= stack.pop();
//         break;
//       case 'DIV':
//         register = Math.round(register / stack.pop());
//         break;
//       case 'REMAINDER':
//         register = Math.round(register % stack.pop());
//         break;
//       case 'POP':
//         register = stack.pop();
//         break;
//       case 'PRINT':
//         console.log(register);
//         break;
//     }
//   });
// }

// minilang('PRINT');
// // 0

// minilang('5 PUSH 3 MULT PRINT');
// // 15

// minilang('5 PRINT PUSH 3 PRINT ADD PRINT');
// // 5
// // 3
// // 8

// minilang('5 PUSH POP PRINT');
// // 5

// minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT');
// // 5
// // 10
// // 4
// // 7

// minilang('3 PUSH PUSH 7 DIV MULT PRINT');
// // 6

// minilang('4 PUSH PUSH 7 REMAINDER MULT PRINT');
// // 12

// minilang('-3 PUSH 5 SUB PRINT');
// // 8

// minilang('6 PUSH');
// // (nothing is printed because the `program` argument has no `PRINT` commands)


// Word to Digit
// function wordToDigit(string) {
//   const DIGITS = [
//     'zero', 'one', 'two', 'three', 'four',
//     'five', 'six', 'seven', 'eight', 'nine',
//   ];
//   const regex = /\b(one|two|three|four|five|six|seven|eight|nine)\b/g;
//   return string.replace(regex, function (match) {
//     return DIGITS.indexOf(match);
//   });
// }

// console.log(wordToDigit('Please call me at five five five one two three four. Thanks.'));
// // "Please call me at 5 5 5 1 2 3 4. Thanks."


// Fibonacci Number Recursion
// function fibonacci(num) {
//   if (num <= 2) return 1;

//   return fibonacci(num - 1) + fibonacci(num - 2);
// }

// console.log(fibonacci(1));       // 1
// console.log(fibonacci(2));       // 1
// console.log(fibonacci(3));       // 2
// console.log(fibonacci(4));       // 3
// console.log(fibonacci(5));       // 5
// console.log(fibonacci(12));      // 144
// console.log(fibonacci(20));      // 6765


// Fibonacci Number Procedural
// function fibonacci(num) {
//   let fibo = [1, 1];

//   for (let iter = 3; iter <= num; iter += 1) {
//     fibo = [fibo[1], fibo[1] + fibo[0]];
//   }

//   return fibo[1];
// }

// console.log(fibonacci(20));       // 6765
// console.log(fibonacci(50));       // 12586269025
// console.log(fibonacci(75));       // 2111485077978050


// Fibonacci Numbers Memoization
let fibonacciNums = [0, 1, 1];
function fibonacci(num) {
  if (fibonacciNums[num]) return fibonacciNums[num];

  fibonacciNums[num] = fibonacci(num - 1) + fibonacci(num - 2);
  return fibonacciNums[num];
}

console.log(fibonacci(1));       // 1
console.log(fibonacci(2));       // 1
console.log(fibonacci(3));       // 2
console.log(fibonacci(4));       // 3
console.log(fibonacci(5));       // 5
console.log(fibonacci(12));      // 144
console.log(fibonacci(20));      // 6765

console.log(fibonacci(50));       // 12586269025
console.log(fibonacci(75));       // 2111485077978050
