$(document).ready(function () {
    Loader();
    $.ajax({
        method: 'post',
        url: base_url + 'rab/clc/getlistdatarabs',
        data: null
    }).done((data) => {
        const body = $("#list-body");
        data.forEach(element => {
            body.append(`
            <li class="p-3 offline">
            <a class="d-flex list-rabs" href="#" data-id="${element.id}" onclick="event.preventDefault();handleListRabs(this);">
                <div class="chat-user-info">
                    <h6 class="text-truncate mb-0">${element.kode}</h6>
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
            $.failMessage('Gagal ditambahkan.', 'Data RAB')
        }).
        always(() => {
            Loader(false);
        })


})
function handleListRabs(data) {
    $("#modal").modal("toggle");
}