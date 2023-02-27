import './bootstrap';

import Alpine from 'alpinejs';
import focus from '@alpinejs/focus';
window.Alpine = Alpine;

Alpine.plugin(focus);

Alpine.start();


// mainページ 画像SlideIN
const callback = function (entries) {
  entries.forEach((entry) => {
    console.log(entry);

    if (entry.isIntersecting) {
      entry.target.classList.add("animate-SlideIn");
    } else {
      entry.target.classList.remove("animate-SlideIn");
    }
  });
};

const observer = new IntersectionObserver(callback);

const targets = document.querySelectorAll(".js-show-on-scroll");
targets.forEach(function (target) {
  target.classList.add("opacity-0");
  observer.observe(target);
});


//show 画像アップ
const modal = $('#modal-container');
const img = modal.find('img');

$('img.popup').each(function(index) {
  $(this).click(function() {
    img.attr('src', $(this).attr('src'));
    modal.show();
  })
});

modal.click(function() {
  $(this).hide();
});



  