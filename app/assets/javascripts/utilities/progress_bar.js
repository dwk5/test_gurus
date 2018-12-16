document.addEventListener('turbolinks:load', function () {
  var progress = document.querySelector('.progress');

  if (progress) {
      var current = progress.dataset.current - 1;
      var total = progress.dataset.total;
      var range = Math.round(current*100/total) + "%";

      var progressBar = document.querySelector('.progress-bar');
      progressBar.style.width = range;
      progressBar.textContent = range;
  }
});
