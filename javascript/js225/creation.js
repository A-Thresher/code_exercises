'use strict';

// Object.prototype.ancestors = function() {
//   let names = [];
//   let prototype = Object.getPrototypeOf(this)

//   while (true) {
//     if (prototype.hasOwnProperty("name")) {
//       names.push(prototype.name);
//       prototype = Object.getPrototypeOf(prototype);
//     } else {
//       names.push('Object.prototype');
//       break;
//     }
//   }

//   return names;
// }

// // name property added to make objects easier to identify
// const foo = {name: 'foo'};
// const bar = Object.create(foo);
// bar.name = 'bar';
// const baz = Object.create(bar);
// baz.name = 'baz';
// const qux = Object.create(baz);
// qux.name = 'qux';

// console.log(qux.ancestors());  // returns ['baz', 'bar', 'foo', 'Object.prototype']
// console.log(baz.ancestors());  // returns ['bar', 'foo', 'Object.prototype']
// console.log(bar.ancestors());  // returns ['foo', 'Object.prototype']
// console.log(foo.ancestors());  // returns ['Object.prototype']


// function delegate(obj, name, ...args) {
//   return function() {
//     return obj[name](...args);
//   }
// }

// const foo = {
//   name: 'test',
//   bar(greeting) {
//     console.log(`${greeting} ${this.name}`);
//   },
// };

// const baz = {
//   qux: delegate(foo, 'bar', 'hello'),
// };

// baz.qux();   // logs 'hello test';

// foo.bar = () => { console.log('changed'); };

// baz.qux();          // logs 'changed'


// class Person {
//   constructor(first, last, age, gender) {
//     this.firstName = first;
//     this.lastName = last;
//     this.age = age;
//     this.gender = gender;
//   }

//   fullName() {
//     return `${this.firstName} ${this.lastName}`;
//   }

//   communicate() { console.log('communicate') }

//   eat() { console.log('eat') }

//   sleep() { console.log('sleep') }
// }

// class Doctor extends Person {
//   constructor(first, last, age, gender, spec) {
//     super(first, last, age, gender);
//     this.specialization = spec;
//   }

//   diagnose() { console.log('diagnose') };
// }

// class Professor extends Person {
//   constructor(first, last, age, gender, subject) {
//     super(first, last, age, gender);
//     this.subject = subject;
//   }

//   teach() { console.log('teach') };
// }

// class Student extends Person {
//   constructor(first, last, age, gender, degree) {
//     super(first, last, age, gender);
//     this.degree = degree;
//   }

//   study() { console.log('study') };
// }

// class GraduateStudent extends Student {
//   constructor(first, last, age, gender, degree, gradDeg) {
//     super(first, last, age, gender, degree);
//     this.graduateDegree = gradDeg;
//   }

//   research() { console.log('research') };
// }

// const person = new Person('foo', 'bar', 21, 'gender');
// console.log(person instanceof Person);     // logs true
// person.eat();                              // logs 'Eating'
// person.communicate();                      // logs 'Communicating'
// person.sleep();                            // logs 'Sleeping'
// console.log(person.fullName());            // logs 'foo bar'

// const doctor = new Doctor('foo', 'bar', 21, 'gender', 'Pediatrics');
// console.log(doctor instanceof Person);     // logs true
// console.log(doctor instanceof Doctor);     // logs true
// doctor.eat();                              // logs 'Eating'
// doctor.communicate();                      // logs 'Communicating'
// doctor.sleep();                            // logs 'Sleeping'
// console.log(doctor.fullName());            // logs 'foo bar'
// doctor.diagnose();                         // logs 'Diagnosing'

// const graduateStudent = new GraduateStudent('foo', 'bar', 21, 'gender', 'BS Industrial Engineering', 'MS Industrial Engineering');
// // logs true for next three statements
// console.log(graduateStudent instanceof Person);
// console.log(graduateStudent instanceof Student);
// console.log(graduateStudent instanceof GraduateStudent);
// graduateStudent.eat();                     // logs 'Eating'
// graduateStudent.communicate();             // logs 'Communicating'
// graduateStudent.sleep();                   // logs 'Sleeping'
// console.log(graduateStudent.fullName());   // logs 'foo bar'
// graduateStudent.study();                   // logs 'Studying'
// graduateStudent.research();                // logs 'Researching'


// const Account = function() {
//   let data = {};

//   function anonymize() {
//     let string = '';
//     const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
//     for (let i = 0; i < 16; i += 1) {
//       let char = Math.floor(Math.random() * chars.length);
//       string += chars[char];
//     }

//     return string;
//   }

//   return {
//     init(inputEmail, inputPassword, first, last) {
//       this.displayName = anonymize();
//       data[this.displayName] = {
//         email: inputEmail,
//         password: inputPassword,
//         firstName: first,
//         lastName: last,
//       }

//       return this;
//     },

//     reanonymize(passwordCheck) {
//       if (passwordCheck === data[this.displayName]['password']) {
//         let newName = anonymize();
//         data[newName] = data[this.displayName];
//         delete data[this.displayName];
//         this.displayName = newName;
//         return true;
//       } else {
//         return 'Invalid Password'
//       }
//     },

