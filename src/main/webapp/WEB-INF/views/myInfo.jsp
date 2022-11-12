<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false"%>
<c:set var="loginId" value="${pageContext.request.getSession(false)==null ? '' : pageContext.request.session.getAttribute('id')}"/>
<%--<c:set var="loginOutLink" value="${loginId=='' ? '/login/login' : '/login/logout'}"/>--%>
<c:set var="login" value="${loginId=='' ? 'Login' : loginId+='님'}"/>
<c:set var="myInfo" value="${loginId=='' ? '/login/login' : '/register/myInfo'}"/>
<c:set var="loginOutLink" value="${'/login/logout'}"/>
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

    <!--  회원가입 전용  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <style>
        * { box-sizing:border-box; }
        form {
            width:400px;
            height:600px;
            display : flex;
            flex-direction: column;
            align-items:center;
            position : absolute;
            top:50%;
            left:50%;
            transform: translate(-50%, -50%) ;
            border: 1px solid rgb(89,117,196);
            border-radius: 10px;
        }
        .input-field {
            width: 300px;
            height: 40px;
            border : 1px solid rgb(89,117,196);
            border-radius:5px;
            padding: 0 10px;
            margin-bottom: 10px;
        }

        label {
            width:300px;
            height:30px;
            margin-top :4px;
        }
        button {
            background-color: rgb(89,117,196);
            color : white;
            width:300px;
            height:50px;
            font-size: 17px;
            border : none;
            border-radius: 5px;
            margin : 20px 0 30px 0;
        }
        .title {
            font-size : 50px;
            margin: 40px 0 30px 0;
        }
        .msg {
            height: 30px;
            text-align:center;
            font-size:16px;
            color:red;
            margin-bottom: 20px;
        }

        .sns-chk {
            margin-top : 5px;
        }
    </style>

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
                <li>
                    <a href="<c:url value='${myInfo}'/>">${login}</a>
                </li>
                <li>
                    <a href="<c:url value='/board/list'/>">Board</a>
                </li>
                <li>
                    <a href="<c:url value='/register/add'/>">Sign In</a>
                </li>
                <li>
                    <a href="<c:url value='${loginOutLink}'/>">LogOut</a>
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

<form id="form" class="frm" action="/register/updateUser'/" method="post">
    <div class="title">회원정보 수정 </div>
    <label for="">아이디</label>
    <input class="input-field" type="text" name="id" placeholder="8~12자리의 영대소문자와 숫자 조합" autofocus>
    <label for="">비밀번호</label>
    <input class="input-field" type="text" name="pwd" placeholder="8~12자리의 영대소문자와 숫자 조합">
    <label for="">이름</label>
    <input class="input-field" type="text" name="name" placeholder="홍길동">
    <label for="">이메일</label>
    <input class="input-field" type="text" name="email" placeholder="example@fastcampus.co.kr">
    <label for="">생일</label>
    <input class="input-field" type="text" name="birth" placeholder="2020-12-31">
    <div class="sns-chk">
        <label><input type="checkbox" name="sns" value="facebook"/>페이스북</label>
        <label><input type="checkbox" name="sns" value="kakaotalk"/>카카오톡</label>
        <label><input type="checkbox" name="sns" value="instagram"/>인스타그램</label>
    </div>
    <button type="button" id="signInBtn">수정</button>
</form>
<script>
    $(document).ready(function() {
        let formCheck = function() {
            let form = document.getElementById("form");
            if (form.id.value.length < 3) {
                alert('id의 길이는 3이상이어야 합니다.');
                return false;
            }
            if(form.pwd.value=="") {
                alert("비밀번호를 입력해 주세요.");
                form.pwd.focus();
                return false;
            }
            if(form.name.value=="") {
                alert("이름을 입력해 주세요.");
                form.name.focus();
                return false;
            }
            if(form.email.value=="") {
                alert("이메일을 입력해 주세요.");
                form.email.focus();
                return false;
            }
            if(form.birth.value=="") {
                alert("생일을 입력해 주세요.");
                form.birth.focus();
                return false;
            }
            return true;
        }

        $("#signInBtn").on("click", function(){
            let form = $("#form");
            form.attr("action", "<c:url value='/register/updateUser'/>");
            form.attr("method", "post");
            if(formCheck())
                form.submit();
        });
    });
</script>
</body>
</html>