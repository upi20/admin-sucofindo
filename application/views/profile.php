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

    <div class="page-content-wrapper py-3">
      <div class="container">
        <!-- User Information-->
        <div class="card user-info-card mb-3">
          <div class="card-body d-flex align-items-center">
            <div class="user-profile me-3"><img src="<?=base_url()?>assets/img/bg-img/img_profile.png" alt="">
              <form action="#">
                <input class="form-control" type="file">
              </form>
            </div>
            <div class="user-info">
              <div class="d-flex align-items-center">
                <h5 class="mb-1" style="color: #000000">Toto Iswanto</h5>
              </div>
              <p class="mb-0" style="color: #a3a3a3">Admin Sucofindo</p>
            </div>
          </div>
        </div>
        <!-- User Meta Data-->
        <div class="card user-data-card">
          <div class="card-body">
            <form action="#">
              <div class="form-group mb-3">
                <label class="form-label" for="nama" style="color: #a3a3a3">Nama</label>
                <input class="form-control" id="nama" type="text" value="Toto Iswanto" style="color: #000000" placeholder="Nama">
              </div>
              <div class="form-group mb-3">
                <label class="form-label" for="tanggal lahir" style="color: #a3a3a3">Tanggal Lahir</label>
                <input class="form-control" id="ttl" type="text" value="01 April 1992" style="color: #000000" placeholder="Tanggal Lahir">
              </div>
              <div class="form-group mb-3">
                <label class="form-label" for="alamat" style="color: #a3a3a3">Alamat</label>
                <input class="form-control" id="alamat" type="text" value="Jl. Soekarno Hatta" style="color: #000000" placeholder="Alamat">
              </div>
              <div class="form-group mb-3">
                <label class="form-label" for="nomor telpon" style="color: #a3a3a3">Nomor Telpon</label>
                <input class="form-control" id="nomot telpon" type="text" value="081234567890" style="color: #000000" placeholder="No Telpon">
              </div>
              <div class="form-group mb-3">
                <label class="form-label" for="asal perusahaan" style="color: #a3a3a3">Asal Perusahaan</label>
                <input class="form-control" id="asal perusahaan" type="text" value="PT. Sucofindo" style="color: #000000" placeholder="Asal Perusahaan">
              </div>
              <div class="form-group mb-3">
                <label class="form-label" for="bekerja tahun" style="color: #a3a3a3">Bekerja Tahun</label>
                <input class="form-control" id="bekerja tahun" type="text" value="2019" style="color: #000000" placeholder="Bekerja Tahun">
              </div>
              <div class="form-group mb-3">
                <label class="form-label" for="jabatan" style="color: #a3a3a3">Jabatan</label>
                <input class="form-control" id="jabatan" type="text" value="Admin Sucofindo" style="color: #000000" placeholder="Jabatan">
              </div>
              <button class="btn btn-success w-100" type="submit" style="background-color: #0036D3;color: white;border:none">Update Now</button>
            </form>
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