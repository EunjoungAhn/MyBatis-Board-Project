<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>
<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>
<c:set var="loginOut" value="${loginId=='' ? 'Login' : loginId+='님'}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Starbucks Coffee Korea</title>
  <!-- 외부에서 정보를 빠르게 파악해야 함으로 위쪽에 적어준다. -->
  <!-- 오픈그래프 -->
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="Starbucks" />
  <meta property="og:title" content="Starbucks Coffee Korea" />
  <meta property="og:description" content="스타벅스는 세계에서 가장 큰 다국적 커피 전문점으로, 64개국에서 총 23,187개의 매점을 운영하고 있습니다." />
  <meta property="og:image" content="../images/starbucks_seo.jpg" />
  <meta property="og:url" content="https://starbucks.co.kr" />

  <!-- 트위터 카드 -->
  <meta property="twitter:card" content="summary" />
  <meta property="twitter:site" content="Starbucks" />
  <meta property="twitter:title" content="Starbucks Coffee Korea" />
  <meta property="twitter:description" content="스타벅스는 세계에서 가장 큰 다국적 커피 전문점으로, 64개국에서 총 23,187개의 매점을 운영하고 있습니다." />
  <meta property="twitter:image" content="../images/starbucks_seo.jpg" />
  <meta property="twitter:url" content="https://starbucks.co.kr" />

  <!--파비콘 해상도를 다른 것으로 작성하려한다.-->
  <link rel="icon" href="../favicon.png" />
  <!--브라우저 스타일 초기화-->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <!-- 구글 폰트 적용 -->
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <!-- 구글 머테리얼 아이콘 적용 -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="../css/common.css" />
  <link rel="stylesheet" href="../css/signin.css" />

  <script defer src="../js/common.js"></script>