//     resetPassword(passwordCheck, newPassword) {
//       if (passwordCheck === data[this.displayName]['password']) {
//         data[this.displayName]['password'] = newPassword;
//         return true;
//       } else {
//         return 'Invalid Password'
//       }
//     },

//     firstName(passwordCheck) {
//       if (passwordCheck === data[this.displayName]['password']) {
//         return data[this.displayName]['firstName'];
//       } else {
//         return 'Invalid Password'
//       }
//     },

//     lastName(passwordCheck) {
//       if (passwordCheck === data[this.displayName]['password']) {
//         return data[this.displayName]['lastName'];
//       } else {
//         return 'Invalid Password'
//       }
//     },

//     email(passwordCheck) {
//       if (passwordCheck === data[this.displayName]['password']) {
//         return data[this.displayName]['email'];
//       } else {
//         return 'Invalid Password'
//       }
//     },
//   };
// }();

// let fooBar = Object.create(Account).init('foo@bar.com', '123456', 'foo', 'bar');
// console.log(fooBar.firstName);                     // returns the firstName function
// console.log(fooBar.email);                         // returns the email function
// console.log(fooBar.firstName('123456'));           // logs 'foo'
// console.log(fooBar.firstName('abc'));              // logs 'Invalid Password'
// console.log(fooBar.displayName);                   // logs 16 character sequence
// console.log(fooBar.resetPassword('123', 'abc'))    // logs 'Invalid Password'
// console.log(fooBar.resetPassword('123456', 'abc')) // logs true

// let displayName = fooBar.displayName;
// fooBar.reanonymize('abc');                         // returns true
// console.log(displayName === fooBar.displayName);   // logs false

// let bazQux = Object.create(Account).init('baz@qux.com', '123456', 'baz', 'qux');
// console.log(fooBar.displayName);
// console.log(bazQux.displayName);
// console.log(bazQux.firstName('123456'));
// console.log(fooBar.firstName('abc'));              // logs 'Invalid Password'
// console.log(fooBar.email('abc'));                  // logs 'Invalid Password'


const Item = function(name, category, quantity) {
  function generateSKU(name, category) {
    return (name.replace(' ', '').slice(0, 3) + category.slice(0, 2)).toUpperCase();
  }

  this.sku = generateSKU(name, category);
  this.name = name;
  this.category = category;
  this.quantity = quantity;
}

const ItemManager = function() {
  function invalidInput(name, category, qty) {
    return !(name.replace(' ', '').length > 4
    && !(category.includes(' '))
    && category.length > 4
    && qty !== undefined)
  }

  return {
    items: {},

    create(name, category, quantity) {
      if (invalidInput(name, category, quantity)) return false;

      let item = new Item(name, category, quantity);
      this.items[item.sku] = item;
    },

    delete(sku) {
      delete this.items[sku];
    },

    update(sku, updates) {
      Object.assign(this.items[sku], updates)
      return this.items[sku];
    },

    inStock() {
      return Object.values(this.items).filter(item => item.quantity > 0);
    },

    itemsInCategory(category) {
      return Object.values(this.items)
                   .filter(item => item.category === category);
    },
  }
}();

const ReportManager = {
  init(itemManager) {
    this.items = itemManager;
  },

  reportInStock() {
    let names = this.items.inStock().map(item => item.name);
    console.log(names.join(','));
  },

  createReporter(sku) {
    let item = this.items.items[sku]

    return {
      itemInfo() {
        for (let prop in item) {
          console.log(`${prop}: ${item[prop]}`)
        }
      }
    }
  },
}

ItemManager.create('basket ball', 'sports', 0);           // valid item
ItemManager.create('asd', 'sports', 0);
ItemManager.create('soccer ball', 'sports', 5);           // valid item
ItemManager.create('football', 'sports');
ItemManager.create('football', 'sports', 3);              // valid item
ItemManager.create('kitchen pot', 'cooking items', 0);
ItemManager.create('kitchen pot', 'cooking', 3);          // valid item

ItemManager.items;
// returns list with the 4 valid items

ReportManager.init(ItemManager);
ReportManager.reportInStock();
// logs soccer ball,football,kitchen pot

ItemManager.update('SOCSP', { quantity: 0 });
ItemManager.inStock();
// returns list with the item objects for football and kitchen pot
ReportManager.reportInStock();
// logs football,kitchen pot
ItemManager.itemsInCategory('sports');
// returns list with the item objects for basket ball, soccer ball, and football
ItemManager.delete('SOCSP');
ItemManager.items;
// returns list with the remaining 3 valid items (soccer ball is removed from the list)

const kitchenPotReporter = ReportManager.createReporter('KITCO');
kitchenPotReporter.itemInfo();
// logs
// skuCode: KITCO
// itemName: kitchen pot
// category: cooking
// quantity: 3

ItemManager.update('KITCO', { quantity: 10 });
kitchenPotReporter.itemInfo();
// logs
// skuCode: KITCO
// itemName: kitchen pot
// category: cooking
// quantity: 10
