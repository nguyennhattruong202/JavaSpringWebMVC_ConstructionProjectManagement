/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global Swal, fetch */

function getListDepartment(listEndpoint, removedEndpoint) {
    fetch(listEndpoint).then(function (response) {
        return response.json();
    }).then(function (data) {
        let msg = '';
        for (let i of data) {
            msg += `
                        <tr>
                            <td>
                                <input type="checkbox" class="form-check">
                            </td>
                            <td>${i.id}</td>
                            <td>${i.name}</td>
                            <td>${i.description}</td>
                            <td>` + new Date(i.createdDate).toLocaleString('sv') + `</td>
                            <td class="text-center">
                                <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Xem danh sách nhân sự</a></li>
                                    <li><a class="dropdown-item" href="#">Sửa phòng ban</a></li>
                                    <li><a class="dropdown-item" href="#" onclick="swalConfirmRemoved('${removedEndpoint}?id=${i.id}')">Xóa phòng ban</a></li>
                                </ul>
                            </td>
                        </tr>`;
        }
        document.getElementById('tBodyDepartment').innerHTML = msg;
    });
}

function addDepartment(addEndpoint) {
    fetch(addEndpoint, {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify({
            name: document.querySelector('#name').value,
            description: document.querySelector('#description').value
        })
    }).then(function (response) {
        if (response.status === 201) {
            Swal.fire({
                icon: 'success',
                title: 'Thêm thành công',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                location.reload();
            });
        }
    }).catch(function () {
        swalError('Thêm thất bại');
    });
}

function swalConfirmRemoved(removedEndpoint) {
    Swal.fire({
        title: 'Bạn có chắc muốn xóa?',
        icon: 'info',
        showCancelButton: true,
        confirmButtonText: 'Xóa',
        cancelButtonText: 'Trở lại'
    }).then((result) => {
        if (result.isConfirmed) {
            removeDepartment(removedEndpoint);
        }
    });
}

function swalError(errorText) {
    Swal.fire({
        icon: 'error',
        title: errorText,
        showConfirmButton: false,
        timer: 1500
    });
}

function removeDepartment(removedEndpoint) {
    fetch(removedEndpoint, {
        method: "get"
    }).then(function (response) {
        if (response.status === 200) {
            Swal.fire({
                icon: 'success',
                title: 'Xóa thành công',
                showConfirmButton: false,
                timer: 1500
            }).then(function () {
                location.reload();
            });
        }
    }).catch(function () {
        swalError('Xóa thất bại');
    });
}

function findDepartment(listEndpoint, removedEndpoint){
    let d = document.getElementById('inputSearchDepartment').value;
    getListDepartment(listEndpoint+ '?keyword=' + d, removedEndpoint);
}