import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Everybody needs a hero", "Even for cooking."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
