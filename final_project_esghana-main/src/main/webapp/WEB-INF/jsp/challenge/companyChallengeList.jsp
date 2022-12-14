<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>하나</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Premium Bootstrap 5 Landing Page Template" />
    <meta name="keywords" content="bootstrap 5, premium, marketing, multipurpose" />
    <meta name="author" content="Pichforest" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="/resources/images/favicon.ico" />

    <!-- CSS -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="/resources/css/materialdesignicons.min.css" />
    <link rel="stylesheet" type="text/css" href="/resources/css/pe-icon-7-stroke.css" />

    <!-- custom Css -->
    <link rel="stylesheet" id="app-css" type="text/css" href="/resources/css/style.css" />

    <!-- colors -->
    <link href="/resources/css/colors/default.css" rel="stylesheet" type="text/css" id="color-opt" />
    
    <link rel="stylesheet" type="text/css" href="/resources/style/main.css">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<!-- 	<script type='text/javascript' src="/resources/js/main.js"></script> -->
	
	<script src="https://kit.fontawesome.com/c4f5274430.js" crossorigin="anonymous"></script>

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script type='text/javascript' src="/resources/js/main.js"></script>

</head>

<body data-bs-target=".navbar" data-bs-offset="110">

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

	<div class="container">
	    <div class="row text-center"  style="margin-top: 20px;">
	        <div class="col-md-4" style="margin-top: 130px;">
	          <div class="pro-detail-content">
	             <p class="d-inline-block fw-bold" style="font-size: 30px;">
	             	${companyVO.companyName} 직원
	             	<br> 여러분 환영합니다.
	             </p>
	             <p class="text-muted fs-16">
	             당신의 회사의 챌린지에 참여해보세요.
	             </p>
	             
		         <ul style="list-style: none;">
	             	<c:forEach items="${challengeJoinList}" var="challengeJoin">
	      				<li class="d-flex justify-content-start align-items-center"
	      				 style="margin: 10px; margin-left: 50px;">
							<img alt="" src="/resources/images/next.png" style="width: 12%">
							<a href="${ pageContext.request.contextPath }/mycompanychallenge" >
								<span style="font-weight: bold; color:#006e6f; font-size: 18px; padding-left:7px;">${challengeJoin.challengeName}</span>
							</a> 
						</li>
	             	</c:forEach>
		         </ul>
	             
	          </div>
	        </div>
	        <div class="col-lg-8" >
	            <img src="/resources/images/worker.gif" alt="about-img" class="">
	            
	         
	        </div>
	    </div>
	</div>

	<footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>
	<!-- Javascript -->
    <script src="/resources/js/bootstrap.bundle.min.js"></script>

    <!-- feather icon -->
    <script src="/resources/js/feather.js"></script>

    <!-- app js -->
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="/resources/js/app.js"></script>
	
	
</body>
</html>