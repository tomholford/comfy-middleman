import ready from './ready.ts';
import 'bootstrap/js/dist/collapse';
import 'bootstrap/js/dist/modal';

const setYear = () => {
  let currentYear = document.querySelector("#current-year");
  currentYear.innerHTML = new Date().getFullYear().toString();
}

const validateEmail = (email: string) => {
  var re = /\S+@\S+\.\S+/;
  return re.test(email);
}

ready(() => {
  setYear();
});
