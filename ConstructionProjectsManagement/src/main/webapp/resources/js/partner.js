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
}
;
function updatePartner(endpoint) {
    let s = document.getElementById("typePartner");
    let sText = s.options[s.selectedIndex].text;
    fetch(endpoint, {
        method: "put",
        body: JSON.stringify({
            "id": document.getElementById("idPartner").value,
            "name": document.getElementById("namePartner").value,
            "phone": document.getElementById("phonePartner").value,
            "email": document.getElementById("emailPartner").value,
            "website": document.getElementById("websitePartner").value,
            "country": document.getElementById("countryPartner").value,
            "address": document.getElementById("addressPartner").value,
            "type": sText,
            "note": document.getElementById("notePartner").value,
            "active": true
        }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function (res) {
        if (res.status === 200)
            location.reload();
    }).catch(function (err) {
        console.error(err);
    });
}
;