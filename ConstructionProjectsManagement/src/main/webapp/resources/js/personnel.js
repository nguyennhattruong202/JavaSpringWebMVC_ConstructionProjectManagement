/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */

function selectSearchBy() {
    var selectInput = document.getElementById("searchSelect");
    if (selectInput.value === '1') {
        document.getElementById("nameSearch").style.display = "block";
        document.getElementById("emailSearch").style.display = "none";
        document.getElementById("phoneSearch").style.display = "none";
    } else if (selectInput.value === '2') {
        document.getElementById("nameSearch").style.display = "none";
        document.getElementById("emailSearch").style.display = "none";
        document.getElementById("phoneSearch").style.display = "block";
    } else if (selectInput.value === '3') {
        document.getElementById("nameSearch").style.display = "none";
        document.getElementById("emailSearch").style.display = "block";
        document.getElementById("phoneSearch").style.display = "none";
    } else {
        document.getElementById("emailSearch").style.display = "none";
        document.getElementById("phoneSearch").style.display = "none";
        document.getElementById("nameSearch").style.display = "none";
    }
};
/*
function loadPersonnel(endpoint) {
    fetch(endpoint).then(function(res){
        return res.json();
    }).then(function(data){
        let msg = "";
        for (let i = 0; i < data.length; i++){
            msg +=
                `<tr class="align-middle">
                    <td>
                        <input class="form-check-input" type="checkbox">
                    </td>
                    <td>${data[i][0]}</td>
                    <td>
                        <img src="${data[i][1]}" alt="userAvatar" class="rounded-circle shadow rounded" width="40" height="40">
                    </td>
                    <td>${data[i][2]}</td>
                    <td>${data[i][3]}</td>
                    <td>${data[i][4]}</td>
                    <td>${data[i][5]}</td>
                    <td>${data[i][6]}</td>
                    <td>${data[i][7]}</td>
                    <td>${data[i][9]}</td>
                    <td>
                        <a class="btn btn-outline-primary btn-sm">
                            <i class="bi bi-pencil-square"></i>
                        </a>
                        <a class="btn btn-outline-danger btn-sm">
                            <i class="fa fa-trash"></i>
                        </a>
                    </td>
                </tr>`;
        };
        let d = document.getElementById("listPersonnel");
        d.innerHTML = msg;
    });
};
 */
