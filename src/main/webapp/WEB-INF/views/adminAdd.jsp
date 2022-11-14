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
                    <a href="<c:url value='${loginOutLink}'/>">${loginOut}</a>
                </li>
                <li>
                    <a href="<c:url value='/board/list'/>">Board</a>
                </li>
                <li>
                    <a href="<c:url value='/admin/list'/>">Admin</a>
                </li>
            </ul>
        </div>

    </div>
</header>

<form id="form" class="frm" action="/register/save'/" method="post">
    <div class="title">Register</div>
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
    <button type="button" id="signInBtn">회원 가입</button>
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
            form.attr("action", "<c:url value='/admin/add'/>");
            form.attr("method", "post");
            if(formCheck())
                form.submit();
        });
    });
</script>
</body>
</html>