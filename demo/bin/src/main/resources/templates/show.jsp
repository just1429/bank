<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="static/bootstrap/bootstrap.css" type="text/css" />
<body>
<!-- 功能页面 -->
<div class="container" >
			<div class="col-sm-9" >				
				<div class="panel panel-default" style="margin-top: 20px;">
					<div class="panel-heading">用户信息表</div>
					<table class="table table-striped">
						<thead>
							<tr>
								<td>用户ID</td>
								<td>用户名</td>
								<td>用户密码</td>
								<td>账号状态</td>
								<td>用户类型</td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${logininfolist }" var="logininfo">
					<tr>
						<td>${logininfo.id }</td>
						<td>${logininfo.username }</td>
						<td>${logininfo.password }</td>
						<td>
						<c:choose>
							<c:when test="${logininfo.state=='0' }">正常</c:when>
							<c:when test="${logininfo.state=='1' }">被锁定</c:when>
							<c:otherwise>注销</c:otherwise>
						</c:choose>
						</td>
						<td>
						<c:choose>
							<c:when test="${logininfo.usertype =='0' }">普通用户</c:when>
							<c:when test="${logininfo.usertype =='1' }">后台用户</c:when>
							<c:otherwise>注销</c:otherwise>
						</c:choose>						
						</td>
					</tr>
				</c:forEach>							
						</tbody>
					</table>
					<div style="text-align: center;">	
											
						<ul class="pagination">
						<c:choose>
						<c:when test="${page.isFirstPage=='true'}">
						<li class="disabled"><a href="#">首页</a></li>
							<li class="disabled"><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
						</c:when>
						<c:otherwise>
						<li><a href="logininfo.do?page=1">首页</a></li>
							<li><a href="logininfo.do?page=${page.prePage}" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
						</c:otherwise>
						</c:choose>											
									<c:set value="1" var="startPage"></c:set>
									<c:set value="${page.pages }" var="endPage"></c:set>								
									<c:forEach begin="${startPage}" end="${endPage}" var="i">												
											<c:choose>
											<c:when test="${i == page.pageNum }">
												<li class="active"><a href="#">${i } </a></li>
											</c:when>
											<c:otherwise>											
													<li><a href="logininfo.do?page=${i}">${i} </a></li>												
											</c:otherwise>
										</c:choose>
									</c:forEach> 										
                    					
							<c:choose>
						<c:when test="${page.hasNextPage=='false'}">
						<li class="disabled"><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
							<li class="disabled"><a href="#">尾页</a></li>
						</c:when>
						<c:otherwise>
						<li><a href="logininfo.do?page=${page.nextPage}" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li>
							<li><a href="logininfo.do?page=${page.pages}">尾页</a></li>
						</c:otherwise>
						</c:choose>		
						</ul>
					</div>
				</div>
			</div>
			</div>
</body>
</html>