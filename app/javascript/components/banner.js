import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Everybody needs a hero", "Even for cooking."],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
