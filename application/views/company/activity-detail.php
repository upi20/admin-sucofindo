<?php
// var_dump($detail);
// die;

?>
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
                    <li class="breadcrumb-item"><a href="<?= base_url('company/activity') ?>">Activity</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detail</li>
                </ol>
            </nav>
        </div>
        <div class="container mt-2">
            <h6 class="ps-1">Detail Activity Area Tambang</h6>
        </div>
        <div id="detail-activity-area-tambang">
            <div class="container">
                <div class="card position-relative shadow-sm">
                    <div class="card-body direction-rtl">
                        <h2>AAT</h2>
                        <table style="width: 100%">
                            <tbody>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>WMP</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['wmp_nama']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style=" width: 50%">
                                        <h6>Date Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_tanggal_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Periodical Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_periode_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Time Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_time_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Sampling Point</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_id_sampling_point']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Weather Cond</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_kondisi_cuaca']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>pH</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_ph']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>TSS</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_tts']; ?> <?= $detail['aat_tts_unit']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Fe</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_fe']; ?> <?= $detail['aat_fe_unit']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Mn</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_mn']; ?> <?= $detail['aat_mn_unit']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Debit</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_debit']; ?> <?= $detail['aat_debit_unit']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Chem Dose</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['aat_chem_dose']; ?> <?= $detail['aat_chem_dose_unit']; ?>
                                        </h6>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="container" style="margin-top: 5px;">
                <div class="card position-relative shadow-sm">
                    <div class="card-body direction-rtl">
                        <h2>Bahan Kimia</h2>
                        <table style="width: 100%">
                            <tbody>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>WMP</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['wmp_nama']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Date Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['bk_tanggal_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Periodical Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['bk_periode_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Time Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['bk_waktu_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Chemicals</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['bk_chemical']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>% Kemurnian</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;">90
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Stock Shift Sebelum</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;">100
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Stock Berjalan</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;">90
                                        </h6>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="container" style="margin-top: 5px;">
                <div class="card position-relative shadow-sm">
                    <div class="card-body direction-rtl">
                        <h2>Perbaikan</h2>
                        <table style="width: 100%">
                            <tbody>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>WMP</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['wmp_nama']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Date Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['pb_tanggal_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Periodical Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['pb_periode_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Time Input</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['pb_waktu_input']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Jenis Perbaikan</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <h6 style="margin-left: 25px;"><?= $detail['pb_jenis_perbaikan']; ?>
                                        </h6>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 50%">
                                        <h6>Kegiatan Perbaikan</h6>
                                    </td>
                                    <td style="width: 1%">
                                        <h6>:
                                        </h6>
                                    </td>
                                    <td style="width: 50%">
                                        <?php
                                        $new_str = explode("__", $detail['pb_keterangan']);
                                        $new_str1 = $new_str[0];
                                        $new_str2 = isset($new_str[1]) ? $new_str[1] : "";
                                        $new_str = $new_str[0] . ($new_str2 ? (" | Notes Rejected: \"" . $new_str2) . '"' : "");
                                        ?>
                                        <h6 style="display:none" id="pb_keterangan"><?= $new_str1; ?></h6>
                                        <h6 style="margin-left: 25px;" id="pb_keterangan1"><?= $new_str; ?></h6>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="container" style="margin-top: 5px;">
                <div class="card position-relative shadow-sm">
                    <div class="card-body direction-rtl">
                        <span>Notes (if rejected)</span>
                        <form action="" method="post" id="form1">
                            <textarea class="form-control" name="notes" style="margin-top: 15px;" name="ket"><?= $new_str2; ?></textarea>
                        </form>
                    </div>
                </div>
            </div>
            <div class="container" id="btn-change" style="margin-top: 15px;">
                <?php if ($detail['aat_status'] == "Diterima" || $detail['aat_status'] == "Ditolak") : ?>
                    <button form="form1" value="submit" name="cancel" type=" submit" class="btn btn-danger" style="width: 100%;">Cancel</button>
                <?php else : ?>
                    <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td style="width: 50%;"> <button form="form1" value="submit" name="acc" type="submit" class="btn btn-primary" style="width: 99%; float: left;">Accepted</button> </td>
                                <td style="width: 50%;"> <button form="form1" value="submit" name="reject" type=" submit" class="btn btn-danger" style="width: 99%; float: left;">Rejected</button> </td>
                            </tr>
                        </tbody>
                    </table>
                <?php endif; ?>
            </div>
        </div>
    </div>

    <!-- Footer Nav-->
    <?php $this->load->view('element-footer'); ?>
    <!-- toast -->
    <script src="<?= base_url() ?>assets/js/default/toast.js"></script>

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
            const isLoading = e => {
                if (e) {
                    $("body").append(`
                        <div class="preloader d-flex align-items-center justify-content-center" id="preloader">
                        <div class="spinner-grow text-primary" role="status">
                            <div class="sr-only">Loading...</div>
                        </div>
                        </div>
                    `);
                } else {
                    $('#preloader').remove();
                }
            }

            $('#form1').submit((e) => {
                e.preventDefault();
                const name = e.originalEvent.submitter.name;
                const notes = e.target.notes.value;
                const keterangan = $("#pb_keterangan").text();
                isLoading(true);
                const execution = async () => {
                    await $.ajax({
                        method: 'post',
                        url: '<?= base_url() ?>company/activity/changestatus',
                        data: {
                            selection: name,
                            id: <?= $detail['aat_id']; ?>,
                            notes: notes,
                            keterangan: keterangan
                        },
                        success: function(response) {
                            isLoading(false);
                            setToast('success', 'primary', 'Success', 'Activity was changed');
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            isLoading(false);
                            alert(textStatus, errorThrown);
                        }
                    })
                }
                execution().then(() => {
                    let html = '';
                    let text = '';
                    if (name === 'reject' || name === 'acc') {
                        html = `<button form="form1" value="submit" name="cancel" type=" submit" class="btn btn-danger" style="width: 100%;">Cancel</button>`;
                    } else {
                        html = `<table style="width: 100%;"><tbody><tr><td style="width: 50%;"><button form="form1" value="submit" name="acc" type="submit" class="btn btn-primary" style="width: 99%; float: left;">Accepted</button></td><td style="width: 50%;"><button form="form1" value="submit" name="reject" type=" submit" class="btn btn-danger" style="width: 99%; float: left;">Rejected</button></td></tr></tbody></table>`;
                    }

                    if (name === "reject") {
                        text = keterangan + ' | Notes Rejected: "' + notes + '"';
                    } else {
                        text = keterangan;
                    }
                    $('#pb_keterangan1').html(text);
                    $('#btn-change').html(html);
                })
            });
        });
    </script>
</body>

</html>