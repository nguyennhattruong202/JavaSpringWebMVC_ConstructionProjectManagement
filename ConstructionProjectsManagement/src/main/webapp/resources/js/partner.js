/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function partnerSearchBy() {
    var selectInput = document.getElementById("searchSelect");
    if (selectInput.value === '1') {
        document.getElementById("nameSearch").style.display = "block";
        document.getElementById("emailSearch").style.display = "none";
        document.getElementById("phoneSearch").style.display = "none";
        document.getElementById("addressSearch").style.display = "none";
    } else if (selectInput.value === '2') {
        document.getElementById("nameSearch").style.display = "none";
        document.getElementById("emailSearch").style.display = "none";
        document.getElementById("phoneSearch").style.display = "block";
        document.getElementById("addressSearch").style.display = "none";
    } else if (selectInput.value === '3') {
        document.getElementById("nameSearch").style.display = "none";
        document.getElementById("emailSearch").style.display = "block";
        document.getElementById("phoneSearch").style.display = "none";
        document.getElementById("addressSearch").style.display = "none";
    } else if (selectInput.value === '4') {
        document.getElementById("nameSearch").style.display = "none";
        document.getElementById("emailSearch").style.display = "none";
        document.getElementById("phoneSearch").style.display = "none";
        document.getElementById("addressSearch").style.display = "block";
    } else {
        document.getElementById("emailSearch").style.display = "none";
        document.getElementById("phoneSearch").style.display = "none";
        document.getElementById("nameSearch").style.display = "none";
        document.getElementById("addressSearch").style.display = "none";
    }
}
;

