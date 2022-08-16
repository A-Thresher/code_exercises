// Array Concat Part 1
// function concat(array1, secondArgument) {
//   let newArray = array1.slice();

//   if (Array.isArray(secondArgument)) {
//     for (let element of secondArgument) {
//       newArray.push(element);
//     }
//   } else {
//     newArray.push(secondArgument);
//   }

//   return newArray;
// }

// console.log(concat([1, 2, 3], [4, 5, 6]));          // [1, 2, 3, 4, 5, 6]
// console.log(concat([1, 2], 3));                     // [1, 2, 3]
// console.log(concat([2, 3], ['two', 'three']));      // [2, 3, "two", "three"]
// console.log(concat([2, 3], 'four'));                // [2, 3, "four"]


// const obj = { a: 2, b: 3 };
// const newArray = concat([2, 3], obj);
// console.log(newArray);                              // [2, 3, { a: 2, b: 3 }]
// obj.a = 'two';
// console.log(newArray);                              // [2, 3, { a: "two", b: 3 }]

// const arr1 = [1, 2, 3];
// const arr2 = [4, 5, obj];
// const arr3 = concat(arr1, arr2);
// console.log(arr3);                                  // [1, 2, 3, 4, 5, { a: "two", b: 3 }]
// obj.b = 'three';
// console.log(arr3);                                  // [1, 2, 3, 4, 5, { a: "two", b: "three" }]

// arr3[5].b = 3;                         // or, `arr3[5]['b'] = 3;`
// console.log(obj);                                   // { a: "two", b: 3 }


// Array Concat Part 2
// function concat(...args) {
//   let newArray = [];

//   for (let argument of args) {
//     if (Array.isArray(argument)) {
//       for (let element of argument) {
//         newArray.push(element);
//       }
//     } else {
//       newArray.push(argument);
//     }
//   }

//   return newArray;
// }

// console.log(concat([1, 2, 3], [4, 5, 6], [7, 8, 9]));    // [1, 2, 3, 4, 5, 6, 7, 8, 9]
// console.log(concat([1, 2], 'a', ['one', 'two']));        // [1, 2, "a", "one", "two"]
// console.log(concat([1, 2], ['three'], 4));               // [1, 2, "three", 4]


// Array Pop and Push
// function pop(array) {
//   if (array.length === 0) return undefined;

//   let returnElement = array[array.length - 1];
//   array.length = array.length - 1;
//   return returnElement;
// }

// function push(array, ...values) {
//   if (values.length === 0) return array.length;

//   for (let value of values) {
//     array[array.length] = value;
//   }

//   return array.length;
// }

// // pop
// const array1 = [1, 2, 3];
// console.log(pop(array1));                        // 3
// console.log(array1);                // [1, 2]
// console.log(pop([]));                           // undefined
// console.log(pop([1, 2, ['a', 'b', 'c']]));      // ["a", "b", "c"]

// // push
// const array2 = [1, 2, 3];
// console.log(push(array2, 4, 5, 6));              // 6
// console.log(array2);                // [1, 2, 3, 4, 5, 6]
// console.log(push([1, 2], ['a', 'b']));          // 3
// console.log(push([], 1));                       // 1
// console.log(push([]));                          // 0


// Array and String Reverse
// function reverse(inputForReversal) {
//   let reversedInput = Array.isArray(inputForReversal) ? [] : '';

//   for (let index = inputForReversal.length - 1; index >= 0; index -= 1) {
//     reversedInput = reversedInput.concat(inputForReversal[index]);
//   }

//   return reversedInput;
// }

// console.log(reverse('Hello'));           // "olleH"
// console.log(reverse('a'));               // "a"
// console.log(reverse([1, 2, 3, 4]));      // [4, 3, 2, 1]
// console.log(reverse([]));                // []

// const array = [1, 2, 3];
// console.log(reverse(array));             // [3, 2, 1]
// console.log(array);                      // [1, 2, 3]


// Array Shift and Unshift
// function shift(array) {
//   return array.splice(0, 1)[0];
// }

// function unshift(array, ...values) {
//   array.length += values.length;

//   for (let index = array.length - 1; index >= 0; index -= 1) {
//     array[index] = array[index - values.length];
//   }

//   for (let index = 0; index < values.length; index += 1) {
//     array[index] = values[index];
//   }

