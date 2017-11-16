//= require jquery
//= require rails-ujs
//= require bootstrap-sprockets
//= require_tree .

var input = document.getElementById('operation');
var form = document.querySelector('form');
var submit = document.getElementById('submit');
var buttons = document.querySelectorAll('button');

buttons.forEach(function(b){
  b.addEventListener('click', function(e){
    if (b.classList.contains('equals')) {
      submit.click();
      input.value = '';
    } else if (b.classList.contains('reset')) {
      input.value = '';
    } else {
      console.log('hello')
      input.value += e.currentTarget.innerText;
    }
  })
})

