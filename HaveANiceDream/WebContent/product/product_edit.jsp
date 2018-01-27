<%@page import="category.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="product.ProductDTO"%>
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
<script type="text/javascript">
	selectNum=""
      function getName(myform){
    	  index = myform.categoryDetailName.selectedIndex;
    	  //alert(index);category_detail_list
    	 $("#categoryDetailNameSearch").val(myform.categoryDetailName[index].text);
    	 // $("#categoryDetailNameSearch").val(myform.categoryDetailName[index].value);
    	 selectDNumObj = myform.categoryDetailName[index];
    	 selectDNum = $(selectDNumObj).attr("value");
    	 $("#categoryDetailNohidden").attr("value",selectDNum);
    	 alert(selectDNum);
    	             
      }
      function getName1(myform){
    	  index = myform.categoryName.selectedIndex;
    	  //categoryNo는 select 태그이고... 
    	  // myform.categoryName[index]는 옵션태그 
    	 $("#categoryNameSearch").val(myform.categoryName[index].text);
    	  // 옵션태그를 객체로 받아서
    	   selectNumObj  =	myform.categoryName[index];
    	   //alert(selectNumObj);
    	   //옵션태그의 속성을 selectNum에 저장
    	   selectNum  =  $(selectNumObj).attr("value");
    	   $("#categoryNohidden").attr("value",selectNum);
    	   alert(selectNum);
    				//에러케이스정리
    				//1. 물품선택간 검색을 안하고 바로 선택할 경우 에러발생(대분류에서)
    				//2. option을 선택하지 않으면 value설정값을 넘길수가 없음...
    				//개선방안 
    				//텍스트필드에 적힌 이름이 아닌 고유번호를 넘겨야함.
    	             
      }
     $(document).ready(function(){
    	 
    	 
    	 $("#enroll").on("click",function(){
    		 //제이쿼리를 이용 radio박스가 체크가 되있으면 실행 아니면 return false
    		 //:input태그로 정의된 속성에 사용할수 있음
    		 //:라디오버튼 그룹이 체크가 되있으면 true 아니면 false를 리턴
    		 tchk =$("input:radio[name='tradeType']").is(":checked");
    		 gchk =$("input:radio[name='productGrade']").is(":checked");
    		 if(tchk & gchk){
    		 }else{
    			 if(tchk){
    				 alert("물품등급을 상태를 선택해주세요");
    			 }else if(gchk){
    				 alert("거래방식을 선택해주세요");
    			 }else{
    				 alert("물품등급 및 거래방식을 선택해주세요")
    			 }
    			 return false;
    		 }
    		 
    		  
    		  
    	 });
    	 
    	 $("#categoryNameSearch").on("keyup",function(){
     		var name = $(this).val();
     		$.ajax({
     			url:"/HaveANiceDream/category/readAjax1.do",
 				type:"get",
 				data:{"categoryName":name},
 				dataType:"json",
 				success:function(data){//jquery로 ajax요청하면 json파싱되어 리턴
 					$("#categoryName").empty();
 					for(i=0 ;i<data.category.length;i++){ 
 						
 						var str="<option value='"+data.category[i].categoryNo+"'>"+data.category[i].categoryName+"</option>";
 						 categoryname=$(str);
 						
 						
 						$("#categoryName").append(categoryname);
 					}   
 				}
     		})
	
     	});

    	$("#categoryDetailNameSearch").on("keyup",function(){
    		var name = $(this).val();//.val() 텍스트상자의 값을 읽어올떄 사용하는 메소드
    	//	alert(name);
    		//category =$(this).text();
    	//	alert(category);
    		$.ajax({
    			url:"/HaveANiceDream/category/readAjax.do?state=ENROLL",
				type:"get",
				data:{"categoryName":name,"selectNum":selectNum},
				dataType:"json",
				success:function(data){//jquery로 ajax요청하면 json파싱되어 리턴
					$("#categoryDetailName").empty();
					//alert(categorynum.attr("value"));
					for(i=0 ;i<data.category_detail.length;i++){ 
					if(selectNum==data.category_detail[i].categoryNo){
						var str="<option value='"+ data.category_detail[i].categoryDetailNo+"'>"+data.category_detail[i].categoryDetailName+"</option>";
						 categorydetailname=$(str);
						$("#categoryDetailName").append(categorydetailname);
					}
						//alert($("#categoryDetailName").children().length);
						//     alert(name.text());
						   
					 //$("categoryDetailNameSearch").val(categoryname.attr("value"));
					/* 	str=data.categoryDetailName[i];
						textnode = document.createTextNode(str);
						 var createOption=document.createElement("option");
						 createOption.appendChild(textnode);
						 parentNode=document.getElementById("categoryDetailName");
						 parentNode.appendChild(createOption); */
						 //jquery로 간단하게 할것

					}
					  
					                           
				}
    		})
    		
    		
    	});
    	 
     });
</script>

<title>DASHGUM - Bootstrap Admin Template</title>

<link rel="stylesheet" type="text/css"
	href="/HaveANiceDream/Theme/assets/js/bootstrap-datepicker/css/datepicker.css" />
<link rel="stylesheet" type="text/css"
	href="/HaveANiceDream/Theme/assets/js/bootstrap-daterangepicker/daterangepicker.css" />

</head>

