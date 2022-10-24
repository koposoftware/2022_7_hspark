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
                            
                
                            <li class="mm-active">
                                <a href="${ pageContext.request.contextPath }/admin" class="waves-effect">
                                    <i class='bx bxs-dashboard'></i>
                                    <span key="t-dashboard">
                                    대시보드</span>
                                </a>
                            </li>

                            <li class="menu-title mt-3" key="t-more"  style="color: black;">메뉴</li>

                            <li>
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

                        <div class="row">
                            <div class="col-md-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-end">
                                            <div class="avatar-sm mx-auto mb-4">
                                                <span class="avatar-title rounded-circle bg-light font-size-24">
                                                    <i class="mdi mdi-account-group text-primary"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div>
                                            <p class="text-muted text-uppercase fw-semibold">총 회원수</p>
                                            <h4 class="mb-1 mt-1"><span class="counter-value" data-target="5241"></span>명</h4>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col-->

                            <div class="col-md-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-end">
                                            <div class="avatar-sm mx-auto mb-4">
                                                <span class="avatar-title rounded-circle bg-light font-size-24">
                                                   
                                                    <i class="fa-solid fa-e mdi-refresh-circle text-success"></i>
                                                    
                                                </span>
                                            </div>
                                        </div>
                                        <div>
                                            <p class="text-muted text-uppercase fw-semibold">금일 챌린지 수</p>
                                            <h4 class="mb-1 mt-1"><span class="counter-value" data-target="685">0</span></h4>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div> <!-- end col-->

                            <div class="col-md-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-end">
                                            <div class="avatar-sm mx-auto mb-4">
                                                <span class="avatar-title rounded-circle bg-light font-size-24">
                                                    <i class="fa-solid fa-s mdi-account-group text-primary"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div>
                                            <p class="text-muted text-uppercase fw-semibold">금일 기부액</p>
                                            <h4 class="mb-1 mt-1">₩258,410,450</h4>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div> <!-- end col-->

                            <div class="col-md-6 col-xl-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="float-end">
                                            <div class="avatar-sm mx-auto mb-4">
                                                <span class="avatar-title rounded-circle bg-light font-size-24">
                                                    <i class="fa-solid fa-g mdi-cart-check text-success"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div>
                                            <p class="text-muted text-uppercase fw-semibold">가입 기업 수</p>
                                            <h4 class="mb-1 mt-1"><span class="counter-value" data-target="7">0</span></h4>
                                        </div>
                                    </div>
                                </div>
                            </div> <!-- end col-->
                        </div> <!-- end row-->
                        
						<!-- end row -->
						<div class="row">
							<!-- end col -->
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="font-size-16 mb-4">기업 별 챌린지 참여 수</h4>
                                        
                                        <div id="bar_chart" class="apex-charts" dir="ltr"></div>
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                          
                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="font-size-16 mb-4">챌린지 별 참여율</h4>
                                        <div id="pie-chart" class="apex-charts" dir="ltr"></div>
                                    </div>
                                    <!-- end card body -->
                                </div>
                                <!-- end card -->
                            </div>
                            <!-- end col -->
                                    
						</div>
						
						
						<div class="row">
							<div class="col-lg-12">
                               <div class="card">
                                   <div class="card-body">
                                       <h4 class="font-size-16 mb-4">월별 기부액 추이</h4>

                                       <div id="line_chart_datalabel" class="apex-charts" dir="ltr"></div>                              
                                   </div>
                                   <!-- end card body -->
                               </div>
                               <!-- end card -->
                           </div>
						</div>
						
						
                       


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
	  <div class="modal-dialog">
	  <form enctype="multipart/form-data" action="${ pageContext.request.contextPath }/admin/challengeInsert" method="post">
	    <div class="modal-content">
	    
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">새로운 챌린지 등록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      
	      <div class="modal-body">
	      		<div class="card-body">
	              <div class="row">
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 명</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeName">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 리워드</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeRewardAmount">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 설명</label>
	                          <div class="col-md-10">
	                              <textarea class="form-control" id="example-text-input" name="challengeInfo"></textarea>
	                          </div>
	                      </div><!-- end row -->
	                      
	                      <div class="mb-3 row">
	                          <label for="formFile" class="form-label">챌린지 이미지</label>
	                  		  <input class="form-control" type="file" id="formFile" name="challengeImageFile">
	                      </div><!-- end row -->
	                      
	              </div><!-- end row -->
	          </div><!-- end card body -->
	      		
	      </div>
	      <div class="modal-footer">
	        <input type="submit" class="btn w-100" style="background-color: #008485; color: white;" value="챌린지 등록">
	      </div>
	    </div>
	      </form>
	  </div>
	</div>
	
	<!-- 기부 생성 Modal -->
	<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	  <form enctype="multipart/form-data" action="${ pageContext.request.contextPath }/admin/donationInsert" method="post">
	    <div class="modal-content">
	    
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">새로운 기부 등록</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      
	      <div class="modal-body">
	      		<div class="card-body">
	              <div class="row">
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">기부명</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeName">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 리워드</label>
	                          <div class="col-md-10">
	                              <input class="form-control" type="text" id="example-text-input" name="challengeRewardAmount">
	                          </div>
	                      </div><!-- end row -->
	                      <div class="mb-3 row">
	                          <label for="example-text-input" class="col-md-2 col-form-label">챌린지 설명</label>
	                          <div class="col-md-10">
	                              <textarea class="form-control" id="example-text-input" name="challengeInfo"></textarea>
	                          </div>
	                      </div><!-- end row -->
	                      
	                      <div class="mb-3 row">
	                          <label for="formFile" class="form-label">챌린지 이미지</label>
	                  		  <input class="form-control" type="file" id="formFile" name="challengeImageFile">
	                      </div><!-- end row -->
	                      
	              </div><!-- end row -->
	          </div><!-- end card body -->
	      		
	      </div>
	      <div class="modal-footer">
	        <input type="submit" class="btn btn-primary" value="기부 등록">
	      </div>
	    </div>
	      </form>
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
        
        <script>
        var options = {
                series: [{
                data: [1515, 2515,1214,3052,4854,1515,6322]
              }],
                chart: {                    
                height: 320,
                type: 'horizontal',
                events: {
                  click: function(chart, w, e) {
                    // console.log(chart, w, e)
                  }
                }
              },
              
              plotOptions: {
                bar: {
                  columnWidth: '60%',
                  distributed: true,
                }
              },
              dataLabels: {
                enabled: false                           
              },
              legend: {
                show: false
              },
              xaxis: {
                categories: 
                   /* 가로축 배열 */
                   ['LG','삼성','쿠팡','카카오','네이버','국민은행','DB금융투자']
                   
                  ,
                labels: {
                  style: {                           
                    fontSize: '20px',
                    fontWeight: 'bold',
                    fontFamily: 'hanaBFont',
                  }
                }
              }
              }; 
            
              //var chart = new ApexCharts(document.querySelector("#bar_chart"), options);
              chart.render();   
        
        </script>
        
        <script>
        var options = {
                chart: {
                    height: 380,
                    type: "line",
                    zoom: {
                        enabled: !1
                    },
                    toolbar: {
                        show: !1
                    }
                },
                colors: ["#0ab39c"],
                dataLabels: {
                    enabled: !1
                },
                stroke: {
                    width: [3, 3],
                    curve: "straight"
                },
                series: [{
                    name: "기부액",
                    data: [351103, 254889, 359418, 575421, 484948, 651612, 615125]
                }],
                grid: {
                    row: {
                        colors: ["transparent"],
                        opacity: .1
                    },
                    borderColor: "#f1f1f1"
                },
                markers: {
                    style: "inverted",
                    size: 4,
                    hover: {
                        size: 6
                    }
                },
                xaxis: {
                    categories: ["4월", "5월", "6월", "7월", "8월", "9월", "10월"],
                    title: {
                        text: "월"
                    }
                },
                yaxis: {
                    title: {
                        text: "기부액"
                    },
                    min: 100000,
                    max: 1000000
                },
                legend: {
                    position: "top",
                    horizontalAlign: "right",
                    floating: !0,
                    offsetY: -25,
                    offsetX: -5
                },
                responsive: [{
                    breakpoint: 600,
                    options: {
                        chart: {
                            toolbar: {
                                show: !1
                            }
                        },
                        legend: {
                            show: !1
                        }
                    }
                }]
            },
            chart = new ApexCharts(document.querySelector("#line_chart_datalabel"), options);
        chart.render();
        
        
        options = {
            chart: {
                height: 380,
                type: "line",
                zoom: {
                    enabled: !1
                },
                toolbar: {
                    show: !1
                }
            },
            colors: ["#0576b9", "#f06548", "#0ab39c"],
            dataLabels: {
                enabled: !1
            },
            stroke: {
                width: [3, 4, 3],
                curve: "straight",
                dashArray: [0, 8, 5]
            },
            series: [{
                name: "Session Duration",
                data: [45, 52, 38, 24, 33, 26, 21, 20, 6, 8, 15, 10]
            }, {
                name: "Page Views",
                data: [36, 42, 60, 42, 13, 18, 29, 37, 36, 51, 32, 35]
            }, {
                name: "Total Visits",
                data: [89, 56, 74, 98, 72, 38, 64, 46, 84, 58, 46, 49]
            }],
            markers: {
                size: 0,
                hover: {
                    sizeOffset: 6
                }
            },
            xaxis: {
                categories: ["01 Jan", "02 Jan", "03 Jan", "04 Jan", "05 Jan", "06 Jan", "07 Jan", "08 Jan", "09 Jan", "10 Jan", "11 Jan", "12 Jan"]
            },
            tooltip: {
                y: [{
                    title: {
                        formatter: function(e) {
                            return e + " (mins)"
                        }
                    }
                }, {
                    title: {
                        formatter: function(e) {
                            return e + " per session"
                        }
                    }
                }, {
                    title: {
                        formatter: function(e) {
                            return e
                        }
                    }
                }]
            },
            grid: {
                borderColor: "#f1f1f1"
            }
        };
        (chart = new ApexCharts(document.querySelector("#line_chart_dashed"), options)).render();
        options = {
            chart: {
                height: 350,
                type: "area",
                toolbar: {
                    show: !1
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                curve: "smooth",
                width: 3
            },
            series: [{
                name: "series1",
                data: [34, 40, 28, 52, 42, 109, 100]
            }, {
                name: "series2",
                data: [32, 60, 34, 46, 34, 52, 41]
            }],
            colors: ["#0576b9", "#0ab39c"],
            xaxis: {
                type: "datetime",
                categories: ["2018-09-19T00:00:00", "2018-09-19T01:30:00", "2018-09-19T02:30:00", "2018-09-19T03:30:00", "2018-09-19T04:30:00", "2018-09-19T05:30:00", "2018-09-19T06:30:00"]
            },
            grid: {
                borderColor: "#f1f1f1"
            },
            fill: {
                type: "gradient",
                gradient: {
                    shadeIntensity: 1,
                    inverseColors: !1,
                    opacityFrom: .45,
                    opacityTo: .05,
                    stops: [20, 100, 100, 100]
                }
            },
            tooltip: {
                x: {
                    format: "dd/MM/yy HH:mm"
                }
            }
        };
        (chart = new ApexCharts(document.querySelector("#spline_area"), options)).render();
        options = {
            chart: {
                height: 350,
                type: "bar",
                toolbar: {
                    show: !1
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !1,
                    columnWidth: "50%",
                    endingShape: "rounded"
                }
            },
            dataLabels: {
                enabled: !1
            },
            stroke: {
                show: !0,
                width: 2,
                colors: ["transparent"]
            },
            series: [{
                name: "Net Profit",
                data: [46, 57, 59, 54, 62, 58, 64, 60, 66]
            }, {
                name: "Revenue",
                data: [74, 83, 102, 97, 86, 106, 93, 114, 94]
            }, {
                name: "Free Cash Flow",
                data: [37, 42, 38, 26, 47, 50, 54, 55, 43]
            }],
            colors: ["#0576b9", "#0ab39c", "#f06548"],
            xaxis: {
                categories: ["Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct"]
            },
            yaxis: {
                title: {
                    text: "$ (thousands)"
                }
            },
            grid: {
                borderColor: "#f1f1f1"
            },
            fill: {
                opacity: 1
            },
            tooltip: {
                y: {
                    formatter: function(e) {
                        return "$ " + e + " thousands"
                    }
                }
            }
        };
        (chart = new ApexCharts(document.querySelector("#column_chart"), options)).render();
        options = {
            chart: {
                height: 350,
                type: "bar",
                toolbar: {
                    show: !1
                }
            },
            plotOptions: {
                bar: {
                    columnWidth: "34%",
                    dataLabels: {
                        position: "top"
                    }
                }
            },
            dataLabels: {
                enabled: !0,
                formatter: function(e) {
                    return e + "%"
                },
                offsetY: -20,
                style: {
                    fontSize: "12px",
                    colors: ["#304758"]
                }
            },
            series: [{
                name: "Inflation",
                data: [2.5, 3.2, 5, 10.1, 4.2, 3.8, 3, 2.4, 4, 1.2, 3.5, .8]
            }],
            colors: ["#0576b9"],
            grid: {
                borderColor: "#f1f1f1"
            },
            xaxis: {
                categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                position: "top",
                labels: {
                    offsetY: -18
                },
                axisBorder: {
                    show: !1
                },
                axisTicks: {
                    show: !1
                },
                crosshairs: {
                    fill: {
                        type: "gradient",
                        gradient: {
                            colorFrom: "#D8E3F0",
                            colorTo: "#BED1E6",
                            stops: [0, 100],
                            opacityFrom: .4,
                            opacityTo: .5
                        }
                    }
                },
                tooltip: {
                    enabled: !0,
                    offsetY: -35
                }
            },
            fill: {
                gradient: {
                    shade: "light",
                    type: "horizontal",
                    shadeIntensity: .25,
                    gradientToColors: void 0,
                    inverseColors: !0,
                    opacityFrom: 1,
                    opacityTo: 1,
                    stops: [50, 0, 100, 100]
                }
            },
            yaxis: {
                axisBorder: {
                    show: !1
                },
                axisTicks: {
                    show: !1
                },
                labels: {
                    show: !1,
                    formatter: function(e) {
                        return e + "%"
                    }
                }
            },
            title: {
                text: "Monthly Inflation in Argentina, 2002",
                floating: !0,
                offsetY: 320,
                align: "center",
                style: {
                    color: "#444"
                }
            }
        };
        (chart = new ApexCharts(document.querySelector("#column_chart_datalabel"), options)).render();
        
        /* 차트 */
        options = {
            chart: {
                height: 320,
                type: "bar",
                toolbar: {
                    show: !1
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !0,
                    barHeight: "50%"
                }
            },
            dataLabels: {
                enabled: !1
            },
            series: [{
                data: [1515, 2515,1214,3052,4854,3515,6322]
            }],
            colors: ["#0ab39c"],
            grid: {
                borderColor: "#f1f1f1"
            },
            xaxis: {
                categories:   ['LG','삼성','쿠팡','카카오','네이버','국민은행','DB금융투자']
            }
        };
        
        
        (chart = new ApexCharts(document.querySelector("#bar_chart"), options)).render();
        
        options = {
            chart: {
                height: 350,
                type: "line",
                stacked: !1,
                toolbar: {
                    show: !1
                }
            },
            stroke: {
                width: [0, 2, 4],
                curve: "smooth"
            },
            plotOptions: {
                bar: {
                    columnWidth: "34%"
                }
            },
            colors: ["#0576b9", "#0ab39c", "#f06548"],
            series: [{
                name: "Team A",
                type: "column",
                data: [23, 11, 22, 27, 13, 22, 37, 21, 44, 22, 30]
            }, {
                name: "Team B",
                type: "area",
                data: [44, 55, 41, 67, 22, 43, 21, 41, 56, 27, 43]
            }, {
                name: "Team C",
                type: "line",
                data: [30, 25, 36, 30, 45, 35, 64, 52, 59, 36, 39]
            }],
            fill: {
                opacity: [.85, .25, 1],
                gradient: {
                    inverseColors: !1,
                    shade: "light",
                    type: "vertical",
                    opacityFrom: .85,
                    opacityTo: .55,
                    stops: [0, 100, 100, 100]
                }
            },
            labels: ["01/01/2003", "02/01/2003", "03/01/2003", "04/01/2003", "05/01/2003", "06/01/2003", "07/01/2003", "08/01/2003", "09/01/2003", "10/01/2003", "11/01/2003"],
            markers: {
                size: 0
            },
            xaxis: {
                type: "datetime"
            },
            yaxis: {
                title: {
                    text: "Points"
                }
            },
            tooltip: {
                shared: !0,
                intersect: !1,
                y: {
                    formatter: function(e) {
                        return void 0 !== e ? e.toFixed(0) + " points" : e
                    }
                }
            },
            grid: {
                borderColor: "#f1f1f1"
            }
        };
        (chart = new ApexCharts(document.querySelector("#mixed_chart"), options)).render();
        options = {
            series: [{
                data: [{
                    x: "Code",
                    y: [new Date("2019-03-02").getTime(), new Date("2019-03-04").getTime()]
                }, {
                    x: "Test",
                    y: [new Date("2019-03-04").getTime(), new Date("2019-03-08").getTime()]
                }, {
                    x: "Validation",
                    y: [new Date("2019-03-08").getTime(), new Date("2019-03-12").getTime()]
                }, {
                    x: "Deployment",
                    y: [new Date("2019-03-12").getTime(), new Date("2019-03-18").getTime()]
                }]
            }],
            chart: {
                height: 350,
                type: "rangeBar",
                toolbar: {
                    show: !1
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !0,
                    barHeight: "24%"
                }
            },
            colors: ["#0576b9"],
            xaxis: {
                type: "datetime"
            }
        };
        (chart = new ApexCharts(document.querySelector("#timeline-chart"), options)).render();
        options = {
            series: [{
                name: "Bob",
                data: [{
                    x: "Design",
                    y: [new Date("2019-03-05").getTime(), new Date("2019-03-08").getTime()]
                }, {
                    x: "Code",
                    y: [new Date("2019-03-02").getTime(), new Date("2019-03-05").getTime()]
                }, {
                    x: "Code",
                    y: [new Date("2019-03-05").getTime(), new Date("2019-03-07").getTime()]
                }, {
                    x: "Test",
                    y: [new Date("2019-03-03").getTime(), new Date("2019-03-09").getTime()]
                }, {
                    x: "Test",
                    y: [new Date("2019-03-08").getTime(), new Date("2019-03-11").getTime()]
                }, {
                    x: "Validation",
                    y: [new Date("2019-03-11").getTime(), new Date("2019-03-16").getTime()]
                }, {
                    x: "Design",
                    y: [new Date("2019-03-01").getTime(), new Date("2019-03-03").getTime()]
                }]
            }, {
                name: "Joe",
                data: [{
                    x: "Design",
                    y: [new Date("2019-03-02").getTime(), new Date("2019-03-05").getTime()]
                }, {
                    x: "Test",
                    y: [new Date("2019-03-06").getTime(), new Date("2019-03-16").getTime()]
                }, {
                    x: "Code",
                    y: [new Date("2019-03-03").getTime(), new Date("2019-03-07").getTime()]
                }, {
                    x: "Deployment",
                    y: [new Date("2019-03-20").getTime(), new Date("2019-03-22").getTime()]
                }, {
                    x: "Design",
                    y: [new Date("2019-03-10").getTime(), new Date("2019-03-16").getTime()]
                }]
            }, {
                name: "Dan",
                data: [{
                    x: "Code",
                    y: [new Date("2019-03-10").getTime(), new Date("2019-03-17").getTime()]
                }, {
                    x: "Validation",
                    y: [new Date("2019-03-05").getTime(), new Date("2019-03-09").getTime()]
                }]
            }],
            chart: {
                height: 350,
                type: "rangeBar",
                toolbar: {
                    show: !1
                }
            },
            plotOptions: {
                bar: {
                    horizontal: !0,
                    barHeight: "80%"
                }
            },
            xaxis: {
                type: "datetime"
            },
            stroke: {
                width: 1
            },
            fill: {
                type: "solid",
                opacity: .8,
                colors: ["#0576b9", "#0ab39c", "#f06548"]
            },
            legend: {
                position: "top",
                horizontalAlign: "center"
            }
        };
        (chart = new ApexCharts(document.querySelector("#timelinedistributed-chart"), options)).render();
        options = {
            series: [{
                data: [{
                    x: new Date(15387786e5),
                    y: [6629.81, 6650.5, 6623.04, 6633.33]
                }, {
                    x: new Date(15387804e5),
                    y: [6632.01, 6643.59, 6620, 6630.11]
                }, {
                    x: new Date(15387822e5),
                    y: [6630.71, 6648.95, 6623.34, 6635.65]
                }, {
                    x: new Date(1538784e6),
                    y: [6635.65, 6651, 6629.67, 6638.24]
                }, {
                    x: new Date(15387858e5),
                    y: [6638.24, 6640, 6620, 6624.47]
                }, {
                    x: new Date(15387876e5),
                    y: [6624.53, 6636.03, 6621.68, 6624.31]
                }, {
                    x: new Date(15387894e5),
                    y: [6624.61, 6632.2, 6617, 6626.02]
                }, {
                    x: new Date(15387912e5),
                    y: [6627, 6627.62, 6584.22, 6603.02]
                }, {
                    x: new Date(1538793e6),
                    y: [6605, 6608.03, 6598.95, 6604.01]
                }, {
                    x: new Date(15387948e5),
                    y: [6604.5, 6614.4, 6602.26, 6608.02]
                }, {
                    x: new Date(15387966e5),
                    y: [6608.02, 6610.68, 6601.99, 6608.91]
                }, {
                    x: new Date(15387984e5),
                    y: [6608.91, 6618.99, 6608.01, 6612]
                }, {
                    x: new Date(15388002e5),
                    y: [6612, 6615.13, 6605.09, 6612]
                }, {
                    x: new Date(1538802e6),
                    y: [6612, 6624.12, 6608.43, 6622.95]
                }, {
                    x: new Date(15388038e5),
                    y: [6623.91, 6623.91, 6615, 6615.67]
                }, {
                    x: new Date(15388056e5),
                    y: [6618.69, 6618.74, 6610, 6610.4]
                }, {
                    x: new Date(15388074e5),
                    y: [6611, 6622.78, 6610.4, 6614.9]
                }, {
                    x: new Date(15388092e5),
                    y: [6614.9, 6626.2, 6613.33, 6623.45]
                }, {
                    x: new Date(1538811e6),
                    y: [6623.48, 6627, 6618.38, 6620.35]
                }, {
                    x: new Date(15388128e5),
                    y: [6619.43, 6620.35, 6610.05, 6615.53]
                }, {
                    x: new Date(15388146e5),
                    y: [6615.53, 6617.93, 6610, 6615.19]
                }, {
                    x: new Date(15388164e5),
                    y: [6615.19, 6621.6, 6608.2, 6620]
                }, {
                    x: new Date(15388182e5),
                    y: [6619.54, 6625.17, 6614.15, 6620]
                }, {
                    x: new Date(153882e7),
                    y: [6620.33, 6634.15, 6617.24, 6624.61]
                }, {
                    x: new Date(15388218e5),
                    y: [6625.95, 6626, 6611.66, 6617.58]
                }, {
                    x: new Date(15388236e5),
                    y: [6619, 6625.97, 6595.27, 6598.86]
                }, {
                    x: new Date(15388254e5),
                    y: [6598.86, 6598.88, 6570, 6587.16]
                }, {
                    x: new Date(15388272e5),
                    y: [6588.86, 6600, 6580, 6593.4]
                }, {
                    x: new Date(1538829e6),
                    y: [6593.99, 6598.89, 6585, 6587.81]
                }, {
                    x: new Date(15388308e5),
                    y: [6587.81, 6592.73, 6567.14, 6578]
                }, {
                    x: new Date(15388326e5),
                    y: [6578.35, 6581.72, 6567.39, 6579]
                }, {
                    x: new Date(15388344e5),
                    y: [6579.38, 6580.92, 6566.77, 6575.96]
                }, {
                    x: new Date(15388362e5),
                    y: [6575.96, 6589, 6571.77, 6588.92]
                }, {
                    x: new Date(1538838e6),
                    y: [6588.92, 6594, 6577.55, 6589.22]
                }, {
                    x: new Date(15388398e5),
                    y: [6589.3, 6598.89, 6589.1, 6596.08]
                }, {
                    x: new Date(15388416e5),
                    y: [6597.5, 6600, 6588.39, 6596.25]
                }, {
                    x: new Date(15388434e5),
                    y: [6598.03, 6600, 6588.73, 6595.97]
                }, {
                    x: new Date(15388452e5),
                    y: [6595.97, 6602.01, 6588.17, 6602]
                }, {
                    x: new Date(1538847e6),
                    y: [6602, 6607, 6596.51, 6599.95]
                }, {
                    x: new Date(15388488e5),
                    y: [6600.63, 6601.21, 6590.39, 6591.02]
                }, {
                    x: new Date(15388506e5),
                    y: [6591.02, 6603.08, 6591, 6591]
                }, {
                    x: new Date(15388524e5),
                    y: [6591, 6601.32, 6585, 6592]
                }, {
                    x: new Date(15388542e5),
                    y: [6593.13, 6596.01, 6590, 6593.34]
                }, {
                    x: new Date(1538856e6),
                    y: [6593.34, 6604.76, 6582.63, 6593.86]
                }, {
                    x: new Date(15388578e5),
                    y: [6593.86, 6604.28, 6586.57, 6600.01]
                }, {
                    x: new Date(15388596e5),
                    y: [6601.81, 6603.21, 6592.78, 6596.25]
                }, {
                    x: new Date(15388614e5),
                    y: [6596.25, 6604.2, 6590, 6602.99]
                }, {
                    x: new Date(15388632e5),
                    y: [6602.99, 6606, 6584.99, 6587.81]
                }, {
                    x: new Date(1538865e6),
                    y: [6587.81, 6595, 6583.27, 6591.96]
                }, {
                    x: new Date(15388668e5),
                    y: [6591.97, 6596.07, 6585, 6588.39]
                }, {
                    x: new Date(15388686e5),
                    y: [6587.6, 6598.21, 6587.6, 6594.27]
                }, {
                    x: new Date(15388704e5),
                    y: [6596.44, 6601, 6590, 6596.55]
                }, {
                    x: new Date(15388722e5),
                    y: [6598.91, 6605, 6596.61, 6600.02]
                }, {
                    x: new Date(1538874e6),
                    y: [6600.55, 6605, 6589.14, 6593.01]
                }, {
                    x: new Date(15388758e5),
                    y: [6593.15, 6605, 6592, 6603.06]
                }, {
                    x: new Date(15388776e5),
                    y: [6603.07, 6604.5, 6599.09, 6603.89]
                }, {
                    x: new Date(15388794e5),
                    y: [6604.44, 6604.44, 6600, 6603.5]
                }, {
                    x: new Date(15388812e5),
                    y: [6603.5, 6603.99, 6597.5, 6603.86]
                }, {
                    x: new Date(1538883e6),
                    y: [6603.85, 6605, 6600, 6604.07]
                }, {
                    x: new Date(15388848e5),
                    y: [6604.98, 6606, 6604.07, 6606]
                }]
            }],
            chart: {
                type: "candlestick",
                height: 350,
                toolbar: {
                    show: !1
                }
            },
            plotOptions: {
                candlestick: {
                    colors: {
                        upward: "#0576b9",
                        downward: "#f06548"
                    }
                }
            },
            xaxis: {
                type: "datetime"
            },
            yaxis: {
                tooltip: {
                    enabled: !0
                }
            }
        };
        (chart = new ApexCharts(document.querySelector("#candlestick-chart"), options)).render();
        options = {
            series: [{
                name: "Bubble1",
                data: generatebubbleData(new Date("11 Feb 2017 GMT").getTime(), 20, {
                    min: 10,
                    max: 60
                })
            }, {
                name: "Bubble2",
                data: generatebubbleData(new Date("11 Feb 2017 GMT").getTime(), 20, {
                    min: 10,
                    max: 60
                })
            }, {
                name: "Bubble3",
                data: generatebubbleData(new Date("11 Feb 2017 GMT").getTime(), 20, {
                    min: 10,
                    max: 60
                })
            }, {
                name: "Bubble4",
                data: generatebubbleData(new Date("11 Feb 2017 GMT").getTime(), 20, {
                    min: 10,
                    max: 60
                })
            }],
            chart: {
                height: 350,
                type: "bubble",
                toolbar: {
                    show: !1
                }
            },
            dataLabels: {
                enabled: !1
            },
            colors: ["#0576b9", "#0ab39c", "#f7b84b", "#f06548"],
            fill: {
                opacity: .8
            },
            xaxis: {
                tickAmount: 12,
                type: "category"
            },
            yaxis: {
                max: 70
            }
        };

        function generatebubbleData(e, t, a) {
            for (var o = 0, r = []; o < t;) {
                var n = Math.floor(750 * Math.random()) + 1,
                    i = Math.floor(Math.random() * (a.max - a.min + 1)) + a.min,
                    s = Math.floor(61 * Math.random()) + 15;
                r.push([n, i, s]), o++
            }
            return r
        }(chart = new ApexCharts(document.querySelector("#bubble-chart"), options)).render();
        options = {
            series: [{
                name: "SAMPLE A",
                data: [
                    [16.4, 5.4],
                    [21.7, 2],
                    [25.4, 3],
                    [19, 2],
                    [10.9, 1],
                    [13.6, 3.2],
                    [10.9, 7.4],
                    [10.9, 0],
                    [10.9, 8.2],
                    [16.4, 0],
                    [16.4, 1.8],
                    [13.6, .3],
                    [13.6, 0],
                    [29.9, 0],
                    [27.1, 2.3],
                    [16.4, 0],
                    [13.6, 3.7],
                    [10.9, 5.2],
                    [16.4, 6.5],
                    [10.9, 0],
                    [24.5, 7.1],
                    [10.9, 0],
                    [8.1, 4.7],
                    [19, 0],
                    [21.7, 1.8],
                    [27.1, 0],
                    [24.5, 0],
                    [27.1, 0],
                    [29.9, 1.5],
                    [27.1, .8],
                    [22.1, 2]
                ]
            }, {
                name: "SAMPLE B",
                data: [
                    [36.4, 13.4],
                    [1.7, 11],
                    [5.4, 8],
                    [9, 17],
                    [1.9, 4],
                    [3.6, 12.2],
                    [1.9, 14.4],
                    [1.9, 9],
                    [1.9, 13.2],
                    [1.4, 7],
                    [6.4, 8.8],
                    [3.6, 4.3],
                    [1.6, 10],
                    [9.9, 2],
                    [7.1, 15],
                    [1.4, 0],
                    [3.6, 13.7],
                    [1.9, 15.2],
                    [6.4, 16.5],
                    [.9, 10],
                    [4.5, 17.1],
                    [10.9, 10],
                    [.1, 14.7],
                    [9, 10],
                    [12.7, 11.8],
                    [2.1, 10],
                    [2.5, 10],
                    [27.1, 10],
                    [2.9, 11.5],
                    [7.1, 10.8],
                    [2.1, 12]
                ]
            }, {
                name: "SAMPLE C",
                data: [
                    [21.7, 3],
                    [23.6, 3.5],
                    [24.6, 3],
                    [29.9, 3],
                    [21.7, 20],
                    [23, 2],
                    [10.9, 3],
                    [28, 4],
                    [27.1, .3],
                    [16.4, 4],
                    [13.6, 0],
                    [19, 5],
                    [22.4, 3],
                    [24.5, 3],
                    [32.6, 3],
                    [27.1, 4],
                    [29.6, 6],
                    [31.6, 8],
                    [21.6, 5],
                    [20.9, 4],
                    [22.4, 0],
                    [32.6, 10.3],
                    [29.7, 20.8],
                    [24.5, .8],
                    [21.4, 0],
                    [21.7, 6.9],
                    [28.6, 7.7],
                    [15.4, 0],
                    [18.1, 0],
                    [33.4, 0],
                    [16.4, 0]
                ]
            }],
            chart: {
                height: 350,
                type: "scatter",
                toolbar: {
                    show: !1
                },
                zoom: {
                    enabled: !0,
                    type: "xy"
                }
            },
            xaxis: {
                tickAmount: 10,
                labels: {
                    formatter: function(e) {
                        return parseFloat(e).toFixed(1)
                    }
                }
            },
            yaxis: {
                tickAmount: 7
            },
            colors: ["#0576b9", "#0ab39c", "#f7b84b"]
        };
        (chart = new ApexCharts(document.querySelector("#scatter-chart"), options)).render();
        options = {
            series: [{
                name: "Metric1",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric2",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric3",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric4",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric5",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric6",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric7",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric8",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }, {
                name: "Metric9",
                data: generateData(18, {
                    min: 0,
                    max: 90
                })
            }],
            chart: {
                height: 350,
                type: "heatmap",
                toolbar: {
                    show: !1
                }
            },
            dataLabels: {
                enabled: !1
            },
            colors: ["#0576b9"]
        };

        function generateData(e, t) {
            for (var a = 0, o = []; a < e;) {
                var r = "w" + (a + 1).toString(),
                    n = Math.floor(Math.random() * (t.max - t.min + 1)) + t.min;
                o.push({
                    x: r,
                    y: n
                }), a++
            }
            return o
        }(chart = new ApexCharts(document.querySelector("#heatmap-chart"), options)).render();
        options = {
            series: [{
                name: "Desktops",
                data: [{
                    x: "ABC",
                    y: 10
                }, {
                    x: "DEF",
                    y: 60
                }, {
                    x: "XYZ",
                    y: 41
                }]
            }, {
                name: "Mobile",
                data: [{
                    x: "ABCD",
                    y: 10
                }, {
                    x: "DEFG",
                    y: 20
                }, {
                    x: "WXYZ",
                    y: 51
                }, {
                    x: "PQR",
                    y: 30
                }, {
                    x: "MNO",
                    y: 20
                }, {
                    x: "CDE",
                    y: 30
                }]
            }],
            legend: {
                show: !1
            },
            chart: {
                height: 350,
                type: "treemap",
                toolbar: {
                    show: !1
                }
            },
            colors: ["#0576b9", "#0ab39c"]
        };
        (chart = new ApexCharts(document.querySelector("#treemap-chart"), options)).render();
        
        /*  파이차트 */
        options = {
            chart: {
                height: 350,
                type: "pie"
            },
            /* series: [44, 55, 41, 17, 15],*/            
            series: [58, 19, 16, 28.5, 15],
            labels: ["선(善)블러 챌린지", "#제로웨이스트 챌린지", "에코 플로깅(Plogging) 챌린지", "#용기내서 용기내", "기타"],
            colors: ["#0ab39c", "#0576b9", "#f06548", "#299cdb", "#f7b84b"],
            legend: {
                show: !0,
                position: "bottom",
                horizontalAlign: "center",
                verticalAlign: "middle",
                floating: !1,
                fontSize: "14px",
                offsetX: 0,
                offsetY: -10
            },
            responsive: [{
                breakpoint: 600,
                options: {
                    chart: {
                        height: 240
                    },
                    legend: {
                        show: !1
                    }
                }
            }]
        };
        (chart = new ApexCharts(document.querySelector("#pie-chart"), options)).render();
        
        
        options = {
            chart: {
                height: 320,
                type: "donut"
            },
            series: [44, 55, 41, 17, 15],
            labels: ["Series 1", "Series 2", "Series 3", "Series 4", "Series 5"],
            colors: ["#0ab39c", "#0576b9", "#f06548", "#299cdb", "#f7b84b"],
            legend: {
                show: !0,
                position: "bottom",
                horizontalAlign: "center",
                verticalAlign: "middle",
                floating: !1,
                fontSize: "14px",
                offsetX: 0,
                offsetY: -10
            },
            responsive: [{
                breakpoint: 600,
                options: {
                    chart: {
                        height: 240
                    },
                    legend: {
                        show: !1
                    }
                }
            }]
        };
        (chart = new ApexCharts(document.querySelector("#donut-chart"), options)).render();
        options = {
            chart: {
                height: 350,
                type: "radialBar"
            },
            plotOptions: {
                radialBar: {
                    dataLabels: {
                        name: {
                            fontSize: "22px"
                        },
                        value: {
                            fontSize: "16px"
                        },
                        total: {
                            show: !0,
                            label: "Total",
                            formatter: function(e) {
                                return 249
                            }
                        }
                    }
                }
            },
            series: [44, 55, 67, 83],
            labels: ["Computer", "Tablet", "Laptop", "Mobile"],
            colors: ["#0576b9", "#0ab39c", "#f06548", "#f7b84b"]
        };
        (chart = new ApexCharts(document.querySelector("#radial-chart"), options)).render();
        options = {
            series: [76, 67, 61, 90],
            chart: {
                height: 350,
                type: "radialBar"
            },
            plotOptions: {
                radialBar: {
                    offsetY: 0,
                    startAngle: 0,
                    endAngle: 270,
                    hollow: {
                        margin: 5,
                        size: "45%",
                        background: "transparent",
                        image: void 0
                    },
                    dataLabels: {
                        name: {
                            show: !1
                        },
                        value: {
                            show: !1
                        }
                    }
                }
            },
            colors: ["#0ab39c", "#299cdb", "#0576b9", "#0077B5"],
            labels: ["Vimeo", "Messenger", "Facebook", "LinkedIn"],
            legend: {
                show: !0,
                floating: !0,
                fontSize: "16px",
                position: "left",
                offsetX: 160,
                offsetY: 15,
                labels: {
                    useSeriesColors: !0
                },
                markers: {
                    size: 0
                },
                formatter: function(e, t) {
                    return e + ":  " + t.w.globals.series[t.seriesIndex]
                },
                itemMargin: {
                    vertical: 3
                }
            },
            responsive: [{
                breakpoint: 480,
                options: {
                    legend: {
                        show: !1
                    }
                }
            }]
        };
        (chart = new ApexCharts(document.querySelector("#radial-angle-chart"), options)).render();
        options = {
            series: [{
                name: "Series 1",
                data: [80, 50, 30, 40, 100, 20]
            }],
            chart: {
                height: 350,
                type: "radar",
                toolbar: {
                    show: !1
                }
            },
            colors: ["#0576b9"],
            xaxis: {
                categories: ["January", "February", "March", "April", "May", "June"]
            }
        };
        (chart = new ApexCharts(document.querySelector("#radar-chart"), options)).render();
        options = {
            series: [{
                name: "Series 1",
                data: [80, 50, 30, 40, 100, 20]
            }, {
                name: "Series 2",
                data: [20, 30, 40, 80, 20, 80]
            }, {
                name: "Series 3",
                data: [44, 76, 78, 13, 43, 10]
            }],
            chart: {
                height: 350,
                type: "radar",
                toolbar: {
                    show: !1
                },
                dropShadow: {
                    enabled: !0,
                    blur: 1,
                    left: 1,
                    top: 1
                }
            },
            colors: ["#0576b9", "#0ab39c", "#f7b84b"],
            stroke: {
                width: 0
            },
            fill: {
                opacity: .4
            },
            markers: {
                size: 0
            },
            xaxis: {
                categories: ["2011", "2012", "2013", "2014", "2015", "2016"]
            }
        };
        (chart = new ApexCharts(document.querySelector("#radar-multiple-chart"), options)).render();
        options = {
            series: [14, 23, 21, 17, 15, 10, 12, 17, 21],
            chart: {
                type: "polarArea",
                height: 350
            },
            stroke: {
                colors: ["#fff"]
            },
            fill: {
                opacity: .8
            },
            colors: ["#0576b9", "#0ab39c", "#299cdb", "#f7b84b", "#f06548", "#323a46", "#f672a7", "#6559cc", "#74788d"],
            responsive: [{
                breakpoint: 480,
                options: {
                    chart: {
                        width: 200
                    },
                    legend: {
                        position: "bottom"
                    }
                }
            }]
        };
        (chart = new ApexCharts(document.querySelector("#polararea-chart"), options)).render();
        options = {
            series: [42, 47, 52, 58, 65],
            chart: {
                height: 380,
                type: "polarArea"
            },
            labels: ["Rose A", "Rose B", "Rose C", "Rose D", "Rose E"],
            fill: {
                opacity: 1
            },
            stroke: {
                width: 1,
                colors: void 0
            },
            yaxis: {
                show: !1
            },
            legend: {
                position: "bottom"
            },
            plotOptions: {
                polarArea: {
                    rings: {
                        strokeWidth: 0
                    }
                }
            },
            theme: {
                monochrome: {
                    enabled: !0,
                    color: "#299cdb",
                    shadeTo: "light",
                    shadeIntensity: .6
                }
            }
        };
        (chart = new ApexCharts(document.querySelector("#polararea-monochrome-chart"), options)).render();
        
        </script>
    </body>

</html>