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
    <?php $this->load->view('element-header'); ?>

    <div class="page-content-wrapper py-3">
        <div class="container" style="margin-top: -5px;">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mb-0 py-2 px-3 rounded" id="list-breadcrumb">
                    <li class="breadcrumb-item"><a href="<?= base_url() ?>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<?= base_url('company') ?>">Company</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Activity</li>
                </ol>
            </nav>
        </div>
        <div class="container mt-3">
            <h6 class="ps-1">Activity Area Tambang</h6>
            <ul class="ps-0 chat-user-list">
                <?php foreach ($activity as $a) : ?>
                    <li class="p-3 chat-unread">
                        <a href="#" class="d-flex w-100" id="activity-area-tambang">
                            <div class="chat-user-info">
                                <h6 class="text-truncate mb-0"><?= $a['title'] ?> <?= $a['wmps'] ?></h6>
                                <div class="last-chat">
                                    <!-- <p class="mb-0 text-truncate" style="color: black">2 Januari 2021 (3 jam)<span class="badge rounded-pill bg-primary ms-2">Proses</span></p> -->
                                    <p class="mb-0 text-truncate" style="color: black"><?= $a['updated_at'] ?><span class="badge rounded-pill bg-primary ms-2"><?= $a['status'] ?></span></p>
                                </div>
                            </div>
                        </a>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
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
    <!-- Apex Chart-->
    <script src="<?= base_url() ?>assets/js/apexcharts.min.js"></script>
    <script src="<?= base_url() ?>assets/js/default/chart-active.js"></script>
    <!-- PWA-->
    <script src="<?= base_url() ?>assets/js/pwa.js"></script>
</body>

</html>