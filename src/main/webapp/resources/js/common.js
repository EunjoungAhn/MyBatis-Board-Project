//document = html 자체다 라고 생각해도 무방하다.
const searchEl = document.querySelector('.search');
// searchEl안에서 input 요소르르 찾는 형식으로 수정
const searchInputEl = searchEl.querySelector('input');

//input요소가 소속되어 있는 search클래스를 가진 div 요소 아무곳을
//선택해도 포커스가 되도록 설정
searchEl.addEventListener('click', function(){
  //검색 부분의 input요소에 focus를 해라.
  searchInputEl.focus();
});

searchInputEl.addEventListener('focus', function(){
  //특정 요소에 클래스 정보를 가진 객체에서 어떤 클래스 내용을 추가하겠다.
  searchEl.classList.add('focused');
  //html속성을 지정한다.
  searchInputEl.setAttribute('placeholder', '통합검색');
});

//포커스가 해제되었을때
searchInputEl.addEventListener('blur', function(){
  //특정 요소에 클래스 정보를 가진 객체에서 어떤 클래스 내용을 추가하겠다.
  searchEl.classList.remove('focused');
  //html속성을 지정한다.
  searchInputEl.setAttribute('placeholder', '');
});

/**
 * 올해가 몇 년도인지 계산
 */
 const thisYear = document.querySelector('.this-year')
// 글자 값을 지정  
 thisYear.textContent = new Date().getFullYear()