</head>
<body>
<!-- HEAdER -->
<header>
  <div class="inner">
    <a href="<c:url value='/'/>" class="logo">
      <img src="../images/starbucks_logo.png" alt="STARBUCKS" />
    </a>

    <div class="sub-menu">
      <ul class="menu">
        <li>
          <a href="<c:url value='/'/>">Home</a>
        </li>
          <a href="<c:url value='/board/list'/>">Board</a>
        </li>
      </ul>
    </div>

    <ul class="main-menu">
      <li class="item">
        <div class="item__name">COFFEE</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>커피</h4>
                <ul>
                  <li>스타벅스 원두</li>
                  <li>스타벅스 비아</li>
                  <li>스타벅스 오리가미</li>
                </ul>
              </li>
              <li>
                <h4>에스프레소 음료</h4>
                <ul>
                  <li>도피오</li>
                  <li>에스프레소 마키아또</li>
                  <li>아메리카노</li>
                  <li>마키아또</li>
                  <li>카푸치노</li>
                  <li>라떼</li>
                  <li>모카</li>
                  <li>리스트레또 비안코</li>
                </ul>
              </li>
              <li>
                <h4>커피 이야기</h4>
                <ul>
                  <li>스타벅스 로스트 스팩트럼</li>
                  <li>최상의 아라비카 원두</li>
                  <li>한 잔의 커피가 완성되기까지</li>
                  <li>클로버® 커피 추출 시스템</li>
                </ul>
              </li>
              <li>
                <h4>최상의 커피를 즐기는 법</h4>
                <ul>
                  <li>커피 프레스</li>
                  <li>푸어 오버</li>
                  <li>아이스 푸어 오버</li>
                  <li>커피 메이커</li>
                  <li>리저브를 매장에서 다양하게 즐기는 법</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>나와 어울리는 커피 찾기</h4>
              <p>스타벅스가 여러분에게 어울리는 커피를 찾아드립니다.</p>
              <h4>최상의 커피를 즐기는 법</h4>
              <p>여러가지 방법을 통해 다양한 풍미의 커피를 즐겨보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">MENU</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>음료</h4>
                <ul>
                  <li>콜드 브루</li>
                  <li>브루드 커피</li>
                  <li>에스프레소</li>
                  <li>프라푸치노</li>
                  <li>블렌디드 음료</li>
                  <li>스타벅스 피지오</li>
                  <li>티(티바나)</li>
                  <li>기타 제조 음료</li>
                  <li>스타벅스 주스(병음료)</li>
                </ul>
              </li>
              <li>
                <h4>푸드</h4>
                <ul>
                  <li>베이커리</li>
                  <li>케익</li>
                  <li>샌드위치 & 샐러드</li>
                  <li>따뜻한 푸드</li>
                  <li>과일 & 요거트</li>
                  <li>스낵 & 미니 디저트</li>
                  <li>아이스크림</li>
                </ul>
              </li>
              <li>
                <h4>상품</h4>
                <ul>
                  <li>머그</li>
                  <li>글라스</li>
                  <li>플라스틱 텀블러</li>
                  <li>스테인리스 텀블러</li>
                  <li>보온병</li>
                  <li>액세서리</li>
                  <li>커피 용품</li>
                  <li>패키지 티(티바나)</li>
                </ul>
              </li>
              <li>
                <h4>카드</h4>
                <ul>
                  <li>실물카드</li>
                  <li>e-Gift 카드</li>
                </ul>
              </li>
              <li>
                <h4>메뉴 이야기</h4>
                <ul>
                  <li>콜드 브루</li>
                  <li>스타벅스 티바나</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>스타벅스 티바나</h4>
              <p>다양한 찻잎과 향신료 등 개성있는 재료로 새로운 맛과 향의 티를 선보입니다.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">STORE</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>매장 찾기</h4>
                <ul>
                  <li>퀵 검색</li>
                  <li>지역 검색</li>
                  <li>My 매장</li>
                </ul>
              </li>
              <li>
                <h4>매장 이야기</h4>
                <ul>
                  <li>청담스타</li>
                  <li>티바나 인스파이어드 매장</li>
                  <li>파미에파크</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>매장 찾기</h4>
              <p>보다 빠르게 매장을 찾아보세요.</p>
              <h4>청담스타</h4>
              <p>스타벅스 1,000호점인 청담스타점을 만나보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">RESPONSIBILITY</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>지역 사회 참여 활동</h4>
                <ul>
                  <li>회망배달 캠페인</li>
                  <li>재능기부 카페 소식</li>
                  <li>커뮤니티 스토어</li>
                  <li>청년인재 양성</li>
                  <li>우리 농산물 사랑 캠페인</li>
                  <li>우리 문화 지키기</li>
                </ul>
              </li>
              <li>
                <h4>환경보호 활동</h4>
                <ul>
                  <li>환경 발자국 줄이기</li>
                  <li>일회용 컵 없는 매장</li>
                  <li>커피 원두 재활용</li>
                </ul>
              </li>
              <li>
                <h4>윤리 구매</h4>
                <ul>
                  <li>윤리적 원두 구매</li>
                  <li>공정무역 인증</li>
                  <li>커피 농가 지원 활동</li>
                </ul>
              </li>
              <li>
                <h4>글로벌 사회 공헌</h4>
                <ul>
                  <li>윤리경영 보고서</li>
                  <li>스타벅스 재단</li>
                  <li>지구촌 봉사의 달</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>커피원두 재활용</h4>
              <p>스타벅스 커피 원두를 재활용 해보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">MY STARBUCKS REWARDS</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>마이 스타벅스 리워드</h4>
                <ul>
                  <li>마이 스타벅스 리워드 소개</li>
                  <li>등급 및 혜택</li>
                  <li>스타벅스 별</li>
                  <li>자주하는 질문</li>
                </ul>
              </li>
              <li>
                <h4>스타벅스 카드</h4>
                <ul>
                  <li>스타벅스 카드 소개</li>
                  <li>스타벅스 카드 갤러리</li>
                  <li>등록 및 조회</li>
                  <li>충전 및 이용안내</li>
                  <li>분실신고/환불신청</li>
                  <li>자주하는 질문</li>
                </ul>
              </li>
              <li>
                <h4>스타벅스 카드 e-Gift</h4>
                <ul>
                  <li>스타벅스 카드 e-Gift 소개</li>
                  <li>이용안내</li>
                  <li>선물하기</li>
                  <li>자주하는 질문</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>스타벅스 카드 등록하기</h4>
              <p>카드 등록 후 리워드 서비스를 누리고 사용내역도 조회해보세요.</p>
            </div>
          </div>
        </div>
      </li>
      <li class="item">
        <div class="item__name">WHAT'S NEW</div>
        <div class="item__contents">
          <div class="contents__menu">
            <ul class="inner">
              <li>
                <h4>프로모션 & 이벤트</h4>
                <ul>
                  <li>전체</li>
                  <li>스타벅스 카드</li>
                  <li>마이 스타벅스 리워드</li>
                  <li>온라인</li>
                  <li>2017 스타벅스 플래너</li>
                </ul>
              </li>
              <li>
                <h4>새소식</h4>
                <ul>
                  <li>전체</li>
                  <li>상품 출시</li>
                  <li>스타벅스의 문화</li>
                  <li>스타벅스 사회공헌</li>
                  <li>스타벅스 카드출시</li>
                </ul>
              </li>
              <li>
                <h4>매장별 이벤트</h4>
                <ul>
                  <li>일반 매장</li>
                  <li>신규 매장</li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="contents__texture">
            <div class="inner">
              <h4>매장별 이벤트</h4>
              <p>스타벅스의 매장 이벤트 정보를 확인 하실 수 있습니다.</p>
              <h4>소셜 스타벅스</h4>
              <p>다양한 스타벅스 SNS 채널을 통해 스타벅스를 만나보세요!</p>
            </div>
          </div>
        </div>
      </li>
    </ul>
  </div>
