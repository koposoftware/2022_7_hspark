<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>ESG하나_기부증서</title>
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
    
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Serif+KR:wght@500&display=swap" rel="stylesheet">
	
	<script src="https://kit.fontawesome.com/c4f5274430.js" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
	<style type="text/css">
		 #tax_card{
			font-family: 'Noto Serif KR', serif;
		
		} 
		
		#tax_card_none{
			display: none;
		
		}
	</style>
</head>
<body data-bs-target=".navbar" data-bs-offset="110">
	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>

    <section>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <img src="/resources/images/document.gif" alt="about-img" class="img-fluid rounded-3 pe-lg-4" />
                
                
                
                
                
                        <div class="row" id="tax_card_none">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body" id="tax_card">
                                    <div style="border: 3px dashed #008485; padding: 20px; border-radius: 10px">
                                   
                                        <div class="invoice-title">
                                            <div class="mb-4">
                                                <img src="/resources/img/esghana_logo.png" alt="logo" height="30"/>
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-sm-12" style="font-family: 'Noto Serif KR', serif;text-align: center; font-size: 40px; font-weight: bold;">
                                           		<p>기부증서</p>
                                            </div>
                                        </div>
                                        <div class="row mt-5">
                                            <div class="col-sm-12 d-flex flex-column center">
                                           		<div class="d-flex justify-content-start mb-3"  style="margin-left: 140px;">
                                           			<div style="width: 80px; font-weight: bold;">기부자</div>
                                           			<div>${donationHistory.name}</div>
                                           		</div>
                                           	
                                           		<div class="d-flex justify-content-start mb-3" style="margin-left: 140px;">
                                           			<div style="width: 80px; font-weight: bold;">기부내역</div>
                                           			<div>${donationHistory.donationTitle}</div>
                                           		</div>
                                           		<div class="d-flex justify-content-start mb-3"  style="margin-left: 140px;">
                                           			<div style="width: 80px; font-weight: bold;">기부금</div>
                                           			<div>${donationHistory.donationAmount}</div>
                                           		</div>
                                           		<div class="d-flex justify-content-start mb-3"  style="margin-left: 140px;">
                                           			<div style="width: 80px; font-weight: bold;">기부일</div>
                                           			<div>${donationHistory.donationEndDate}</div>
                                           		</div>
                                           		
                                            </div>
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-sm-12" style="padding: 35px;">
                                           		소중한 나눔으로 세상이 더 밝고 아름다워졌습니다.
                                           		기부하신 고귀한 마음은 세상을 빛내는 수호천사가 되어 많은 분들께 꿈과 희망을 주셨기에 감사의 마음을 담아 이 증서를 드립니다.
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12  d-flex justify-content-center">
                                           		<img alt="" src="/resources/img/taxmedal.png" width="250px">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12  d-flex justify-content-center mt-4" style="font-size: 20px;">
                                           		${sysdate}
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12  d-flex justify-content-center mt-4">
                                            	<img src="/resources/img/esghana_logo.png" alt="logo" height="55" style="margin-top: 7px; margin-right: 7px;"/>
                                           		<img alt="" src="/resources/images/esghanamark.png" height="75">
                                            </div>
                                        </div>
                                        
                                        
                                        </div>
                                        <div class="d-print-none">
                                            <div class="float-end">
                                                <a  class="btn btn-success waves-effect waves-light me-1" onclick="open_print()"><i class="fa fa-print"></i></a>
                                                <a href="#" class="btn btn-primary w-md waves-effect waves-light">Send</a>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                
                
                
                
                
                
                
                
                
                
                
                
                
                </div>
                <div class="col-lg-6">
                    <div class="d-flex align-items-center py-3">
                        <h5 class="me-4">${donationHistory.donationTitle}</h5>
                        <h6 class="me-4 text-muted">하나금융나눔재단</h6>
                        
                    </div>

                    <div class="d-flex justify-content-between border-top py-4">
                        <div class="py-3 text-center" style="border-radius: 40px; padding-top: 10px; width: 30%; background-color: #dbeaea ">
                            <p class="text-muted fs-13 mb-0" style="margin-top: 5px;">기부금액</p>
                            <h5 style="margin-top: 5px; color: #155757">
                            	<fmt:formatNumber value="${donationHistory.donationAmount}" pattern="#,###"/>원
                            </h5>
                        </div>
                        
                        <div class="py-3 text-center" style="border-radius: 40px; padding-top: 10px; width: 30%; background-color: #dbeaea ">
                            <p class="text-muted fs-13 mb-0"  style="margin-top: 5px;">기부자</p>
                            <h5 style="margin-top: 5px; color: #155757">${donationHistory.name}</h5>
                        </div>
                        
                        <div class="py-3 text-center" style="border-radius: 40px; padding-top: 10px; width: 30%; background-color: #dbeaea ">
                            <p class="text-muted fs-13 mb-0" style="margin-top: 5px; ">기부날짜</p>
                            <p class="fs-15 fw-bold" style="margin-top: 5px;  color: #155757">${donationHistory.donationEndDate}</p>
                        </div>
                    </div>
                    <p class="text-muted fs-15">
                        ${donationHistory.name}님의 따뜻한 관심과 소중한 후원으로 
                        도움이 필요한 이웃들이 희망과 용기를 얻었습니다.
                        <br>
                        이에 감사한 마음을 담아 이 증서를 드립니다. 
                        <br>
                        보내주시는 관심과 나눔참여가 헛되지 않도록 꼭 필요한 곳에서 꼭 필요한 분들에게 도움이 될 수 있도록 노력하겠습니다.
                        
                    </p>
					<div class="d-flex justify-content-start">
	                    <a class="btn mt-3 me-3 w-50" style="background-color: #489898; color: white;" onclick="open_print()">
	                    	기부증서 받기&nbsp;<i class="fa fa-print"></i></a>
	                    <a class="btn mt-3 w-50" onclick="onTaxMail()" style="background-color: #e8748a; color: white;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
	                    	메일로 전송&nbsp;<i class="fa-regular fa-envelope"></i></a>
	                    	
					</div>
                </div>
            </div>
        </div>
        <!-- end container -->
    </section>
    
    <!-- 세금확인모달 -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">기부증서 발급</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
		      <br>
		        ${loginVO.name}님의 메일
		        <br>
		        <b>${loginVO.email}</b>로 기부증서를 발급하였습니다.
		      <br>
		      <br>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div>
    
    
	<!-- FOOTER -->
    <footer>
		<jsp:include page="/WEB-INF/jsp/include/footer.jsp"></jsp:include>
	</footer>

    <!-- Javascript -->
    <script src="/resources/js/bootstrap.bundle.min.js"></script>

    <!-- feather icon -->
    <script src="/resources/js/feather.js"></script>

    <!-- app js -->
    <script src="/resources/js/app.js"></script>
  	
  	<script>
  		function onTaxMail() {
  			console.log('!!!!!')
			fetch('${pageContext.request.contextPath}/taxMail/'+${donationHistoryNo}).then(res=>res.json()).then(response=>{
				if(response != null){
					console.log(response)
				}
			})
		}
  		
  		//인쇄
  	    function open_print() {
  	    	console.log('dd')
  	        var initBody;
  	 
  	        //인쇄하기전 출력되는 내용
  	        window.onbeforeprint = function () {
  	            initBody = document.body.innerHTML;              
  	            document.body.innerHTML = document.getElementById('tax_card').innerHTML;  

  	        };
  	        
  	        //인쇄가 끝난후 출력되는 내용
  	        window.onafterprint = function () {
  	            document.body.innerHTML = initBody;        //기존 내용표시
  	        };
  	 
  	        window.print();
  	    
  	    }
  		
  	</script>
</body>
</html>