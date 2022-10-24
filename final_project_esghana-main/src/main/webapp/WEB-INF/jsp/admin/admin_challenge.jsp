<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>ESGHANA 관리자</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
        <meta content="Pichforest" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="/resources/assets/images/favicon.ico">

        <!-- Bootstrap Css -->
        <link href="/resources/assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
        <!-- Icons Css -->
        <link href="/resources/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <!-- App Css-->
        <link href="/resources/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />
        <!-- Dark Mode Css-->
        <link href="/resources/assets/css/dark-layout.min.css" id="app-style" rel="stylesheet" type="text/css" />
        
<style type="text/css">
body[data-sidebar=dark] #sidebar-menu ul li a i{
    color: black;
}

body[data-sidebar=dark] #sidebar-menu ul li a{
    color: black;
}

body[data-sidebar=dark] #sidebar-menu ul li a:hover {
    color: #008485;
}
body[data-sidebar=dark] #sidebar-menu ul li i:hover {
    color: #008485;
}

#sidebar-menu ul.metismenu>li.mm-active>a {
    background-color: #008485 !important;
    color: #fff!important;
}

.text-box {
		color: black;
  		overflow: hidden;
   		text-overflow: ellipsis;
   		white-space: nowrap;
   		white-space: normal;
   		line-height: 1.5;
    	/* height: 3.9em; */
   		text-align: left;
    	word-wrap: break-word;
    	display: -webkit-box;
    	-webkit-line-clamp: 3;
    	-webkit-box-orient: vertical;
		}


