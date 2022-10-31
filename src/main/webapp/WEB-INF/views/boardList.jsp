<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>fastcampus</title>
    <link rel="stylesheet" href="<c:url value='/css/menu.css'/>">
</head>
<body>
<div id="menu">
    <table>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>이름</th>
            <th>등록일</th>
            <th>조회수</th>
        </tr>
        <c:forEach var="boardDto" items="${list}">
            <tr>
                <td>${boardDto.bno}</td>
                <td><a href="<c:url value="/board/read?bno=${boardDto.bno}&page=${ph.page}&pageSize=${ph.pageSize}"/>">${boardDto.title}</a></td>
                <td>${boardDto.writer}</td>
                <c:choose>
                    <c:when test="${boardDto.reg_date.time >= startOfToday}">
                        <td><fmt:formatDate value="${boardDto.reg_date}" pattern="HH:mm" type="time"/></td>
                    </c:when>
                    <c:otherwise>
                        <td><fmt:formatDate value="${boardDto.reg_date}" pattern="yyyy-MM-dd" type="date"/></td>
                    </c:otherwise>
                </c:choose>
                <td>${boardDto.view_cnt}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>