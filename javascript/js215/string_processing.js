'use strict';

// // Uppercase Check
// let isUppercase = function (string) {
//   return string === string.toUpperCase();
// };

// console.log(isUppercase('t'));               // false
// console.log(isUppercase('T'));               // true
// console.log(isUppercase('Four Score'));      // false
// console.log(isUppercase('FOUR SCORE'));      // true
// console.log(isUppercase('4SCORE!'));         // true
// console.log(isUppercase(''));                // true


// // Delete Vowels
// let removeVowels = function (strings) {
//   return strings.map(string => string.replace(/[aeiou]/ig, ''));
// };

// console.log(removeVowels(['abcdefghijklmnopqrstuvwxyz']));         // ["bcdfghjklmnpqrstvwxyz"]
// console.log(removeVowels(['green', 'YELLOW', 'black', 'white']));  // ["grn", "YLLW", "blck", "wht"]
// console.log(removeVowels(['ABC', 'AEIOU', 'XYZ']));                // ["BC", "", "XYZ"]


// // Lettercase Counter
// let letterCaseCount = function (string) {
//   let counts = { lowercase: 0, uppercase: 0, neither: 0 };
//   for (let char of string) {
//     if (/[A-Z]/.test(char)) {
//       counts.uppercase += 1;
//     } else if (/[a-z]/.test(char)) {
//       counts.lowercase += 1;
//     } else {
//       counts.neither += 1;
//     }
//   }

//   return counts;
// };

// console.log(letterCaseCount('abCdef 123'));  // { lowercase: 5, uppercase: 1, neither: 4 }
// console.log(letterCaseCount('AbCd +Ef'));    // { lowercase: 3, uppercase: 3, neither: 2 }
// console.log(letterCaseCount('123'));         // { lowercase: 0, uppercase: 0, neither: 3 }
// console.log(letterCaseCount(''));            // { lowercase: 0, uppercase: 0, neither: 0 }


// // Capitalize Words
// let wordCap = function (string) {
//   return string
//     .toLowerCase()
//     .split(/\s/)
//     .map(word => word[0].toUpperCase() + word.slice(1))
//     .join(' ');
// };

// console.log(wordCap('four score and seven'));       // "Four Score And Seven"
// console.log(wordCap('the javaScript language'));    // "The Javascript Language"
// console.log(wordCap('this is a "quoted" word'));    // 'This Is A "quoted" Word'


// // Swap Case
// let swapCase = function (string) {
//   return string
//     .split('')
//     .map(char => {
//       if (/[a-z]/.test(char)) {
//         return char.toUpperCase();
//       } else if (/[A-Z]/.test(char)) {
//         return char.toLowerCase();
//       } else {
//         return char;
//       }
//     })
//     .join('');
// };

// console.log(swapCase('CamelCase'));              // "cAMELcASE"
// console.log(swapCase('Tonight on XYZ-TV'));      // "tONIGHT ON xyz-tv"


// // Staggered Caps Part 1
// let staggeredCase = function (string) {
//   return string
//     .toLowerCase()
//     .split('')
//     .map((char, index) => {
//       if (index % 2 === 0) {
//         return char.toUpperCase();
//       } else {
//         return char;
//       }
//     })
//     .join('');
// };

// console.log(staggeredCase('I Love Launch School!'));        // "I LoVe lAuNcH ScHoOl!"
// console.log(staggeredCase('ALL_CAPS'));                     // "AlL_CaPs"
// console.log(staggeredCase('ignore 77 the 4444 numbers'));   // "IgNoRe 77 ThE 4444 nUmBeRs"


// // Staggered Caps Part 2
// let staggeredCase = function (string) {
//   let capitalize = true;

//   return string
//     .toLowerCase()
//     .split('')
//     .map(char => {
//       if (/[a-z]/i.test(char)) {
//         if (capitalize) {
//           capitalize = false;
//           return char.toUpperCase();
//         } else {
//           capitalize = true;
//           return char.toLowerCase();
//         }
//       } else {
//         return char;
//       }
//     })
//     .join('');
// };

// console.log(staggeredCase('I Love Launch School!')     === "I lOvE lAuNcH sChOoL!");
// console.log(staggeredCase('ALL CAPS')                  === "AlL cApS");
// console.log(staggeredCase('ignore 77 the 444 numbers') === "IgNoRe 77 ThE 444 nUmBeRs");


// // How Long Are You
// let wordLengths = function (string) {
//   if (string === '' || string === undefined) return [];

//   return string.split(' ').map(word => `${word} ${String(word.length)}`);
// };

// console.log(wordLengths('cow sheep chicken'));
// // ["cow 3", "sheep 5", "chicken 7"]

// console.log(wordLengths('baseball hot dogs and apple pie'));
// // ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

// console.log(wordLengths("It ain't easy, is it?"));
// // ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

// console.log(wordLengths('Supercalifragilisticexpialidocious'));
// // ["Supercalifragilisticexpialidocious 34"]

// console.log(wordLengths(''));      // []
// console.log(wordLengths());        // []


// // Search Word Part 1
// let searchWord = function (word, string) {
//   if (word === undefined || string === undefined) return 'Missing argument';

//   let regex = new RegExp(`\\b${word}\\b`, 'ig');
//   let matches = string.match(regex);
//   return matches ? matches.length : 0;
// };

// const text = 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?';

// console.log(searchWord('qui', text));      // 3


// Search Word Part 2
let searchWord = function (word, string) {
  if (word === undefined || string === undefined) return 'Missing argument';

  let regex = new RegExp(`\\b${word}\\b`, 'ig');
  return string.replace(regex, `**${word.toUpperCase()}**`);
};

const text = 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?';

console.log(searchWord('sed', text));
// returns
// "**SED** ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, **SED** quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, **SED** quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
