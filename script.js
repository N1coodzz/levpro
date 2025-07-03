
let spinning = false;
document.getElementById("spin").addEventListener("click", function() {
  if (spinning) return;
  spinning = true;
  const wheel = document.getElementById("wheel");
  const deg = 3600 + Math.floor(Math.random() * 360);
  wheel.style.transform = "rotate(" + deg + "deg)";
  setTimeout(() => {
    document.getElementById("popup").classList.remove("hidden");
    document.getElementById("popup").style.display = "flex";
  }, 5200);
});

// Anti-back
(function () {
  history.pushState(null, "", location.href);
  window.onpopstate = function () {
    history.pushState(null, "", location.href);
  };
})();
