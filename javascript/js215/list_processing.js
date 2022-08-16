'use strict';

// Sum of Digits
// let sum = function sum(int) {
//   return String(int).split('').reduce((sum, digit) => sum + Number(digit), 0);
// }

// console.log(sum(23));           // 5
// console.log(sum(496));          // 19
// console.log(sum(123456789));    // 45


// Alphabetical Numbers
// let alphabeticNumberSort = function (numbers) {
//   return [...numbers].sort(wordSort);
// }

// let wordSort = function (num1, num2) {
//   const ENGLISH_NUMBERS = [
//     'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight',
//     'nine', 'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen',
//     'seventeen', 'eighteen', 'nineteen',
//   ];

//   if (ENGLISH_NUMBERS[num1] > ENGLISH_NUMBERS[num2]) {
//     return 1;
//   } else if (ENGLISH_NUMBERS[num1] < ENGLISH_NUMBERS[num2]) {
//     return -1;
//   } else {
//     return 0;
//   }
// }

// console.log(alphabeticNumberSort(
//   [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]
//   ));
// // [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]


// Multiply All Pairs
// let multiplyAllPairs = function (array1, array2) {
//   let multiples = [];

//   array1.forEach(num1 => {
//     array2.forEach(num2 => {
//       multiples.push(num1 * num2);
//     });
//   });

//   return multiples.sort((a, b) => a - b);
// }

// console.log(multiplyAllPairs([2, 4], [4, 3, 1, 2]));
// // [2, 4, 4, 6, 8, 8, 12, 16]


// Sum of Sums
// let sumOfSums = function (numbers) {
//   let sums = [0];
//   numbers.forEach(num => sums.push(num + sums.at(-1)));

//   return sums.reduce((sum, num) => sum + num);
// }

// console.log(sumOfSums([3, 5, 2]));        // (3) + (3 + 5) + (3 + 5 + 2) --> 21
// console.log(sumOfSums([1, 5, 7, 3]));     // (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) --> 36
// console.log(sumOfSums([4]));              // 4
// console.log(sumOfSums([1, 2, 3, 4, 5]));  // 35


// Leading Substrings
// let leadingSubstrings = function (string) {
//   let substrings = [''];
//   string.split('').forEach(char => substrings.push(substrings.at(-1) + char));

//   return substrings.slice(1);
// }

// console.log(leadingSubstrings('abc'));      // ["a", "ab", "abc"]
// console.log(leadingSubstrings('a'));        // ["a"]
// console.log(leadingSubstrings('xyzzy'));    // ["x", "xy", "xyz", "xyzz", "xyzzy"]


// All Substrings
// let substrings = function (string) {
//   let substr = [];
//   for (let index = 0; index < string.length; index += 1) {
//     substr = substr.concat(leadingSubstrings(string.slice(index)));
//   }

//   return substr;
// }

// console.log(substrings('abcde'));
// // returns
// // [ "a", "ab", "abc", "abcd", "abcde",
// //   "b", "bc", "bcd", "bcde",
// //   "c", "cd", "cde",
// //   "d", "de",
// //   "e" ]


// Palindromic Substrings
// let palindromes = function (string) {
//   return substrings(string).filter(string => {
//     return string.length > 1 && string === string.split('').reverse().join('');
//   });
// }

// console.log(palindromes('abcd'));       // []
// console.log(palindromes('madam'));      // [ "madam", "ada" ]

// console.log(palindromes('hello-madam-did-madam-goodbye'));
// // returns
// // [ "ll", "-madam-", "-madam-did-madam-", "madam", "madam-did-madam", "ada",
// //   "adam-did-mada", "dam-did-mad", "am-did-ma", "m-did-m", "-did-", "did",
// //   "-madam-", "madam", "ada", "oo" ]

// console.log(palindromes('knitting cassettes'));
// // returns
// // [ "nittin", "itti", "tt", "ss", "settes", "ette", "tt" ]


// Grocery List
// let buyFruit = function (groceryList) {
//   let items = [];
//   groceryList.forEach(([item, qty]) => {
//     while (qty > 0) {
//       items.push(item);
//       qty -= 1;
//     }
//   });

//   return items;
// }

// console.log(buyFruit([['apple', 3], ['orange', 1], ['banana', 2]]));
// // returns ["apple", "apple", "apple", "orange", "banana", "banana"]


// Inventory Item Transactions
let transactionsFor = function (id, transactions) {
  return transactions.filter(transaction => transaction.id === id);
}

const transactions = [ { id: 101, movement: 'in',  quantity:  5 },
                       { id: 105, movement: 'in',  quantity: 10 },
                       { id: 102, movement: 'out', quantity: 17 },
                       { id: 101, movement: 'in',  quantity: 12 },
                       { id: 103, movement: 'out', quantity: 15 },
                       { id: 102, movement: 'out', quantity: 15 },
                       { id: 105, movement: 'in',  quantity: 25 },
                       { id: 101, movement: 'out', quantity: 18 },
                       { id: 102, movement: 'in',  quantity: 22 },
                       { id: 103, movement: 'out', quantity: 15 }, ];

// console.log(transactionsFor(101, transactions));
// // returns
// // [ { id: 101, movement: "in",  quantity:  5 },
// //   { id: 101, movement: "in",  quantity: 12 },
// //   { id: 101, movement: "out", quantity: 18 }, ]


// Inventory Item Availability
let isItemAvailable = function (id, transactions) {
  let inv = transactionsFor(id, transactions)
    .reduce((inventory, transaction) => {
      if (transaction.movement === 'in') {
        return inventory + transaction.quantity;
      } else if (transaction.movement === 'out') {
        return inventory - transaction.quantity;
      }
    }, 0);

  return inv > 0;
}

console.log(isItemAvailable(101, transactions));     // false
console.log(isItemAvailable(105, transactions));     // true
