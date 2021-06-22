window.onscroll = function () {
    myFunction()
};
const header = document.getElementById("myHeader");
const sticky = header.offsetTop;
const sticky_container = document.getElementById("check-all-container");
const tab_main = document.getElementById("tab-main");

function myFunction() {
    if (window.pageYOffset > sticky + 30) {
        header.classList.add("sticky");
        header.classList.add("shadow-sm");
        sticky_container.classList.add("bg-secondary");
        sticky_container.classList.add("text-light");
        tab_main.classList.add("mb-5");
    } else {
        header.classList.remove("sticky");
        header.classList.remove("shadow-sm");
        sticky_container.classList.remove("bg-secondary");
        sticky_container.classList.remove("text-light");
        tab_main.classList.remove("mb-5");
    }
}

let id_rab_send = [];
let ringgit_send = [];
let rupiah_send = [];
let jumlah_ringgit_send = 0;
let jumlah_rupiah_send = 0;

function handleSetAllCheckbox(data) {
    $(".check").prop("checked", data.checked);
    setBtnUbah();
}

$(document).ready(function () {
    function dynamic() {
        // Loader();
        $.ajax({
            method: 'post',
            url: base_url + 'realisasi/realisasi/ajax_data',
            data: {
                npsn: npsn
            }
        }).done((data) => {
            const body = $("#list-body");
            body.empty();
            data.data.forEach(element => {
                let status = '';
                if (element.id_realisasi) {
                    status = '<button class="btn btn-warning btn-sm m-1" type="button">Detail</button>';
                } else {
                    status = `<input class="form-check-input me-2 check" id="listCheckbox${element.id}" type="checkbox" value="" style="width: 25px; height: 25px; margin-right: 10px;"
                    data-id_rab="${element.id}"
                    data-ringgit="${element.total_harga_ringgit}"
                    data-uraian="${element.nama_aktifitas}"
                    data-kode="${element.kodes}"
                    data-rupiah="${element.total_harga_rupiah}">`;
                }
                body.append(`
                <label class="list-group-item d-flex" for="listCheckbox${element.id}">
                ${status}
                <div class="chat-user-info">
                    <h6 class="text-truncate mb-0" style="font-size: 1em;">${element.kode} | (RM ${format_ringgit(element.total_harga_ringgit)})</h6>
                    <div class="last-chat">
                        <p class="text-truncate mb-0" style="font-size: 1em;"> ${element.nama_aktifitas}</p>
                    </div>
                </div>
            </label>
                `);
            });

            $(".check").on('change', function () {
                setBtnUbah();
            });
        })
            .fail(($xhr) => {
                $.failMessage('Gagal ditambahkan.', 'Data RAB')
            }).
            always(() => {
                Loader(false);
            })
    }
    dynamic();


    $("#form").submit(function (ev) {
        ev.preventDefault();
        id_rab_send = [];
        ringgit_send = [];
        rupiah_send = [];
        let jml_ringgit = 0;
        let jml_rupiah = 0;

        let html_uraian = ``;

        let dataOk = false;

        $(".check").each(function () {
            if (this.checked) {
                dataOk = true;
                id_rab_send.push(this.dataset.id_rab);
                ringgit_send.push(this.dataset.ringgit);
                rupiah_send.push(this.dataset.rupiah);

                jml_ringgit += Number(this.dataset.ringgit);
                jml_rupiah += Number(this.dataset.rupiah);

                jumlah_ringgit_send = jml_ringgit;
                jumlah_rupiah_send = jml_rupiah;

                html_uraian += `
                    <label class="list-group-item d-flex">
                    <div class="chat-user-info">
                    <h6 class="text-truncate mb-0" style="font-size: 1em;">${this.dataset.kode} | (RM ${format_ringgit(jml_ringgit)})</h6>
                    <div class="last-chat">
                    <p class="text-truncate mb-0" style="font-size: 1em;"> ${this.dataset.uraian}</p>
                    </div>
                    </div>
                    </label>
                `;
            }
        });
        if (dataOk) {
            $("#belanja-harga-ringgit").val(jml_ringgit)
            $("#belanja-harga-rupiah").val(jml_rupiah)
            $("#belanja-text-total-ringgit").val('RM ' + format_ringgit(jml_ringgit))
            $("#belanja-text-total-rupiah").val('Rp ' + format_rupiah(jml_rupiah))
            $("#modal-uraian").html(html_uraian);
            $("#fullscreenModal").modal("toggle");
        } else {
            setToast('danger', 'danger', 'Failed', 'Belum ada data yang dipilih');
        }
    })

    $('#belanja-text-harga-ringgit').on('change', function () {
        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getkurs',
            data: {
                ringgit: this.value,
            },
        }).done((data) => {
            $("#belanja-harga-ringgit").val(this.value)
            $("#belanja-text-harga-ringgit").val('RM ' + format_ringgit(this.value, false))
            $("#belanja-harga-rupiah").val(data.rupiah)
            $("#belanja-text-harga-rupiah").val('Rp ' + format_rupiah(data.rupiah, false))
        }).fail(($xhr) => {
            console.log($xhr)
        })

    })


    $('#form-belanja').submit(function (evt) {
        evt.preventDefault();

        var formData = new FormData(this);
        let id = $('#form input[name=id]').val();
        $.ajax({
            type: 'POST',
            url: base_url + 'realisasi/realisasi/insertUpload',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success: function (gambar) {
                const real_ringgit = $("#belanja-harga-ringgit").val();
                const real_rupiah = $("#belanja-harga-rupiah").val();
                $.ajax({
                    type: 'POST',
                    url: base_url + 'realisasi/realisasi/insert',
                    data: {
                        data: JSON.stringify({
                            gambar: gambar.name,
                            id_rab: id_rab_send,
                            id_cabang: id_cabang,
                            nama: "Dibayarkan Kepada " + $("#belanja-nama").val() + " Untuk " + $("#belanja-nama1").val(),
                            keterangan: $("#belanja-keterangan").val(),
                            ringgit: real_ringgit,
                            rupiah: real_rupiah,
                            tanggal: $("#belanja-tanggal").val(),
                            ringgit_rab: ringgit_send,
                            rupiah_rab: rupiah_send,
                            sisa_ringgit: Number(jumlah_ringgit_send) - Number(real_ringgit),
                            sisa_rupiah: Number(jumlah_rupiah_send) - Number(real_rupiah)
                        })
                    },
                    success: function (data) {
                        // console.log(data);
                        // $("#dt_basic").dataTable().fnDestroy();
                        // $.doneMessage('Berhasil ditambahkan.', 'Belanja')
                        // let npsn = $("#val-npsn").val()
                        // dynamic(npsn);
                        // $('#imageUploadForm input[name=id]').val(0);
                        // $('#nama').val('');
                        // $('#keterangan').val('');
                        // $('#file').val('');
                        // $('#harga_ringgit').val('');
                        // $('#harga_rupiah').val('');
                        setToast('success', 'primary', 'Success', 'Data Berhasil Diubah');
                        $('#fullscreenModal').modal('toggle');
                        dynamic();
                        // location.reload();
                    },
                    error: function (data) {
                        setToast('danger', 'danger', 'Failed', 'Data Gagal Dibuah');
                        $('#fullscreenModal').modal('toggle');
                        dynamic();
                        // location.reload();
                    }
                });
            },
            error: function (data) {
                setToast('danger', 'danger', 'Failed', 'Data Gagal Dibuah');
                $('#fullscreenModal').modal('toggle');
                dynamic();
            }
        });

    });
})


