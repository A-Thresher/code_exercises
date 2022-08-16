// Cute Angles
// let dms = function(floatingAngle) {
//   if (floatingAngle < 0) {
//     while (floatingAngle < 0) {
//       floatingAngle += 360;
//     }
//   } else if (floatingAngle > 360) {
//     while (floatingAngle > 360) {
//       floatingAngle -= 360;
//     }
//   }

//   let angle = {};

//   angle.degrees = Math.floor(floatingAngle);
//   angle.minutes = Math.floor((floatingAngle % angle.degrees) * 60);
//   angle.seconds = Math.floor((((floatingAngle % angle.degrees) * 60) % angle.minutes) * 60);

//   for (let key in angle) {
//     if (key === 'degrees') continue;

//     if (isNaN(angle[key])) {
//       angle[key] = '00';
//     } else if (String(angle[key]).length === 1) {
//       angle[key] = '0' + String(angle[key]);
//     }
//   }

//   return `${angle.degrees}\xB0${angle.minutes}'${angle.seconds}"`
// }

// console.log(dms(30));           // 30°00'00"
// console.log(dms(76.73));        // 76°43'48"
// console.log(dms(254.6));        // 254°35'59"
// console.log(dms(93.034773));    // 93°02'05"
// console.log(dms(0));            // 0°00'00"
// console.log(dms(360));          // 360°00'00" or 0°00'00"

// console.log(dms(-1));   // 359°00'00"
// console.log(dms(400));  // 40°00'00"
// console.log(dms(-40));  // 320°00'00"
// console.log(dms(-420)); // 300°00'00"


// Combining Arrays
// function union(array1, array2) {
//   let union = [];

//   for (let element of array1) {
//     if (!union.includes(element)) {
//       union.push(element);
//     }
//   }

//   for (let element of array2) {
//     if (!union.includes(element)) {
//       union.push(element);
//     }
//   }

//   return union;
// }

// console.log(union([1, 3, 5], [3, 6, 9]));    // [1, 3, 5, 6, 9]


// Halvsies
// function halvsies(array) {
//   let halves = [[], []];
//   let halfMark = Math.ceil(array.length / 2);

//   for (let index = 0; index < array.length; index += 1) {
//     if (index < halfMark) {
//       halves[0].push(array[index]);
//     } else {
//       halves[1].push(array[index]);
//     }
//   }

//   return halves;
// }

// console.log(halvsies([1, 2, 3, 4]));       // [[1, 2], [3, 4]]
// console.log(halvsies([1, 5, 2, 4, 3]));    // [[1, 5, 2], [4, 3]]
// console.log(halvsies([5]));                // [[5], []]
// console.log(halvsies([]));                 // [[], []]


// Find the Duplicate
// function findDup(array) {
//   let arrayCopy = array.slice()
//   while (arrayCopy.length > 0) {
//     let checkNum = arrayCopy.pop();
//     if (arrayCopy.includes(checkNum)) return checkNum;
//   }
// }

// console.log(findDup([1, 5, 3, 1]));                                // 1
// console.log(findDup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
//          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
//          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
//          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
//          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
//          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
//          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
//          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
//          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
//           7, 34, 57, 74, 45, 11, 88, 67,  5, 58]));    // 73


// Combine Two Lists
// function interleave(array1, array2) {
//   let wovenArray = [];
//   for (let index = 0; index < array1.length; index += 1) {
//     wovenArray.push(array1[index], array2[index]);
//   }

//   return wovenArray;
// }

// console.log(interleave([1, 2, 3], ['a', 'b', 'c']));    // [1, "a", 2, "b", 3, "c"]


// Multiplicative Average
// function showMultiplicativeAverage(array) {
//   let mAverage = array.reduce((mult, num) => mult * num, 1) / array.length;

//   return mAverage.toFixed(3);
// }

// console.log(showMultiplicativeAverage([3, 5]));                   // "7.500"
// console.log(showMultiplicativeAverage([2, 5, 7, 11, 13, 17]));    // "28361.667"


// Multiply Lists
// function multiplyList(array1, array2) {
//   let newArray = [];

//   for (let index = 0; index < array1.length; index += 1) {
//     newArray.push(array1[index] * array2[index]);
//   }

//   return newArray;
// }

// console.log(multiplyList([3, 5, 7], [9, 10, 11]));    // [27, 50, 77]


// Digits List
// function digitList(number) {
//   let digits = [];

//   while (number > 0) {
//     digits.unshift(number % 10);
//     number = Math.floor(number / 10);
//   }

//   return digits;
// }

// function digitList(number) {
//   let numArray = String(number).split('');
//   return numArray.map(number => parseInt(number, 10));
// }

// console.log(digitList(12345));       // [1, 2, 3, 4, 5]
// console.log(digitList(7));           // [7]
// console.log(digitList(375290));      // [3, 7, 5, 2, 9, 0]
// console.log(digitList(444));         // [4, 4, 4]


// How Many
// function countOccurrences(array) {
//   let occurences = {};
//   for (let element of array) {
//     if (occurences[element]) {
//       occurences[element] += 1;
//     } else {
//       occurences[element] = 1;
//     }
//   }

//   for (let key in occurences) {
//     console.log(`${key} => ${occurences[key]}`);
//   }
// }

// const vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
//                 'motorcycle', 'motorcycle', 'car', 'truck'];

// countOccurrences(vehicles);

// // console output
// // car => 4
// // truck => 3
// // SUV => 1
// // motorcycle => 2


// Array Average
function average(array) {
  return Math.floor(array.reduce((sum, num) => sum + num) / array.length)
}

console.log(average([1, 5, 87, 45, 8, 8]));       // 25
console.log(average([9, 47, 23, 95, 16, 52]));    // 40
