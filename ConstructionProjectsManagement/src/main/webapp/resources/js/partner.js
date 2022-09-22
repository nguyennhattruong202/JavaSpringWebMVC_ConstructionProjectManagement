/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */

function removePartner(endpoint) {
    fetch(endpoint, {
        method: "get"
    }).then(function (res) {
        if (res.status === 200)
            location.reload();
    }).catch(function (err) {
        console.error(err);
    });
};

function loadAdminPartner(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let msg = "";
        for (let i = 0; i < data.length; i++) {
            msg +=
                `<tr class="align-middle">
                    <td>${data[i].id}</td>
                    <td>${data[i].name}</td>
                    <td>${data[i].phone}</td>
                    <td>${data[i].email}</td>
                    <td><a href="${data[i].website}" target="_blank">${data[i].website}</a></td>
                    <td>${data[i].country}</td>
                    <td>${data[i].type}</td>
                    <td class="text-center">
                        <a href="#" class="text-decoration-none me-1" data-bs-toggle="modal" data-bs-target="#viewPartnerModal${data[i].id}">
                            <i class="fas fa-eye"></i>
                        </a>
                        <a href="#" class="text-decoration-none me-1" data-bs-toggle="modal" data-bs-target="#editPartnerModal${data[i].id}">
                            <i class="fas fa-pen"></i>
                        </a>
                        <a onclick="removePartner('${endpoint + "/removed/" + data[i].id}')" href="#" class="text-decoration-none" data-bs-toggle="modal" data-bs-target="#confirmRemovePartnerModal${data[i].id}">
                            <i class="fas fa-trash-alt text-danger"></i>
                        </a>
                    </td>
                </tr>`;
        }

        let d = document.getElementById("tbodyPartner");
        d.innerHTML = msg;

    });
};