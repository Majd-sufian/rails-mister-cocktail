import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["YAAA YOU ARE IN THE RIGHT PLACE", "FIND A COCKTAIL"],
    typeSpeed: 30,
    loop: true
  });
}

export { loadDynamicBannerText };
