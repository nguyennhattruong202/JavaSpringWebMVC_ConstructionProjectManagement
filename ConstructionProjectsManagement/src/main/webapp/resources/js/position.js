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
            "description": document.getElementById("textareaAddDescriptionPosition").value
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
function updatePosition2(endpoint, url) {
    event.preventDefault();
    var data = {};
    $.each($('#formSubmit').serializeArray(), function (i, v) {
        data["" + v.name + ""] = v.value;
    });
    ajaxUpdate(data, endpoint, url);
    console.log($('#formSubmit').serializeArray());
}
;
function ajaxUpdate(data, endpoint, url) {
    $.ajax({
        url: endpoint,
        type: 'PUT',
        contentType: 'application/json',
        data: JSON.stringify(data),
        dataType: 'json',
        success: function (result) {
            window.location = url;
        },
        error: function (error) {
            window.location = url;
        }
    });
}
;