<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value='/css/menu.css'/>">
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
    <title>Register</title>
</head>
<body>
<div id="menu">
    <ul>
        <li id="logo">EunJoungAhn</li>
        <li><a href="<c:url value='/'/>">Home</a></li>
        <li><a href="<c:url value='/board/list'/>">Board</a></li>
        <li><a href="<c:url value='/register/add'/>">Sign in</a></li>
    </ul>
</div>
<form id="form" class="frm" action="" method="post">
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
            form.attr("action", "<c:url value='/register/save'/>");
            form.attr("method", "post");
            if(formCheck())
                form.submit();
        });
    });
</script>
</body>
</html>