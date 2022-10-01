/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */

function getProjects(endpoint) {
    fetch(endpoint).then(function (res) {
        return res.json();
    }).then(function (data) {
        let msg = "";
        for (let i = 0; i < data.length; i++) {
            msg +=
                    `
                <tr>
                            <td>${data[i][0]}</td>
                            <td>${data[i][1]}</td>
                            <td>${data[i][2]}</td>
                            <td>${data[i][3]}</td>
                            <td>${data[i][4]}</td>
                            <td>${data[i][5]}</td>
                            <td>
                                <span class="badge rounded-pill bg-primary">${data[i][6]}</span>
                            </td>
                            <td>
                                <span class="badge rounded-pill bg-primary">${data[i][7]}</span>
                            </td>
                            <td>${data[i][8]}</td>
                            <td>
                                <a href="#" class="text-decoration-none me-2">
                                    <i class="fas fa-eye"></i>
                                </a>
                                <a href="#" class="text-decoration-none">
                                    <i class="fas fa-trash text-danger"></i>
                                </a>
                            </td>
                        </tr>
    `;
        }

        let d = document.getElementById("tbodyGetProjects");
        d.innerHTML = msg;
    });
}
;