//   return array.length;
// }

// console.log(shift([1, 2, 3]));                // 1
// console.log(shift([]));                       // undefined
// console.log(shift([[1, 2, 3], 4, 5]));        // [1, 2, 3]

// console.log(unshift([1, 2, 3], 5, 6));        // 5
// console.log(unshift([1, 2, 3]));              // 3
// console.log(unshift([4, 5], [1, 2, 3]));      // 3

// const testArray = [1, 2, 3];
// console.log(shift(testArray));                // 1
// console.log(testArray);                       // [2, 3]
// console.log(unshift(testArray, 5));           // 3
// console.log(testArray);                       // [5, 2, 3]


// Array Slice and Splice


// function slice(array, begin, end) {
//   if (begin > array.length) begin = array.length;
//   if (end > array.length) end = array.length;

//   let newArray = [];
//   for (let index = begin; index < end; index += 1) {
//     newArray.push(array[index]);
//   }

//   return newArray;
// }

// console.log(slice([1, 2, 3], 1, 2));               // [2]
// console.log(slice([1, 2, 3], 2, 0));               // []
// console.log(slice([1, 2, 3], 5, 1));               // []
// console.log(slice([1, 2, 3], 0, 5));               // [1, 2, 3]

// const arr1 = [1, 2, 3];
// console.log(slice(arr1, 1, 3));                     // [2, 3]
// console.log(arr1);                                  // [1, 2, 3]

// function splice(array, start, deleteCount, ...elements) {
//   if (start > array.length) start = array.length;
//   if (deleteCount > array.length - start) deleteCount > array.length - start;

//   let deletedElements = slice(array, start, start + deleteCount);
//   let arrayRemaining = slice(array, start + deleteCount, array.length);
//   array.length = start;

//   elements.forEach(element => array.push(element));
//   arrayRemaining.forEach(element => array.push(element));

//   return deletedElements;
// }

// console.log(splice([1, 2, 3], 1, 2));              // [2, 3]
// console.log(splice([1, 2, 3], 1, 3));              // [2, 3]
// console.log(splice([1, 2, 3], 1, 0));              // []
// console.log(splice([1, 2, 3], 0, 1));              // [1]
// console.log(splice([1, 2, 3], 1, 0, 'a'));         // []

// const arr2 = [1, 2, 3];
// console.log(splice(arr2, 1, 1, 'two'));             // [2]
// console.log(arr2);                                  // [1, "two", 3]

// const arr3 = [1, 2, 3];
// console.log(splice(arr3, 1, 2, 'two', 'three'));    // [2, 3]
// console.log(arr3);                                  // [1, "two", "three"]

// const arr4 = [1, 2, 3];
// console.log(splice(arr4, 1, 0));                    // []
// console.log(splice(arr4, 1, 0, 'a'));               // []
// console.log(arr4);                                  // [1, "a", 2, 3]

// const arr5 = [1, 2, 3];
// console.log(splice(arr5, 0, 0, 'a'));               // []
// console.log(arr5);                                  // ["a", 1, 2, 3]


// Array Comparison
function areArraysEqual(array1, array2) {
  if (array1.length !== array2.length) return false;

  array1Sorted = array1.slice().sort();
  array2Sorted = array2.slice().sort();

  for (let index = 0; index < array1Sorted.length; index += 1) {
    if (array1Sorted[index] !== array2Sorted[index]) return false;
  }

  return true;
}

console.log(areArraysEqual([1, 2, 3], [1, 2, 3]));                  // true
console.log(areArraysEqual([1, 2, 3], [3, 2, 1]));                  // true
console.log(areArraysEqual(['a', 'b', 'c'], ['b', 'c', 'a']));      // true
console.log(areArraysEqual(['1', 2, 3], [1, 2, 3]));                // false
console.log(areArraysEqual([1, 1, 2, 3], [3, 1, 2, 1]));            // true
console.log(areArraysEqual([1, 2, 3, 4], [1, 1, 2, 3]));            // false
console.log(areArraysEqual([1, 1, 2, 2], [4, 2, 3, 1]));            // false
console.log(areArraysEqual([1, 1, 2], [1, 2, 2]));                  // false
console.log(areArraysEqual([1, 1, 1], [1, 1]));                     // false
console.log(areArraysEqual([1, 1], [1, 1]));                        // true
