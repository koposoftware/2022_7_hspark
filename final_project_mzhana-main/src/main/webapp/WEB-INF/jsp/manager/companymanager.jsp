<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	.nav-link{
	color: black;
	}
	.nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
    color: #008485;
    font-weight: bold;
    }
    
    .nav-link:focus, .nav-link:hover {
    color: #008485;
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
                                     <span class="d-none d-sm-block">회사정보</span> 
                                 </a>
                             </li>
                             <li class="nav-item">
                                 <a  class="nav-link" data-bs-toggle="tab" href="#tasks" role="tab">
                                     <i class="mdi mdi-clipboard-text-outline font-size-20"></i>
                                     <span class="d-none d-sm-block">챌린지랭킹</span> 
                                 </a>
                             </li>
                             <li class="nav-item">
                                 <a  class="nav-link" data-bs-toggle="tab" href="#messages" role="tab">
                                     <i class="mdi mdi-email-outline font-size-20"></i>
                                     <span class="d-none d-sm-block">메세지</span>   
                                 </a>
                             </li>
                         </ul>
                         <!-- Tab content -->
                         <div class="tab-content p-4">
                         <!-- 회원순위 넣기 -->
                             <div class="tab-pane active" id="about" role="tabpanel">
                                 <div>
                                    <div class="d-flex justify-content-between mt-2">
	                                    <div style="width: 27% ;  height: 100px; background-color: #fdc0a7; border-radius: 50px; margin-left: 30px; margin-top: 5px;">
	                                    	<div style="font-size: 13px; font-weight: bold;  margin-left: 70px; margin-top: 20px;">회사명</div>
											<div style="font-size: 25px; font-weight: bold;  margin-left: 27px;">
												${company.companyName}
											</div>
										</div>
										<div style="width: 27% ; background-color: #b5d4b5; border-radius: 50px;  margin-top: 5px; height: 100px;">
											<div style="font-size: 13px; font-weight: bold;  margin-left: 34px;  margin-top: 20px;">ESGHANA 가입일</div>
											<div style="font-size: 20px; font-weight: bold;  margin-left: 32px;  margin-top: 10px">
												${company.regDate}
											</div>
										</div>
										<div style="width: 27% ;  height: 100px; background-color: #a5dbe3; border-radius: 50px; margin-right: 30px;  margin-top: 5px;">
											<div style="font-size: 13px; font-weight: bold;  margin-left: 65px;  margin-top: 20px;">총 직원 수</div>
											<div style="font-size: 25px; font-weight: bold;  margin-left: 65px;  margin-top: 10px">
												${mcount}
											</div>
	                                    </div> 
                                    </div>
                                    
									<div class="d-flex justify-content-start mt-5" style="padding-top: 10px; margin-left: 30px; background-color:#f3f2f2; border: 2px solid #f3f2f2; border-radius:20px;margin-right: 30px; padding-bottom: 10px; margin-bottom: 20px;">
										<img alt="" src="/resources/images/department03.png" width="35px;" style="margin-left: 130px;">
										<div style="font-size: 18px; font-weight: bold; color: #008485; margin-left: 15px; margin-top: 5px;">부서별 챌린지 현황을 확인해 보세요!</div>
									</div>
									
                                     <div>
                                         <div class="table-responsive">
                                             <table class="table table-nowrap table-hover mb-0">
                                                 <thead>
                                                     <tr>
                                                         <th scope="col">순위</th>
                                                         <th scope="col">부서</th>
                                                         <th scope="col">직원 수</th>
                                                         <th scope="col">챌린지 총 횟수</th>
                                                         <th scope="col">인당 챌린지 횟수</th>
                                                     </tr>
                                                 </thead>
                                                 <tbody>
                                                    <c:forEach items="${departmentCountList}" var="departmentCount" varStatus="status">
                                                     <tr>
                                                         <th scope="row" class="text-primary">${status.count}</th>
                                                         <td>
                                                            ${departmentCount.DEPARTMENT}
                                                         </td>
                                                         <td>
                                                            ${departmentCount.MCT}
                                                         </td>
                                                         <td>
                                                            ${departmentCount.CCT}
                                                         </td>
                                                         <td>
                                                            <fmt:parseNumber value="${departmentCount.AA}" integerOnly="true" />
                                                         </td>
                                                     </tr>
                                                 </c:forEach>
                                                 </tbody>
                                             </table>
                                         </div>
                                     </div>
                                 </div>
                             </div>
                             
                             <!-- 챌린지 랭킹 -->
                             <div class="tab-pane" id="tasks" role="tabpanel">
                             
                             <div class="d-flex justify-content-start" style="padding-top: 10px; margin-left: 30px; background-color:#f3f2f2; border: 2px solid #f3f2f2; border-radius:20px;margin-right: 30px; padding-bottom: 10px; margin-bottom: 20px;">
									<img alt="" src="/resources/images/excel.png" width="35px;" style="margin-left: 100px;">
									<div style="font-size: 18px; font-weight: bold; color: #008485; margin-left: 15px; margin-top: 5px;">직원들의 챌린지 순위 Excel을 다운 받아보세요!</div>
								</div>
								
                                 <div>
                                    
									<table id="challengeRank" class="table table-sm w-100">
									    <thead>
									        <tr class="w-100">
									            <th>순위</th>
									            <th>이름</th>
									            <th>부서</th>
									            <th>챌린지 횟수</th>
									        </tr>
									    </thead>
									    <tbody>
									    </tbody>
									</table>
                                    
                                 </div>
                             </div>
                             <!-- 메세지 -->
                             <div class="tab-pane" id="messages" role="tabpanel">
                             
                             	<div class="d-flex justify-content-start" style="padding-top: 10px; margin-left: 30px; background-color:#f3f2f2; border: 2px solid #f3f2f2; border-radius:20px;margin-right: 30px; padding-bottom: 10px; margin-bottom: 20px;">
									<img alt="" src="/resources/images/smsicon.png" width="35px;" style="margin-left: 130px;">
									<div style="font-size: 18px; font-weight: bold; color: #008485; margin-left: 15px; margin-top: 5px;">직원을 선택한 후 문자를 보내주세요!</div>
								</div>
                             
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
                                       
                                   <!-- 
										<div>
											<button id="buttonss">회원 선택</button>
										</div> -->
							
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
                                             <textarea  id="smsText" name="smsText" rows="3" class="form-control border-0 resize-none" placeholder="직원에게 챌린지 격려 문자를 보내보세요."></textarea>
                                             
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
		    
		    for (i = 0; i < table.rows('.selected').data().count(); i++) {
  	        	console.log(table.rows('.selected').data()[i].TEL)
  	        	table.rows('.selected').data()[i].TEL
  	        	telArray.push(table.rows('.selected').data()[i].TEL);
  	       };
		    
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
  		
  		/*  $('#buttonss').click(function () {
  			console.log(table.rows('.selected').data().count())
  	        	
  			 for (i = 0; i < table.rows('.selected').data().count(); i++) {
  	        	console.log(table.rows('.selected').data()[i].TEL)
  	        	table.rows('.selected').data()[i].TEL
  	        	telArray.push(table.rows('.selected').data()[i].TEL);
  	       };
  	       
  	    }); */
  	
  		 
  		 
  		var table1 = $("#challengeRank").DataTable({
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
  	        	dataSrc :function(res) {
  					console.log('데이터', res)
  					var data = res

  					// 리스트번호 
  					for (let i = 0; i < data.length; i++) {
  						data[i].listIndex = i + 1
  						console.log(data[i])
  					}

  					return data;
  				}
  	        },
  	        columns:[
  	        	{targets:0, data: "listIndex"},
  	        	{targets:1, data: "NAME"},
  	        	{targets:2, data: "DEPARTMENT"},
  	        	{targets:3, data: "C_COUNT"}
  	        ],
  	      
  	      'select' : {
  	    	  'style' : 'multi', 
  	    	  'background-color' : '#008485'
  	      }, 
  	      'order' : [[2,'desc']],
  	      
  	    columnDefs: [
  			{ targets: 0, width: 10 },
  			{ targets: 1, width: 30 },
  			{ targets: 2, width: 50 },
  			{ targets: 3, width: 20 }
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
  		
  		/*  $('#buttonss').click(function () {
  			console.log(table.rows('.selected').data().count())
  	        	
  			 for (i = 0; i < table.rows('.selected').data().count(); i++) {
  	        	console.log(table.rows('.selected').data()[i].TEL)
  	        	table.rows('.selected').data()[i].TEL
  	        	telArray.push(table.rows('.selected').data()[i].TEL);
  	       };
  	       
  	    });
  	 */
  	</script>
  	
</body>
</html>