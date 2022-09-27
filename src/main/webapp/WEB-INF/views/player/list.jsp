<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<br />

	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>선수이름</th>
				<th>팀명</th>
				<th>포지션</th>
				<th>선수등록일</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="playerList" items="${playerList}">
				<tr>
					<td>${playerList.no}</td>
					<td>${playerList.name}</td>
					<td>${playerList.teamName}</td>
					<td>${playerList.position}</td>
					<td>${playerList.createdAt}</td>
					<td><button onclick="deleteById(${playerList.id});" class="btn btn-danger">삭제</button></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>


<script>
	function deleteById(id){
 		$.ajax("/player/"+id,{
			type: "DELETE",
			dataType: "json"
		}).done((res)=>{
			if(res.code == 1){ // 성공
				location.reload();
			}else{ // 실패
				alert("선수 삭제에 실패하였습니다.");
			}
		}); 
	}
</script>

<%@ include file="../layout/footer.jsp"%>

