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