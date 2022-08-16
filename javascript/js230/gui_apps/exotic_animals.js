'use strict';

document.addEventListener('DOMContentLoaded', () => {
  let animalDiv = document.getElementById('exotic_animals');

  animalDiv.addEventListener('mouseover', event => {
    if (event.target.tagName === 'IMG') {
      let caption = event.target.nextElementSibling;

      let timer = setTimeout(() => {
        caption.style.display = 'block';
      }, 2000);

      event.target.addEventListener('mouseout', () => {
        clearTimeout(timer);
        caption.style.display = 'none';
      });
    }
  });
});
