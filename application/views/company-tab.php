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
    <link rel="preconnect" href="../../fonts.gstatic.com/index.html">
    <link href="../../fonts.googleapis.com/css25af9.css?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
    <!-- Favicon-->
    <link rel="icon" href="img/core-img/favicon.ico">
    <link rel="apple-touch-icon" href="img/icons/icon-96x96.png">
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

    <div class="page-content-wrapper py-3">
      <div class="container" style="margin-top: -5px;">
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb mb-0 py-2 px-3 rounded">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Company</a></li>
            <li class="breadcrumb-item active" aria-current="page" id="label-breadcrumb">Activity</li>
          </ol>
        </nav>
      </div>

      <div class="container" style="margin-top: 10px;">
        <div class="card">
          <div class="card-body">
            <div class="standard-tab">
              <ul class="nav rounded-lg mb-2 p-2 shadow-sm" id="affanTabs1" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="btn active" id="bootstrap-tab" data-bs-toggle="tab" data-bs-target="#bootstrap" type="button" role="tab" aria-controls="bootstrap" aria-selected="true">Activity</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="btn" id="pwa-tab" data-bs-toggle="tab" data-bs-target="#pwa" type="button" role="tab" aria-controls="pwa" aria-selected="false">Reporting</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="btn" id="dark-tab" data-bs-toggle="tab" data-bs-target="#dark" type="button" role="tab" aria-controls="dark" aria-selected="false">KPI</button>
                </li>
              </ul>
              <div class="tab-content rounded-lg p-3 shadow-sm" id="affanTabs1Content">
                <div class="tab-pane fade show active" id="bootstrap" role="tabpanel" aria-labelledby="bootstrap-tab">
                  <h6>RTL Ready</h6>
                  <p class="mb-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                </div>
                <div class="tab-pane fade" id="pwa" role="tabpanel" aria-labelledby="pwa-tab">
                  <h6>PWA Ready</h6>
                  <p class="mb-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                </div>
                <div class="tab-pane fade" id="dark" role="tabpanel" aria-labelledby="dark-tab">
                  <h6>Dark Mode</h6>
                  <p class="mb-0">Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                </div>
              </div>
            </div>
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