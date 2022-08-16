'use strict';

// Madlibs Revisited
// function madlibs(template) {
//   const libs = {
//     adjective: ['quick', 'lazy', 'sleepy', 'noisy', 'hungry'],
//     noun: ['fox', 'dog', 'head', 'leg', 'tail', 'cat'],
//     verb: ['jumps', 'lifts', 'bites', 'licks', 'pats'],
//     adverb: ['easily', 'lazily', 'noisily', 'excitedly'],
//   };

//   return template.replace(/<<(.*?)>>/g, (_, p1) => {
//     return libs[p1][Math.floor(Math.random() * libs[p1].length)];
//   });
// }

// let template1 = "The <<adjective>> brown <<noun>> <<adverb>>\n" +
//                 "<<verb>> the <<adjective>> yellow\n" +
//                 "<<noun>>, who <<adverb>> <<verb>> his\n" +
//                 "<<noun>> and looks around.";

// let template2 = "The <<noun>> <<verb>> the <<noun>>'s <<noun>>";

// console.log(madlibs(template1));
// // The "sleepy" brown "cat" "noisily"
// // "licks" the "sleepy" yellow
// // "dog", who "lazily" "licks" his
// // "tail" and looks around.

// console.log(madlibs(template1));
// // The "hungry" brown "cat" "lazily"
// // "licks" the "noisy" yellow
// // "dog", who "lazily" "licks" his
// // "leg" and looks around.

// console.log(madlibs(template2));      // The "fox" "bites" the "dog"'s "tail".

// console.log(madlibs(template2));      // The "cat" "pats" the "cat"'s "head".


// // Transpose 3x3
// function transpose(matrix) {
//   let transposedMatrix = [];

//   for (let row of matrix) {
//     row.forEach((element, idx) => {
//       transposedMatrix[idx] = transposedMatrix[idx] || [];
//       transposedMatrix[idx].push(element);
//     });
//   }

//   return transposedMatrix;
// }

// const matrix = [
//   [1, 5, 8],
//   [4, 7, 2],
//   [3, 9, 6]
// ];

// const newMatrix = transpose(matrix);

// console.log(newMatrix);      // [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
// console.log(matrix);         // [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

// console.log(transpose([[1, 2, 3, 4]]));            // [[1], [2], [3], [4]]
// console.log(transpose([[1], [2], [3], [4]]));      // [[1, 2, 3, 4]]
// console.log(transpose([[1]]));                     // [[1]]

// console.log(transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]));
// // [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]


// // Rotating Matrices
// function rotate90(matrix) {
//   let rotatedMatrix = [];

//   for (let row of matrix) {
//     row.forEach((element, idx) => {
//       rotatedMatrix[idx] = rotatedMatrix[idx] || [];
//       rotatedMatrix[idx] = [element].concat(rotatedMatrix[idx]);
//     });
//   }

//   return rotatedMatrix;
// }

// const matrix1 = [
//   [1, 5, 8],
//   [4, 7, 2],
//   [3, 9, 6],
// ];

// const matrix2 = [
//   [3, 7, 4, 2],
//   [5, 1, 0, 8],
// ];

// const newMatrix1 = rotate90(matrix1);
// const newMatrix2 = rotate90(matrix2);
// const newMatrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))));

// console.log(newMatrix1);      // [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
// console.log(newMatrix2);      // [[5, 3], [1, 7], [0, 4], [8, 2]]
// console.log(newMatrix3);      // `matrix2` --> [[3, 7, 4, 2], [5, 1, 0, 8]]


// Merge Sorted Lists
// function merge(array1, array2) {
//   let mergedArray = [];
//   let array2Copy = [...array2];

//   array1.forEach(element => {
//     while (element > array2Copy[0]) {
//       mergedArray.push(array2Copy.shift());
//     }

//     mergedArray.push(element);
//   });

//   return mergedArray.concat(array2Copy);
// }

// console.log(merge([1, 5, 9], [2, 6, 8]));      // [1, 2, 5, 6, 8, 9]
// console.log(merge([1, 1, 3], [2, 2]));         // [1, 1, 2, 2, 3]
// console.log(merge([], [1, 4, 5]));             // [1, 4, 5]
// console.log(merge([1, 4, 5], []));             // [1, 4, 5]


// Merge Sort
/*
mergeSort - given an array, will sort and return the sorted array
merge - merges two sorted arrays
merge(mergeSort1, mergeSort2)
*/

// function mergeSort(array) {
//   if (array.length === 1) return array;

//   let middle = Math.floor(array.length / 2);
//   return merge(
//     mergeSort(array.slice(0, middle)), mergeSort(array.slice(middle))
//   );
// }

// console.log(mergeSort([9, 5, 7, 1]));           // [1, 5, 7, 9]
// console.log(mergeSort([5, 3]));                 // [3, 5]
// console.log(mergeSort([6, 2, 7, 1, 4]));        // [1, 2, 4, 6, 7]

// console.log(mergeSort(['Sue', 'Pete', 'Alice', 'Tyler', 'Rachel', 'Kim', 'Bonnie']));
// // ["Alice", "Bonnie", "Kim", "Pete", "Rachel", "Sue", "Tyler"]

// console.log(
//   mergeSort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46])
// );
// // [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]


// Binary Search
// eslint-disable-next-line max-lines-per-function
let binarySearch = function (data, term) {
  if (data.length === 0) return -1;

  let middle = Math.floor(data.length / 2);
  if (data[middle] === term) {
    return middle;
  } else if (data[middle] < term) {
    let step = binarySearch(data.slice(middle + 1), term);
    if (step === -1) {
      return -1;
    } else {
      return 1 + middle + step;
    }
  } else {
    let step = binarySearch(data.slice(0, middle), term);
    if (step === -1) {
      return -1;
    } else {
      return step;
    }
  }
};

const yellowPages = ['Apple Store', 'Bags Galore', 'Bike Store', 'Donuts R Us', 'Eat a Lot', 'Good Food', 'Pasta Place', 'Pizzeria', 'Tiki Lounge', 'Zooper'];
console.log(binarySearch(yellowPages, 'Pizzeria'));                   // 7
console.log(binarySearch(yellowPages, 'Apple Store'));                // 0

console.log(binarySearch([1, 5, 7, 11, 23, 45, 65, 89, 102], 77));    // -1
console.log(binarySearch([1, 5, 7, 11, 23, 45, 65, 89, 102], 89));    // 7
console.log(binarySearch([1, 5, 7, 11, 23, 45, 65, 89, 102], 5));     // 1

console.log(binarySearch(['Alice', 'Bonnie', 'Kim', 'Pete', 'Rachel', 'Sue', 'Tyler'], 'Peter'));  // -1
console.log(binarySearch(['Alice', 'Bonnie', 'Kim', 'Pete', 'Rachel', 'Sue', 'Tyler'], 'Tyler'));  // 6
