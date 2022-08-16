'use strict';

// function objectsEqual(obj1, obj2) {
//   if (obj1 === obj2) return true;

//   let keys = Object.keys(Object.assign({}, obj1, obj2))
//   return keys.every( key => {
//     return (key in obj1) && (key in obj2) && (obj1[key] === obj2[key])
//   });
// }

// console.log(objectsEqual({a: 'foo'}, {a: 'foo'}));                      // true
// console.log(objectsEqual({a: 'foo', b: 'bar'}, {a: 'foo'}));            // false
// console.log(objectsEqual({}, {}));                                      // true
// console.log(objectsEqual({a: 'foo', b: undefined}, {a: 'foo', c: 1}));  // false
// console.log(objectsEqual({a: 'foo'}, {a: 'foo', c: 1}));


let createStudent = function createStudent(name, grade) {
  return {
    name,
    grade,
    courses: {},
    info() {
      console.log(this.name + ' is a ' + this.grade + ' year student');
    },
    listCourses() {
      console.log(this.courses);
    },
    addCourse(course) {
      this.courses[course.code] = course;
    },
    addNote(code, note) {
      let course = this.courses[code]
      course.note ? course.note += '; ' + note : course.note = note;
    },
    updateNote(code, note) {
      this.courses[code].note = note
    },
    viewNotes() {
      for (let course of Object.values(this.courses)) {
        if (course.note) console.log(`${course.name}: ${course.note}`)
      }
    },
    viewReportCard() {
      for (let course of Object.values(this.courses)) {
        grade = course.grade ? course.grade : 'In Progress';
        console.log(`${course.name}: ${grade}`);
      }
    },
  };
};

// let foo = createStudent('Foo', '1st');
// foo.info();
// // "Foo is a 1st year student"
// foo.listCourses();
// // [];
// foo.addCourse({ name: 'Math', code: 101 });
// foo.addCourse({ name: 'Advanced Math', code: 102 });
// foo.listCourses();
// // [{ name: 'Math', code: 101 }, { name: 'Advanced Math', code: 102 }]
// foo.addNote(101, 'Fun course');
// foo.addNote(101, 'Remember to study for algebra');
// foo.viewNotes();
// // "Math: Fun course; Remember to study for algebra"
// foo.addNote(102, 'Difficult subject');
// foo.viewNotes();
// // "Math: Fun course; Remember to study for algebra"
// // "Advance Math: Difficult subject"
// foo.updateNote(101, 'Fun course');
// foo.viewNotes();
// // "Math: Fun course"
// // "Advanced Math: Difficult subject"


let createSchool = function createSchool() {
  return {
    students: {},
    addStudent(name, year) {
      const validYears = {
        '1st': true, '2nd': true, '3rd': true, '4th': true, '5th': true
      };

      if (year in validYears) {
        let newStudent = createStudent(name, year);
        this.students[name] = newStudent;
        return newStudent;
      } else {
        console.log('Invalid Year');
      }
    },
    enrollStudent(student, course) {
      this.students[student].addCourse(course);
    },
    addGrade(student, courseCode, grade) {
      this.students[student].courses[courseCode].grade = grade;
    },
    getReportCard(student) {
      this.students[student].viewReportCard();
    },
    courseReport(courseName) {
      let grades = {};
      Object.values(this.students).forEach(student => {
        for (let course of Object.values(student.courses)) {
          if (course.name === courseName && course.grade) {
            grades[student.name] = course.grade;
          }
        }
      });

      if (Object.keys(grades).length === 0) return undefined;

      let average = Object.values(grades).reduce((sum, grade) => sum + grade) /
                    Object.values(grades).length;

      console.log(`=${courseName} Grades=`);
      Object.keys(grades).forEach(name => console.log(`${name}: ${grades[name]}`));
      console.log('---');
      console.log(`Course Average: ${average}`);

    },
  };
// courseReport: Logs the grades of all students for a given course name. Only student with grades are part of the
//               course report.
};

let school = createSchool();

school.addStudent('foo', '3rd');
school.addStudent('bar', '1st');
school.addStudent('qux', '2nd');
// school.addStudent('test', '9th');

school.enrollStudent('foo', { name: 'Math', code: 101, })
school.enrollStudent('foo', { name: 'Advanced Math', code: 102, })
school.enrollStudent('foo', { name: 'Physics', code: 202, })
school.enrollStudent('bar', { name: 'Math', code: 101, })
school.enrollStudent('qux', { name: 'Math', code: 101, })
school.enrollStudent('qux', { name: 'Advanced Math', code: 102, })

school.addGrade('foo', 101, 95);
school.addGrade('foo', 102, 90);
school.addGrade('bar', 101, 91);
school.addGrade('qux', 101, 93);
school.addGrade('qux', 102, 90);

school.getReportCard('foo');
console.log()
school.courseReport('Math');
school.courseReport('Advanced Math');
school.courseReport('Physics');
