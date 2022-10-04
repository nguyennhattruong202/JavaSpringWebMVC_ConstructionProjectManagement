/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */
function removeProject(endpoint) {
    fetch(endpoint, {
        method: "get"
    }).then(function (res) {
        if (confirm("Ban co chac muon xoa?") === true)
            if (res.status === 200)
                location.reload();
    }).catch(function (err) {
        console.error(err);
    });
}
;
