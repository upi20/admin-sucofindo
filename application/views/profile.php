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
  <link rel="preconnect" href="<?= base_url() ?>assets/../../fonts.gstatic.com/index.html">
  <link href="<?= base_url() ?>assets/../../fonts.googleapis.com/css25af9.css?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&amp;display=swap" rel="stylesheet">
  <!-- Favicon-->
  <link rel="icon" href="<?= base_url() ?>assets/img/core-img/favicon.ico">
  <link rel="apple-touch-icon" href="<?= base_url() ?>assets/img/icons/icon-96x96.png">
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
    <div class="container">
      <!-- User Information-->
      <div class="card user-info-card mb-3">
        <div class="card-body d-flex align-items-center">
          <div class="user-profile me-3"><img id="previewImg" src="<?= base_url() ?>assets/img/users-profile/<?= $user['user_photo'] ?>" alt="">
            <form id="user-data-file">
              <input class="form-control" id="img-input" type="file" onchange="previewFile(this);">
            </form>
          </div>
          <div class="user-info">
            <div class="d-flex align-items-center">
              <h5 class="mb-1" style="color: #000000"><?php echo $user['user_nama']; ?></h5>
            </div>
            <p class="mb-0" style="color: #a3a3a3"><?php echo $user['jabatan_nama']; ?></p>
          </div>
        </div>
      </div>
      <!-- User Meta Data-->
      <div class="card user-data-card">
        <div class="card-body">
          <form id="user-data">
            <div class="form-group mb-3">
              <label class="form-label" for="user_nama" style="color: #a3a3a3">Nama</label>
              <input class="form-control" id="user_nama" type="text" value="<?php echo $user['user_nama']; ?>" style="color: #000000" placeholder="Nama" required>
            </div>
            <div class="form-group mb-3">
              <label class="form-label" for="user_tanggal_lahir" style="color: #a3a3a3">Tanggal Lahir</label>
              <input class="form-control" id="user_tanggal_lahir" type="date" value="<?php echo $user['user_tanggal_lahir']; ?>" style="color: #000000" placeholder="Tanggal Lahir" required>
            </div>
            <div class="form-group mb-3">
              <label class="form-label" for="user_alamat" style="color: #a3a3a3">Alamat</label>
              <input class="form-control" id="user_alamat" type="text" value="<?php echo $user['user_alamat']; ?>" style="color: #000000" placeholder="Alamat" required>
            </div>
            <div class="form-group mb-3">
              <label class="form-label" for="user_phone" style="color: #a3a3a3">Nomor Telpon</label>
              <input class="form-control" id="user_phone" type="text" value="<?php echo $user['user_phone']; ?>" style="color: #000000" placeholder="No Telpon" required>
            </div>
            <div class="form-group mb-3">
              <label class="form-label" for="id_perusahaan" style="color: #a3a3a3">Asal Perusahaan</label>
              <select required id="id_perusahaan" class="form-select" aria-label="Default select example" data-default="<?= $user['id_perusahaan'] ?>">
                <?php
                foreach ($perusahaans as $p) {
                  if ($user['id_perusahaan'] == $p['id']) {
                    echo '<option value="' . $p['id'] . '" selected>' . $p['nama'] . '</option>';
                  } else {
                    echo '<option value="' . $p['id'] . '">' . $p['nama'] . '</option>';
                  }
                } ?>
              </select>
            </div>
            <div class="form-group mb-3">
              <label class="form-label" for="mulai_bekerja" style="color: #a3a3a3">Bekerja Tahun</label>
              <input class="form-control" id="mulai_bekerja" type="text" value="<?php echo $user['user_alamat']; ?>" style="color: #000000" placeholder="Bekerja Tahun" required>
            </div>
            <div class="form-group mb-3">
              <label class="form-label" for="id_jabatan" style="color: #a3a3a3">Jabatan</label>
              <select id="id_jabatan" class="form-select" aria-label="Default select example" data-default="<?= $user['id_jabatan'] ?>" required>

              </select>
            </div>
            <button class="btn btn-success w-100" type="submit" style="background-color: #0036D3;color: white;border:none">Update Now</button>
          </form>
        </div>
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
  <!-- PWA-->
  <script src="<?= base_url() ?>assets/js/pwa.js"></script>
  <script>
    function previewFile(input) {
      var file = $("#img-input").get(0).files[0];
      if (file) {
        var reader = new FileReader();

        reader.onload = function() {
          $("#previewImg").attr("src", reader.result);
        }

        reader.readAsDataURL(file);
      }
    }

    $(document).ready(function() {
      // Fungsi untuk jabatan mengambil dari database
      const refreshJabatan = () => {
        const id_jabatan_default = $('#id_jabatan').data('default');
        const id_perusahaan_default = $('#id_perusahaan').data('default');

        const id_perusahaan = $('#id_perusahaan');
        const id_jabatan = $('#id_jabatan');

        $.ajax({
          url: "<?= base_url() ?>profile/getjabatan",
          type: "post",
          data: {
            id_perusahaan: id_perusahaan.val()
          },
          success: function(response) {
            if (response.length) {
              let html = ``;
              response.forEach(e => {
                let selected = (e.id == id_jabatan_default && id_perusahaan.val() == id_perusahaan_default) ? "selected" : "";
                html += `<option value="${e.id}" ${selected}>${e.nama}</option>`;
              });
              id_jabatan.html(html);
            } else {
              id_jabatan.html("");
            }
          },
          error: function(jqXHR, textStatus, errorThrown) {
            console.log(textStatus, errorThrown);
          }
        });
      }
      refreshJabatan();

      // refresh jabatan ketika perusahaan dipilih
      $('#id_perusahaan').on('change', () => {
        refreshJabatan();
      });

      // Fungsi form submti ditekan
      $('#user-data').submit(function(e) {
        e.preventDefault();
        var file_data = $('#img-input').prop('files')[0];
        var form_data = new FormData();
        form_data.append('file', file_data);
        $.ajax({
          url: '<?php echo site_url("profile/imgUpload") ?>', // point to server-side PHP script
          dataType: 'json', // what to expect back from the PHP script, if anything
          cache: false,
          contentType: false,
          processData: false,
          data: form_data,
          type: 'post',
          success: function(data, status) {
            //alert(php_script_response); // display response from the PHP script, if any
            if (data.status != 'error') {
              $('#gambar').val('');
              alert(data.msg);
            } else {
              alert(data.msg);
            }
          }
        });
      });

    });
  </script>
</body>

</html>