$(document).ready(function () {

    function dynamic() {
        Loader();
        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getlistdatarabs',
            data: null
        }).done((data) => {
            const body = $("#list-body");
            body.empty();
            data.forEach(element => {
                body.append(`
                <li class="p-3 offline">
                <a class="d-flex list-rabs w-100" href="#" data-id="${element.id}" onclick="event.preventDefault();handleListRabs(this);">
                    <div class="chat-user-info">
                        <h6 class="text-truncate mb-0">${element.kode} | (RM ${format_ringgit(element.total_harga_ringgit)})</h6>
                        <div class="last-chat">
                            <p class="text-truncate mb-0"> ${element.nama}</p>
                        </div>
                    </div>
                </a>
            </li>
                `);
            });
        })
            .fail(($xhr) => {
                setToast('danger', 'danger', 'Failed', 'Data gagal mendapatkan data');
            }).
            always(() => {
                Loader(false);
            })
    }

    dynamic();
    // import submit
    $('#form-import').submit(function (ev) {
        ev.preventDefault();
        const formData = new FormData(this);
        $.ajax({
            type: 'POST',
            url: base_url + 'rab/clc/importFromExcel',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data) {
                if (data.code == 0) {
                    setToast('success', 'primary', 'Success', 'Data Berhasil di import');
                    $("#file").empty();
                } else {
                    setToast('danger', 'danger', 'Failed', 'Data gagal di import');
                }
                $("#importModal").modal('toggle');
                dynamic();
            },
            error: function (data) {
                setToast('danger', 'danger', 'Failed', 'Data gagal di import');
                $("#importModal").modal('toggle');
            }
        });
    })
    // ubah submit
    $('#form').submit(function (ev) {
        ev.preventDefault();
        const formData = new FormData(this);
        $.ajax({
            type: 'POST',
            url: base_url + 'rab/clc/update',
            data: formData,
            cache: false,
            contentType: false,
            processData: false,
            success: function (data) {
                setToast('success', 'primary', 'Success', 'Data Berhasil di ubah');
                $("#modal").modal('toggle');
                dynamic();
            },
            error: function (data) {
                setToast('danger', 'danger', 'Failed', 'Data gagal di ubah');
                $("#modal").modal('toggle');
            }
        });
    })

    const refreshTotal = () => {
        const harga_ringgit = parseFloat($("#val_harga_ringgit").val());
        const harga_rupiah = parseFloat($("#val_harga_rupiah").val());
        const jumlah_1 = Number($("#jumlah_1").val())
        const jumlah_2 = Number($("#jumlah_2").val())
        const jumlah_3 = Number($("#jumlah_3").val())
        const jumlah_4 = Number($("#jumlah_4").val())

        const rupiah_total = harga_rupiah * jumlah_1 * jumlah_2 * jumlah_3 * jumlah_4;
        const ringgit_total = harga_ringgit * jumlah_1 * jumlah_2 * jumlah_3 * jumlah_4;

        // view value
        $("#total_harga_ringgit").val('RM ' + format_ringgit(ringgit_total.toFixed(2)))
        $("#total_harga_rupiah").val('Rp ' + format_rupiah(rupiah_total.toFixed(2)))

        // value send
        $("#val_total_harga_ringgit").val(ringgit_total)
        $("#val_total_harga_rupiah").val(rupiah_total)
    }

    $('#harga_ringgit').on('change', function () {
        const value = this.value || 0;
        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getkurs',
            data: {
                ringgit: value,
            },
        }).done((data) => {
            // let data = JSON.parse(data);
            let harga_ringgit = value;

            $("#harga_ringgit").val(value)
            $("#harga_rupiah").val(data.rupiah)

            $("#val_harga_ringgit").val(value)
            $("#val_harga_rupiah").val(data.rupiah)

            $("#total_harga_ringgit").val('RM ' + format_ringgit(value))
            $("#total_harga_rupiah").val('Rp ' + format_rupiah(data.rupiah))

            $("#val_total_harga_ringgit").val(harga_ringgit)
            $("#val_total_harga_rupiah").val(data.rupiah)
            refreshTotal();
        }).fail(($xhr) => {
            // console.log($xhr)
        })
    })

    $('#jumlah_1').on('change', function () {
        refreshTotal();
    })

    $('#jumlah_2').on('change', function () {
        refreshTotal();
    })

    $('#jumlah_3').on('change', function () {
        refreshTotal();
    })

    $('#jumlah_4').on('change', function () {
        refreshTotal();
    })
})
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
function handleListRabs(data) {
    $("#modal").modal("toggle");
    $.ajax({
        type: 'post',
        url: base_url + 'rab/clc/getDataDetail',
        data: {
            id: data.dataset.id
        }
    }).done(function (data) {
        $("#kode").val(data.kode);
        $("#nama").val(data.nama);
        $("#id_rabs").val(data.id);
        $("#id_cabang").val(id_cabang);
        $("#harga_ringgit").val(data.harga_ringgit);
        $("#val_harga_ringgit").val(data.harga_ringgit);
        $("#harga_rupiah").val(data.harga_rupiah);
        $("#val_harga_rupiah").val(data.harga_rupiah);
        $("#jumlah_1").val(data.jumlah_1);
        $("#satuan_1").val(data.satuan_1);
        $("#jumlah_2").val(data.jumlah_2);
        $("#satuan_2").val(data.satuan_2);
        $("#jumlah_3").val(data.jumlah_3);
        $("#satuan_3").val(data.satuan_3);
        $("#jumlah_4").val(data.jumlah_4);
        $("#satuan_4").val(data.satuan_4);
        $("#total_harga_ringgit").val("RM " + format_ringgit(data.total_harga_ringgit));
        $("#val_total_harga_ringgit").val(data.total_harga_ringgit);
        $("#total_harga_rupiah").val("Rp " + format_rupiah(data.total_harga_rupiah));
        $("#val_total_harga_rupiah").val(data.total_harga_rupiah);
        $("#keterangan").val(data.keterangan);
        if (data.fungsi == 0) {
            // $("#kode").removeAttr('readonly');
            // $("#nama").removeAttr('readonly');
            // $("#harga_ringgit").removeAttr('readonly');
            // $("#jumlah_1").removeAttr('readonly');
            // $("#satuan_1").removeAttr('readonly');
            // $("#jumlah_2").removeAttr('readonly');
            // $("#satuan_2").removeAttr('readonly');
            // $("#jumlah_3").removeAttr('readonly');
            // $("#satuan_3").removeAttr('readonly');
            // $("#jumlah_4").removeAttr('readonly');
            // $("#satuan_4").removeAttr('readonly');
            // $("#keterangan").removeAttr('readonly');
            // $("#btn-submit-ubah").removeAttr('disabled');
        } else {
            // $("#kode").attr('readonly', '');
            // $("#nama").attr('readonly', '');
            // $("#harga_ringgit").attr('readonly', '');
            // $("#jumlah_1").attr('readonly', '');
            // $("#satuan_1").attr('readonly', '');
            // $("#jumlah_2").attr('readonly', '');
            // $("#satuan_2").attr('readonly', '');
            // $("#jumlah_3").attr('readonly', '');
            // $("#satuan_3").attr('readonly', '');
            // $("#jumlah_4").attr('readonly', '');
            // $("#satuan_4").attr('readonly', '');
            // $("#keterangan").attr('readonly', '');
            // $("#btn-submit-ubah").attr('disabled', '');
        }
        $("#kode").attr('readonly', '');
        $("#nama").attr('readonly', '');
        $("#harga_ringgit").attr('readonly', '');
        $("#jumlah_1").attr('readonly', '');
        $("#satuan_1").attr('readonly', '');
        $("#jumlah_2").attr('readonly', '');
        $("#satuan_2").attr('readonly', '');
        $("#jumlah_3").attr('readonly', '');
        $("#satuan_3").attr('readonly', '');
        $("#jumlah_4").attr('readonly', '');
        $("#satuan_4").attr('readonly', '');
        $("#keterangan").attr('readonly', '');
        $("#btn-submit-ubah").attr('disabled', '');
    }).fail(function (data) {
        console.log(data);
    })

}