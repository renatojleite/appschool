import Typed from 'typed.js';

const initTyped = () => {
  if(document.getElementById('typed')){
    new Typed('#typed', {
      strings: ["Faça parte desta rede !!!"],
      typeSpeed: 50,
      loop: true
    });
  }
}


export { initTyped }
