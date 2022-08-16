'use strict';

const languages = [
  {
    name: 'Ruby',
    description: 'Ruby is a dynamic, reflective, object-oriented, ' +
    'general-purpose programming language. It was designed and developed in the mid-1990s ' +
    'by Yukihiro Matsumoto in Japan. According to its creator, Ruby was influenced by Perl, ' +
    'Smalltalk, Eiffel, Ada, and Lisp. It supports multiple programming paradigms, ' +
    'including functional, object-oriented, and imperative. It also has a dynamic type ' +
    'system and automatic memory management.'
  },

  {
    name: 'JavaScript',
    description: 'JavaScript is a high-level, '
  },

  {
    name: 'Lisp',
    description: 'Lisp (historically, LISP) is a family of computer programming languages ' +
    'with a long history and a distinctive, fully parenthesized prefix notation. ' +
    'Originally specified in 1958, Lisp is the second-oldest high-level programming ' +
    'language in widespread use today. Only Fortran is older, by one year. Lisp has changed ' +
    'since its early days, and many dialects have existed over its history. Today, the best '+
    'known general-purpose Lisp dialects are Common Lisp and Scheme.'
  }
];

document.addEventListener('DOMContentLoaded', () => {
  draw();

  let langDiv = document.getElementById('languages');
  langDiv.addEventListener('click', event => {
    if (event.target.tagName === 'BUTTON') {
      let para = event.target.previousElementSibling;
      let index = para.id.slice(-1);

      if (event.target.className === 'less') {
        para.innerText = languages[index].description.slice(0, 120) + ' ...';
        event.target.innerText = 'Show more';
        event.target.className = '';
      } else {
        para.innerText = languages[index].description;
        event.target.innerText = 'Show less';
        event.target.className = 'less';
      }

    }
  });
});

function draw() {
  languages.forEach((language, index) => {
    let heading = document.createElement('h2');
    let paragraph = document.createElement('p');

    document.getElementById('languages').appendChild(heading);
    document.getElementById('languages').appendChild(paragraph);

    heading.innerText = language.name;
    paragraph.id = 'para' + index;

    if (language.description.length < 120) {
      paragraph.innerText = language.description;
    } else {
      paragraph.innerText = language.description.slice(0, 120) + ' ...';

      let button = document.createElement('button');
      button.innerText = 'Show more';
      document.getElementById('languages').appendChild(button);
    }
  });
}
