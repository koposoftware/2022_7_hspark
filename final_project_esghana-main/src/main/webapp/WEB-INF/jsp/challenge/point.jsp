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
	
	
	<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script> -->
	
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/combine/npm/fullcalendar@5.11.3/main.min.css,npm/fullcalendar@5.11.3/main.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/package.json">
	
	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/2.2.3/css/buttons.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/keytable/2.7.0/css/keyTable.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/scroller/2.0.7/css/scroller.dataTables.css"/>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.4.0/css/select.dataTables.css"/>
<style>


table {
  border-collapse: collapse;
  width: 100%;
  border: none;
  border-collapse: separate;
  border-spacing: 0 10px;
  font-size: 15px;
}
table thead{
font-weight: bold;
}
table td, #userPointTables th {
  padding: 20px;
}
table tr{
padding: 20px;}

td:first-child,
th:first-child {
  border-radius: 10px 0 0 10px;
  
}

td:last-child,
th:last-child {
  border-radius: 0 10px 10px 0;
}

table.dataTable tbody tr.selected > *{
	    box-shadow: inset 0 0 0 9999px #b8d5d5;
    	color: black;
	}
	
	
	.fc-day-sun a {
        color: red;
        text-decoration: none;
      }
      
      /* 토요일 날짜 파란색 */
      .fc-day-sat a {
        color: blue;
        text-decoration: none;
      }
      
      a{
      color:black;
      }
      
      .fc-daygrid-day-bottom a {
         color: #008485 !important;
         font-size: 15px;
         font-weight: bolder;
      }
      
      .event-icon{
      	width: 50px;
      }
      
      .fc .fc-button-primary {
	    color: #fff;
	    background-color: #489898;
	    border-color: #489898;
	}

	.fc .fc-button-primary:not(:disabled).fc-button-active {
	    color: #fff;
	    background-color: #008485;
	    border-color: #008485;
	}
	
	.fc-today-button{
		color: #fff;
	    background-color: #ff928f;
	    border-color: #ff928f;
	}
    .dataTables_wrapper .dataTables_paginate .paginate_button.current, .dataTables_wrapper .dataTables_paginate .paginate_button.current:hover {
    color: #333 !important;
    border: 1px solid rgba(0, 0, 0, 0.3);
    
}

