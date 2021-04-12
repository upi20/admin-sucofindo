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

    <div class="page-content-wrapper">
      <!-- Hero Slides-->
      <div class="owl-carousel-one owl-carousel">
        <!-- Single Hero Slide-->
        <div class="single-hero-slide bg-overlay" style="background-image: url('assets/img/bg-img/img_bg1.jpg')">
          <div class="slide-content h-100 d-flex align-items-center text-center">
            <div class="container">
              <h4 class="text-white mb-1" data-animation="fadeInUp" data-delay="100ms" data-wow-duration="500ms">SUCOFINDO</h4>
              <p class="text-white mb-4" data-animation="fadeInUp" data-delay="400ms" data-wow-duration="500ms">ALUS PISAN...</p>
            </div>
          </div>
        </div>
        <!-- Single Hero Slide-->
        <div class="single-hero-slide bg-overlay" style="background-image: url('assets/img/bg-img/img_bg2.jpg')">
          <div class="slide-content h-100 d-flex align-items-center text-center">
            <div class="container">
              <h4 class="text-white mb-1" data-animation="fadeInUp" data-delay="100ms" data-wow-duration="1000ms">SUCOFINDO</h4>
              <p class="text-white mb-4" data-animation="fadeInUp" data-delay="400ms" data-wow-duration="1000ms">ALUS PISAN...</p>
            </div>
          </div>
        </div>
        <!-- Single Hero Slide-->
        <div class="single-hero-slide bg-overlay" style="background-image: url('assets/img/bg-img/img_bg3.jpg')">
          <div class="slide-content h-100 d-flex align-items-center text-center">
            <div class="container">
              <h4 class="text-white mb-1" data-animation="fadeInUp" data-delay="100ms" data-wow-duration="1000ms">SUCOFINDO</h4>
              <p class="text-white mb-4" data-animation="fadeInUp" data-delay="400ms" data-wow-duration="1000ms">ALUS PISAN...</p>
            </div>
          </div>
        </div>
      </div>
      <div class="container" style="margin-top: 12px">
        <h6 class="ps-1" style="text-align: left; color: black">Activity Area Tambang</h6>
        <ul class="ps-0 chat-user-list">
          <li class="p-3 chat-unread">
            <a class="d-flex" id="activity-area-tambang">
              <div class="chat-user-info">
                <h6 class="text-truncate mb-0">LMO - WMP LT 3</h6>
                <div class="last-chat">
                  <p class="mb-0 text-truncate" style="color: black">2 Januari 2021 (3 jam)<span class="badge rounded-pill bg-primary ms-2">Proses</span></p>
                </div>
              </div>
            </a>
            <div class="dropstart chat-options-btn">
              <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-three-dots-vertical"></i></button>
              <ul class="dropdown-menu">
                <li><a href="#"><i class="bi bi-mic-mute"></i>Mute</a></li>
                <li><a href="#"><i class="bi bi-slash-circle"></i>Ban</a></li>
                <li><a href="#"><i class="bi bi-trash"></i>Remove</a></li>
              </ul>
            </div>
          </li>
        </ul>
      </div>
      <div class="container" style="margin-top: 12px">
        <h6 class="ps-1" style="text-align: left; color: black">Area Tambang PT. BERAU COAL</h6>
        <div class="row">
          <div class="col-12">
            <div class="card bg-danger mb-3 shadow-sm bg-gradient direction-rtl">
              <div class="card-body" style="background-color: #0036D3">
                <div class="row g-3">
                  <div class="col-4">
                    <div class="feature-card mx-auto text-center">
                      <div class="card shadow mx-auto" style="color: black">1</div>
                      <p class="mb-0" style="color: white">LMO</p>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="feature-card mx-auto text-center">
                      <div class="card shadow mx-auto" style="color: black">2</div>
                      <p class="mb-0" style="color: white">BMO I</p>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="feature-card mx-auto text-center">
                      <div class="card shadow mx-auto" style="color: black">3</div>
                      <p class="mb-0" style="color: white">BMO II</p>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="feature-card mx-auto text-center">
                      <div class="card shadow mx-auto" style="color: black">4</div>
                      <p class="mb-0" style="color: white">SMO</p>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="feature-card mx-auto text-center">
                      <div class="card shadow mx-auto" style="color: black">5</div>
                      <p class="mb-0" style="color: white">BBE</p>
                    </div>
                  </div>
                  <div class="col-4">
                    <div class="feature-card mx-auto text-center">
                      <div class="card shadow mx-auto" style="color: black">6</div>
                      <p class="mb-0" style="color: white">GMO</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="card">
          <div class="card-body">
            <h2>Stared Company</h2>
            <div class="testimonial-slide owl-carousel testimonial-style3">
              <!-- Single Testimonial Slide-->
              <div class="single-testimonial-slide">
                <div class="text-content"><span class="d-inline-block badge bg-warning mb-2"><i class="bi bi-star-fill me-1"></i><i class="bi bi-star-fill me-1"></i><i class="bi bi-star-fill me-1"></i><i class="bi bi-star-fill me-1"></i><i class="bi bi-star-fill"></i></span><img src="<?=base_url()?>assets/img/bg-img/img_beraucoal.png"/>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="pb-3"></div>
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