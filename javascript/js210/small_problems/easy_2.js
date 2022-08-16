// Ddaaiillyy ddoouubbllee
// function crunch(string) {
//   let crunchString = '';
//   let lastCrunchStringIndex = -1;

//   for (let char of string) {
//     if (char === crunchString[lastCrunchStringIndex]) {
//       continue;
//     } else {
//       crunchString += char;
//       lastCrunchStringIndex += 1;
//     }
//   }

//   return crunchString;
// }

// console.log(crunch('ddaaiillyy ddoouubbllee') === "daily double");
// console.log(crunch('4444abcabccba')           === "4abcabcba");
// console.log(crunch('ggggggggggggggg')         === "g");
// console.log(crunch('a')                       === "a");
// console.log(crunch('')                        === "");


// Bannerizer
// function logInBox(string, width) {
//   let multiLineStr = [];
//   let lineWidth = width ? width - 4 : string.length;

//   for (let index = 0; index < string.length; index += lineWidth) {
//     let stringSlice = string.slice(index, index + lineWidth);
//     while (stringSlice.length < lineWidth) {
//       stringSlice += ' ';
//     }

//     multiLineStr.push(stringSlice);
//   }

//   let boundingStr = '+-' + '-'.repeat(lineWidth) + '-+';
//   let marginStr = '| ' + ' '.repeat(lineWidth) + ' |';

//   console.log(boundingStr);
//   console.log(marginStr);
//   multiLineStr.forEach(line => console.log('| ' + line + ' |'));
//   console.log(marginStr);
//   console.log(boundingStr);
// }

// logInBox('To boldly go where no one has gone before.', 20);
// logInBox('', 5);


// Stringy Strings
// let stringy = function(inputNum) {
//   let outputStr = '';
//   let nextCharIsOne = true;

//   while (inputNum > 0) {
//     outputStr += nextCharIsOne ? '1' : '0';
//     inputNum--;
//     nextCharIsOne = !nextCharIsOne;
//   }

//   return outputStr;
// }

// console.log(stringy(6) === "101010");
// console.log(stringy(9) === "101010101");
// console.log(stringy(4) === "1010");
// console.log(stringy(7) === "1010101");


// Fibonacci Number Location by Length
// function findFibonacciIndexByLength(digitTarget) {
//   let fiboLength = 1n;
//   let fiboPair = [1n, 1n]
//   let fiboIndex = 2n;
//   while (fiboLength !== digitTarget) {
//     fiboPair = [fiboPair[1], (fiboPair[0] + fiboPair[1])];
//     fiboLength = BigInt(String(fiboPair[1]).length);
//     fiboIndex += 1n;
//   }

//   return fiboIndex;
// }

// console.log(findFibonacciIndexByLength(2n) === 7n);    // 1 1 2 3 5 8 13
// console.log(findFibonacciIndexByLength(3n) === 12n);   // 1 1 2 3 5 8 13 21 34 55 89 144
// console.log(findFibonacciIndexByLength(10n) === 45n);
// console.log(findFibonacciIndexByLength(16n) === 74n);
// console.log(findFibonacciIndexByLength(100n) === 476n);
// console.log(findFibonacciIndexByLength(1000n) === 4782n);
// console.log(findFibonacciIndexByLength(10000n) === 47847n);

// The last example may take a minute or so to run.


// Right Triangles
// function triangle(size) {
//   let numAst = 1;
//   while (size >= numAst) {
//     console.log(`${' '.repeat(size - numAst)}${'*'.repeat(numAst)}`);
//     numAst += 1;
//   }
// }

// triangle(5);
// triangle(9);


// Madlibs
// const readlineSync = require('readline-sync');

// const noun = readlineSync.question('Enter a noun: ');
// const verb = readlineSync.question('Enter a verb: ');
// const adjective = readlineSync.question('Enter a adjective: ');
// const adverb = readlineSync.question('Enter a adverb: ');

// console.log(`Do you ${verb} your ${adjective} ${noun} ${adverb}? That's hilarious!`);


// Double Doubles
// function twice(number) {
//   if (doubleNumber(number)) {
//     return number
//   } else {
//     return number * 2;
//   }
// }

// function doubleNumber(number) {
//   let numStr = String(number);
//   let middle = numStr.length / 2;
//   return Number.isInteger(middle)
//          && numStr.slice(0, middle) === numStr.slice(middle);
// }

// console.log(twice(37)      === 74);
// console.log(twice(44)      === 44);
// console.log(twice(334433)  === 668866);
// console.log(twice(444)     === 888);
// console.log(twice(107)     === 214);
// console.log(twice(103103)  === 103103);
// console.log(twice(3333)    === 3333);
// console.log(twice(7676)    === 7676);


// Grade Book
// function getGrade(...scores) {
//   const avgScore = scores.reduce((sum, score) => sum += score) / 3;

//   return grade(avgScore);
// }

// function grade(score) {
//   if (score > 90) {
//     return 'A'
//   } else if (score > 80) {
//     return 'B'
//   } else if (score > 70) {
//     return 'C'
//   } else if (score > 60) {
//     return 'D'
//   } else {
//     return 'F'
//   }
// }

// console.log(getGrade(95, 90, 93));    // "A"
// console.log(getGrade(50, 50, 95));    // "D"


// Clean Up the Words
// function cleanUp(string) {
//   return string.replace(/[^a-zA-Z]+/g, ' ');
// }

// console.log(cleanUp("---what's my +*& line?"));    // " what s my line "


// What Century is That
function century(year) {
  const centuryValue = String(Math.ceil(year / 100));

  if (/.*(11|12|13)$/.test(centuryValue)) {
    return `${centuryValue}th`
  } else if (/.*1$/.test(centuryValue)) {
    return `${centuryValue}st`
  } else if (/.*2$/.test(centuryValue)) {
    return `${centuryValue}nd`
  } else if (/.*3$/.test(centuryValue)) {
    return `${centuryValue}rd`
  } else {
    return `${centuryValue}th`
  }
}

console.log(century(2000)  === "20th");
console.log(century(2001)  === "21st");
console.log(century(1965)  === "20th");
console.log(century(256)   === "3rd");
console.log(century(5)     === "1st");
console.log(century(10103) === "102nd");
console.log(century(1052)  === "11th");
console.log(century(1127)  === "12th");
console.log(century(11201) === "113th");
