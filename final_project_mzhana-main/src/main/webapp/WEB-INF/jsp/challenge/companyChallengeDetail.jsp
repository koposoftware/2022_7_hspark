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
    
	<script src="https://kit.fontawesome.com/c4f5274430.js" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://rawgit.com/kimmobrunfeldt/progressbar.js/1.0.0/dist/progressbar.js"></script>
	
	<style>
		.tooltip-inner {
		    background-color: #EEF2E6;
		    color : black;
		    opacity: 1 !important;
		}
		.tooltip.bs-tooltip-right .tooltip-arrow::before {
		    border-right-color: #EEF2E6 !important;
		}
		.tooltip.bs-tooltip-left .tooltip-arrow::before {
		    border-left-color: #EEF2E6 !important;
		}
		.tooltip.bs-tooltip-bottom .tooltip-arrow::before {
		    border-bottom-color: #EEF2E6 !important;
		}
		.tooltip.bs-tooltip-top .tooltip-arrow::before {
		    border-top-color: #EEF2E6 !important;
		}

		                
        #aside {
    		position: fixed;
    
		}
	</style>
	
	
	
</head>
<body data-bs-target=".navbar" data-bs-offset="110">

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
	
	 <!-- Start Title -->
    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-9 d-flex flex-column">
                <span class="text-dark mt-5" style="font-weight: bold; background-color: #FFD700;width: 130px; margin-left: 5px; border-radius: 20px;">
                 &nbsp;${companyVO.companyName} 챌린지 
                </span>
                    <h2 class="text-dark lh-base" style="font-weight: bold;">${challengeVO.challengeName}</h2>
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </section>
    <!-- End Title -->

    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <!-- Post-->
                    <article class="post position-relative">
                        <div class="post-preview mb-4">
                            <img src="/resources/images/challengeInfo/tumblerTitle01.png" alt="" class="img-fluid rounded" />
                        </div>
                        <!-- detail tab -->
				            <div class="row">
				                <div class="col-lg-12">
				                
				                    <nav class="pro-detail-area">
				                        <div class="nav nav-tabs border-bottom detail-title" id="nav-tab" role="tablist">
				                            <a class="nav-link border-0 active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home"
				                                role="tab" aria-controls="nav-home" aria-selected="true">챌린지 정보</a>
				                            <a class="nav-link border-0" id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile"
				                                role="tab" aria-controls="nav-profile" aria-selected="false">챌린지 랭킹</a>
				                        </div>
				                    </nav>
				                    
				                    <div class="tab-content" id="nav-tabContent">
				                    
				                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				                            aria-labelledby="nav-home-tab">
				                         <div class="post">
					                            <div class="col-lg-12 my-2">
					                                <div class="section-title position-relative" style="background-color: #dbeaea; border-radius: 20px; padding: 20px; border: 5px solid #106d6e;">
					                                    <i class="mdi mdi-format-quote-open-outline fs-3" style="padding-left: 10px; color: #106d6e;"></i>
					                                    <h5 class="lh-1" style=" color:#106d6e; padding-left: 10px; margin-bottom:10px; font-weight: bold;">${challengeVO.challengeName}</h5>
					                                    <p style="padding-left: 10px; font-weight: bold;">${challengeVO.challengeInfo}</p>
					                                </div>
					                            </div>
					                            <hr>
					                            <p class="text-muted">
					                                <img alt="" src="/resources/images/challengeInfo/tumbler001.png" class="w-100 mt-2">
					                                
					                                <img alt="" src="/resources/images/challengeInfo/tumbler002.png" class="w-100 mt-2">
					                                <br>
					                                <img alt="" src="/resources/images/challengeInfo/tumbler003.png" class="w-100 mt-2">
					                            </p>
					                            
					                            <hr>
					                            
					                        </div>   
 
				                        </div>
				
				                        <div class="tab-pane fade w-80" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
				                         
				                         <div style="background-color: #dbeaea; border-radius: 20px; padding: 20px; border: 5px solid #106d6e;" class="d-flex flex-column justify-content-center mt-3">
				                         	<div style="padding-left: 230px; margin-bottom: 10px;" class="d-flex">
				                         		<div style="color:#106d6e;font-size: 18px; font-weight: bold; margin-right: 5px;">1위</div>
				                         		<%-- <div style="font-size: 18px; font-weight: bold;  margin-right: 5px;">${rank1member.NAME}</div> --%>
				                         		<div style="font-size: 18px; font-weight: bold;  margin-right: 5px;">박현성</div>
				                         		<%-- <div style="font-size: 15px; color: grey; width: 120px; margin-top: 2px;">${rank1member.DEPARTMENT}</div>
				                         		 --%><div style="font-size: 15px; color: grey; width: 120px; margin-top: 2px;">ICT전략팀</div>
				                         		<div style="font-size: 18px;font-weight: bold; color: #106d6e; border: 2px solid #ffff33; background-color:#ffff33; border-radius: 20px;"><%-- ${rank1memberCount} --%>15회 </div>
				                         	</div>
				                         	
				                         	<div style="padding-left: 230px; margin-bottom: 10px;" class="d-flex">
				                         		<div style="color:#106d6e;font-size: 18px; font-weight: bold; margin-right: 5px;">2위</div>
				                         		<div style="font-size: 18px; font-weight: bold;  margin-right: 5px;"><%-- ${rank2member.NAME} --%>서유경</div>
				                         		<div style="font-size: 15px; color: grey; width: 120px; margin-top: 2px;"><%-- ${rank2member.DEPARTMENT} --%>디지털 전략팀</div>
				                         		<div style="font-size: 18px;font-weight: bold; color: #106d6e; border: 2px solid #ffff33; background-color:#ffff33; border-radius: 20px;"><%-- ${rank2memberCount} --%>8회 </div>
				                         	</div>
				                         	
				                         	<div style="padding-left: 230px;" class="d-flex">
				                         		<div style="color:#106d6e;font-size: 18px; font-weight: bold;  margin-right: 5px;">3위</div>
				                         		<div style="font-size: 18px; font-weight: bold;  margin-right: 5px;"><%-- ${rank3member.NAME} --%>박준영</div>
				                         		<div style="font-size: 15px; color: grey; width: 120px; margin-top: 2px;">디지털 전략팀</div>
				                         		<div style="font-size: 18px;font-weight: bold; color: #106d6e; border: 2px solid #ffff33; background-color:#ffff33; border-radius: 20px;"><%-- ${rank3memberCount} --%>5회 </div>
				                         	</div>
				                         	
				                         </div>
				                         
				                         <div style="margin-top: 200px;">
					                       		<img src="resources/images/profile/profile6.png" style="width:25%; z-index: 4; margin-top: -20px; margin-left:70px; position: absolute;" data-toggle="tooltip" data-bs-html="true"
					                       		title="<b>2등<b>&nbsp;서유경<h5>8회 <h5>"/>
					                       		
					                       		<img src="resources/images/medal1.png" style="width:10%; z-index: 5; margin-top: -140px; margin-left:370px; position: absolute;"/>
					                       		<img src="resources/images/profile/${loginVO.profile}"" style="width:25%; z-index: 4; margin-top: -140px; margin-left:270px; position: absolute;" data-toggle="tooltip" data-bs-html="true"
					                       		title="<b>1등<b>&nbsp;<h5>15회 <h5>"/>
					                       		
					                       		<img src="resources/images/profile/profile4.png" style="width:25%; z-index: 4; margin-top: -20px; margin-left:480px; position: absolute;" data-toggle="tooltip" data-bs-html="true"
					                       		title="<b>3등<b>&nbsp;<h5>5회 <h5>"/>
					                            
					                            <img src="resources/images/rankTable.png" width="100%" style="z-index: 1;"/>
				                          </div>
				                         
				                         <hr>
				                        </div>
				                        
				                    </div>
				                    
				                </div>
				            </div>
				        
                 
    
                    </article>
                    <!-- Post end-->
                </div>

                <div class="col-lg-4 col-md-6">
                    <div class="sidebar ms-3" id="aside" style="width:23%;border-radius: 20px; box-shadow:1px 1px 8px 2px rgba(0, 0, 0, 0.2);">
                    
                        <ul class="list-unstyled">
                            <li>
	                            <div class="d-flex justify-content-evenly" 
	                            style="width:300px; height: 200px; 
	                            
	                            margin-left: 15px; margin-top: 10px;">
	                                <img src="resources/images/profile/${loginVO.profile}" alt=""
	                                        class="img-fluid" 
	                                        style="background-color: #BEE86E; border-radius: 100px; 
	                                        width: 140px; height: 140px; margin-top: 40px; margin-left: 1px;"/>
	                                <div class="d-flex flex-column align-items-center" style=" margin-top: 10px;">
	                                <span class="d-block text-muted" style="margin-top: 10px; margin-left:40px; font-size:20px; font-weight: bold">${companyVO.companyName}</span>
	                                <span class="d-block" style="margin-top: 38px;font-weight: bold; margin-left:10px; font-size:27px;  border-bottom: 5px solid #b8d5d5;">${loginVO.name}</span>
	                                <span class="d-block text-muted" style="padding-top: 10px; padding-left:10px; font-weight: bold">${loginVO.department}</span> 
	                                
	                                </div>
	                            </div>
                            </li>
                        </ul>
                        
                    	
                        <div>
                            <div class="d-flex justify-content-center">
                                <button id="markmodalbtn" class="btn" 
                                style="font-size: 20px; border: 3px solid #EAEAEA; 
                                border-radius: 10px; width: 94%" 
                                data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa-solid fa-camera me-2"></i>인증하기</button>
                            </div>
                            <div class="ms-3 my-3">
                            </div>
                        </div>
    
                        
                    </div>
                </div>
                <!-- Sidebar end-->
            </div>
        </div>
        <!-- end row -->
    </section>
	
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" 
	style="border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); outline: none;">
		<div class="modal-dialog" style="border-radius: 50px; box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.2); outline: none;">
	    	<div class="modal-content">
				<div class="modal-body">
					<div class="d-flex justify-content-between mb-1">
						<h5 class="modal-title" id="staticBackdropLabel">우리 회사 챌린지 인증하기 <button type="button" style="background-color: white; border: 0;" data-bs-toggle="popover" title="영수증 인증" data-bs-content="제휴된 카페 중 개인컵을 사용하여 결제한 영수증을 업로드 후 인증버튼을 눌러주세요."><i class="fa-solid fa-question" style="color: red;"></i></button></h5>
						<button id="markModalClose" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					</div>
					
					<div class="d-flex flex-column align-items-center">
						
			      	<form enctype="multipart/form-data" name="challengeMark" id="uploadForm">
			      		<img style="width: 400px;" class="mx-auto d-block mb-2" id="preview-image" src="/resources/images/scan2.gif">
		     			<div class="input-group mb-2">
		               		<input type="file" class="form-control" id="input_image" name="uploadFile" multiple="multiple" style="width: 250px;"/>
		               	</div>
			      		<input type="button" onclick="uploadfile1()" value="인증하기" class="btn btn-primary align-items-center mb-2 w-100">
			      	</form>
			      	</div>
	      		</div>
	 		</div>
		</div>
	</div>
	
	
	<!-- subscribeModal -->
    <div class="modal fade modal-with-bg" id="subscribeModal" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content bg-pattern">
                <div class="modal-header border-bottom-0">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="text-center mb-4">
                        <div class="avatar-md mx-auto mb-4">
                            <div class="avatar-title bg-light rounded-circle text-primary h1">
                                <i class="mdi mdi-email-open"></i>
                            </div>
                        </div>

                        <div class="row justify-content-center">
                            <div class="col-xl-10">
                                <h4 class="text-primary">Subscribe !</h4>
                                <p class="text-muted font-size-14 mb-4">Subscribe our newletter and get notification to stay update.</p>

                                <div class="input-group bg-light rounded">
                                    <input type="email" class="form-control bg-transparent border-0" placeholder="Enter Email address" aria-label="Recipient's username" aria-describedby="button-addon2">
            
                                    <button class="btn btn-primary" type="button" id="button-addon2">
                                        <i class="bx bxs-paper-plane"></i>
                                    </button>
                                </div>
        
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end modal -->
	
	
	<!-- Button trigger modal -->
	<button id="complete" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop1">
		Launch static backdrop modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content" style="">
	      <div class="modal-body">
		      	<div class="d-flex justify-content-center mb-1">
		          <h5 class="modal-title" id="staticBackdropLabel">챌린지 인증 성공!</h5>
				</div>
				<div class="w-100 d-flex flex-column align-items-center">
				  <img alt="" src="/resources/images/yes.gif" width="300px" height="300px">
				   	<a href="${pageContext.request.contextPath }/myPoint/${challengeVO.challengeCode}" type="button" class="btn" style="color: white; font-size:17px; font-weight:bold; background-color: #509090; border-color: #509090 ; ">내 포인트 확인하러 가기
				   	<i class="fa-solid fa-arrow-right"></i>
				   	</a>
				</div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Button trigger modal -->
	<button id="fail" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">
		Launch static backdrop modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">실패</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        인증에 실패하셨습니다. 다시 인증해주세요.
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="failClose">Close</button>
	        <button type="button" class="btn btn-primary" onclick="remarkclick()">다시 인증하기</button>
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
	<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
    <script src="/resources/js/app.js"></script>

  	
  	<!-- preview image -->
  	<script>
  		$('#complete').hide()
  		$('#fail').hide()
  	
  		function remarkclick() {
  			$('#failClose').trigger('click')
  			$('#markmodalbtn').trigger('click')	
		}
  		
	  	function readImage(input) {
	  	    // 인풋 태그에 파일이 있는 경우
	  	    if(input.files && input.files[0]) {
	  	        // 이미지 파일인지 검사 (생략)
	  	        // FileReader 인스턴스 생성
	  	        const reader = new FileReader()
	  	        // 이미지가 로드가 된 경우
	  	        reader.onload = e => {
	  	            const previewImage = document.getElementById("preview-image")
	  	            previewImage.src = e.target.result
	  	        }
	  	        // reader가 이미지 읽도록 하기
	  	        reader.readAsDataURL(input.files[0])
	  	    }
	  	}
	  	// input file에 change 이벤트 부여
	  	const inputImage = document.getElementById("input_image")
	  	inputImage.addEventListener("change", e => {
	  	    readImage(e.target)
	  	})
	  	
	  	var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
		var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
		  return new bootstrap.Popover(popoverTriggerEl)
		})
  	</script>
  	
  	<script>
  	 function uploadfile1() {   
  			var form = new FormData();
  	        form.append("file1", $("#input_image")[0].files[0]);
  	        form.append("challengeCode", "${challengeVO.challengeCode}");
  	        form.append("challengePoint", "${challengeVO.challengeRewardAmount}");
  	        
  			$.ajax({
				type: 'post',
				url : '${ pageContext.request.contextPath }/uploadfile',
				dataType: "json",
				data : form,
				processData: false,
		        contentType: false,
		        cache: false,
				success : function(result){
					if (result == "성공") {
						console.log(result);
						$('#markModalClose').trigger('click')
						$('#complete').trigger('click')						
					} else{
						$('#markModalClose').trigger('click')
						$('#fail').trigger('click')						
					}
				},
				error : function () {
					alert('실패')					
				}
			})
	}
  	</script>
  	
  	 <script>
	  $(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip();   
	  });
	</script>
</body>
</html>