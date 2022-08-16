'use strict';

// // Diamonds
// let diamond = function (size) {
//   let step = 2;
//   for (let diamonds = 1; diamonds > 0; diamonds += step) {
//     let pad = (size - diamonds) / 2;
//     let row = diamonds === 1 ? '*' : '*' + ' '.repeat(diamonds - 2) + '*';
//     console.log(row.padStart(diamonds + pad));

//     if (diamonds === size) step = -2;
//   }
// };

// diamond(1);
// diamond(3);
// diamond(9);


// // Now I Know My ABCs
// /*
// Problem:
//   Given a collection of letter sets return whether a given string can be
//   constructed using only one letter of any applicable set

//   Input: String
//     - any characters
//   Output: Boolean
//     - true if the letter characters only consist of one of any set of letters
//     - false otherwise

//   Rules:
//     - Words that do not use both letters from any given set
//     - Each set may only be used once
//     - case insensitive
//     - non-string inputs? - No
//     - non-letter characters? - Yes, include as is
//     - empty strings? - Yes, return false

// Examples:
// BATCH -> true
// butch -> false (U and H are a set)
// jest -> true
// */
// let abcCheck = function (string) {
//   if (string.length === 0) return false;

//   const BLOCKS = {
//     B: "O",   X: "K",   D: "Q",   C: "P",   N: "A",
//     G: "T",   R: "E",   F: "S",   J: "W",   H: "U",
//     V: "I",   L: "Y",   Z: "M",
//   };

//   let upperString = string.toUpperCase();
//   for (let char of upperString) {
//     if (/[^A-Z]/.test(char)) continue;

//     let regex = new RegExp(char, 'gi');
//     if (upperString.match(regex).length > 1
//         || upperString.includes(BLOCKS[char])) {
//       return false;
//     }
//   }

//   return true;
// };

// console.log(abcCheck('BATCH') === true);
// console.log(abcCheck('butch') === false);
// console.log(abcCheck('jest') === true);
// console.log(abcCheck('123jest123') === true);
// console.log(abcCheck('') === false);
// console.log(abcCheck('BXDB') === false);
// console.log(abcCheck("jest_ox'z") === true);
// console.log(abcCheck("jest_ox's") === false);


// 1000 Lights
/*
Problem:
  Given a number of switches, flip switches whose index are a multiple of 1,
  then those that are a multiple of 2, then 3, up to the number of switches.
  Return the position of which switches are in the on position after all passes

  Input: Number
    - Integer number of switches
  Output: Array
    - Positions of the 'on' switches

  Rules:
    - Each pass begins at the left and goes right
    - Switch positions start at 1 and go to the input number
      - 100 -> 1 - 100, not 0 - 99
    - input 0? output empty array
    - input negative? output empty array
    - input non-number? no

Examples:
5 -> [1, 4]
100 -> [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]

Data:
  Array: traverse in order
  Boolean: model switch, true -> on, false -> off
  Number: input, array size

Algorithm:
  - create an array of false booleans of the input integer size
  - iterate the length of the array times
    - iterate through the array
      - flip the boolean at the indicies that are multiples of the outer loop
        iteration count
  - declare a results array
  - iterate through the array of switches
    - if the current element is true
      - get it's index, add one to the index, and push to the results array
  - return the results array
*/
// let lightsOn = function (lightsCount) {
//   if (lightsCount < 1) return [];

//   let lights = new Array(lightsCount).fill(false);
//   for (let multiple = 1; multiple <= lights.length; multiple += 1) {
//     lights = lights.map((light, index) => {
//       return (index + 1) % multiple === 0 ? !light : light;
//     });
//   }

//   let results = [];
//   lights.forEach((light, index) => {
//     if (light) results.push(index + 1);
//   });

//   return results;
// };

// console.log(lightsOn(5));    // [1, 4]
// console.log(lightsOn(100));  // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
// console.log(lightsOn(0));    // []
// console.log(lightsOn(-5));   // []


// Ceasar Cipher
/*
Problem:
  Given a string and a number, return a string with each letter character
  shifted the number spaces through the alphabet

  Input: String to be encrypted, number key
    - non-string input? No
    - no key? No
    - negative key? wraps from 0 (-2 === 24)
    - key greater than 26? wraps (28 === 2)
    - string can contain any characters
  Output: encrypted string
    - only shift letters

  Rules:
    - only encrypt letters
    - letter case matches

Examples: see test cases

Data:
  String: input, output
  Array: useful for processing (map)
  Number: key

Algorithm:
  - declare alphabet size constant as 26
  - declare code position constant for a and z
  - iterate through the input string characters as an array
    - if the current character is a letter
      - get the character code for the current character in lowercase
      - add the key to the character code
      - while the code is greater than the position constant of z subtract
        alphabet size
      - while the code is less than the position constant of a add alphabet size
      - reassign the current character to the character at the code, matched to
        the original case
    - return the current character
  - return shifted string
*/
// let caesarEncrypt = function(string, key) {
//   const ALPHA_SIZE = 26;
//   const ALPHA_BOUNDS = { a: 'a'.charCodeAt(), z: 'z'.charCodeAt() };