</style>
    </head>

    <body data-sidebar="dark">

    <!-- <body data-layout="horizontal" data-topbar="dark"> -->

        <!-- Begin page -->
        <div id="layout-wrapper">

            
            <header id="page-topbar">
                <div class="navbar-header">
                    <div class="d-flex">
                        <!-- LOGO -->
                        <div class="navbar-brand-box" style="background-color: #e6e6e6; border-bottom: 1px solid #e6e6e6">
                           
                            <a href="index.html" class="logo logo-light">
                                
                                <span class="logo-lg">
                                    <img src="/resources/img/esghana_logo.png" alt="" height="40">
                                </span>
                            </a>
                        </div>

                        <button type="button" class="btn btn-sm px-3 font-size-16 vertinav-toggle header-item waves-effect" id="vertical-menu-btn">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>

                        <button type="button" class="btn btn-sm px-3 font-size-16 horinav-toggle header-item waves-effect waves-light" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                            <i class="fa fa-fw fa-bars"></i>
                        </button>

                    </div>

                    <div class="d-flex">

                        <div class="dropdown d-inline-block d-lg-none ms-2">
                            <button type="button" class="btn header-item noti-icon waves-effect" id="page-header-search-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="mdi mdi-magnify"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-end p-0"
                                aria-labelledby="page-header-search-dropdown">
        
                                <form class="p-3">
                                    <div class="form-group m-0">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="submit"><i class="mdi mdi-magnify"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>

                       

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item waves-effect" id="page-header-user-dropdown"
                            data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="rounded-circle header-profile-user" src="/resources/images/admin01.png"
                                    alt="Header Avatar">
                                <span class="d-none d-xl-inline-block ms-1">관리자</span>
                                <i class="mdi mdi-chevron-down d-none d-xl-inline-block"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-end">
                                <!-- item-->
                                <h6 class="dropdown-header">Welcome Peter!</h6>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-profile">Profile</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-message-text-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-messages">Messages</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-calendar-check-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-taskboard">Taskboard</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-lifebuoy text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-help">Help</span></a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-wallet text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-balance">Balance : <b>$1901.67</b></span></a>
                                <a class="dropdown-item" href="#"><span class="badge bg-success bg-soft text-success mt-1 float-end">New</span><i class="mdi mdi-cog-outline text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-settings">Settings</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-lock text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-lock-screen">Lock screen</span></a>
                                <a class="dropdown-item" href="#"><i class="mdi mdi-logout text-muted font-size-16 align-middle me-1"></i> <span class="align-middle" key="t-logout">Logout</span></a>
                            </div>
                        </div>

                        <div class="dropdown d-inline-block">
                            <button type="button" class="btn header-item noti-icon right-bar-toggle waves-effect">
                                <i class="bx bx-cog bx-spin"></i>
                            </button>
                        </div>

                    </div>
                </div>
            </header>

            <!-- ========== Left Sidebar Start ========== -->
            <div class="vertical-menu" style="background-color: #e6e6e6; color: black;">

                <div data-simplebar class="h-100">

                    <!--- Sidemenu -->
                    <div id="sidebar-menu">
                        <!-- Left Menu Start -->
                        <ul class="metismenu list-unstyled" id="side-menu" style="color: black;">
                            
                
                            <li>
                                <a href="${ pageContext.request.contextPath }/admin" class="waves-effect">
                                    <i class='bx bxs-dashboard'></i>
                                    <span key="t-dashboard" >
                                    대시보드</span>
                                </a>
                            </li>

                            <li class="menu-title mt-3" key="t-more"  style="color: black;">메뉴</li>

                            <li class="mm-active">
                                <a href="${ pageContext.request.contextPath }/adminChallenge" class="waves-effect">
                                    <i class="fa-solid fa-e"></i>
                                    <span key="t-apps">착한 챌린지</span>
                                </a>
                                
                            </li>
                
                            <li>
                                <a href="javascript: void(0);" class="waves-effect">
                                    
                                    <i class="fa-solid fa-s"></i>
                                    <span key="t-authentication">기부</span>
                                </a>
                              
                            </li>

                            <li>
                                <a href="javascript: void(0);" class="waves-effect">
                                    <i class="fa-solid fa-g"></i>
                                    <span key="t-pages">기업관리</span>
                                </a>
                                
                            </li>

                         

                        </ul>
                    </div>
                    <!-- Sidebar -->
                </div>
            </div>
            <!-- Left Sidebar End -->

            

            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="main-content">

                <div class="page-content">
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0 font-size-18">ESGHANA 대시보드</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                       
                        <!-- 기부 -->
                        <div class="row">
                            
							<!-- 챌린지 리스트 -->
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-end" style="height: 50px;">
                                            <button type="button" class="btn pt-0" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
											  <i class="fa-solid fa-file-circle-plus" style="font-size: 40px; color: #008485"></i>
											</button>
                                        </div>

                                        <h4 class="card-title my-3">챌린지</h4>

                                        <div class="table-responsive">
                                            <table class="table align-middle table-striped table-nowrap mb-0">
                                            
												<thead class="table-light">
                                                    <tr>
                                                        <!-- <th>챌린지코드</th> -->
                                                        <th>챌린지명</th>
                                                        <th>챌린지 성공포인트</th>
                                                        <th colspan="2">챌린지 정보</th>
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                <c:forEach items="${challengeList}" var="challenge">
                                                    <tr>
                                                        <!-- <td style="color: #008485;">#${challenge.challengeCode}</td> -->
                                                        <td>
                                                            <img src="/resources/images/challengeIcon/${challenge.challengeCode}.png" alt="user-image" style="height: 32px; background-color: #ffffc3; border-radius: 100px;" class="me-2">
                                                             ${challenge.challengeName}
                                                        </td>
                                                        
                                                        <td style="text-align: center;">
                                                           <span class="badge bg-success bg-soft text-success" style="font-size: 20px; text-align: center;">
                                                           		${challenge.challengeRewardAmount}
                                                           </span> 
                                                        </td>
                                                        
                                                        <td>
	                                                         <span class="text-box">${challenge.challengeInfo}</span>
	                                                    </td>
	                                                    
                                                        <td>
                                                        	<div class="dropdown">
                                                                <a class="text-muted dropdown-toggle font-size-16" role="button"
                                                                    data-bs-toggle="dropdown" aria-haspopup="true">
                                                                    <i class="mdi mdi-dots-vertical"></i>
                                                                </a>
                                                                <div class="dropdown-menu dropdown-menu-end">
                                                                    <a class="dropdown-item" href="#"><i class='mdi mdi-square-edit-outline me-1' style="color: #008485"></i>
                                                                    	&nbsp;챌린지 수정
                                                                    </a>
                                                                    <a class="dropdown-item" href="#"><i class="fa-solid fa-trash" style="color: red;"></i>
                                                                    	&nbsp;&nbsp;챌린지 삭제
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            
                                                        
                                                        </td>
                                                    </tr>

                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                        
                        
                        
                        
                        
                        
                        


                    </div>
                    <!-- container-fluid -->
                </div>
                <!-- End Page-content -->

                <footer class="footer">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-6">
                               
                            </div>
                            <div class="col-sm-6">
                                
                            </div>
                        </div>
                    </div>
                </footer>
                
            </div>
            <!-- end main content-->

        </div>
        <!-- END layout-wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <div data-simplebar class="h-100">
                <div class="rightbar-title d-flex align-items-center bg-dark p-3">

                    <h5 class="m-0 me-2 text-white">Theme Customizer</h5>

                    <a href="javascript:void(0);" class="right-bar-toggle ms-auto">
                        <i class="mdi mdi-close noti-icon"></i>
                    </a>
                </div>

                <!-- Settings -->
                <hr class="m-0" />

                <div class="p-4">
                    <h6 class="mb-3">Layout</h6>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout"
                            id="layout-vertical" value="vertical">
                        <label class="form-check-label" for="layout-vertical">Vertical</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout"
                            id="layout-horizontal" value="horizontal">
                        <label class="form-check-label" for="layout-horizontal">Horizontal</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Mode</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-mode"
                            id="layout-mode-light" value="light">
                        <label class="form-check-label" for="layout-mode-light">Light</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-mode"
                            id="layout-mode-dark" value="dark">
                        <label class="form-check-label" for="layout-mode-dark">Dark</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Width</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-width"
                            id="layout-width-fuild" value="fuild" onchange="document.body.setAttribute('data-layout-size', 'fluid')">
                        <label class="form-check-label" for="layout-width-fuild">Fluid</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-width"
                            id="layout-width-boxed" value="boxed" onchange="document.body.setAttribute('data-layout-size', 'boxed')">
                        <label class="form-check-label" for="layout-width-boxed">Boxed</label>
                    </div>

                    <h6 class="mt-4 mb-3">Layout Position</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-position"
                            id="layout-position-fixed" value="fixed" onchange="document.body.setAttribute('data-layout-scrollable', 'false')">
                        <label class="form-check-label" for="layout-position-fixed">Fixed</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-position"
                            id="layout-position-scrollable" value="scrollable" onchange="document.body.setAttribute('data-layout-scrollable', 'true')">
                        <label class="form-check-label" for="layout-position-scrollable">Scrollable</label>
                    </div>

                    <h6 class="mt-4 mb-3">Topbar Color</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="topbar-color"
                            id="topbar-color-light" value="light" onchange="document.body.setAttribute('data-topbar', 'light')">
                        <label class="form-check-label" for="topbar-color-light">Light</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="topbar-color"
                            id="topbar-color-dark" value="dark" onchange="document.body.setAttribute('data-topbar', 'dark')">
                        <label class="form-check-label" for="topbar-color-dark">Dark</label>
                    </div>

                    <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Size</h6>

                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-default" value="default" onchange="document.body.setAttribute('data-sidebar-size', 'lg')">
                        <label class="form-check-label" for="sidebar-size-default">Default</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-compact" value="compact" onchange="document.body.setAttribute('data-sidebar-size', 'md')">
                        <label class="form-check-label" for="sidebar-size-compact">Compact</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-size"
                            id="sidebar-size-small" value="small" onchange="document.body.setAttribute('data-sidebar-size', 'sm')">
                        <label class="form-check-label" for="sidebar-size-small">Small (Icon View)</label>
                    </div>

                    <h6 class="mt-4 mb-3 sidebar-setting">Sidebar Color</h6>

                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-light" value="light" onchange="document.body.setAttribute('data-sidebar', 'light')">
                        <label class="form-check-label" for="sidebar-color-light">Light</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-dark" value="dark" onchange="document.body.setAttribute('data-sidebar', 'dark')">
                        <label class="form-check-label" for="sidebar-color-dark">Dark</label>
                    </div>
                    <div class="form-check sidebar-setting">
                        <input class="form-check-input" type="radio" name="sidebar-color"
                            id="sidebar-color-brand" value="brand" onchange="document.body.setAttribute('data-sidebar', 'brand')">
                        <label class="form-check-label" for="sidebar-color-brand">Brand</label>
                    </div>

                    <h6 class="mt-4 mb-3">Direction</h6>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-direction"
                            id="layout-direction-ltr" value="ltr">
                        <label class="form-check-label" for="layout-direction-ltr">LTR</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="layout-direction"
                            id="layout-direction-rtl" value="rtl">
                        <label class="form-check-label" for="layout-direction-rtl">RTL</label>
                    </div>

                </div>

            </div> <!-- end slimscroll-menu-->
        </div>
        <!-- /Right-bar -->
        
        
        
        
        
        

	<!-- 챌린지 생성 Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content" style="width: 800px; margin-left: -100px; margin-right: -100px;">
	    
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel" style="font-weight: bold;">새로운 챌린지 등록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	  	
	  	<form enctype="multipart/form-data" action="${ pageContext.request.contextPath }/admin/challengeInsert" method="post">
	      
	      <div class="modal-body">
	      		<div class="card-body">
	              <div class="row">
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label" style="font-weight: bold;">챌린지 명</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeName">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label" style="font-weight: bold;">챌린지 리워드</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeRewardAmount">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label" style="font-weight: bold;">챌린지 설명</label>
	                          <div class="col-md-10">
	                              <textarea class="form-control" id="example-text-input" name="challengeInfo"></textarea>
	                          </div>
	                      </div><!-- end row -->
	                      
	                      <div class="mb-3 row">
	                          <label for="formFile" class="form-label" style="font-weight: bold;">챌린지 아이콘 이미지</label>
	                  		  <input class="form-control" type="file" id="formFile">
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="formFile" class="form-label" style="font-weight: bold;">챌린지 타이틀 이미지</label>
	                  		  <input class="form-control" type="file" id="formFile" name="challengeImageFile">
	                      </div><!-- end row -->
	                      
	                      <div class="mb-3 row">
	                          <label for="formFile" class="form-label" style="font-weight: bold;">챌린지 설명 이미지</label>
	                  		  <input class="form-control" type="file" id="formFile">
	                      </div><!-- end row -->
	                      
	              </div><!-- end row -->
	          </div><!-- end card body -->
	      		
	      </div>
	      <div class="modal-footer  d-flex justify-content-center">
	        <input type="submit" class="btn w-50" style="color: white;background-color: #008485;" value="챌린지 등록">
	      </div>
	      </form>
	    </div>
	  </div>
	</div>
	
	
	
        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>

        <!-- JAVASCRIPT -->
        <script src="/resources/assets/libs/jquery/jquery.min.js"></script>
        <script src="/resources/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/assets/libs/metismenu/metisMenu.min.js"></script>
        <script src="/resources/assets/libs/simplebar/simplebar.min.js"></script>
        <script src="/resources/assets/libs/node-waves/waves.min.js"></script>

        <!-- apexcharts -->
        <script src="/resources/assets/libs/apexcharts/apexcharts.min.js"></script>

        <!-- dashboard init -->
        <script src="/resources/assets/js/pages/dashboard.init.js"></script>

        <!-- App js -->
        <script src="/resources/assets/js/app.js"></script>
        
		<script src="https://kit.fontawesome.com/c4f5274430.js" crossorigin="anonymous"></script>

        <!-- SparkLine charts init -->
        <script src="/resources/assets/libs/jquery-sparkline/jquery.sparkline.min.js"></script>
        
        <!-- SparkLine charts init -->
        <script src="/resources/assets/js/pages/sparklines.init.js"></script>

        <!-- Knob charts init -->
        <script src="/resources/assets/libs/jquery-knob/jquery.knob.min.js"></script> 

        <!-- Knob charts init -->
        <script src="/resources/assets/js/pages/jquery-knob.init.js"></script>

        <!-- App js -->
        <script src="/resources/assets/js/app.js"></script>
        
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
        <script>
        $( document ).ready(function() {
        	
        		swal('챌린지 등록', "새로운 챌린지가 등록되었습니다!", 'success');
			});
        </script>
    </body>

</html>