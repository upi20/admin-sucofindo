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
                    <li class="breadcrumb-item active" aria-current="page">Reporting</li>
                </ol>
            </nav>
        </div>


        <div class="container mt-3">
            <h6 class="ps-1">Reporting Menu</h6>
            <div class="card">
                <div class="card-body">
                    <table style="width: 100%;margin-top: -15px; ">
                        <tbody>
                            <tr>
                                <td style="width: 50%;">
                                    <h6 style="text-align: left;">Filter Data</h6>
                                </td>
                                <td style="width: 50%;">
                                    <a class="btn btn-success btn-xs" href="#" id="reporting-label-navigasi" style=" float: right;">Hide</a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <hr>

                    <form action="#" method="GET" id="reporting-form-cari" style="display: block; overflow-x: scroll;">
                        <table style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td style="width: 100%;">
                                        <div class="form-group mb-0">
                                            <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                                                <option value="" selected="">--Area Tambang--</option>
                                                <option value="LMO">LMO</option>
                                                <option value="BMO">BMO</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td style="width: 0%;"></td>
                                    <td style="width: 100%;">
                                        <div class="form-group mb-0">
                                            <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                                                <option value="" selected="">-- WMP--</option>
                                                <option value="LMO">LMO</option>
                                                <option value="BMO">BMO</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 49%;">
                                        <div class="form-group mb-0" style="margin-top: 5px;">
                                            <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                                                <option value="" selected="">--Parameter--</option>
                                                <option value="LMO">LMO</option>
                                                <option value="BMO">BMO</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td style="width: 2%;"></td>
                                    <td style="width: 49%;">
                                        <div class="form-group mb-0" style="margin-top: 5px;">
                                            <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                                                <option value="" selected="">--Sampling Point--</option>
                                                <option value="LMO">LMO</option>
                                                <option value="BMO">BMO</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 49%;">
                                        <div class="form-group mb-0" style="margin-top: 5px;">
                                            <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                                                <option value="" selected="">--Unit--</option>
                                                <option value="LMO">LMO</option>
                                                <option value="BMO">BMO</option>
                                            </select>
                                        </div>
                                    </td>
                                    <td style="width: 2%;"></td>
                                    <td style="width: 49%;">
                                        <div class="form-group mb-0" style="margin-top: 5px;">
                                            <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                                                <option value="" selected="">--Satuan--</option>
                                                <option value="LMO">LMO</option>
                                                <option value="BMO">BMO</option>
                                            </select>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 49%;">
                                        <div class="form-group mb-0" style="margin-top: 5px;">
                                            <input type="date" class="form-control" placeholder="start date">
                                        </div>
                                    </td>
                                    <td style="width: 2%;"></td>
                                    <td style="width: 49%;">
                                        <div class="form-group mb-0" style="margin-top: 5px;">
                                            <input type="date" class="form-control" placeholder="end date">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <a class="btn btn-primary btn-xs" id="reporting-cari-data" href="#" style=" float: right;"><i class="fa fa-search"></i> Cari Data</a>
                    </form>
                </div>
            </div>

            <div class="mt-2" id="detail-reporting-chart">
            </div>
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
    <script>
        $(document).ready(function() {
            // click detail in content data
            $('#reporting-cari-data').click(function() {
                $("#reporting-form-cari").hide()
                $("#reporting-label-navigasi").text("Show")

                $("#detail-reporting-chart").append(`
                    <div class="card shadow-sm">
                        <div class="card-body pb-0">
                        <div class="charts-wrapper">
                            <div id="columnChart2"></div>
                        </div>
                        </div>
                    </div>
                    `)

                var columnChart2 = {
                    chart: {
                        height: 240,
                        type: 'bar',
                        animations: {
                            enabled: true,
                            easing: 'easeinout',
                            speed: 1000
                        },
                        dropShadow: {
                            enabled: true,
                            opacity: 0.1,
                            blur: 2,
                            left: -1,
                            top: 5
                        },
                        zoom: {
                            enabled: false
                        },
                        toolbar: {
                            show: false
                        },
                    },
                    subtitle: {
                        text: 'Today\'s earnings',
                        align: 'left',
                        margin: 0,
                        offsetX: 0,
                        offsetY: 0,
                        floating: false,
                        style: {
                            fontSize: '14px',
                            color: '#8480ae'
                        }
                    },
                    plotOptions: {
                        bar: {
                            horizontal: false,
                            columnWidth: '40%',
                            endingShape: 'rounded'
                        },
                    },
                    colors: ['#0134d4'],
                    dataLabels: {
                        enabled: false
                    },
                    grid: {
                        borderColor: '#dbeaea',
                        strokeDashArray: 4,
                        xaxis: {
                            lines: {
                                show: true
                            }
                        },
                        yaxis: {
                            lines: {
                                show: false,
                            }
                        },
                        padding: {
                            top: 0,
                            right: 0,
                            bottom: 0,
                            left: 0
                        },
                    },
                    tooltip: {
                        theme: 'light',
                        marker: {
                            show: true,
                        },
                        x: {
                            show: false,
                        }
                    },
                    stroke: {
                        show: true,
                        colors: ['transparent'],
                        width: 3
                    },
                    labels: ['00:00', '03:00', '06:00', '09:00', '12:00', '15:00', '16:00', '19:00'],
                    series: [{
                        name: 'Affan',
                        data: [320, 420, 395, 350, 410, 355, 360, 420]
                    }],
                    xaxis: {
                        crosshairs: {
                            show: true
                        },
                        labels: {
                            offsetX: 0,
                            offsetY: 0,
                            style: {
                                colors: '#8380ae',
                                fontSize: '12px'
                            },
                        },
                        tooltip: {
                            enabled: false,
                        },
                    },
                    yaxis: {
                        labels: {
                            offsetX: -10,
                            offsetY: 0,
                            style: {
                                colors: '#8380ae',
                                fontSize: '12px'
                            },
                        }
                    },
                }

                var columnChart_02 = new ApexCharts(document.querySelector("#columnChart2"), columnChart2)
                columnChart_02.render()
            })

            $('#reporting-label-navigasi').click(function() {
                if ($(this).text() === "Hide") {
                    $("#reporting-form-cari").hide();
                    $(this).text("Show");
                } else {
                    $("#reporting-form-cari").show();
                    $(this).text("Hide");
                }
            })

        });
    </script>
</body>

</html>