//   return string.split('').map(char => {
//     if (/[a-z]/i.test(char)) {
//       let charCode = key + char.toLowerCase().charCodeAt();

//       while (charCode > ALPHA_BOUNDS.z) {
//         charCode -= ALPHA_SIZE;
//       }

//       while (charCode < ALPHA_BOUNDS.a) {
//         charCode += ALPHA_SIZE;
//       }

//       let newChar = String.fromCharCode(charCode);
//       char = char === char.toUpperCase() ? newChar.toUpperCase() : newChar;
//     }

//     return char;
//   }).join('');
// };

// // simple shift
// console.log(caesarEncrypt('A', 0));       // "A"
// console.log(caesarEncrypt('A', 3));       // "D"

// // wrap around
// console.log(caesarEncrypt('y', 5));       // "d"
// console.log(caesarEncrypt('a', 47));      // "v"

// // all letters
// console.log(caesarEncrypt('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 25));
// // "ZABCDEFGHIJKLMNOPQRSTUVWXY"
// console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', 5));
// // "Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl!"

// // key variations
// console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', 0));
// console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', -21));
// console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', 31));

// // many non-letters
// console.log(caesarEncrypt('There are, as you can see, many punctuations. Right?; Wrong?', 2));
// // "Vjgtg ctg, cu aqw ecp ugg, ocpa rwpevwcvkqpu. Tkijv?; Ytqpi?"


// Vigenere Cipher
/*
Problem:
  Encrypt a given string by shifting each character using the alphabetic
  position of the current character in the key string.

  Input: message string, key string
    - message can contain any characters
    - key can only contain alphabetic characters
    - assume appropriate inputs
  Output: string
    - encrypted string

  Rules:
    - shift values match key letter alphabetic positions (a -> 0, z -> 25)
    - keys are case insensitive
    - message letter characters are case sensitive
    - non letter characters are returned as is

Example:
plaintext: Pineapples don't go on pizzas!
keyword: meat

Applying the Vigenere Cipher for each alphabetic character:
plaintext : Pine appl esdo ntgo onpi zzas
shift     : meat meat meat meat meat meat
ciphertext: Bmnx mtpe qwdh zxgh arpb ldal

result: Bmnxmtpeqw dhz'x gh ar pbldal!


*/

// let vigenereEncrypt = function(string, key) {
//   const ALPHA_SIZE = 26;
//   const ALPHA_BOUNDS = { a: 'a'.charCodeAt(), z: 'z'.charCodeAt() };
//   let keyPosition = 0;

//   return string.split('').map(char => {
//     if (/[a-z]/i.test(char)) {
//       let shift = key[keyPosition].toLowerCase().charCodeAt() - ALPHA_BOUNDS.a;
//       let charCode = shift + char.toLowerCase().charCodeAt();

//       while (charCode > ALPHA_BOUNDS.z) {
//         charCode -= ALPHA_SIZE;
//       }

//       let newChar = String.fromCharCode(charCode);
//       char = char === char.toUpperCase() ? newChar.toUpperCase() : newChar;
//       keyPosition = keyPosition < key.length - 1 ? keyPosition + 1 : 0;
//     }

//     return char;
//   }).join('');
// };

// console.log(vigenereEncrypt("Pineapples don't go on pizzas!", "meat"));
// // Bmnxmtpeqw dhz'x gh ar pbldal!

// console.log(vigenereEncrypt('The quick brown fox jumps over the lazy dog!', 'f'));
// // "Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl!"


// Seeing Stars
/*
Problem:
  Given a number, display an 8 pointed star as shown in examples

  Input: Number
    - Odd integer greater than 6
  Output: displayed star
    - 8 pointed
    - input number of asterisks for each 'line'

  Rules:
    - smallest input is 7
    - total width is input number of characters
    - total height is input number of rows

Examples:
  See test cases

Data:
  Integer: Input, number of stars, number of spaces
  String: each row will be a string
  Array: containing top rows

Algorithm:
  - declare starTop variable to an empty array
  - iterate number of rows divided by 2 (rounded down) times
    - construct string containing:
      left padding (iteration number of spaces)
      *
      interior padding ((input number - 3 - iteration * 2) / 2 number of spaces)
      *
      interior padding
      *
    - push the string to starTop
  - output each element of starTop sequentially
  - output a string of input number of '*'
  - output each element of starTop in reverse
*/
function star(size) {
  let starTop = [];
  for (let iter = 0; iter < Math.floor(size / 2); iter += 1) {
    let leftPad = ' '.repeat(iter);
    let intPad = ' '.repeat((size - 3 - (iter * 2)) / 2);
    starTop.push(leftPad + '*' + intPad + '*' + intPad + '*');
  }

  starTop.forEach(line => console.log(line));
  console.log('*'.repeat(size));
  starTop.reverse().forEach(line => console.log(line));
}

star(7);
// logs
// *  *  *
//  * * *
//   ***
// *******
//   ***
//  * * *
// *  *  *

star(9);
// logs
// *   *   *
//  *  *  *
//   * * *
//    ***
// *********
//    ***
//   * * *
//  *  *  *
// *   *   *
