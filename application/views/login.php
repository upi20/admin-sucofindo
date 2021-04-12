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
  <!-- Preloader-->
  <div class="preloader d-flex align-items-center justify-content-center" id="preloader">
    <div class="spinner-grow text-primary" role="status">
      <div class="sr-only">Loading...</div>
    </div>
  </div>
  <!-- Internet Connection Status-->
  <div class="internet-connection-status" id="internetStatus"></div>
  <!-- Back Button-->

  <!-- Welcome Toast-->
  <div class="toast toast-autohide custom-toast-1 toast-danger home-page-toast" role="alert" aria-live="assertive" aria-atomic="true" data-bs-delay="10000" data-bs-autohide="true" style="display: none;">
    <div class="toast-body">
      <svg class="bi bi-bookmark-check text-white" width="30" height="30" viewBox="0 0 16 16" fill="currentColor" xmlns="../../www.w3.org/2000/svg.html" id="toast-icon">
        <path fill-rule="evenodd" d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.777.416L8 13.101l-5.223 2.815A.5.5 0 0 1 2 15.5V2zm2-1a1 1 0 0 0-1 1v12.566l4.723-2.482a.5.5 0 0 1 .554 0L13 14.566V2a1 1 0 0 0-1-1H4z">
        </path>
        <path fill-rule="evenodd" d="M10.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 1 1 .708-.708L7.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z">
        </path>
      </svg>
      <div class="toast-text ms-3 me-2">
        <p class="mb-1 text-white" id="toast-title"></p>
        <small class="d-block" id="toast-fill"></small>
      </div>
      <button class="btn btn-close btn-close-white position-relative p-1 ms-auto" type="button" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
  </div>

  <!-- Login Wrapper Area-->
  <div class="login-wrapper d-flex align-items-center justify-content-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-12 col-sm-9 col-md-7 col-lg-6 col-xl-5">
          <div class="text-center px-4"><img class="login-intro-img" src="<?= base_url() ?>assets/img/bg-img/img_sucofindo.png" alt=""></div>
          <!-- Register Form-->
          <div class="register-form mt-4 px-4">
            <h6 class="mb-3 text-center" style="color: #000000;">Log in to continue Admin Sucofindo</h6>

            <form id="login-form">
              <div class="form-group">
                <input class="form-control" type="email" placeholder="Email" name="email" id="email" style="color: #000000;">
              </div>
              <div class="form-group">
                <input class="form-control" type="password" placeholder="Password" name="password" id="password" style="color: #000000;">
              </div>
              <button class="btn btn-primary w-100" type="submit" style="background-color: #0036D3;border:none">Sign In</button>
            </form>

          </div>
          <!-- Login Meta-->
          <div class="login-meta-data text-center"><a class="stretched-link forgot-password d-block mt-3 mb-1" href="<?= base_url() ?>forgetpassword" style="color: black">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>
  </div>
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

  <!-- jquery validate -->
  <script src="<?= base_url() ?>assets/js/jquery.validate.min.js"></script>
  <!-- PWA-->
  <script src="<?= base_url() ?>assets/js/pwa.js"></script>

  <!-- harus di buat file -->
  <script>
    $(document).ready(function() {
      // inisialisasi toast bootstrap 5.
      function setToast(icon = 'info', color = '', title = '', fill = '') {

        // icon
        const toastIcon = {
          success: `
          path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
          <path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          `,
          danger: `
          <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
          <path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          `,
          info: `
          <path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z" />
          <path fill-rule="evenodd" d="M10.97 4.97a.75.75 0 0 1 1.071 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.236.236 0 0 1 .02-.022z" />
          `
        }

        // variable
        let el = $('.toast')[0];
        const toast = new bootstrap.Toast(el);
        el = $(el);

        // set toast color
        el.attr('class', 'toast toast-autohide custom-toast-1 home-page-toast toast-' + color);

        // set toast icon
        $("#toast-icon").html(toastIcon[icon]);

        // set toast title
        $("#toast-title").html(title);

        // set toast fill
        $("#toast-fill").html(fill);

        // show visibility toast
        el.removeAttr('style');

        // eksekusi
        toast.show();
      }

      // Validation
      $("#login-form").validate({
        // Rules for form validation
        rules: {
          email: {
            required: true,
            email: true
          },
          password: {
            required: true,
            minlength: 3,
            maxlength: 20
          }
        },

        // Messages for form validation
        messages: {
          email: {
            required: 'Please enter your email address',
            email: 'Please enter a VALID email address'
          },
          password: {
            required: 'Please enter your password'
          }
        },

        // Do not change code below
        errorPlacement: function(error, element) {
          error.insertAfter(element.parent());
        },

        // if succes
        submitHandler: function(form) {
          $.ajax({
            method: 'post',
            url: '<?= base_url() ?>login/doLogin',
            data: {
              email: form.email.value,
              password: form.password.value
            },
            success: function(response) {
              let view_alert = $("#view-alert");
              if (response == 1) {
                setToast('danger', 'danger', 'Failed', 'Sorry your password is wrong');

                $('#password').val('')

                $('#password').focus()
              } else if (response == 2) {
                setToast('danger', 'danger', 'Failed', 'Your account was not found');
                $('#email').val('')
                $('#password').val('')

                $('#email').focus()
              } else {
                setToast('success', 'primary', 'Success', 'Login success');

                setInterval(() => {
                  window.location.href = '<?= base_url() ?>home'
                }, 1000)
              }
            },
            error: function(jqXHR, textStatus, errorThrown) {
              alert(textStatus, errorThrown);
            }
          })
        }
      });
    });
  </script>
</body>

</html>