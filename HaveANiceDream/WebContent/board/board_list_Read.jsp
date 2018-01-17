<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>DASHGUM - Bootstrap Admin Template</title>

<link href="/HaveANiceDream/Theme/assets/js/fancybox/jquery.fancybox.css" rel="stylesheet" />

<script src="/HaveANiceDream/Theme/assets/js/jquery.js"></script>
<script type="text/javascript">
   	function popup(){
   		window.open("/HaveANiceDream/blame/report_popup.jsp", "a", "width=700, height=900, left=100, top=50")
   		
   	}
   </script>
</head>

<body>

	<div class="col-md-12">
		<h4>
			<i class="fa fa-angle-right"></i>커뮤니티
		</h4>
		<hr>
		<div class="content-panel">
			<div class="col-md-12">
				<h3>
					<i class="fa fa-angle-right"></i>자유게시판
				</h3>
			</div>
			<div class="form-group">
				<div class="col-md-2 border-title">게시글 번호 : 0</div>
				<div class="col-md-2 border-title">아이디 : id</div>
				<div class="col-md-6 border-title">작성일자 : 2018-01-05 20:30</div>
				<div class="col-md-2 border-title">조회수 :2000</div>
			</div>
			<div class="form-group">
				<h5 class="col-sm-2" style="text-align: center;">[분류]>[종류]</h5>
				<div class="col-sm-8"></div>
				<h5 class="col-sm-2" style="text-align: center;">
					목록 | 댓글(<a>10</a>)
				</h5>
			</div>
			<div class="form-group">
				<h2 class="col-sm-12 border-title-content">이것이 가장 큰 제목일세!!</h2>
			</div>
			<div class="form-group">
				<div class="col-sm-12 border-content-detail">여기는 내용이 들어갈
					공간입니다. 어떤 내용이 들어가도 줄바꿈이 가능하며 걱정없습니다. 계속해서 쭉쭉쭉 써주세요 그리고 신고기능을 추가할
					겁니다. 어떻게 해야할까요? 내용안에 넣어야 겠지요? 그럼 신고기능 연결을 위해 우리 진우와 또 의논을 해봐야 겠네요?
					자 어때요 css 및 뷰작업은 이제 껌때가리죠? ㅎㅎㅎㅎㅎ 어떤내용을 넣을지 막막할 때는 무조건 구글링 & 밤샘 작업을
					한다면 문제 없지요 자 그럼 우리 다함께 드림 하시다 드림드림드림 드림 드림~~</div>
			</div>
			<div class="form-group">
				<div class="col-sm-12 mb">
					<button type="button" class="btn btn-danger pull-right" onclick="popup()">신고하기</button>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-12 border-foot mb mt">
					<button type="button" class="btn btn-round btn-default mr">삭제하기</button>
					<button type="button" class="btn btn-round btn-default mr">수정하기</button>
					<button type="button" class="btn btn-round btn-default mr">목록</button>
				</div>
			</div>
			<!-- 답글 폼 스타트!! -->
			<div class="form-group">
				<div class="col-md-12 border-reply-top mb">
					<!-- 답글 최상위 페이지!! -->
					<h4>
						<i class="fa fa-angle-right"></i>댓글달기
					</h4>
					<h5 class="col-sm-2" style="text-align: center;">
						▼ 댓글(<a>10</a>)
					</h5>
					<div class="col-sm-8"></div>
					<h5 class="col-sm-2" style="text-align: center;">
						새로고침(<a>®</a>)
					</h5>
					<div class="col-md-12 border-reply-mid">
						<!-- 답글! -->
						<div class="col-md-10 mb">아이디 : id (작성일자 : 2018-01-05 20:30)</div>
						<div class="col-md-2 mb">
							<button type="button" class="btn btn-danger btn-xs pull-right">신고하기</button>
						</div>
						<div class="col-sm-12 border-content-detail">여기는 내용이 들어갈
							공간입니다. 어떤 내용이 들어가도 줄바꿈이 가능하며 걱정없습니다. 계속해서 쭉쭉쭉 써주세요 그리고 신고기능을 추가할
							겁니다. 어떻게 해야할까요? 내용안에 넣어야 겠지요? 그럼 신고기능 연결을 위해 신고기능을 맡고 있는 우리 진우와 또
							의논을 해봐야 겠네요? 자 어때요 css 및 뷰작업은 이제 껌때가리죠? ㅎㅎㅎㅎㅎ 어떤내용을 넣을지 막막할 때는
							무조건 구글링 & 밤샘 작업을 한다면 문제 없지요 자 그럼 우리 다함께 드림 합시다 드림드림드림 드림
							드림~ㅇㅀㅇㅀㄹㅇㅎ~</div>
						<button type="button" class="btn btn-round btn-xs btn-default ml">삭제하기</button>
						<button type="button" class="btn btn-round btn-xs btn-default ml">수정하기</button>
					</div>
					<div class="col-md-12 border-reply-mid">
						<div class="col-md-10 mb">아이디 : id (작성일자 : 2018-01-05 20:30)</div>
						<div class="col-md-2 mb">
							<button type="button" class="btn btn-danger btn-xs pull-right">신고하기</button>
						</div>
						<div class="col-sm-12 border-content-detail">여기는 내용이 들어갈
							공간입니다. 어떤 내용이 들어가도 줄바꿈이 가능하며 걱정없습니다. 계속해서 쭉쭉쭉 써주세요 그리고 신고기능을 추가할
							겁니다. 어떻게 해야할까요? 내용안에 넣어야 겠지요? 그럼 신고기능 연결을 위해 우리 신고기능을 맡고 있는 진우와 또
							의논을 해봐야 겠네요? 자 어때요 css 및 뷰작업은 이제 껌때가리죠? ㅎㅎㅎㅎㅎ 어떤내용을 넣을지 막막할 때는
							무조건 구글링 & 밤샘 작업을 한다면 문제 없지요 자 그럼 우리 다함께 드림 합시다 드림드림드림 드림
							드림~ㅇㅀㅇㅀㄹㅇㅎ~</div>
						<button type="button" class="btn btn-round btn-xs btn-default ml">삭제하기</button>
						<button type="button" class="btn btn-round btn-xs btn-default ml">수정하기</button>
					</div>
					<div class="col-md-12 border-reply-back">
						<span class="col-md-2 border-reply-id-font"><i
							class="fa fa-user"></i> <a>드림왕</a> </span> <span class="col-md-9">
							<textarea name="ourtext"
								style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
								rows=5>텍스트</textarea>
						</span> <span class="col-md-1"> <a
							class="btn btn-default border-reply-btn-size" href="#"><i
								class=" fa fa-edit"></i>등록</a>
						</span>
					</div>
				</div>
			</div>





			<table class="table table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일자</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><span class="badge bg-important"><i
								class="fa fa-bullhorn"></i> 공지사항</span></td>
						<td>a테그를 붙여서 넘겨보장!</td>
						<td>김동혁</td>
						<td>2018.01.14</td>
						<td>50</td>
					</tr>
					<tr>
						<td>2</td>
						<td>해보자</td>
						<td>관리자</td>
						<td>2018.01.14</td>
						<td>20</td>
					</tr>
					<tr>
						<td>4</td>
						<td>해보자</td>
						<td>관리자</td>
						<td>2018.01.14</td>
						<td>20</td>
					</tr>
					<tr>
						<td>5</td>
						<td>해보자</td>
						<td>관리자</td>
						<td>2018.01.14</td>
						<td>20</td>
					</tr>
				</tbody>
			</table>
			<hr />
			<a class="btn btn-default pull-right" href="#"><i
				class=" fa fa-edit"></i>글쓰기</a>
			<div class="text-center">
				<ul class="pagination">
					<li class="previous"><a href="#">이전</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li class="next"><a href="#">다음</a></li>
				</ul>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		//custom select box

		$(function() {
			$("select.styled").customSelect();
		});
	</script>

</body>
</html>