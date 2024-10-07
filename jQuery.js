const sliderWrap = document.querySelector(".slider__wrap");
const sliderImg = sliderWrap.querySelector(".slider__img"); //보여지는 영역
const sliderInner = sliderWrap.querySelector(".slider__inner"); //움직이는 영역
const slider = sliderWrap.querySelectorAll(".slider"); //개별이미지
let currentIndex = 0; //현재 보이는 이미지
let sliderCount = slider.length; //이미지 갯수
let sliderInterval = 500; //이미지 변경 간격 시간

setInterval(() => {
  currentIndex = (currentIndex + 1) % $(".slider").length;
  $(".slider").animate({ left: -800 * currentIndex }, 1600, "easeInOutQuint");
}, sliderInterval);
