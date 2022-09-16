/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
function openSidebar() {
  document.getElementById("mainContent").style.marginLeft = "21%";
  document.getElementById("leftSidebar").style.width = "20%";
  document.getElementById("leftSidebar").style.display = "block";
  document.getElementById("openNav").style.display = 'none';
}
function closeSidebar() {
  document.getElementById("mainContent").style.marginLeft = "0%";
  document.getElementById("leftSidebar").style.display = "none";
  document.getElementById("openNav").style.display = "inline-block";
}

