export default function ready(fn: Function) {
  if (document.readyState != 'loading'){
    fn();
  } else {
    document.addEventListener('DOMContentLoaded', (e) => {
      fn();
    });
  }
}
