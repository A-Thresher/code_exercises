// /* eslint-disable */

'use strict';

// // Exercises 1 - 4
// document.addEventListener('DOMContentLoaded', () => {
//   let form = document.getElementById('sign_up_form');
//   let names = form.querySelectorAll('input[name$="name"]');
//   let numbers = form.querySelectorAll('input[name$="number"]');

//   form.addEventListener('blur', event => {
//     if (event.target.tagName === 'INPUT' && event.target.id !== 'submit') {
//       let input = event.target;
//       let error = input.nextElementSibling;

//       if (input.validity.valid) {
//         error.textContent = '';
//         input.className = '';
//       } else {
//         showError(input, error);
//         input.className = 'invalid';
//       }
//     }
//   }, true);

//   form.addEventListener('focus', event => {
//     if (event.target.tagName === 'INPUT' && event.target.id !== 'submit') {
//       let input = event.target;
//       let error = input.nextElementSibling;

//       error.textContent = '';
//       input.className = '';
//     }
//   }, true);

//   form.addEventListener('submit', event => {
//     event.preventDefault();

//     let inputs = [...form.querySelectorAll('input')];
//     inputs.forEach(input => input.dispatchEvent(new Event('blur')));

//     if (inputs.some(input => input.className === 'invalid')) {
//       form.querySelector('p').textContent = 'Form cannot be submitted until errors are corrected.';
//     } else {
//       form.querySelector('p').textContent = '';
//       let serialTitle = document.createElement('H3');
//       serialTitle.textContent = 'Serialized Form';

//       let dataElement = document.createElement('P');
//       let data = new FormData(event.target);
//       data.set('cc_number', data.getAll('cc_number').join(''))
//       let dataParts = [];

//       for (let entry of data.entries()) {
//         entry = [encodeURIComponent(entry[0]), encodeURIComponent(entry[1])];
//         dataParts.push(entry[0] + '=' + entry[1]);
//       }
//       dataElement.textContent = dataParts.join('&');

//       document.body.appendChild(serialTitle);
//       document.body.appendChild(dataElement);
//     }
//   });

//   names.forEach(nameElement => {
//     nameElement.addEventListener('keypress', event => {
//       if (!(/[a-zA-Z\s']/.test(event.key))) event.preventDefault();
//     });
//   });

//   numbers.forEach(numElement => {
//     numElement.addEventListener('keypress', event => {
//       if (!(/\d|-/.test(event.key))) event.preventDefault();
//     });

//     if (/^cc_number[1-3]$/.test(numElement.id)) {
//       numElement.addEventListener('beforeinput', event => {
//         if (event.target.value.length === 4) {
//           event.target.nextElementSibling.focus();
//         }
//       });
//       numElement.addEventListener('input', event => {
//         if (event.target.value.length === 4) {
//           event.target.nextElementSibling.focus();
//         }
//       });
//     }
//   });
// });

// function showError(input, error) {
//   let inputName = document.querySelector(`label[for="${input.id}"]`).textContent;

//   if (input.validity.valueMissing) {
//     error.textContent = `${inputName} is a required field`;
//   } else if (input.validity.tooShort) {
//     error.textContent = `${inputName} must be at least 10 characters long`;
//   } else if (input.validity.patternMismatch) {
//     error.textContent = `Please enter a valid ${inputName}`;
//   }
// }

/*
HTML

<!doctype html>
<html lang="en-US">
  <head>
    <meta charset="utf-8">
    <title>Exercises</title>
    <script src="./forms.js" defer></script>
    <style>
      .error {
        color: red;
      }

      .invalid {
        border-color: red;
      }

      input[name=cc_number] {
        width: 40px;
      }
    </style>
  </head>
  <body>
    <h1>Sign up Form</h1>
    <form action="#" method="post" id="sign_up_form" novalidate>
      <fieldset>
        <p class="error"></p>
        <p><label for="first_name">First Name</label></p>
        <p>
          <input type="text" name="first_name" id="first_name"
                 required />
          <span class="error"></span>
        </p>
        <p><label for="last_name">Last Name</label></p>
        <p>
          <input type="text" name="last_name" id="last_name"
                 required />
          <span class="error"></span>
        </p>
        <p><label for="email">Email</label></p>
        <p>
          <input type="email" name="email" id="email"
                  placeholder="someone@example.com" pattern=".+@.+" required />
          <span class="error"></span>
        </p>
        <p><label for="password">Password</label></p>
        <p>
          <input type="text" name="password" id="password"
                  minlength="10" required />
          <span class="error"></span>
        </p>
        <p><label for="phone_number">Phone Number</label></p>
        <p>
          <input type="tel" name="phone_number" id="phone_number"
                 placeholder="111-222-3333" pattern="\d{3}-\d{3}-\d{4}" />
          <span class="error"></span>
        </p>
        <p><label for="cc_number1">Credit Card</label></p>
        <p>
          <input type="text" name="cc_number" id="cc_number1" maxlength="4" />
          - <input type="text" name="cc_number" id="cc_number2" maxlength="4" />
          - <input type="text" name="cc_number" id="cc_number3" maxlength="4" />
          - <input type="text" name="cc_number" id="cc_number4" maxlength="4" />
          <span class="error"></span>
        </p>
        <p><input type="submit" name="submit" id="submit" /></p>
      </fieldset>
    </form>
  </body>
</html>
*/