.dataTables_wrapper .dataTables_paginate .paginate_button:hover {
    /* color: white !important; */
    /* border: 1px solid #111; */
    background-color: #008485;
    /* background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #585858), color-stop(100%, #111)); */
    /* background: -webkit-linear-gradient(top, #585858 0%, #111 100%); */
    background: -moz-linear-gradient(top, #008485 0%, #008485 100%);
    background: -ms-linear-gradient(top, #008485 0%, #008485 100%);
    background: -o-linear-gradient(top, #008485 0%, #008485 100%);
    /* background: linear-gradient(to bottom, #585858 0%, #111 100%); */
} 
    
</style>

</head>

<body data-bs-target=".navbar" data-bs-offset="110">

	<header>
		<jsp:include page="/WEB-INF/jsp/include/header.jsp"></jsp:include>
	</header>



    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="border-bottom">
                        <div class="row align-items-center pb-sm-3 pb-4">
                            <div class="col-lg-8 col-md-6 my-md-0 my-2">
                                <p class="text-muted mb-0 py-sm-0 py-2"></p>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <!-- END ROW -->
            
            <div class="row">
                <div class="col-md-3">
                    <div class="sidebar shadow rounded-3">
                       
                        <div class="mt-4">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">기부</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-warning ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">나의 기부</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-success ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked99">연말정산</label>
                                </div>
                            </div>
                        </div>
                        
                        <div class="mt-4">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">챌린지</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-danger ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">나의 챌린지</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-info ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked99"  style="font-weight: bold;">우리 회사 챌린지</label>
                                </div>
                            </div>
                        </div>
                       
                         <div class="mt-4 pb-2">
                            <div class="p-3 bg-light">
                                <h6 class="mb-0">마이페이지</h6>
                            </div>
                            <div class="my-3">
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-success ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked88">나의 캘린더</label>
                                </div>
                                <div class="form-check mb-2">
                                    <i class="mdi mdi-circle text-muted ms-2 fs-16"></i>
                                    <label class="form-check-label text-dark" for="flexCheckChecked99">알림이</label>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <!-- 리스트 -->
                <div class="col-md-9">
	                <%-- <div class="col-lg-5 mt-5">
						
	                	 <div style="margin-left: 50px;margin-bottom: 40px;">
	                	 	<h1 class="fw-medium" style="color: white; z-index: 1;  position: absolute; top: 170px; left: 95px;">${loginVO.point} P</h1>
	                	 	<img alt="" src="/resources/images/point04.png" width="220px;" style="z-index: 3;">
	                	 </div>
	                </div> --%>
	                <div class="col-lg-12 mt-5">
						
						
							<div class="d-flex justify-content-start" style="padding-top: 10px; margin-left: 30px; background-color:#f3f2f2; border: 2px solid #f3f2f2; border-radius:20px;margin-right: 30px; padding-bottom: 10px;">
								<img alt="" src="/resources/images/point01.png" width="75px;" style="margin-left: 70px;">
								<div style="font-size: 25px; font-weight: bold; margin-left: 15px;margin-top: 12px;">ESGHANA포인트</div>
								<div style="font-size: 45px; font-weight: bold; color: #008485; margin-left: 150px;">${loginVO.point} P</div>
							</div>
							
							<div class="d-flex justify-content-around mt-4">
								<div class="" style="width: 45%; height: 70px; font-size: 15px; 
								font-weight: bold; padding-left: 100px; ">
									<img alt="" src="/resources/images/passbook.png" width="35px;" >
									내 계좌로 입금
									<img alt="" src="/resources/images/forwardarrow.png" width="35px;">
								</div>
								<div class="" style="width: 45%; height: 70px; font-size: 15px; 
								font-weight: bold; padding-left: 20px;">
									<img alt="" src="/resources/images/savings02.png" width="35px;">
									내 기부저금통으로 입금
									<img alt="" src="/resources/images/forwardarrow.png" width="35px;">
								</div>
								
							</div>
						
						
	                </div>
                
                
                <div class="col-lg-12">
                    <nav class="pro-detail-area">
                        <div class="nav nav-tabs border-bottom detail-title" id="nav-tab" role="tablist">
                            <a class="nav-link border-0 active" id="nav-home-tab" data-bs-toggle="tab" href="#nav-home"
                                role="tab" aria-controls="nav-home" aria-selected="true">내 챌린지 내역</a>
                            <a class="nav-link border-0" id="nav-profile-tab" data-bs-toggle="tab" href="#nav-profile"
                                role="tab" aria-controls="nav-profile" aria-selected="false" onclick="cal()">캘린더</a>
                        </div>
                    </nav>
                    
                    <div class="tab-content py-4" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                            aria-labelledby="nav-home-tab">
                           
                             <div data-simplebar>
                                 <div class="me-3">
                                
                                 	<table id="userPointTables" class="w-100 table table-striped table-borderless">
									    <thead>
									        <tr style="background-color: #008485; color: white;">
									            <th>번호</th>
									            <th>날짜</th>
									            <th>챌린지</th>
									            <th>적립 포인트(P)</th>
									        </tr>
									    </thead>
									    <tbody>
									    </tbody>
									</table>
                                 
                                 </div>
                        	</div>
                        </div>

						<!-- 달력 -->
                        <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" style="width: 850px; height: 700px;">
                            <div id='calendar' style="width: 850px;"></div>
                        </div>
                 
                   	</div>
 
                   </div>
    			
                </div>
            
    		<!-- end detail tab -->
        
            </div>
            </div>
            <!-- END ROW -->
        
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
    
    <script src="https://cdn.jsdelivr.net/combine/npm/fullcalendar@5.11.3,npm/fullcalendar@5.11.3/main.min.js,npm/fullcalendar@5.11.3/locales-all.min.js,npm/fullcalendar@5.11.3/locales-all.min.js"></script>
	
    
    <script>
    function cal() {
	
    	var form = new FormData();
	    form.append("challengeCode", "${challengeCode}");
	    
        $.ajax({
    	   		type: 'post',
                url: "${ pageContext.request.contextPath }/myPoint/calendar", // 변경하기
                method: "post",
                data : form,
                dataType: "json",
                processData: false,
		        contentType: false,
		        cache: false,
				success : function(result){ 
            
                console.log(result); // log 로 데이터 찍어주기.

                var calendarEl = document.getElementById('calendar');

                var calendar = new FullCalendar.Calendar(calendarEl, {
                	height: '600px',
                	initialView : 'dayGridMonth',
                	dayMaxEvents: true, // 이벤트가 오버되면 높이 제한 (+ 몇 개식으로 표현)
                	eventColor: 'white',
                    headerToolbar: {
                    	start : 'prev next today',
        				center : 'title',
        				end : 'dayGridMonth,dayGridWeek,dayGridDay'
                    },
                    locale: "ko",
                    editable: true,
                   
                    drop: function (arg) {
                        // is the "remove after drop" checkbox checked?
                        if (document.getElementById('drop-remove').checked) {
                            // if so, remove the element from the "Draggable Events" list
                            arg.draggedEl.parentNode.removeChild(arg.draggedEl);
                        }
                    },
                    
                    events: result,
                    
                    eventContent: function (result) {
                        var eventTitle = result.event.title;
                    	console.log("ㅎㅎㅎㅎ" + eventTitle)

                        return {
                          html: `<div>
                                  ${eventTitle}
                                  <img src="/resources/images/ccmark.png" class="event-icon" />
                                	  
                                </div>`
                                
                                
                        };
                      }
                    
                   
                });

                calendar.render();
            },
            error : function () {
				alert('실패')					
			}
       })
       

    };
    
   
</script>

<script>
	$('#userPointTables').DataTable({
	    ajax:{
	    	url:'${pageContext.request.contextPath}/myPointCheck',
	    	type:'Get',
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
	    	{targets:1, data: "CHALLENGE_DATE"},
	    	{targets:2, data: "CHALLENGE_NAME"},
	    	{targets:3, data: "CHALLENGE_POINT"}
	    ],
	  
	  'select' : {
		  'style' : 'multi'
	  }, 
	  'order' : [[2,'desc']],
	  
	columnDefs: [
		{ targets: 0, width: 10 },
		{ targets: 1, width: 20 },
		{ targets: 2, width: 50 },
		{ targets: 3, data: "CHALLENGE_POINT" ,
		
		"render": function ( data, type, row, meta ) {
		      return '<div>'+data+'P</div>';}, width: 20 
		      
		    }
	],
	// 스크롤바
	scrollX: true,
	scrollY: 400,
	
	lengthChange: false,
	// 검색(기본값 true)
	searching: false,
	info: false,
	
	language : {
	"paginate" : {
        "first" : "첫 페이지",
        "last" : "마지막 페이지",
        "next" : "다음",
        "previous" : "이전"
    }}
    
	
	});
</script>

</body>
</html>