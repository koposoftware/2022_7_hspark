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
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/2.2.3/css/buttons.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/keytable/2.7.0/css/keyTable.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/scroller/2.0.7/css/scroller.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.4.0/css/select.dataTables.css"/>
	
	<style>
	table.dataTable tbody tr.selected > *{
	    box-shadow: inset 0 0 0 9999px #008485;
    	color: white;
	}
	
	
	</style>
</head>

<body data-bs-target=".navbar" data-bs-offset="110">

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>
<!-- 	
	<form name="smsForm">
		<textarea id="smsText" name="smsText">
		
		</textarea>
		<button type="button" onclick="sms()">문자전송</button>
	</form>
	 -->
	<%-- 
	<c:forEach items="${companyMemberList}" var="companyMember">
		${companyMember.NAME}
		${companyMember.C_COUNT}
		<br>
	</c:forEach> --%>
	<!-- 
	<button id="buttonss">회원 선택</button>
	 -->
<!-- 	
	<table id="userTables" class="table table-striped table-bordered table-hover">
	    <thead>
	        <tr>
	        	
	            <th>Name</th>
	            <th>C_COUNT</th>
	        </tr>
	    </thead>
	    <tbody>
	    </tbody>
	</table>
	 -->
	 <!-- end page title -->
	 <section class="sm-section">
        <div class="container">
        	<div class="row mb-4">
                        
               <div class="col-xl-4">
                    <div class="sidebar shadow rounded-3">
                        <div class="mt-4 pb-2">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">회사관리</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-warning ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">챌린지 선택</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-success ms-2 fs-16"></i>
                                    <a href="${pageContext.request.contextPath}/companyManager">
	                                    <label class="form-check-label text-dark" for="flexCheckChecked99"  style="font-weight: bold;">직원관리</label>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                        
                 <div class="col-xl-8">
                     <div class="card mb-0">
                         <!-- Nav tabs -->
                         <ul class="nav nav-tabs nav-tabs-custom nav-justified" role="tablist">
                             <li class="nav-item">
                                 <a class="nav-link active" data-bs-toggle="tab" href="#about" role="tab">
                                     <i class="mdi mdi-account-circle-outline font-size-20"></i>
                                     <span class="d-none d-sm-block">About</span> 
                                 </a>
                             </li>
                             <li class="nav-item">
                                 <a class="nav-link" data-bs-toggle="tab" href="#tasks" role="tab">
                                     <i class="mdi mdi-clipboard-text-outline font-size-20"></i>
                                     <span class="d-none d-sm-block">Tasks</span> 
                                 </a>
                             </li>
                             <li class="nav-item">
                                 <a class="nav-link" data-bs-toggle="tab" href="#messages" role="tab">
                                     <i class="mdi mdi-email-outline font-size-20"></i>
                                     <span class="d-none d-sm-block">Messages</span>   
                                 </a>
                             </li>
                         </ul>
                         <!-- Tab content -->
                         <div class="tab-content p-4">
                         <!-- 회원순위 넣기 -->
                             <div class="tab-pane active" id="about" role="tabpanel">
                                 <div>
                                     <div>
                                         <h5 class="font-size-16 mb-4">Experience</h5>

                                         <ul class="activity-feed mb-0 ps-2">
                                             <li class="feed-item">
                                                 <div class="feed-item-list">
                                                     <p class="text-muted mb-1">2019 - 2021</p>
                                                     <h5 class="font-size-16">${company.companyName}</h5>
                                                     <p>Abc Company</p>
                                                     <p class="text-muted">To achieve this, it would be necessary to have uniform grammar, pronunciation and more common words. If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual</p>
                                                 </div>
                                             </li>
                                             
                                         </ul>
                                     </div>

                                     <div>
                                         <h5 class="font-size-16 mb-4">Projects</h5>

                                         <div class="table-responsive">
                                             <table class="table table-nowrap table-hover mb-0">
                                                 <thead>
                                                     <tr>
                                                         <th scope="col">#</th>
                                                         <th scope="col">Projects</th>
                                                         <th scope="col">Date</th>
                                                         <th scope="col">Status</th>
                                                         
                                                     </tr>
                                                 </thead>
                                                 <tbody>
                                                 <c:forEach items="${departmentCountList}" var="departmentCount">
                                                     <tr>
                                                         <th scope="row">01</th>
                                                         
                                                         <td>
                                                             ${departmentCount.DEPARTMENT}
                                                         </td>
                                                         
                                                         <td>
                                                             <span class="badge badge-soft-primary font-size-12">Open</span>
                                                         </td>
                                                         <td>
                                                            ${departmentCount.COUNT(DEPARTMENT)}
                                                         </td>
                                                         
                                                     </tr>
                                                    
                                                 </c:forEach>
                                                      
                                                 </tbody>
                                             </table>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             <div class="tab-pane" id="tasks" role="tabpanel">
                                 <div>
                                     <h5 class="font-size-16 mb-3">Active</h5>

                                     <div class="table-responsive">
                                         <table class="table table-nowrap table-centered">
                                             <tbody>
                                                 <tr>
                                                     <td style="width: 60px;">
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-activeCheck2">
                                                             <label class="form-check-label" for="tasks-activeCheck2"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">Ecommerce Product Detail</a>
                                                     </td>

                                                     <td>27 Feb, 2021</td>
                                                     <td style="width: 160px;"><span class="badge badge-soft-primary font-size-12">Active</span></td>

                                                 </tr>
                                                 <tr>
                                                     <td>
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-activeCheck1">
                                                             <label class="form-check-label" for="tasks-activeCheck1"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">Ecommerce Product</a>
                                                     </td>

                                                     <td>26 Feb, 2021</td>
                                                     <td><span class="badge badge-soft-primary font-size-12">Active</span></td>

                                                 </tr>
                                             </tbody>
                                         </table>
                                     </div>

                                     <h5 class="font-size-16 my-3">Upcoming</h5>

                                     <div class="table-responsive">
                                         <table class="table table-nowrap table-centered">
                                             <tbody>
                                                 <tr>
                                                     <td style="width: 60px;">
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-upcomingCheck3">
                                                             <label class="form-check-label" for="tasks-upcomingCheck3"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">Chat app Page</a>
                                                     </td>

                                                     <td>-</td>
                                                     <td style="width: 160px;"><span class="badge badge-soft-secondary font-size-12">Waiting</span></td>

                                                 </tr>
                                                 <tr>
                                                     <td>
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-upcomingCheck2">
                                                             <label class="form-check-label" for="tasks-upcomingCheck2"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">Email Pages</a>
                                                     </td>

                                                     <td>04 Jan, 2021</td>
                                                     <td><span class="badge badge-soft-primary font-size-12">Approved</span></td>

                                                 </tr>
                                                 <tr>
                                                     <td>
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-upcomingCheck1">
                                                             <label class="form-check-label" for="tasks-upcomingCheck1"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">Contacts Profile Page</a>
                                                     </td>

                                                     <td>-</td>
                                                     <td><span class="badge badge-soft-secondary font-size-12">Waiting</span></td>

                                                 </tr>
                                             </tbody>
                                         </table>
                                     </div>

                                     <h5 class="font-size-16 my-3">Complete</h5>

                                     <div class="table-responsive">
                                         <table class="table table-nowrap table-centered">
                                             <tbody>
                                                 <tr>
                                                     <td style="width: 60px;">
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-completeCheck3">
                                                             <label class="form-check-label" for="tasks-completeCheck3"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">UI Elements</a>
                                                     </td>

                                                     <td>27 Feb, 2021</td>
                                                     <td style="width: 160px;"><span class="badge badge-soft-success font-size-12">Complete</span></td>

                                                 </tr>
                                                 <tr>
                                                     <td>
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-completeCheck2">
                                                             <label class="form-check-label" for="tasks-completeCheck2"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">Authentication Pages</a>
                                                     </td>
                                                     
                                                     <td>27 Feb, 2021</td>
                                                     <td><span class="badge badge-soft-success font-size-12">Complete</span></td>
                                                     
                                                 </tr>
                                                 <tr>
                                                     <td>
                                                         <div class="form-check font-size-16 text-center">
                                                             <input type="checkbox" class="form-check-input" id="tasks-completeCheck1">
                                                             <label class="form-check-label" for="tasks-completeCheck1"></label>
                                                         </div>
                                                     </td>
                                                     <td>
                                                         <a href="#" class="fw-bold text-dark">Admin Layout</a>
                                                     </td>
                                                     
                                                     <td>26 Feb, 2021</td>
                                                     <td><span class="badge badge-soft-success font-size-12">Complete</span></td>
                                                     
                                                 </tr>
                                             </tbody>
                                         </table>
                                     </div>
                                 </div>
                             </div>
                             
                             <div class="tab-pane" id="messages" role="tabpanel">
                                 <div>
                                      
                                         	<table id="userTables" class="table table-sm w-100">
											    <thead>
											        <tr class="w-100">
											            <th>이름</th>
											            <th>부서</th>
											            <th>챌린지 횟수</th>
											        </tr>
											    </thead>
											    <tbody>
											    </tbody>
											</table>
                                       
                                   
							<div>
								<button id="buttonss">회원 선택</button>
							</div>
							
                                     <div class="border rounded mt-4">
                                         <form name="smsForm">
                                             <div class="px-2 py-1 bg-light">
                                                 
                                                 <div class="btn-group" role="group">
                                                     <button type="button" class="btn btn-sm btn-link text-dark"><i class="mdi mdi-link-variant"></i></button>
                                                     <button type="button" class="btn btn-sm btn-link text-dark"><i class="mdi mdi-emoticon-excited-outline"></i></button>
                                                     <button type="button" class="btn btn-sm btn-link text-dark"><i class="mdi mdi-at"></i></button>
                                                 </div>

                                                 <div class="float-end">
                                                     <button type="button" onclick="sms()" class="btn btn-sm btn-link text-dark"><i class="mdi mdi-send"></i></button>

                                                 </div>
                                                 
                                             </div>
                                             <textarea  id="smsText" name="smsText" rows="3" class="form-control border-0 resize-none" placeholder="Your Message..."></textarea>
                                             
                                         </form>
                                     </div> <!-- end .border-->
                                     
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div><!-- end row -->
             </div>
             </section>
	
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
   
    
  	

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.colVis.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.print.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/keytable/2.7.0/js/dataTables.keyTable.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/scroller/2.0.7/js/dataTables.scroller.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/select/1.4.0/js/dataTables.select.js"></script>	
	
 	<script>
 		var telArray = new Array();
 	
 		function sms() {   
  			/* var telArray = new Array();
  			var smsText = $("#smsText").val();
  			]
  			
		    $('input:checkbox[name=smsTel]:checked').each(function() {
		    	telArray.push(this.value);
		    }); */
		    
		    var smsText = $("#smsText").val();
		    var smsData = { "smsText": smsText, "telArray": telArray };
  			console.log(smsData)
  			
  			$.ajax({
				type: 'post',
				url : '${ pageContext.request.contextPath }/sms',
				data : smsData,
				success : function(result){
					alert('성공')					
					console.log(result)
				},
				error : function () {
					alert('실패')					
				}
			}); 
  			
			/*
			fetch('${pageContext.request.contextPath}/sms',{
				method:'POST',
				headers:{'Content-Type' : "application/json"},
				body:JSON.stringify({
					smsText: smsText, 
					telArray: telArray 
				})
			}).then(res=>res.json).then(response=>{
				console.log('!!!!')
			})
			*/
			
			
	};
  	
 		
  		var table = $("#userTables").DataTable({
  	        "pageLength": 10,
  	          dom : 'Bfrtip',
  	    
  	      buttons: [
  	        {
  	          extend: 'excel',
  	          charset: 'UTF-8',
  	          bom : true,
  	            
  	        }],
  	        ajax:{
  	        	url:'${ pageContext.request.contextPath }/userTable',
  	        	method:'Get',
  	        	dataSrc :''
  	        },
  	        columns:[
  	        	{targets:0, data: "NAME"},
  	        	{targets:1, data: "DEPARTMENT"},
  	        	{targets:2, data: "C_COUNT"}
  	        ],
  	      
  	      'select' : {
  	    	  'style' : 'multi', 
  	    	  'background-color' : '#008485'
  	      }, 
  	      'order' : [[2,'desc']],
  	      
  	    columnDefs: [
  			{ targets: 0, width: 50 },
  			{ targets: 1, width: 100 },
  			{ targets: 2, width: 10 }
  		],
  		// 스크롤바
  		scrollX: true,
  		scrollY: 400,
  		info: false,
  		
  		language : {
  			"paginate" : {
  		        "first" : "첫 페이지",
  		        "last" : "마지막 페이지",
  		        "next" : "다음",
  		        "previous" : "이전"
  		    }}
	    
  		});
  		
  		 $('#buttonss').click(function () {
  			console.log(table.rows('.selected').data().count())
  	        	
  			 for (i = 0; i < table.rows('.selected').data().count(); i++) {
  	        	console.log(table.rows('.selected').data()[i].TEL)
  	        	table.rows('.selected').data()[i].TEL
  	        	telArray.push(table.rows('.selected').data()[i].TEL);
  	       };
  	       
  	    });
  	
  	
  	</script>
  	
</body>
</html>