<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Affan - PWA Mobile HTML Template">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- <meta name="theme-color" content="#0134d4"> -->
  <meta name="theme-color" content="#f1b10f">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
  <!-- Title-->
  <title>Dashboard | JOMLASIELSI</title>
  <!-- Favicon-->
  <link rel="apple-touch-icon" sizes="57x57" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-57x57.png">
  <link rel="apple-touch-icon" sizes="60x60" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-60x60.png">
  <link rel="apple-touch-icon" sizes="72x72" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-76x76.png">
  <link rel="apple-touch-icon" sizes="114x114" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-114x114.png">
  <link rel="apple-touch-icon" sizes="120x120" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-120x120.png">
  <link rel="apple-touch-icon" sizes="144x144" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-144x144.png">
  <link rel="apple-touch-icon" sizes="152x152" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-152x152.png">
  <link rel="apple-touch-icon" sizes="180x180" href="<?= base_url() ?>assets/favicon/bg-white/apple-icon-180x180.png">
  <link rel="icon" type="image/png" sizes="192x192" href="<?= base_url() ?>assets/favicon/bg-white/android-icon-192x192.png">
  <link rel="icon" type="image/png" sizes="32x32" href="<?= base_url() ?>assets/favicon/bg-white/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="96x96" href="<?= base_url() ?>assets/favicon/bg-white/favicon-96x96.png">
  <link rel="icon" type="image/png" sizes="16x16" href="<?= base_url() ?>assets/favicon/bg-white/favicon-16x16.png">
  <link rel="manifest" href="<?= base_url() ?>assets/favicon/bg-white/manifest.json">
  <meta name="msapplication-TileColor" content="#0134d4">
  <meta name="msapplication-TileImage" content="<?= base_url() ?>assets/favicon/bg-white/ms-icon-144x144.png">
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

        <div class="alert unread custom-alert-3 alert-primary" role="alert">
          <i class="fa fa-usd fa-2x" style="margin-right: 20.56px;" aria-hidden="true"></i>
          <div class="alert-text w-100">
            <h6 class="text-truncate">Jumlah RAB</h6>
            <div class="d-flex justify-content-between">
              <div class="col-6">
                <span class="text-truncate">RM <?= $this->libs->ringgit_non($rab['total_harga_ringgit']) ?></span>
              </div>
              <div class="col-6 text-end">
                <span class="text-truncate">Rp <?= $this->libs->ringgit_non($rab['total_harga_rupiah']) ?></span>
              </div>
            </div>
          </div>
        </div>



        <div class="alert unread custom-alert-3 alert-primary" role="alert">
          <i class="fa fa-check fa-2x" aria-hidden="true"></i>
          <div class="alert-text w-100">
            <h6 class="text-truncate">Total Realisasi Anggaran</h6>
            <div class="d-flex justify-content-between">
              <div class="col-6">
                <span class="text-truncate">RM <?= $this->libs->ringgit_non($realisasi['harga_ringgit']) ?></span>
              </div>
              <div class="col-6 text-end">
                <span class="text-truncate">Rp <?= $this->libs->ringgit_non($realisasi['harga_rupiah']) ?></span>
              </div>
            </div>
          </div>
        </div>



        <div class="alert unread custom-alert-3 alert-primary" role="alert">
          <i class="fa fa-bars fa-2x" style="margin-right: 14.4px;" aria-hidden="true"></i>
          <div class="alert-text w-100">
            <h6 class="text-truncate">Sisa Realisasi</h6>
            <div class="d-flex justify-content-between">
              <div class="col-6">
                <span class="text-truncate">RM <?= $this->libs->ringgit_non($saldo['total_ringgit']) ?></span>
              </div>
              <div class="col-6 text-end">
                <span class="text-truncate">Rp <?= $this->libs->ringgit_non($saldo['total_rupiah']) ?></span>
              </div>
            </div>
          </div>
        </div>



        <div class="alert unread custom-alert-3 alert-primary" role="alert">
          <i class="fa fa-exchange fa-2x" aria-hidden="true"></i>
          <div class="alert-text w-100">
            <h6 class="text-truncate">Jumlah Dana Dialihkan</h6>
            <div class="d-flex justify-content-between">
              <div class="col-6">
                <span class="text-truncate">RM <?= $this->libs->ringgit_non($dialihkan['jumlah_ringgit']) ?></span>
              </div>
              <div class="col-6 text-end">
                <span class="text-truncate">Rp <?= $this->libs->ringgit_non($dialihkan['jumlah_rupiah']) ?></span>
              </div>
            </div>
          </div>
        </div>

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
  <script>
    const my_acctive_menu = "home";
  </script>
  <script src="<?= base_url() ?>assets/js/default/menu-active.js"></script>
</body>

</html>