function setBtnUbah() {

    let submitOk = false;
    let checkAll = true;
    $(".check").each(function () {
        if (this.checked) submitOk = true;
        if (!this.checked) checkAll = false;

    });
    if (submitOk) {
        $("#btn-ubah").removeAttr("disabled");
    } else {
        $("#btn-ubah").attr("disabled", "");
    }
    $("#check-all").prop('checked', checkAll);
}

function format_ringgit(angka, format = 2, prefix) {
    angka = angka.toString().split('.');
    let suffix = angka[1] ? '.' + angka[1] : '';
    if (format) {
        let str = '';
        for (let i = 0; i <= format; i++) {
            const suffix_1 = suffix[i] ? suffix[i] : '';
            str = `${str}${suffix_1}`;
        }
        suffix = str;
    }

    angka = angka[0];
    if (angka[0]) {
        let number_string = angka.toString().replace(/[^,\d]/g, '').toString(),
            split = number_string.split(','),
            sisa = split[0].length % 3,
            rupiah = split[0].substr(0, sisa),
            ribuan = split[0].substr(sisa).match(/\d{3}/gi)

        // tambahkan titik jika yang di input sudah menjadi angka ribuan
        if (ribuan) {
            separator = sisa ? ',' : ''
            rupiah += separator + ribuan.join(',')
        }

        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah
        const result = prefix == undefined ? rupiah : (rupiah ? '' + rupiah : '')
        return result + suffix;
    }
    else {
        return 0
    }
}
function format_rupiah(angka, format = 2, prefix) {
    angka = angka.toString().split('.');
    let suffix = angka[1] ? '.' + angka[1] : '';

    if (format) {
        let str = '';
        for (let i = 0; i <= format; i++) {
            const suffix_1 = suffix[i] ? suffix[i] : '';
            str = `${str}${suffix_1}`;
        }
        suffix = str;
    }

    angka = angka[0];
    if (angka) {
        let number_string = angka.toString().replace(/[^,\d]/g, '').toString(),
            split = number_string.split(','),
            sisa = split[0].length % 3,
            rupiah = split[0].substr(0, sisa),
            ribuan = split[0].substr(sisa).match(/\d{3}/gi)

        // tambahkan titik jika yang di input sudah menjadi angka ribuan
        if (ribuan) {
            separator = sisa ? '.' : ''
            rupiah += separator + ribuan.join('.')
        }

        rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah

        // return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '')
        const result = prefix == undefined ? rupiah : (rupiah ? '' + rupiah : '');
        return result + suffix;
    }
    else {
        return 0
    }
}