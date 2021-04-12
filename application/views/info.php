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
    <link rel="preconnect" href="<?=base_url()?>assets/../../fonts.gstatic.com/index.html">
    <link href="<?=base_url()?>assets/../../fonts.googleapis.com/css25af9.css?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <!-- Favicon-->
    <link rel="icon" href="<?=base_url()?>assets/img/core-img/favicon.ico">
    <link rel="apple-touch-icon" href="<?=base_url()?>assets/img/icons/icon-96x96.png">
    <link rel="apple-touch-icon" sizes="152x152" href="<?=base_url()?>assets/img/icons/icon-152x152.png">
    <link rel="apple-touch-icon" sizes="167x167" href="<?=base_url()?>assets/img/icons/icon-167x167.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?=base_url()?>assets/img/icons/icon-180x180.png">
    <!-- CSS Libraries-->
    <link rel="stylesheet" href="<?=base_url()?>assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/animate.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/bootstrap-icons.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/magnific-popup.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/ion.rangeSlider.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="<?=base_url()?>assets/css/apexcharts.css">
    <!-- Core Stylesheet-->
    <link rel="stylesheet" href="<?=base_url()?>assets/style.css">
    <!-- Web App Manifest-->
    <link rel="manifest" href="<?=base_url()?>assets/manifest.json">
  </head>
  <body>
    <?php $this->load->view('element-header');?>
     
    <div class="page-content-wrapper py-1 elements-page">
      <div class="container mt-3">
        <div class="elements-heading d-flex align-items-center mt-3 mb-3">
          <div class="icon-wrapper bg-danger">
            <svg width="32" height="32" viewBox="0 0 16 16" class="bi bi-exclamation" fill="currentColor" xmlns="../../www.w3.org/2000/svg.html">
            <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
            </svg>
          </div>
          <div class="heading-text">
            <h5 class="mb-0" style="color: #000000">Notifications</h5>
          </div>
        </div>
        <div class="card">
          <div class="card-body">
            <a class="page--item" href="<?=base_url()?>infodetail" style="color: black">Early warning dari sensor pH WMP 1 <i class="fa fa-angle-right"></i></a>
            <a class="page--item" style="color: black">Stock kapur di WMP 4 telah habis<i class="fa fa-angle-right"></i></a>
            <a class="page--item" style="color: black">Supply listrik di WMP 2 mati<i class="fa fa-angle-right"></i></a>
          </div>
        </div>
      </div>
    </div>
   <!-- Footer Nav-->
    <?php $this->load->view('element-footer');?>

    <!-- All JavaScript Files-->
    <script src="<?=base_url()?>assets/js/bootstrap.bundle.min.js"></script>
    <script src="<?=base_url()?>assets/js/jquery.min.js"></script>
    <script src="<?=base_url()?>assets/js/default/internet-status.js"></script>
    <script src="<?=base_url()?>assets/js/waypoints.min.js"></script>
    <script src="<?=base_url()?>assets/js/jquery.easing.min.js"></script>
    <script src="<?=base_url()?>assets/js/wow.min.js"></script>
    <script src="<?=base_url()?>assets/js/owl.carousel.min.js"></script>
    <script src="<?=base_url()?>assets/js/jquery.counterup.min.js"></script>
    <script src="<?=base_url()?>assets/js/jquery.countdown.min.js"></script>
    <script src="<?=base_url()?>assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="<?=base_url()?>assets/js/isotope.pkgd.min.js"></script>
    <script src="<?=base_url()?>assets/js/jquery.magnific-popup.min.js"></script>
    <script src="<?=base_url()?>assets/js/default/dark-mode-switch.js"></script>
    <script src="<?=base_url()?>assets/js/ion.rangeSlider.min.js"></script>
    <script src="<?=base_url()?>assets/js/jquery.dataTables.min.js"></script>
    <script src="<?=base_url()?>assets/js/default/active.js"></script>
    <script src="<?=base_url()?>assets/js/default/clipboard.js"></script>
    <!-- PWA-->
    <script src="<?=base_url()?>assets/js/pwa.js"></script>
  </body>
</html>