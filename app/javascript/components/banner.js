import Typed from 'typed.js';

const initTyped = () => {
  new Typed('#typed', {
    strings: ["The best way to match your deals with the planet !!!"],
    typeSpeed: 50,
    loop: true
  });
}


export { initTyped }
