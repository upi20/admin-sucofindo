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
          <ol class="breadcrumb mb-0 py-2 px-3 rounded" id="list-breadcrumb">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Company</li>
          </ol>
        </nav>
      </div>

      <div class="container" style="margin-top: 10px;">
        <div class="card">
          <div class="card-body" style="padding-top: 0.5em; padding-bottom: 0em; padding-left: 1em; padding-right: 1em;">
            <div class="standard-tab">
              <ul class="nav rounded-lg mb-2 p-2 shadow-sm" id="affanTabs1" role="tablist">
                <li class="nav-item" role="presentation">
                  <button class="btn" id="activity-tab" data-bs-toggle="tab" data-bs-target="#bootstrap" type="button" role="tab" aria-controls="bootstrap" aria-selected="true">Activity</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="btn" id="reporting-tab" data-bs-toggle="tab" data-bs-target="#pwa" type="button" role="tab" aria-controls="pwa" aria-selected="false">Reporting</button>
                </li>
                <li class="nav-item" role="presentation">
                  <button class="btn" id="kpi-tab" data-bs-toggle="tab" data-bs-target="#dark" type="button" role="tab" aria-controls="dark" aria-selected="false">KPI</button>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="container" style="margin-top: 20px;">
        <!-- Element Heading-->
        <div class="element-heading">
        </div>
      </div>
         <div class="container" id="detail-rekapitulasi">
        <h6 style="text-align: center;">Rekapitulasi Data Tahun Berjalan</h6>
        <div class="card" style="background-color: #0036D3">
          <div class="card-body">
            <div style="overflow-x:auto;">
              <table class="table mb-0" style="width: 100%;">
                <thead>
                  <tr>
                    <th scope="col" style="color: #ffffff;">Lokasi</th>
                    <th scope="col" style="color: #ffffff;">Month&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</th>
                    <th scope="col" style="color: #ffffff;">T.Kapur (Ton)</th>
                    <th scope="col" style="color: #ffffff;">T.Tawas (Ton)</th>
                    <th scope="col" style="color: #ffffff;">T.NaC</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row" style="color: #ffffff;">LMO</th>
                    <td style="color: #ffffff;">Jan 2021</td>
                    <td style="color: #ffffff;">3</td>
                    <td style="color: #ffffff;">1</td>
                    <td style="color: #ffffff;">3</td>
                  </tr>
                  <tr>
                    <th scope="row" style="color: #ffffff;">LMO</th>
                    <td style="color: #ffffff;">Feb 2021</td>
                    <td style="color: #ffffff;">5</td>
                    <td style="color: #ffffff;">1</td>
                    <td style="color: #ffffff;">2</td>
                  </tr>
                  <tr>
                    <th scope="row" style="color: #ffffff;">BMO</th>
                    <td style="color: #ffffff;">Jan 2021</td>
                    <td style="color: #ffffff;">5</td>
                    <td style="color: #ffffff;">1</td>
                    <td style="color: #ffffff;">2</td>
                  </tr>
                  <tr>
                    <th scope="row" style="color: #ffffff;">BMO</th>
                    <td style="color: #ffffff;">Jan 2021</td>
                    <td style="color: #ffffff;">2</td>
                    <td style="color: #ffffff;">1</td>
                    <td style="color: #ffffff;">3</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <div id="detail-activity"></div>
      <div id="detail-activity-area-tambang"></div>
      <div id="detail-reporting"></div>
      <div id="detail-reporting-chart"></div>
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
    <!-- Apex Chart-->
    <script src="<?=base_url()?>assets/js/apexcharts.min.js"></script>
    <script src="<?=base_url()?>assets/js/default/chart-active.js"></script>
    <!-- PWA-->
    <script src="<?=base_url()?>assets/js/pwa.js"></script>
    <script type="text/javascript">
      $('#activity-tab').click(function(){

        // empty to all content detail
        $("#detail-activity").empty()
        $("#detail-rekapitulasi").empty()
        $("#detail-reporting").empty()
        $("#detail-kpi").empty()

        $("#detail-activity-area-tambang").empty()

        // add to breadcrumb
        $("#list-breadcrumb").empty()
        $("#list-breadcrumb").append(`
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Company</a></li>
          <li class="breadcrumb-item active" aria-current="page">Activity</li>
        `)

        // add to content detail
        $("#detail-activity").append(`
          <div class="container">
            <h6 class="ps-1" style="text-align: center;">Activity Area Tambang</h6>
            <ul class="ps-0 chat-user-list">
              <li class="p-3 chat-unread">
                <a class="d-flex" id="activity-area-tambang">
                  <div class="chat-user-info">
                    <h6 class="text-truncate mb-0">LMO - WMP LT 3</h6>
                    <div class="last-chat">
                      <p class="mb-0 text-truncate">2 Januari 2021 (3 jam)<span class="badge rounded-pill bg-primary ms-2">Proses</span></p>
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
        `)

        // click detail in content data
        $('#activity-area-tambang').click(function(){
          $("#detail-activity").empty()

          $("#list-breadcrumb").empty()
          $("#list-breadcrumb").append(`
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">Company</a></li>
            <li class="breadcrumb-item"><a href="#">Activity</a></li>
            <li class="breadcrumb-item active" aria-current="page">Detail</li>
          `)

          $("#detail-activity-area-tambang").append(`
            <div class="container">
              <div class="card position-relative shadow-sm">
                <div class="card-body direction-rtl">
                  <h2>AAT</h2>
                  <table style="width: 100%">
                    <tr>
                        <td style="width: 50%">
                          <h6>WMP</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>3 LT</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Date Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>8/4/2021</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Periodical Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>Per 3 Jam</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Time Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>08.00</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Sampling Point</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>Sebelum Titik Pengapuran</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Weather Cond</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>Cerah</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>pH</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>3 mg/L</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>TSS</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>3 mg/L</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Fe</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>3 mg/L</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Mn</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>3 mg/L</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Debit</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>1000 L/jam</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Chem Dose</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>1000 L/jam</a>
                        </td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="container" style="margin-top: 5px;">
              <div class="card position-relative shadow-sm">
                <div class="card-body direction-rtl">
                  <h2>Bahan Kimia</h2>
                    <table style="width: 100%">
                    <tr>
                        <td style="width: 50%">
                          <h6>WMP</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>3 LT</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Date Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>8/4/2021</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Periodical Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>Per 3 jam</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Time Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>08.00</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Chemicals</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>1 mg/L</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>% Kemurnian</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>90</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Stock Shift Sebelum</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>100</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Stock Berjalan</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>90</a>
                        </td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="container" style="margin-top: 5px;">
              <div class="card position-relative shadow-sm">
                <div class="card-body direction-rtl">
                  <h2>Perbaikan</h2>
                    <table style="width: 100%">
                    <tr>
                        <td style="width: 50%">
                          <h6>WMP</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>3 LT</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Date Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>8/4/2021</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Periodical Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>Per 3 jam</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Time Input</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>08.00</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Jenis Perbaikan</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>Pengerukan</a>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%">
                          <h6>Kegiatan Perbaikan</h6>
                        </td>
                        <td style="width: 1%">
                          <h6>:</a>
                        </td>
                        <td style="width: 50%">
                          <h6>Memasukan Kapur</a>
                        </td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
            <div class="container" style="margin-top: 5px;">
              <div class="card position-relative shadow-sm">
                <div class="card-body direction-rtl">
                  <span>Catatan (jika rejected)</span>
                  <textarea class="form-control"></textarea>
                </div>
              </div>
            </div>
            <div class="container" style="margin-top: 5px;">
              <table style="width: 100%;">
                <tr>
                  <td style="width: 50%;">
                    <a class="btn btn-primary" href="#" style="width: 99%; float: left;">Accepted</a>
                  </td>
                  <td style="width: 50%;">
                    <a class="btn btn-danger" href="#" style="width: 99%; float: left;">Rejected</a>
                  </td>
                </tr>
              </table>
            </div>
          `)
        })

      });

      $('#reporting-tab').click(function(){
        
         // empty to all content detail
        $("#detail-activity").empty()
        $("#detail-rekapitulasi").empty()
        $("#detail-reporting").empty()
        $("#detail-kpi").empty()

        $("#detail-activity-area-tambang").empty()

        // add to breadcrumb
        $("#list-breadcrumb").empty()
        $("#list-breadcrumb").append(`
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Company</a></li>
          <li class="breadcrumb-item active" aria-current="page">Reporting</li>
        `)

        // add to content detail
        $("#detail-reporting").append(`
          <div class="container">
            <div class="card">
              <div class="card-body">
                <table style="width: 100%;margin-top: -15px; ">
                  <tr>
                    <td style="width: 50%;">
                      <h6 style="text-align: left;">Filter Data</h6>
                    </td>
                    <td style="width: 50%;">
                      <a class="btn btn-success btn-xs" href="#" id="reporting-label-navigasi" style=" float: right;">Hide</a>
                    </td>
                  </tr>
                </table>
                <hr>

                <form action="#" method="GET" id="reporting-form-cari">
                  <table style="width: 100%;">
                    <tr>
                      <td style="width: 49%;">
                        <div class="form-group mb-0">
                          <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                            <option value="" selected>--Area Tambang--</option>
                            <option value="LMO">LMO</option>
                            <option value="BMO">BMO</option>
                          </select>
                        </div>
                      </td>
                      <td style="width: 2%;"></td>
                      <td style="width: 49%;">
                        <div class="form-group mb-0">
                          <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                            <option value="" selected>-- WMP--</option>
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
                            <option value="" selected>--Parameter--</option>
                            <option value="LMO">LMO</option>
                            <option value="BMO">BMO</option>
                          </select>
                        </div>
                      </td>
                      <td style="width: 2%;"></td>
                      <td style="width: 49%;">
                        <div class="form-group mb-0" style="margin-top: 5px;">
                          <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                            <option value="" selected>--Sampling Point--</option>
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
                            <option value="" selected>--Unit--</option>
                            <option value="LMO">LMO</option>
                            <option value="BMO">BMO</option>
                          </select>
                        </div>
                      </td>
                      <td style="width: 2%;"></td>
                      <td style="width: 49%;">
                        <div class="form-group mb-0" style="margin-top: 5px;">
                          <select class="form-select form-select-sm" id="defaultSelectSm" name="defaultSelectSm" aria-label="Default select example">
                            <option value="" selected>--Satuan--</option>
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
                  </table>
                  <br>
                  <a class="btn btn-primary btn-xs" id="reporting-cari-data" href="#" style=" float: right;"><i class="fa fa-search"></i> Cari Data</a>
                </form>
              </div>
            </div>
          </div>
        `)

        // click detail in content data
        $('#reporting-cari-data').click(function(){
          $("#reporting-form-cari").hide()
          $("#reporting-label-navigasi").text("Show")

          $("#detail-reporting-chart").append(`
            <div class="container" style="margin-top: 10px;">
              <div class="card shadow-sm">
                <div class="card-body pb-0">
                  <div class="charts-wrapper">
                    <div id="columnChart2"></div>
                  </div>
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
        
        $('#reporting-label-navigasi').click(function(){
          let text = $("#reporting-label-navigasi").text()
          if(text == "Show"){
            $("#reporting-form-cari").show()
            $("#reporting-label-navigasi").text("Hide")
          }else{
            $("#reporting-form-cari").hide()
            $("#reporting-label-navigasi").text("Show")
          }
        })

      });

      $('#kpi-tab').click(function(){
        
      });
    </script>
  </body>
</html>