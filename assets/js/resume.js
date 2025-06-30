document.getElementById('feedbackForm').addEventListener('submit', function(e) {
  e.preventDefault();
  alert('Спасибо за сообщение!');
  this.reset();
});
