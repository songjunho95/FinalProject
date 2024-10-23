
const topmenu = document.querySelector(".topmenu");
const allsubmenu = document.querySelector(".allsubmenu");

// topmenu에 마우스가 올라갔을 때
topmenu.addEventListener("mouseenter", function () {
  allsubmenu.classList.add("active");
});

// allsubmenu에서 마우스가 내려갔을 때
allsubmenu.addEventListener("mouseleave", function () {
  allsubmenu.classList.remove("active");
});


