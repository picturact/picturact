<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${whatPost==2}">

				<header>
					<div class="container pesonal_max_width profile_margin">
						<div class="col-xs-4  col-md-3  portfolio-item   profile_bgcolor ">
							<div class="profile_img">
								<img src="http://placehold.it/150x150" alt="..." class="img-rounded img-responsive profile_img">
							</div>
							
						</div >
						<div class="col-xs-6 col-md-5    profile_bgcolor">
							<div class="col-xs-12">
								<span class="col-xs-5" style="min-width:150px; padding-left:0px"><h3>${whosPage}</h3></span>
									<c:if test="${follower==0}">
										 <span class="col-xs-5" style="min-width:100px; padding-left:0px; margin-top:20px"><input type="button" id="followButton" class="btn btn-warning btn-sm " value="+follow"></span>
									</c:if>
									<c:if test="${follower==1}">
										<span class="col-xs-5" style="min-width:100px; padding-left:0px; margin-top:20px"><input type="button" id="followButton" class="btn btn-warning btn-sm active" value="-unfollow"></span>
									</c:if>
								
							</div>
							<div class="col-xs-12">
								<h4>${whosPage} <a>www.naver.com</a></h4>
							</div>
														
						</div>
						
					</div>

				</header>



				<c:forEach var="article" items="${articleList}" varStatus="status">

					<c:if test="${status.index%3==0}">
						<div class="container pesonal_max_width">
					</c:if>
					<div class="col-xs-4 portfolio-item post_img_box_personal post_img_padding">

						<div class="post_img">

							<c:forEach var="files" items="${article.fileList}" >

								<a href="/img/${files.storedFname}"> <img class="img-responsive"
									src="/img/${files.storedFname}" alt="" width="300px" height="300px">
								
								</a>
							</c:forEach>
							<h5>
								
							</h5>
							<p class="post_img">${article.content}</p>

						</div>
					</div>
					<c:if test="${status.index%3==2}">
						</div>

					</c:if>

				</c:forEach>

			</c:if>
</body>
</html>