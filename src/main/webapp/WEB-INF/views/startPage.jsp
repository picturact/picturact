<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="description" content="">
   <meta name="author" content="">

   <title>Picturact</title>
   <link href="resources/css/bootstrap.min.css" rel="stylesheet">
   <link href="resources/css/startPage.css" rel="stylesheet">

   <script src="resources/js/jquery.js"></script>
</head>

<body id="page-top" class="index">
    <!-- Header Login -->
    <header>
        <div class="container">
           <div class="intro-text">
            <div class="intro-lead-in">PICTURACT</div>
            <div class="intro-heading">Login</div>
             <form id="login" class="login form-horizontal col-md-4 col-md-offset-4" method="post" action="/login.do">
             	<div class="form-group col-md-12 text-center">
    				<input type="text" class="form-control" placeholder="Your ID *" name="userId"  id="userId">
         		</div>
         		<div class="form-group col-md-12 text-center">
    				<input type="text" class="form-control" placeholder="Your Password *" name="userPass"  id="password">
         		</div>
         		<div class="form-group"	>
         		<input type="button" class="btn btn-default" value="LOGIN">
         		<a href="#join" class="page-scroll btn btn-default">Join</a>
         		</div>
             </form>
            </div>
        </div>
    </header>

    <!-- Join Section -->
    <section id="join">
        <form class="container" method="post" action="/join.do">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Join</h2>
                    <h3 class="section-subheading text-muted">You can enjoy our services!</h3>
                </div>
            </div>
            <div class="row">
            		<div class="col-lg-12">
            			<div class="form-group col-lg-6">
            				<h4 class="service-heading">ID</h4>
            				<div class="col-lg-8">
            					<input type="text" class="form-control" placeholder="Your ID *" name="userId"  id="joinId"
								required data-validation-required-message="Please enter your id.">
            				</div>
            				<div class="col-lg-1">
            					<input type="button" class="idCheck btn btn-mn btn-default" value="check">
            				</div>
            			</div>
            			<div class="form-group col-lg-6">
            				<h4 class="service-heading">Password</h4>
							<input type="text" class="form-control" placeholder="password *" name="password"  id="joinPassword"
								required data-validation-required-message="Please enter your password.">
						</div>
						<div class="form-group col-lg-6">
            				<h4 class="service-heading">Name</h4>
            					<input type="text" class="form-control" placeholder="Your Name *" name="userName" 
								required data-validation-required-message="Please enter your Name.">
            			</div>
            			<div class="form-group col-lg-6">
            				<h4 class="service-heading">NickName</h4>
							<input type="text" class="form-control" placeholder="nickName *" name="nickName" 
								required data-validation-required-message="Please enter your nickName.">
						</div>
						<div class="form-group col-lg-12">
            				<h4 class="service-heading">E-Mail</h4>
           					<input type="text" class="form-control" placeholder="Your E-mail *" name="eMail"  id="joinEmail"
							required data-validation-required-message="Please enter your E-mail.">
            			</div>
            		</div>
            		<div class="col-lg-12 text-center">
           					<input type="submit" value="JOIN" class="btn btn-default">
           			</div>
            </div>
		</form>
    </section>


    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; 김윤수 구현민 권태경 홍성주 흿흿~!</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    
    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="resources/js/classie.js"></script>
    <script src="resources/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>
    <script src="resources/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/agency.js"></script>
    <script src="resources/js/startPageScript.js"></script>

</body>

</html>
