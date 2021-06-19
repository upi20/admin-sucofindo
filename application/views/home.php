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
  <link rel="apple-touch-icon" sizes="57x57" href="<?= base_url() ?>assets/favicon/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="<?= base_url() ?>assets/favicon/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="<?= base_url() ?>assets/favicon/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url() ?>assets/favicon/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="<?= base_url() ?>assets/favicon/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="<?= base_url() ?>assets/favicon/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="<?= base_url() ?>assets/favicon/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<?= base_url() ?>assets/favicon/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="<?= base_url() ?>assets/favicon/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="<?= base_url() ?>assets/favicon/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="<?= base_url() ?>assets/favicon/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="<?= base_url() ?>assets/favicon/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url() ?>assets/favicon/favicon-16x16.png">
  <link rel="manifest" href="<?= base_url() ?>assets/favicon/manifest.json">
  <meta name="msapplication-TileColor" content="#0134d4">
  <meta name="msapplication-TileImage" content="<?= base_url() ?>assets/favicon/ms-icon-144x144.png">
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
  <?php $this->load->view('element-header'); ?>

  <div class="page-content-wrapper">
    <!-- Hero Slides-->
    <br>
    <div class="notification-area" style="margin-top: 0px">
      <div class="container">
        <a href="page-notification-details.html">
          <div class="alert unread custom-alert-3 alert-primary" role="alert">
            <svg width="24" height="24" viewBox="0 0 16 16" class="bi bi-chat-dots" fill="currentColor" xmlns="../../www.w3.org/2000/svg.html">
              <path fill-rule="evenodd" d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
              <path d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
            </svg>
            <div class="alert-text w-75">
              <h6 class="text-truncate">Jumlah RAB</h6>
              <div class="row">
                <div class="col-6">
                  <span class="text-truncate">RM 13,743</span>
                </div>
                <div class="col-6">
                  <span class="text-truncate">Rp 48.099.100</span>
                </div>
              </div>
            </div>
          </div>
        </a>

        <a href="page-notification-details.html">
          <div class="alert unread custom-alert-3 alert-primary" role="alert">
            <svg width="24" height="24" viewBox="0 0 16 16" class="bi bi-chat-dots" fill="currentColor" xmlns="../../www.w3.org/2000/svg.html">
              <path fill-rule="evenodd" d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
              <path d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
            </svg>
            <div class="alert-text w-75">
              <h6 class="text-truncate">Total Realisasi Anggaran</h6>
              <div class="row">
                <div class="col-6">
                  <span class="text-truncate">RM 13,743</span>
                </div>
                <div class="col-6">
                  <span class="text-truncate">Rp 48.099.100</span>
                </div>
              </div>
            </div>
          </div>
        </a>

        <a href="page-notification-details.html">
          <div class="alert unread custom-alert-3 alert-primary" role="alert">
            <svg width="24" height="24" viewBox="0 0 16 16" class="bi bi-chat-dots" fill="currentColor" xmlns="../../www.w3.org/2000/svg.html">
              <path fill-rule="evenodd" d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
              <path d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
            </svg>
            <div class="alert-text w-75">
              <h6 class="text-truncate">Sisa Realisasi</h6>
              <div class="row">
                <div class="col-6">
                  <span class="text-truncate">RM 13,743</span>
                </div>
                <div class="col-6">
                  <span class="text-truncate">Rp 48.099.100</span>
                </div>
              </div>
            </div>
          </div>
        </a>

        <a href="page-notification-details.html">
          <div class="alert unread custom-alert-3 alert-primary" role="alert">
            <svg width="24" height="24" viewBox="0 0 16 16" class="bi bi-chat-dots" fill="currentColor" xmlns="../../www.w3.org/2000/svg.html">
              <path fill-rule="evenodd" d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z" />
              <path d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z" />
            </svg>
            <div class="alert-text w-75">
              <h6 class="text-truncate">Jumlah Dana Dialihkan</h6>
              <div class="row">
                <div class="col-6">
                  <span class="text-truncate">RM 13,743</span>
                </div>
                <div class="col-6">
                  <span class="text-truncate">Rp 48.099.100</span>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
    <div class="pb-3"></div>
  </div>

  <!-- Footer Nav-->
  <?php $this->load->view('element-footer'); ?>

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