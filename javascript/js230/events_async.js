'use strict';

// // Randomizer
// function callback1() {
//   console.log('callback1');
// }

// function callback2() {
//   console.log('callback2');
// }

// function callback3() {
//   console.log('callback3');
// }

// function randomizer(...callbacks) {
//   let time = 0;
//   let maxTime = 2 * callbacks.length;

//   let timeInterval = setInterval(() => {
//     time += 1;
//     console.log(time);

//     if (time >= maxTime) clearInterval(timeInterval);
//   }, 1000);

//   function randomDelay(func) {
//     let delay = Math.floor(Math.random() * maxTime * 1000);
//     setTimeout(func, delay);
//   }

//   callbacks.forEach(randomDelay);
// }

// randomizer(callback1, callback2, callback3);


// // Reverse Engineer
// document.querySelector('html').addEventListener('click', event => {
//   if (document.querySelector('#container').contains(event.target)) {
//     document.querySelector('#container').style = 'display: none';
//   }
// });

// document.querySelector('#container').addEventListener('click', event => {
//   // event.stopPropagation();
// });


// // Bold + Custom
// function makeBold(element, callback) {
//   element.style.fontWeight = 'bold';
//   if (callback instanceof Function) callback(element);
// }

// let bolded = new CustomEvent('bolded');
// function makeBold(element) {
//   element.style.fontWeight = 'bold';
//   element.dispatchEvent(bolded);
// }

// document.addEventListener('DOMContentLoaded', () => {
//   let section = document.querySelector('section');
//   section.addEventListener('bolded', event => {
//     event.target.classList.add('highlight');
//   });
// });


// // Context Menus
// document.addEventListener('DOMContentLoaded', () => {
//   let main = document.querySelector('main');
//   let sub = document.getElementById('sub');

//   main.addEventListener('contextmenu', event => {
//     event.preventDefault();
//     alert('main');
//   });

//   sub.addEventListener('contextmenu', event => {
//     event.preventDefault();
//     event.stopPropagation();
//     alert('sub');
//   });
// });


// // Selection Filters
// const classifications = {
//   "Classifications": ['Animals', 'Bear', 'Turtle', 'Whale', 'Salmon', 'Ostrich'],
//   "Vertebrate": ['Bear', 'Turtle', 'Whale', 'Salmon', 'Ostrich'],
//   "Warm-blooded": ['Bear', 'Whale', 'Ostrich'],
//   "Cold-blooded": ['Salmon', 'Turtle'],
//   "Mammal": ['Bear', 'Whale'],
//   "Bird": ['Ostrich'],
// };

// function toggleHidden(options, collection) {
//   options.forEach(option => {
//     if (collection.includes(option.value)) {
//       option.hidden = false;
//     } else {
//       option.hidden = true;
//     }
//   });
// }

// // eslint-disable-next-line max-lines-per-function
// document.addEventListener('DOMContentLoaded', () => {
//   let classSelect = document.getElementById('animal-classifications');
//   let animalSelect = document.getElementById('animals');
//   let clear = document.getElementById('clear');

//   classSelect.addEventListener('change', event => {
//     let classType = event.target.value;
//     let animals = classifications[classType];

//     let options = [...animalSelect.children];
//     toggleHidden(options, animals);
//   });

//   animalSelect.addEventListener('change', event => {
//     let animal = event.target.value;
//     let classes;

//     if (animal === 'Animals') {
//       classes = Object.keys(classifications);
//     } else {
//       classes = Object.keys(classifications).filter(className => {
//         return classifications[className].includes(animal);
//       });
//     }

//     let options = [...classSelect.children];
//     toggleHidden(options, classes);
//   });

//   clear.addEventListener('click', event => {
//     event.preventDefault();
//     let options = [...classSelect.children, ...animalSelect.children];
//     options.forEach(option => {
//       option.hidden = false;
//     });

//     classSelect.selectedIndex = 0;
//     animalSelect.selectedIndex = 0;
//   });
// });


// // Article Highlighter
// document.addEventListener('DOMContentLoaded', () => {
//   document.body.addEventListener('click', event => {
//     let highlighted = document.querySelector('.highlight');
//     if (highlighted) highlighted.classList.remove('highlight');

//     let focus;
//     if (event.target.parentElement.tagName === 'ARTICLE') {
//       focus = event.target.parentElement;
//     } else if (event.target.tagName === 'A') {
//       focus = document.querySelector(event.target.hash);
//     } else {
//       focus = document.querySelector('main');
//     }

//     focus.classList.add('highlight');
//   });
// });


// // Delegate Event Function
// function delegateEvent(parentElement, selector, eventType, callback) {
//   if (parentElement === null) return undefined;

//   parentElement.addEventListener(eventType, event => {
//     let targets = [...parentElement.querySelectorAll(selector)];

//     if (targets.includes(event.target)) {
//       callback(event);
//     }
//   });

//   return true;
// }

// // Possible elements for use with the scenarios
// const element1 = document.querySelector('table');
// const element2 = document.querySelector('main h1');
// const element3 = document.querySelector('main');

// // Possible callback for use with the scenarios
// const callback = ({target, currentTarget}) => {
//   alert(`Target: ${target.tagName}\nCurrent Target: ${currentTarget.tagName}`);
// };


// Events Tracker
let tracker = (function() {
  let events = [];

  return {
    list() {
      return [...events];
    },
    elements() {
      return events.map(event => event.target);
    },
    clear() {
      events.length = 0;
      return events.length;
    },
    add(event) {
      events.push(event);
    },
  };
})();

let track = function(func) {
  return function(event) {
    if (!tracker.list().includes(event)) tracker.add(event);
    func(event);
  };
};

const divRed = document.getElementById('red');
const divBlue = document.getElementById('blue');
const divOrange = document.getElementById('orange');
const divGreen = document.getElementById('green');

divRed.addEventListener('click', track(event => {
  document.body.style.background = 'red';
}));

divBlue.addEventListener('click', track(event => {
  event.stopPropagation();
  document.body.style.background = 'blue';
}));

divOrange.addEventListener('click', track(event => {
  document.body.style.background = 'orange';
}));

divGreen.addEventListener('click', track(event => {
  document.body.style.background = 'green';
}));