// Exercise 5
const questions = [
  {
    id: 1,
    description: "Who is the author of <cite>The Hitchhiker's Guide to the Galaxy</cite>?",
    options: ['Dan Simmons', 'Douglas Adams', 'Stephen Fry', 'Robert A. Heinlein'],
  },
  {
    id: 2,
    description: 'Which of the following numbers is the answer to Life, the \
                  Universe and Everything?',
    options: ['66', '13', '111', '42'],
  },
  {
    id: 3,
    description: 'What is Pan Galactic Gargle Blaster?',
    options: ['A drink', 'A machine', 'A creature', 'None of the above'],
  },
  {
    id: 4,
    description: 'Which star system does Ford Prefect belong to?',
    options: ['Aldebaran', 'Algol', 'Betelgeuse', 'Alpha Centauri'],
  },
];

const answerKey = { '1': 'Douglas Adams', '2': '42', '3': 'A drink', '4': 'Betelgeuse' };

let Quiz = {
  questionTemplate: Handlebars.compile(document.getElementById('question_template').innerHTML),
  generateForm(div, questions) {
    questions.forEach(question => {
      div.innerHTML += (this.questionTemplate(question));
    });
  },
  handleSubmit(event) {
    event.preventDefault();

    let answers = new FormData(event.target);
    for (let question in answerKey) {
      let result = document.getElementById(`${question}_result`);
      let answer = answers.get(question);
      let correctAnswer = answerKey[question];

      if (correctAnswer === answer) {
        result.innerText = 'Correct!';
      } else if (!answer) {
        result.innerText = `No answer! ${correctAnswer} was the right answer.`;
      } else {
        result.innerText = `Nope! ${correctAnswer} was the right answer.`;
      }
    }

    document.getElementById('submit').disabled = true;
    document.getElementById('reset_button').disabled = false;
  },
  handleReset() {
    document.getElementById('quiz').reset();
    document.querySelectorAll('p[id$=result]').forEach(result => {
      result.textContent = '';
    });

    document.getElementById('submit').disabled = false;
    document.getElementById('reset_button').disabled = true;
  },
  init() {
    document.addEventListener('DOMContentLoaded', () => {
      let form = document.getElementById('quiz');
      let questionDiv = document.getElementById('questions');
      let resetButton = document.getElementById('reset_button');

      this.generateForm(questionDiv, questions);

      form.addEventListener('submit', this.handleSubmit.bind(this));
      resetButton.addEventListener('click', this.handleReset.bind(this));
    });
  },
};

Quiz.init();


/*
HTML

<!doctype html>
<html lang="en-US">
  <head>
    <meta charset="utf-8">
    <title>Exercises</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.5/handlebars.js"></script>
    <script src="./forms.js" defer></script>
    <script type="text/x-handlebars" id="question_template">
      <p>Q{{id}}. {{{description}}}</p>
      {{#each options}}
        <div>
          <input type="radio" id="{{../id}}-{{@index}}"
                 name="{{../id}}" value="{{this}}" />
          <label for="{{../id}}-{{@index}}">{{this}}</label>
        </div>
      {{/each}}
      <p id="{{id}}_result"></p>
    </script>
  </head>
  <body>
    <h1>Multiple Choice Quiz</h1>
    <form action="#" method="post" id="quiz">
      <fieldset>
        <div id="questions"></div>
        <input type="submit" value="Submit Quiz" id="submit" />
        <button type="button" id="reset_button" disabled>Reset</button>
      </fieldset>
    </form>
  </body>
</html>

*/
