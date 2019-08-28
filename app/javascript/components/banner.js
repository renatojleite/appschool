import Typed from 'typed.js';

const initTyped = () => {
  new Typed('#typed', {
    strings: ["App School", "change the way you treat our planet !!!"],
    typeSpeed: 50,
    loop: true
  });
}


export { initTyped }
