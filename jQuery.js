// 선택자
const sliderWrap = document.querySelector(".slider__wrap");
const sliderImg = sliderWrap.querySelector(".slider__img"); //보여지는 영역
const sliderInner = sliderWrap.querySelector(".slider__inner"); //움직이는 영역
const slider = sliderWrap.querySelectorAll(".slider"); //개별 이미지

let currentIndex = 0; //현재 보이는 이미지
let sliderCount = slider.length; //이미지 개수
let sliderWidth = slider[currentIndex].offsetWidth; //이미지 가로값
let sliderClone = sliderInner.firstElementChild.cloneNode(true); //복제할 첫 번째

//복사한 첫 번째 이미지 마지막에 붙여넣기
sliderInner.appendChild(sliderClone);

let sliderInterval = 2000; //이미지 변경 간격

function sliderEffect() {
  currentIndex++;

  // sliderInner.style.transition = "all 0.6s";
  // sliderInner.style.transform = `translateX(-${sliderWidth*currentIndex}px)`

  $(".slider__inner").css("position", "relative");
  $(".slider__inner").animate({ left: -sliderWidth * currentIndex }, 600);

  //마지막 이미지가 나오면 애니메이션 효과 멈추기
  if (currentIndex == sliderCount) {
    setTimeout(() => {
      sliderInner.style.transition = "all 0s";
      // sliderInner.style.transform = `translateX(0px)`
      $(".slider__inner").animate({ left: 0 }, 0);
      currentIndex = 0;
    }, 700);
  }
}
setInterval(sliderEffect, sliderInterval);
