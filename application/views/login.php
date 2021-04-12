<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Affan - PWA Mobile HTML Template">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="theme-color" content="#0134d4">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <!-- Title-->
  <title>ADMIN SUCOFINDO</title>
  <!-- Fonts-->
  <link rel="preconnect" href="<?= base_url() ?>assets/../../fonts.gstatic.com/index.html">
  <link href="<?= base_url() ?>assets/../../fonts.googleapis.com/css25af9.css?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
  <!-- Favicon-->
  <link rel="icon" href="<?= base_url() ?>assets/img/core-img/favicon.ico">
  <link rel="apple-touch-icon" href="<?= base_url() ?>assets/img/icons/icon-96x96.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<?= base_url() ?>assets/img/icons/icon-152x152.png">
  <link rel="apple-touch-icon" sizes="167x167" href="<?= base_url() ?>assets/img/icons/icon-167x167.png">
  <link rel="apple-touch-icon" sizes="180x180" href="<?= base_url() ?>assets/img/icons/icon-180x180.png">
  <!-- CSS Libraries-->
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/animate.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/owl.carousel.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/bootstrap-icons.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/magnific-popup.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/ion.rangeSlider.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>assets/css/apexcharts.css">
  <!-- Core Stylesheet-->
  <link rel="stylesheet" href="<?= base_url() ?>assets/style.css">
  <!-- Web App Manifest-->
  <link rel="manifest" href="<?= base_url() ?>assets/manifest.json">
</head>

<body>
  <!-- Preloader-->
  <div class="preloader d-flex align-items-center justify-content-center" id="preloader">
    <div class="spinner-grow text-primary" role="status">
      <div class="sr-only">Loading...</div>
    </div>
  </div>
  <!-- Internet Connection Status-->
  <div class="internet-connection-status" id="internetStatus"></div>
  <!-- Back Button-->
  <!-- Login Wrapper Area-->
  <div class="login-wrapper d-flex align-items-center justify-content-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-sm-9 col-md-7 col-lg-6 col-xl-5">
          <div class="text-center px-4"><img class="login-intro-img" src="<?= base_url() ?>assets/img/bg-img/img_sucofindo.png" alt=""></div>
          <!-- Register Form-->
          <div class="register-form mt-4 px-4">
            <h6 class="mb-3 text-center" style="color: #000000;">Log in to continue Admin Sucofindo</h6>
            <form action="<?= base_url() ?>home">
              <div class="form-group">
                <input class="form-control" type="text" placeholder="Email" style="color: #000000;">
              </div>
              <div class="form-group">
                <input class="form-control" type="password" placeholder="Password" style="color: #000000;">
              </div>
              <button class="btn btn-primary w-100" type="submit" style="background-color: #0036D3;border:none">Sign In</button>
            </form>
          </div>
          <!-- Login Meta-->
          <div class="login-meta-data text-center"><a class="stretched-link forgot-password d-block mt-3 mb-1" href="<?= base_url() ?>forgetpassword" style="color: black">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- All JavaScript Files-->
  <script src="<?= base_url() ?>assets/js/bootstrap.bundle.min.js"></script>
  <script src="<?= base_url() ?>assets/js/jquery.min.js"></script>
  <script src="<?= base_url() ?>assets/js/default/internet-status.js"></script>
  <script src="<?= base_url() ?>assets/js/waypoints.min.js"></script>
  <script src="<?= base_url() ?>assets/js/jquery.easing.min.js"></script>
  <script src="<?= base_url() ?>assets/js/wow.min.js"></script>
  <script src="<?= base_url() ?>assets/js/owl.carousel.min.js"></script>
  <script src="<?= base_url() ?>assets/js/jquery.counterup.min.js"></script>
  <script src="<?= base_url() ?>assets/js/jquery.countdown.min.js"></script>
  <script src="<?= base_url() ?>assets/js/imagesloaded.pkgd.min.js"></script>
  <script src="<?= base_url() ?>assets/js/isotope.pkgd.min.js"></script>
  <script src="<?= base_url() ?>assets/js/jquery.magnific-popup.min.js"></script>
  <script src="<?= base_url() ?>assets/js/default/dark-mode-switch.js"></script>
  <script src="<?= base_url() ?>assets/js/ion.rangeSlider.min.js"></script>
  <script src="<?= base_url() ?>assets/js/jquery.dataTables.min.js"></script>
  <script src="<?= base_url() ?>assets/js/default/active.js"></script>
  <script src="<?= base_url() ?>assets/js/default/clipboard.js"></script>
  <!-- PWA-->
  <script src="<?= base_url() ?>assets/js/pwa.js"></script>
</body>

</html>