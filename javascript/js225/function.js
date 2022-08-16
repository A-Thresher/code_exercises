'use strict';

// const person = {
//   firstName: 'Rick ',
//   lastName: 'Sanchez',
//   fullName: this.firstName + this.lastName,
// };

// console.log(person.fullName);


// const franchise = {
//   name: 'How to Train Your Dragon',
//   allMovies() {
//     let self = this;
//     return [1, 2, 3].map(function(number) {
//       return `${self.name} ${number}`;
//     });
//   },
// };

// console.log(franchise.allMovies());


// const franchise = {
//   name: 'How to Train Your Dragon',
//   allMovies() {
//     return [1, 2, 3].map(function(number) {
//       return `${this.name} ${number}`;
//     }.bind(this));
//   },
// };

// console.log(franchise.allMovies());


// let myBind = function myBind(func, context, ...args1) {
//   return function(...args2) {
//     return func.apply(context, [...args1, ...args2]);
//   };
// }

// function add(a, b) { return a + b }
// const addFive = myBind(add, null, 5);
// console.log(addFive(10));


// function myFilter(array, func, context = this) {
//   const result = [];

//   array.forEach(value => {
//     if (func.call(context, value)) {
//       result.push(value);
//     }
//   });

//   return result;
// }

// const filter = {
//   allowedValues: [5, 6, 9],
// };

// let out = myFilter([2, 1, 3, 4, 5, 6, 12], function(val) {
//   return this.allowedValues.includes(val);
// }, filter); // returns [5, 6]
// console.log(out);


// function newStack() {
//   const elements = [];

//   return {
//     push(newItem) {
//       elements.push(newItem);
//     },
//     pop() {
//       return elements.pop();
//     },
//     printStack() {
//       for (let i = 0; i < elements.length; i += 1) {
//         console.log(elements[i]);
//       }
//     },
//   }
// }


// const greeter = {
//   message: (() => {
//     const name = 'Naveed'
//     const greeting = 'Hello'

//     return `${greeting} ${name}!`
//   })(),
//   sayGreetings() {
//     console.log(this.message);
//   }
// };

// greeter.sayGreetings();



const school = (() => {
  const students = [];
  const allowedYears = ['1st', '2nd', '3rd', '4th', '5th'];
  function getCourse(student, courseName) {
    return student.listCourses().filter(({name}) => name === courseName)[0];
  }

  return {
    addStudent(name, year) {
      if (allowedYears.includes(year)) {
        const student = createStudent(name, year);
        students.push(student);
        return student;
      } else {
        console.log('Invalid Year');
      }
    },

    enrollStudent(student, courseName, courseCode) {
      student.addCourse({name: courseName, code: courseCode})
    },

    addGrade(student, courseName, grade) {
      const course = getCourse(student, courseName);

      if (course) {
        course.grade = grade;
      }
    },

    getReportCard(student) {
      student.listCourses().forEach(({grade, name}) => {
        if (grade) {
          console.log(`${name}: ${String(grade)}`);
        } else {
          console.log(`${name}: In progress`);
        }
      });
    },

    courseReport(courseName) {
      const courseStudents = students.map(student => {
        const course = getCourse(student, courseName) || { grade: undefined };
        return { name: student.name, grade: course.grade };
      }).filter(({grade}) => grade);

      if (courseStudents.length > 0) {
        console.log(`=${courseName} Grades=`);

        const average = courseStudents.reduce((total, {name, grade}) => {
          console.log(`${name}: ${String(grade)}`);
          return total + grade;
        }, 0) / courseStudents.length;

        console.log('---');
        console.log(`Course Average: ${String(average)}`);
      }
    },
  };
})();
