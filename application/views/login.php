<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="shortcut icon" href="assets/images/favicon.png" type="image/png">

  <title>NAMA PERUSAHAAN</title>

  <link href="assets/css/style.default.css" rel="stylesheet">
  <link href="assets/sweetalert/sweetalert.css" rel="stylesheet">

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <script src="js/respond.min.js"></script>
  <![endif]-->
</head>

<body class="signin">

<!-- Preloader -->
<div id="preloader">
    <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
</div>

<section>
  
    <div class="signinpanel">
        
        <div class="row">
            
            <div class="col-md-7">
                
                <div class="signin-info">
                    <div class="logopanel">
                        <h1><span>[</span> bracket <span>]</span></h1>
                    </div><!-- logopanel -->
                
                    <div class="mb20"></div>
                
                    <h5><strong>Welcome to IT Inventory Nama Perusahaan!</strong></h5>
                    <ul>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> Fully Responsive Layout</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> HTML5/CSS3 Valid</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> Retina Ready</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> WYSIWYG CKEditor</li>
                        <li><i class="fa fa-arrow-circle-o-right mr5"></i> and much more...</li>
                    </ul>
                </div><!-- signin0-info -->
            
            </div><!-- col-sm-7 -->
            
            <div class="col-md-5">
                <form method="post" id="form-login" name="form-login" autocomplete="off" onSubmit="signin('form-login'); return false;" action="<?php echo site_url('home/signin'); ?>">
                    <h4 class="nomargin">Sign In</h4>
                    <p class="mt5 mb20">Login to access your account.</p>
                
                    <input type="text" class="form-control uname" name="username" placeholder="Username" mandatory="yes" id="username" />
                    <input type="password" class="form-control pword" name="password" placeholder="Password" mandatory="yes" id="password" />
                    <a href="#"><small>Forgot Your Password?</small></a>
                    <button type="submit" class="btn btn-success btn-block">Sign In</button>
                </form>
            </div><!-- col-sm-5 -->
            
        </div><!-- row -->
        
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2019. All Rights Reserved. Company Name
            </div>
            <div class="pull-right">
                Created By: <a href="#" target="_blank">Company Name</a>
            </div>
        </div>
        
    </div><!-- signin -->
  
</section>
<script src="assets/js/jquery-1.10.2.min.js"></script>
<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/modernizr.min.js"></script>
<script src="assets/js/retina.min.js"></script>
<script src="assets/sweetalert/sweetalert.min.js"></script>
<script src="assets/js/custom.js"></script>
</body>
</html>