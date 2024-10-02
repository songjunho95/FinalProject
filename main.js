// 1. 드롭다운 숨겨진 메뉴들이 같이 들어있는 즉 마우스가 올라간 상태에 해당하는 HTML/CSS가 있어야 함 - div ? div 다시 물어볼거에요!

// 드롭다운 안에 숨겨진 메뉴들이 마우스 올라간 상태인 상황으로 먼저 보여지고!

// 2. 저 전체를 잡고 있는 해당 div를 display: none; <-- 이거에 대해서도 알아야 함!

// DOM

// DOM 접근 - querySelector, querySelectorAll

// 3.
// 이벤트 : 마우스가 올라갔을 때
// -> 이벤트가 일어났을 때 일어날 일 : 위에 숨겨놓은 div 보여지는것!

// 4. hover : 마우스 이벤트 대체 가능
//  안되는 경우들은 자바스크립트로 처리!
// dropdownBtn 클릭하면, menuList 나온다

const topmenu = document.querySelector(".topmenu");
const menu = document.querySelector(".menu");
const submenu = document.querySelector(".submenu");
const allmenu = document.querySelectorAll(".allmenu");

// topmenu.addEventListener("click", function () {
  submenu.classList.("submenu");
// });

//menu.addEventListener("blur", function () {
//  menuList.classList.remove("show");
//});