</header>

<section class="signin">
  <h1>로그인</h1>
  <div class="signin__card">
    <h2>
      <strong>Welcome!</strong> 스타벅스에 오신 것을 환영합니다.
    </h2>
    <form action="<c:url value="/register/delete"/>" method="post" onsubmit="return formCheck(this);">
      <div id="msg">
      </div>
      <input type="text" name="id" value="${loginId}" readonly>
      <input type="password" name="pwd" placeholder="비밀번호">
<%--      <label><input type="checkbox" name="rememberId" value="on" ${empty cookie.id.value ? "":"checked"}> 아이디 기억</label> |--%>
      <input type="submit" value="회원 탈퇴" />
      <p>
        * 비밀번호를 타 사이트와 같이 사용할 경우 도용 위험이 있으니,<br />
        정기적으로 비밀번호를 변경하세요!
      </p>
  </div>
</section>

<!--FOOTER-->
<footer>
  <div class="inner">

    <ul class="menu">
      <li><a href="javascript:void(0)" class="green">개인정보처리방침</a></li>
      <li><a href="javascript:void(0)">영상정보처리기기 운영관리 방침</a></li>
      <li><a href="javascript:void(0)">홈페이지 이용약관</a></li>
      <li><a href="javascript:void(0)">위치정보 이용약관</a></li>
      <li><a href="javascript:void(0)">스타벅스 카드 이용약관</a></li>
      <li><a href="javascript:void(0)">윤리경영 핫라인</a></li>
    </ul>

    <div class="btn-group">
      <a href="javascript:void(0)" class="btn btn--white">찾아오시는 길</a>
      <a href="javascript:void(0)" class="btn btn--white">신규입점제의</a>
      <a href="javascript:void(0)" class="btn btn--white">사이트 맵</a>
    </div>

    <div class="info">
      <span>사업자등록번호 201-81-21515</span>
      <span>(주)스타벅스 코리아 대표이사 이석구</span>
      <span>TEL : 02) 3015-1100 / FAX : 02) 3015-1106</span>
      <span>개인정보 책임자 : 강기원</span>
    </div>

    <p class="copyright">
      &copy; <span class="this-year"></span> Starbucks Coffee Company. All Rights Reserved.
    </p>
    <img src="../images/starbucks_logo_only_text.png" alt="STAR BUCKS" class="logo" />

  </div>
</footer>
<script>
  function formCheck(frm) {
    let msg ='';
    if(frm.pwd.value.length==0) {
      setMessage('password를 입력해주세요.', frm.pwd);
      return false;
    }

    //if(!confirm("정말로 삭제하시겠습니까?")) return;
    return true;
  }
  function setMessage(msg, element){
    document.getElementById("msg").innerHTML = ` ${'${msg}'}`;
    if(element) {
      element.select();
    }
  }
</script>
</form>
</body>
</html>