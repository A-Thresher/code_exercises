// Double Char Part 1
// function repeater(string) {
//   let doubledString = '';

//   for (let char of string) {
//     doubledString += char + char;
//   }

//   return doubledString;
// }

// console.log(repeater('Hello'));        // "HHeelllloo"
// console.log(repeater('Good job!'));    // "GGoooodd  jjoobb!!"
// console.log(repeater(''));             // ""


// Double Char Part 2
// function doubleConsonants(string) {
//   let doubledString = '';

//   for (let char of string) {
//     if (/[bcdfghjklmnpqrstvwxz]/gi.test(char)) {
//       doubledString += char + char;
//     } else {
//       doubledString += char;
//     }
//   }

//   return doubledString;
// }

// console.log(doubleConsonants('String'));          // "SSttrrinngg"
// console.log(doubleConsonants('Hello-World!'));    // "HHellllo-WWorrlldd!"
// console.log(doubleConsonants('July 4th'));        // "JJullyy 4tthh"
// console.log(doubleConsonants(''));                // ""


// Reverse Number
// let reverseNumber = (number) => Number(String(number).split('').reverse().join(''));

// console.log(reverseNumber(12345));    // 54321
// console.log(reverseNumber(12213));    // 31221
// console.log(reverseNumber(456));      // 654
// console.log(reverseNumber(12000));    // 21 -- Note that zeros get dropped!
// console.log(reverseNumber(1));        // 1


// Get the Middle Character
// function centerOf(string) {
//   let middle = Math.floor(string.length / 2);
//   if (string.length % 2 === 0) {
//     return string[middle - 1] + string[middle];
//   } else {
//     return string[middle];
//   }
// }

// console.log(centerOf('I Love JavaScript')); // "a"
// console.log(centerOf('Launch School'));     // " "
// console.log(centerOf('Launch'));            // "un"
// console.log(centerOf('Launchschool'));      // "hs"
// console.log(centerOf('x'));                 // "x"


// Always Return Negative
// let negative = (num) => -Math.abs(num);
// let negative = (num) => num >= 0 ? -num : num;

// console.log(negative(5));     // -5
// console.log(negative(-3));    // -3
// console.log(negative(0));     // -0


// Counting Up
// function sequence(num) {
//   let numSet = [];
//   for (let i = 1; i <= num; i += 1) {
//     numSet.push(i);
//   }

//   return numSet;
// }

// console.log(sequence(5));    // [1, 2, 3, 4, 5]
// console.log(sequence(3));    // [1, 2, 3]
// console.log(sequence(1));    // [1]


// Name Swapping
// function swapName(nameString) {
//   let nameArray = nameString.split(' ');
//   return `${nameArray[1]}, ${nameArray.slice(0, -1).join(' ')}`;
// }

// console.log(swapName('Joe Roberts'));    // "Roberts, Joe"
// console.log(swapName('Joe Jeffery Roberts'));


// Sequence Count
// function sequence(count, start) {
//   let result = [];
//   for (let i = 1; i <= count; i += 1) {
//     result.push(i * start);
//   }

//   return result;
// }

// console.log(sequence(5, 1));          // [1, 2, 3, 4, 5]
// console.log(sequence(4, -7));         // [-7, -14, -21, -28]
// console.log(sequence(3, 0));          // [0, 0, 0]
// console.log(sequence(0, 1000000));    // []


// Reverse It Part 1
// let reverseSentence = (string) => string.split(' ').reverse().join(' ');

// console.log(reverseSentence(''));                       // ""
// console.log(reverseSentence('Hello World'));            // "World Hello"
// console.log(reverseSentence('Reverse these words'));    // "words these Reverse"


// Reverse It Part 2
function reverseWords(string) {
  let stringArray = string.split(' ')
  stringArray = stringArray.map((word) => {
    return word.length > 4 ? word.split('').reverse().join('') : word
  });

  return stringArray.join(' ');
}

console.log(reverseWords('Professional'));             // "lanoisseforP"
console.log(reverseWords('Walk around the block'));    // "Walk dnuora the kcolb"
console.log(reverseWords('Launch School'));            // "hcnuaL loohcS"
