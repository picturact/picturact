<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Notice</title>

<script src="resources/js/jquery.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">


<link rel="stylesheet" href="resources/css/SJstyle_main.css" />
<link rel="stylesheet" href="resources/css/admin.css" />
<link rel="stylesheet" href="resources/css/agency.css" />
</head>

<body>
	
	<div class="container">
		<div class="row">
	
	

		<section class="content">
			<h1>Notice</h1>
			
				<div class="col-md-8 col-md-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
						
						<div class="table-container">
						
				<!--Notice table Section -->
					<table class="table table-filter">
						<tbody>
								
						<c:forEach var="notice" items="${noticeList}">
							<tr><td><div class="media">
										<a href="#" class="pull-left">
											<img src="https://s3.amazonaws.com/uifaces/faces/twitter/fffabs/128.jpg" class="media-photo">
										</a>
											<span class="media-meta pull-right">${notice.writeDate}</span>
											<h4 class="title">
												${notice.title}
												<span class="pull-right">${notice.userId}</span>
											</h4>
											<p class="summary">${notice.content}</p>
										
									</div>
										</td></tr>
							</c:forEach>
							</tbody>
						</table>
						
						<!--Paging -->
						<div class="pagination pagination-centered">
							<ul>
								<%-- ${pageCode} --%>
								<li><a href="#">Prev</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">Next</a></li>
							</ul>
						</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>
	
	<section>
		<!-- Admin WriteForm -->
		<c:if test="${admin=='Y'}">
		
	        <form id="writeNotice" class="container" method="post" action="/writeNotice.admin">
	        <input type="hidden" name="sessionId" value="${sessionId}">
	            <div class="row">
	                <div class="col-lg-12 text-center">
	                    <h3 class="section-subheading text-muted">Write notice in this form..</h3>
	                </div>
	            </div>
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<input type="text" class="form-control" placeholder="title"
							name="title">

					</div>
					<div class="col-sm-6 col-sm-offset-3">
						<textarea class="form-control" placeholder="content"
							name="context"></textarea>
					</div>
					<div class="col-lg-12 text-center">
						<input type="submit" value="Write" class="btn btn-wr">
					</div>
				</div>
			</form>
	    
		</c:if>
	</section>
</div>



	<!-- jQuery -->
	<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>



	<!-- Bootstrap Core JavaScript -->
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/admin.js"></script>
</body>
</html>