<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>

<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class='box'>
				<div class="box-header with-border">
					<h3 class="box-title">Board List</h3>
				</div>
				<div class='box-body'>
				
				<!--리스트 목록에서 글쓰기 목록으로 이동하는 방법 2가지-->
				<form action="/board/register" method="get">
					<input type="submit" value="New Board">
				</form>
				<!--2번쨰 방법-->
					<!-- <a href = "/board/register"><button id='newBtn'>New Board</button></a> -->
					
				</div>
			</div>
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST PAGING</h3>
				</div>
			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title">LIST ALL PAGE</h3>
				</div>
				<div class="box-body">
				
<table class="table table-bordered">
	<tr>
		<th style="width: 10px">BNO</th>
		<th>TITLE</th>
		<th>WRITER</th>
		<th>REGDATE</th>
		<th style="width: 40px">VIEWCNT</th>
	</tr>


<c:forEach items="${list}" var="board">

	<tr>
		<td>${board.bno}</td>
		<td><a href='/board/read?bno=${board.bno}'>${board.title}</a></td>
		<td>${board.writer}</td>
		<td>
			<fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${board.regdate}" />
		</td>
		<td><span class="badge bg-red">${board.viewcnt }</span></td>
	</tr>

</c:forEach>

</table>

				</div>
				<!-- /.box-body -->
				<div class="box-footer">Footer</div>
				<!-- /.box-footer-->
			</div>
		</div>
		<!--/.col (left) -->

	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
<!-- /.content-wrapper -->

<script>
    
    var result = '${result}';
    
    if(result == 'success'){
    	alert("처리가 완료되었습니다.");
    }
    
    </script>

<%@include file="../include/footer.jsp"%>
