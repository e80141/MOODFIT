<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    font: 20px Pretendard, 맑은 고딕, Nanum Gothic, Verdana, Dotum, AppleGothic, sans-serif;
}

#gnb {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

#gnb .text-right {
    text-align: right;
}

#login_log {
    border-bottom: 1px solid white;
}

.nav {
    list-style: none;
    padding: 0;
    margin: 20px auto;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px; /* 박스 사이의 간격 */
    max-width: 1200px; /* 중앙 정렬을 위해 전체 너비 설정 */
}

.nav li {
    margin: 0; /* 박스 사이의 간격 제거 */
}

.nav a {
    text-decoration: none;
    color: #000;
    width: 240px; /* 박스의 너비 */
    height: 240px; /* 박스의 높이 */
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    border: 1px solid #ddd;
    border-radius: 8px; /* 모서리 둥글게 */
    transition: background-color 0.3s ease, color 0.3s ease;
    box-sizing: border-box;
    padding: 20px;
}

.nav a:hover {
    background-color: #f8f8f8;
    color: #333;
}

.nav a.active {
    background-color: #333;
    color: #fff;
}

.nav-link {
    display: block;
    color: #000;
    text-align: center;
    padding: 20px; /* 텍스트 주변 여백 */
}

.nav-link .bold {
    font-weight: bold;
}

.nav-link .light {
    color: #666; /* 연한 색상 */
    font-size: 0.9em; /* 약간 작은 글씨 */
}
</style>
</head>
<body>
<div id="gnb">
    <a href="/adminMain">Hello World</a>
    <div class="text-right">
        <c:choose>
            <c:when test="${login.id != null}">
                <span id="login_log" style="border-bottom: 1px solid white;">${login.userid} 님, 환영합니다.</span>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <button id="logout_btn">로그아웃</button>
                <input type="hidden" value="${login.id}" id="login_userid">
            </c:when>
        </c:choose>
    </div>
</div>
<ul class="nav">
    <li><a href="/adminCategory" class="nav-link">
        <br><span class="bold">Category</span></br>카테고리 관리<br><br>
        <span class="light">상위, 하위 카테고리를 관리 할 수 있습니다.</span>
    </a></li>
    <li><a href="/adminApply" class="nav-link">
        <br><span class="bold">Apply</span></br>가맹점 공고 관리<br><br>
        <span class="light">가맹점의 공고를 승인 할 수 있습니다.</span>
    </a></li>
    <li><a href="/adminOrder" class="nav-link">
        <br><span class="bold">Order</span></br>주문내역 관리<br><br>
        <span class="light">고객의 주문 내역을 관리 할 수 있습니다.</span>
    </a></li>
    <li><a href="/adminPuser" class="nav-link">
        <br><span class="bold">Personal</span></br>개인회원 관리<br><br>
        <span class="light">개인 회원을 관리 할 수 있습니다.</span>
    </a></li>
    <li><a href="/adminCuser" class="nav-link">
        <br><span class="bold">Franchisee</span></br>가맹점 관리<br><br>
        <span class="light">가맹점 회원을 관리 할 수 있습니다.</span>
    </a></li>
    <li><a href="/adminReview" class="nav-link">
        <br><span class="bold">Review</span></br>리뷰 관리<br><br>
        <span class="light">고객의 리뷰를 관리 할 수 있습니다.</span>
    </a></li>
    <li><a href="/adminQnA" class="nav-link">
        <br><span class="bold">Q&A</span></br>Q&A 관리<br><br>
        <span class="light">Q&A를 관리 할 수 있습니다.</span>
    </a></li>
    <li><a href="/adminFAQ" class="nav-link">
        <br><span class="bold">FAQ</span></br>FAQ 관리<br><br>
        <span class="light">FAQ를 관리 할 수 있습니다.</span>
    </a></li>
</ul>
</body>
</html>