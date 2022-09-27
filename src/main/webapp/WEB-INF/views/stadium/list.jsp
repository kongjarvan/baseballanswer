<%@page import="site.metacoding.red.domain.stadium.Stadium"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />

	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>경기장이름</th>
				<th>개장일</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="stadium" items="${stadiumList}">
				<tr>
					<td>${stadium.no}</td>
					<td>${stadium.name}</td>
					<td>${stadium.createdAt}</td>
					<td><input type="checkbox" name="checkList"
						value="${stadium.id}" />삭제</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<button onclick="deleteById()" class="btn btn-danger">삭제</button>
</div>

<script>
	function deleteById(){
		
		  let checkBoxArr = []; 
		  $("input:checkbox[name='checkList']:checked").each(function() {
		  checkBoxArr.push($(this).val()); // 체크된 것만 값을 뽑아서 배열에 push	
		  console.log(checkBoxArr);
		
/*   		$.ajax("/stadiumDelete",{
			type: "POST",
			dataType: "json",
			data: JSON.stringify(checkBoxArr), // http body에 들고갈 요청 데이터
			headers: { // http header에 들고갈 요청 데이터
				"Content-Type": "application/json; charset=utf-8"
			}
		}).done((res)=>{
			if(res.code == 1){ // 성공
				location.reload();
			}else{ // 실패
				alert("선수 삭제에 실패하였습니다.");
			}
		});  */
	}); 
}
</script>

<%@ include file="../layout/footer.jsp"%>

