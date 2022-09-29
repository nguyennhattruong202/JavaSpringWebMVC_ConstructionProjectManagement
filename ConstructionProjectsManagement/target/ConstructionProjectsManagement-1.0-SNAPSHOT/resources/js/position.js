/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */

function removePosition(endpoint, url) {
    fetch(endpoint, {
        method: "get"
    }).then(function (res) {
        if (res.status === 200)
            window.location = url;
    }).catch(function (err) {
        console.error(err);
    });
}
;
function updatePosition(endpoint, positionId, url) {
    fetch(endpoint, {
        method: "put",
        body: JSON.stringify({
            "id": positionId,
            "name": document.getElementById("posDetailName").value,
            "description": document.getElementById("posDetailDescription").value
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        if (res.status === 200)
            window.location = url;
        return res.json();
    }).catch(function (err) {
        console.error(err);
    });
}
;
function addPosition(endpoint, url) {
    let inputNamePosition = document.getElementById("inputAddNamePosition").value;
    if (inputNamePosition === "" || inputNamePosition === null) {
        alert("Ten chuc vu khong duoc trong!");
        return;
    }
    fetch(endpoint, {
        method: "post",
        body: JSON.stringify({
            "name": inputNamePosition,
            "description": document.getElementById("inputAddDescriptionPosition").value
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        if (res.status === 201) {
            window.location = url;
        }
        return res.json();
    }).catch(function (err) {
        console.error(err);
    });
}
;