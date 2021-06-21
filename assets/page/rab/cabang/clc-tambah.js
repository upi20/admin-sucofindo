$(document).ready(function () {
    console.log("okey");
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

    $('#id_aktifitas').on('change', () => {
        let id_aktifitas = $('#id_aktifitas').val()

        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getAktifitasSub',
            data: {
                id_aktifitas: id_aktifitas
            },
        }).done((data) => {
            $('#id_aktifitas_sub').html('<option value="">--Pilih Sub Aktifitas--</option>')

            $.each(data, (value, key) => {
                $('#id_aktifitas_sub').append("<option value='" + key.id + "'>" + key.kode + " - " + key.uraian + "</option>")
                $('#id_aktifitas_cabang').empty();
                $('#kode_isi_1').empty();
                $('#kode_isi_2').empty();
            })

        }).fail(($xhr) => {
            console.log($xhr)
        })
    })

    $('#id_aktifitas_sub').on('change', () => {
        let id_aktifitas_sub = $('#id_aktifitas_sub').val()
        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getAktifitasCabang',
            data: {
                id_aktifitas_sub: id_aktifitas_sub
            },
        }).done((data) => {
            $('#id_aktifitas_cabang').html('<option value="">--Pilih Sub Aktifitas--</option>')

            $.each(data, (value, key) => {
                $('#id_aktifitas_cabang').append("<option value='" + key.id + "'>" + key.kode + " - " + key.nama + "</option>")
            })
            $('#kode_isi_1').empty();
            $('#kode_isi_2').empty();
        }).fail(($xhr) => {
            console.log($xhr)
        })

        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getKodeCabang',
            data: {
                id_aktifitas_sub: id_aktifitas_sub
            },
        }).done((data) => {
            let detail = data.kode.split('.')
            var tamp = Number(detail[2]) + 1
            let kode = detail[0] + '.' + detail[1] + '.' + tamp
            $("#kode").val(kode)
        }).fail(($xhr) => {
            console.log($xhr)
        })
    })

    $('#id_aktifitas_cabang').on('change', () => {
        let id_aktifitas_cabang = $('#id_aktifitas_cabang').val()

        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getAktifitasCabangKodeIsi1',
            data: {
                id_aktifitas_cabang: id_aktifitas_cabang
            },
        }).done((data) => {
            $('#kode_isi_1').html('<option value="">--Pilih Sub Aktifitas--</option>')

            $.each(data, (value, key) => {
                $('#kode_isi_1').append("<option value='" + key.id + "'>" + key.kode + " - " + key.nama + "</option>")
            })

            $.ajax({
                method: 'post',
                url: base_url + 'rab/clc/getKodeCabangKodeIsi1',
                data: {
                    id_aktifitas_cabang: id_aktifitas_cabang
                },
            }).done((data) => {
                let detail = data.kode.split('.')
                var tamp = Number(detail[3]) + 1
                let kode = detail[0] + '.' + detail[1] + '.' + detail[2] + '.' + tamp
            }).fail(($xhr) => {
                console.log($xhr)
            })
            $("#kode").val(kode)
            $('#kode_isi_2').empty();
        }).fail(($xhr) => {
            console.log($xhr)
        })
    })

    $('#kode_isi_1').on('change', () => {
        let kode_isi_1 = $('#kode_isi_1').val()

        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getAktifitasCabangKodeIsi2',
            data: {
                kode_isi_1: kode_isi_1
            },
        }).done((data) => {
            $('#kode_isi_2').html('<option value="">--Pilih Sub Aktifitas--</option>')

            $.each(data, (value, key) => {
                $('#kode_isi_2').append("<option value='" + key.id + "'>" + key.kode + " - " + key.nama + "</option>")
            })

            $.ajax({
                method: 'post',
                url: base_url + 'rab/clc/getKodeCabangKodeIsi2',
                data: {
                    kode_isi_1: kode_isi_1
                },
            }).done((data) => {
                let detail = data.kode.split('.')
                var tamp = Number(detail[4]) + 1
                let kode = detail[0] + '.' + detail[1] + '.' + detail[2] + '.' + detail[3] + '.' + tamp
                $("#kode").val(kode)
            }).fail(($xhr) => {
                console.log($xhr)
            })

        }).fail(($xhr) => {
            console.log($xhr)
        })
    })

    $('#kode_isi_2').on('change', () => {
        let kode_isi_2 = $('#kode_isi_2').val()

        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/getAktifitasCabangKodeIsi3',
            data: {
                kode_isi_2: kode_isi_2
            },
        }).done((data) => {
            $('#kode_isi_3').html('<option value="">--Pilih Sub Aktifitas--</option>')

            $.each(data, (value, key) => {
                $('#kode_isi_3').append("<option value='" + key.id + "'>" + key.kode + " - " + key.nama + "</option>")
            })

            $.ajax({
                method: 'post',
                url: base_url + 'rab/clc/getKodeCabangKodeIsi3',
                data: {
                    kode_isi_2: kode_isi_2
                },
            }).done((data) => {
                console.log(data);
                let detail = data.kode.split('.')
                var tamp = Number(detail[5]) + 1
                let kode = detail[0] + '.' + detail[1] + '.' + detail[2] + '.' + detail[3] + '.' + detail[4] + '.' + tamp
                $("#kode").val(kode)
            }).fail(($xhr) => {
                console.log($xhr)
            })
        }).fail(($xhr) => {
            console.log($xhr)
        })
    })

    $('#kode_isi_3').on('change', () => {

    })

    function getKode() {
        // body...
        $.ajax({
            method: 'post',
            url: base_url + 'rab/aktifitas/getIdPengkodeans',
            data: null,
        }).done((data) => {

            if (data.id == null) {
                $('#id_pengkodeans').html('');
                $('#kode_').val('1');
            } else {
                $('#kode_').val(data.id);
                $("#id_pengkodeans").html('<option value="" disable>Pilih pengkodean</option>');
                $.ajax({
                    method: 'post',
                    url: base_url + 'rab/aktifitas/getDataPengkodeans',
                    data: null,
                }).done((data2) => {
                    for (var i = 0; i < data2.length; i++) {
                        $("#id_pengkodeans").append('<option value="' + data2[i].id + '">' + data2[i].kode + ' ' + data2[i].uraian + '</option>');
                    }
                })
            }
        }).fail(($xhr) => {
            console.log($xhr)
        })
    }

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

    $.ajax({
        method: 'post',
        url: base_url + 'rab/clc/getAktifitas',
        data: null,
    }).done((data) => {
        $('#id_aktifitas').html('<option value="">--Pilih Aktifitas--</option>')

        $.each(data, (value, key) => {
            $('#id_aktifitas').append("<option value='" + key.id + "'>" + key.kode + " - " + key.uraian + "</option>")
        })

    }).fail(($xhr) => {
        console.log($xhr)
    })

    // Fungsi simpan
    $('#form').submit((ev) => {
        ev.preventDefault()

        let id = $('#id').val()
        let id_cabang = $('#id_cabang').val()
        let id_aktifitas = $('#id_aktifitas').val()
        let id_aktifitas_sub = $('#id_aktifitas_sub').val()
        let id_aktifitas_cabang = $('#id_aktifitas_cabang').val()
        let kode = $('#kode').val()
        let kode_isi_1 = $('#kode_isi_1').val()
        let kode_isi_2 = $('#kode_isi_2').val()
        let kode_isi_3 = $('#kode_isi_3').val()

        if (kode_isi_1 == null || kode_isi_1 == '') {
            kode_isi_1 = '0'
        }

        if (kode_isi_2 == null || kode_isi_2 == '') {
            kode_isi_2 = '0'
        }

        if (kode_isi_3 == null || kode_isi_3 == '') {
            kode_isi_3 = '0'
        }

        let nama = $('#nama').val()
        let satuan_1 = $('#satuan_1').val()
        let satuan_2 = $('#satuan_2').val()
        let satuan_3 = $('#satuan_3').val()
        let satuan_4 = $('#satuan_4').val()
        let harga_ringgit = $('#val_harga_ringgit').val()
        let harga_rupiah = $('#val_harga_rupiah').val()
        let jumlah_1 = $('#jumlah_1').val()
        let jumlah_2 = $('#jumlah_2').val()
        let jumlah_3 = $('#jumlah_3').val()
        let jumlah_4 = $('#jumlah_4').val()
        let total_harga_ringgit = $('#val_total_harga_ringgit').val()
        let total_harga_rupiah = $('#val_total_harga_rupiah').val()
        let prioritas = $('#prioritas').val()
        let status = $('#status').val()
        let keterangan = $('#keterangan').val()

        Loader();
        $.ajax({
            method: 'post',
            url: base_url + 'rab/clc/insert',
            data: {
                id_cabang: id_cabang,
                id_aktifitas: id_aktifitas,
                id_aktifitas_sub: id_aktifitas_sub,
                id_aktifitas_cabang: id_aktifitas_cabang,
                kode: kode,
                kode_isi_1: kode_isi_1,
                kode_isi_2: kode_isi_2,
                kode_isi_3: kode_isi_3,
                nama: nama,
                jumlah_1: jumlah_1,
                satuan_1: satuan_1,
                jumlah_2: jumlah_2,
                satuan_2: satuan_2,
                jumlah_3: jumlah_3,
                satuan_3: satuan_3,
                jumlah_4: jumlah_4,
                satuan_4: satuan_4,
                harga_ringgit: harga_ringgit,
                harga_rupiah: harga_rupiah,
                total_harga_ringgit: total_harga_ringgit,
                total_harga_rupiah: total_harga_rupiah,
                prioritas: prioritas,
                status: status,
                keterangan: keterangan
            }
        }).done((data) => {

            setToast('success', 'primary', 'Success', 'Data Berhasil Ditambahkan');
            $('#id_aktifitas').val('')
            $('#kode').val('')
            $('#kode_isi_1').val('')
            $('#kode_isi_2').val('')
            $('#kode_isi_3').val('')
            $('#nama').val('')
            $('#jumlah_1').val(1)
            $('#satuan_1').val('')
            $('#jumlah_2').val(1)
            $('#satuan_2').val('')
            $('#jumlah_3').val(1)
            $('#satuan_3').val('')
            $('#jumlah_4').val(1)
            $('#satuan_4').val('')
            $('#harga_ringgit').val('')
            $('#harga_rupiah').val('')
            $('#total_harga_ringgit').val('')
            $('#total_harga_rupiah').val('')
            $('#prioritas').val('')
            $('#status').val('')
        })
            .fail(($xhr) => {
                setToast('danger', 'danger', 'Failed', 'Data gagal ditambahkan');
            }).
            always(() => {
                Loader(false);
            })
    })
});