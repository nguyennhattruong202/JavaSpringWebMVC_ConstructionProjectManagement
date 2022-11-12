/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch, swal, Swal */

function remove(endpoint, url) {
    fetch(endpoint, {
        method: "get"
    }).then(function (res) {
        if (res.status === 200) {
            Swal.fire({
                title: 'Removed success!',
                icon: 'success',
                showConfirmButton: true,
                confirmButtonText: 'OK'
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location = url;
                }
            });
        }
    }).catch(function (err) {
        console.error(err);
    });
}
;