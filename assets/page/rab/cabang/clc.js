$(document).ready(function () {
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

    $("#dataTable").dataTable().fnDestroy();
    $("#dataTable").DataTable({
        "ajax": {
            "url": base_url + "rab/clc/ajax_data/",
            "data": null,
            "type": 'POST'
        },
        "scrollX": true,
        "processing": true,
        "serverSide": false,
        "columns": [
            { "data": "kodes" },
            { "data": "nama_aktifitas", className: "nowrap" },
            { "data": "jumlah_1" },
            { "data": "satuan_1" },
            { "data": "jumlah_2" },
            { "data": "satuan_2" },
            { "data": "jumlah_3" },
            { "data": "satuan_3" },
            { "data": "jumlah_4" },
            { "data": "satuan_4" },
            {
                "data": "harga_ringgit", render(data, type, full, meta) {
                    return '<p style="text-align:right">' + format_ringgit(data) + '<p>';
                }
            },
            {
                "data": "harga_rupiah", render(data, type, full, meta) {
                    return '<p style="text-align:right">' + format_rupiah(data) + '<p>';
                }
            },
            {
                "data": "total_harga_ringgit", render(data, type, full, meta) {
                    return '<p style="text-align:right">' + format_ringgit(data) + '<p>';
                }
            },
            {
                "data": "total_harga_rupiah", render(data, type, full, meta) {
                    return '<p style="text-align:right">' + format_rupiah(data) + '<p>';
                }
            },
            { "data": "keterangan" },
            {
                "data": "id", render(data, type, full, meta) {
                    if (full.fungsi == 0) {
                        return `<div class="pull-right">
                                    <button class="btn btn-primary btn-sm" onclick="Ubah(${data})">
                                        <i class="fa fa-edit"></i> Ubah
                                    </button>
                                    <button class="btn btn-danger btn-sm" onclick="Hapus(${data})">
                                        <i class="fa fa-trash"></i> Hapus
                                    </button>
                                </div>`
                    } else {
                        return `-`
                    }
                }, className: "nowrap"
            }
        ],
        "aoColumnDefs": [
            { 'bSortable': false, 'aTargets': ["no-sort"] }
        ]
    });
});