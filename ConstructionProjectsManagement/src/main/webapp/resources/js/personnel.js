/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
/* global fetch */
function showPersonnelDetail(id, lName, fName, gender, BOD, identity, phone, email, address, pos, dep){

msg = `
<div class="ps-3 pe-3 pb-3 pt-2 row">
        <div class="col-2">
            <img class="img-fluid h-100 w-100" src="<c:url value="/images/construction.jpg"/>" alt="avatarImage">
        </div>
        <div class="col-10">
            <div class="row">
                <div class="col-6">
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Ma nhan su:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${id}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Gioi tinh:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${gender}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">CMND/CCCD:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${identity}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Email:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${email}</div>
                    </div>
                    <div class="row">
                        <div class="col-3 d-flex align-items-center">Chuc vu:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${pos}</div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Ho va ten:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${lName + fName}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Ngay sinh:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${DOB}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">So dien thoai:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${phone}</div>
                    </div>
                    <div class="row mb-1">
                        <div class="col-3 d-flex align-items-center">Dia chi:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${address}</div>
                    </div>
                    <div class="row">
                        <div class="col-3 d-flex align-items-center">Phong ban:</div>
                        <div class="col-9 d-flex align-items-center fw-bold">${dep}</div>
                    </div>
                </div>
            </div>

        </div>
    </div>
`;
        let d = document.getElementById("personnelDetail");
        d.innerHTML = msg;
        d.style.display = "block";
};