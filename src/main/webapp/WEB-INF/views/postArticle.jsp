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
	<section>
					<div class="container post_img_box_news news_margin posting_box_size">
						<form id="post" action="/postArticle.main" method="post" enctype="multipart/form-data">
							<div class="row row profile_margin" >

								<div  class="posting_button_div">
									<input type="file" id="addPostImg" name="addPostImg" accept="image/*, video/*"  multiple>
								</div>
								
							</div>
							<div class=" row profile_margin" id="viewThumbnails" >
								
							</div>
							<div class="row ">		
									<div  class="col-xs-12">content : <input type="text" id="postContent" name="postContent"></div>

							</div>
							<div class="row">
								<input type="button" id="fileUpload" value="upload"/>
							</div>
						</form>
						
						
						
					</div>
				
					
				</section>
				
				<c:forEach var="article" items="${articleList}">
					<div class="container post_img_box_news news_margin">

						<div class="row ">
							<div class="col-lg-12">
								<h2 class="page-header border_bottom_blue blue_color">
									<a href="/${article.userId}">${article.userId}</a>

								</h2>
							</div>
						</div>


						<div class="post_img">
							<c:if test="${ article.howManyFiles==1}">
								<c:forEach var="files" items="${article.fileList}" >
									
									<a href="/img/${files.storedFname}"> <img class="img-responsive"
									src="/img/${files.storedFname}" alt="">

									</a>
								</c:forEach>
							
								<p class="post_img">${article.content}</p>
								
								</c:if>
								
								<c:if test="${ article.howManyFiles>1}">


								<div id="abc${article.articleNum}"  class="carousel slide" data-ride="carousel">
									<!-- Indicators -->
									<ol class="carousel-indicators">

										<c:forEach var="files" items="${article.fileList}" varStatus="fileNumStatus">
											<c:if test="${fileNumStatus.first}">
												<li data-target="#abc${article.articleNum}" data-slide-to="${fileNumStatus.count-1}" class="active"></li>
											</c:if>
											<c:if test="${!fileNumStatus.first}">
												<li data-target="#abc${article.articleNum}" data-slide-to="${fileNumStatus.count-1}" ></li>
											</c:if>
											
										</c:forEach>
										
									</ol>

									<!-- Wrapper for slides -->
									<div class="carousel-inner" role="listbox">
										<c:forEach var="files" items="${article.fileList}" varStatus="fileNumStatus">
											<c:if test="${fileNumStatus.first}">
												<div class="item active">
										
													<a href="/img/${files.storedFname}"> 
														<img class="img-responsive" src="/img/${files.storedFname}" alt="">
													
													</a>
													<div class="carousel-caption"></div>
												</div>
											</c:if>
											<c:if test="${!fileNumStatus.first}">
												<div class="item">
													<a href="/img/${files.storedFname}"> 
														<img class="img-responsive" src="/img/${files.storedFname}" alt="">
													
													</a>
													<div class="carousel-caption"></div>
												</div>
												
											</c:if>
											
										</c:forEach>
									
												
									

									</div>

									<!-- Controls -->
									<a class="left carousel-control " href="#abc${article.articleNum}" role="button" data-slide="prev" style="background-image: none;" > 
										<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a> 
									<a class="right carousel-control " href="#abc${article.articleNum}" role="button" data-slide="next" style="background-image: none;"> 
										<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>


								<p class="post_img">${article.content}</p>
							</c:if>
							<br>
							<div class="btn-toolbar">
 								<div class="btn-group">
      								<a href="#" class="btn btn-inverse"><i class="glyphicon glyphicon-thumbs-up" style="color:#f0ad4e"></i></a>
      								<a href="#" class="btn btn-inverse"><i class="glyphicon glyphicon-pencil" style="color:#f0ad4e"></i></a>

  								</div>
  								<div class="btn-group">
      								<a class="btn btn-inverse" onclick="deleteArticle(${article.articleNum});"><i class="glyphicon glyphicon-trash" style="color:#f0ad4e;"></i></a>
  								</div>
							</div>


						</div>
					</div>

				</c:forEach>
				
			
</body>
</html>