<body>
     <%
     ProductDTO product = (ProductDTO)request.getAttribute("product");
     String file1 =(String) request.getAttribute("file1");
     int productNo= (int) request.getAttribute("productNo");
     
     %>
	<h3>
		<i class="fa fa-angle-right"></i> 물품등록
	</h3>

	<!-- BASIC FORM ELELEMNTS -->
	<div class="row mt">
		<div class="col-lg-12">
			<div class="form-panel">
				<h4 class="mb">
					<i class="fa fa-angle-right"></i> 판매 등록
				</h4>
				<form class="form-horizontal style-form" method="post" enctype="multipart/form-data"
					action="/HaveANiceDream/product_enroll.do?productNo=<%=productNo%>">
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">카테고리</label>
						<div class="col-sm-10">
							<div class="col-sm-5">
								<input type="hidden" id="categoryNohidden" name="categoryNohidden"   />
								<input type="text"  id="categoryNameSearch" name="categoryNameSearch"class="form-control" value="" required="required">
								<br /> <select multiple class="form-control"  required="required"
									name="categoryName" id=categoryName size="8" onclick="getName1(this.form)"
									style="width: 100%">
								  <%
								 
							  ArrayList<CategoryDTO> category_list =(ArrayList<CategoryDTO>) request.getAttribute("category_list");
								   
								 if(category_list!=null){
								  for(int i =0;i<category_list.size();i++){
								%>
								     <% CategoryDTO dto = category_list.get(i) ;%>
								     
									<option><%=dto.getCategoryName()%>
									<%}} %> 
								</select>
							</div>
							<div class="col-sm-5">
						<input type="hidden" id="categoryDetailNohidden" name="categoryDetailNohidden"     />
								<input type="text" class="form-control" id="categoryDetailNameSearch" name="categoryDetailNameSearch" required="required"
									value=""> <br /> <select multiple
									class="form-control" name="categoryDetailName" required="required"
									id="categoryDetailName" size="8" style="width: 100%" onclick="getName(this.form)">
								</select>
							</div>


						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">판매금액</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="productPrice" name="productPrice"   
							
							value="<%=product.getProductPrice()%>" > 
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">상품명</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="productName" name="productName"    
							value="<%=product.getProductName()%>" > 
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">거래방식</label>
						<div class="col-sm-10" > <!--  if로 처리... -->
								   <input type="radio" name="tradeType" value="trade"    <%if(product.getTradeType().equals("trade")){%>checked="checked" <%} %> >직거래
	   							   <input type="radio" name="tradeType" value="delivery_trade" <%if(product.getTradeType().equals("delivery_trade")){%>checked="checked" <%} %> 
	   							    >택배거래
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">물품상태</label>
						<div class="col-sm-10" >
								   <input type="radio" name="productGrade" value="high"  <%if(product.product_Grade().equals("high")){%>checked="checked" <%} %>>상
	   							   <input type="radio" name="productGrade" value="middle"   <%if(product.product_Grade().equals("middle")){%>checked="checked" <%} %>>중
	   							   <input type="radio" name="productGrade" value="low"   <%if(product.product_Grade().equals("low")){%>checked="checked" <%} %>>하
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">물품제목</label>
						<div class="col-sm-10">
							<input class="form-control" type="text" id="productTitle" name="productTitle" 
								value= <%=product.getProductTitle()%> maxlength="50">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">상세설명</label>
						<div class="col-sm-10">
						<img src="/HaveANiceDream/upload/<%=file1%>">
							<textarea rows="10" cols="100%" id="productContent" name="productContent" >
						 
						 <%=product.getProductContent() %>
							</textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 col-sm-2 control-label">업로드</label>
						<div class="col-sm-10">
							
								<input type="file" name="uploadFile1" required="required" /><br/> 
								<!-- <textarea rows="3" cols="100%"></textarea>
								<button type="button" class="btn btn-default">+추가</button>
								<button type="button" class="btn btn-default">-삭제</button> -->
						
							</div>
						</div>
					</div>
					<!-- <div class="form-group">
								
									 <label class="col-sm-2 col-sm-2 control-label">스크린샷</label>
									<div class="col-sm-5">
										<input class="upload-name" value="파일선택" disabled="disabled"
											style="width: 200px;"> <label for="input_file">파일찾기</label>
										<input type="file" id="input_file" class="upload-hidden">
										<textarea rows="10" cols="100%"></textarea>
									</div>
									<div class="col-sm-5">
										<button type="button" class="btn btn-default mb">추가</button>
										<button type="button" class="btn btn-default mb">삭제</button>
										<label class="mb">용량 500KB이하 jpg, gif만 가능(최대 5개)</label>

									</div> 
								</div> -->

					<div class="form-group">
						<div class="col-sm-6">
							<label class="col-sm-2 col-sm-2 control-label">이름</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="userId" name="userId"    >
								
							</div>

						</div>



						<div class="col-sm-6">
							<label class="col-sm-2 col-sm-2 control-label">연락처</label>

							<div class="col-sm-4">
							<input type="text" class="form-control" id="userId" name="userId">
							</div>
						</div>
					</div>



					<div class="form-group" align="center">
						<button type="submit" class="btn btn-round btn-default">수정하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- col-lg-12-->



	<!--script for this page-->
	<script
		src="/HaveANiceDream/Theme/assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="/HaveANiceDream/Theme/assets/js/bootstrap-switch.js"></script>

	<!--custom tagsinput-->
	<script src="/HaveANiceDream/Theme/assets/js/jquery.tagsinput.js"></script>

	<!--custom checkbox & radio-->

	<script type="text/javascript"
		src="/HaveANiceDream/Theme/assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="/HaveANiceDream/Theme/assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript"
		src="/HaveANiceDream/Theme/assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>

	<script type="text/javascript"
		src="/HaveANiceDream/Theme/assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>


	<script src="/HaveANiceDream/Theme/assets/js/form-component.js"></script>


</body>
</html>