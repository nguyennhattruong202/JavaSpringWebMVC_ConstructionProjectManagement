<%-- 
    Document   : partnerUpdate
    Created on : Oct 6, 2022, 6:40:28 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top">
        Chỉnh sửa thông tin đối tác
    </div>
    <div class="p-3">
        <div class="row mb-2">
            <div class="col">
                <label for="inputNamePartnerUpdate" class="form-label">Ten doi tac:</label>
                <input id="inputNamePartnerUpdate" type="text" class="form-control bg-body" value="Ten doi tac">
            </div>
        </div>
        <div class="row mb-2">
            <div class="col">
                <label for="inputPhonePartnerUpdate" class="form-label">So dien thoai:</label>
                <input id="inputPhonePartnerUpdate" type="tel" class="form-control bg-body" value="0865761892">
            </div>
            <div class="col">
                <label for="inputEmailPartnerUpdate" class="form-label">Email:</label>
                <input id="inputEmailPartnerUpdate" type="email" class="form-control bg-body" value="nhattruongnguyen202@gmail.com">
            </div>
        </div>
        <div class="row mb-2">
            <div class="col">
                <label for="inputWebsitePartnerUpdate" class="form-label">Website:</label>
                <input id="inputWebsitePartnerUpdate" type="url" class="form-control bg-body" value="https://www.greentechco.com.vn">
            </div>
            <div class="col">
                <label for="inputCountryPartnerUpdate" class="form-label">Quoc gia:</label>
                <input id="inputCountryPartnerUpdate" type="text" class="form-control bg-body" value="Quoc gia">
            </div>
            <div class="col">
                <label for="selectTypePartnerUpdate" class="form-label">Loai:</label>
                <select id="selectTypePartnerUpdate" class="form-select">
                    <option selected="true" value="0" disabled="true">Chọn:</option>
                    <option value="1">Tổ chức</option>
                    <option value="0">Cá nhân</option>
                </select>
            </div>
        </div>
        <div class="row mb-2">
            <div class="col">
                <label for="inputAddressPartnerUpdate" class="form-label">Địa chỉ:</label>
                <input id="inputAddressPartnerUpdate" type="text" class="form-control bg-body" value="Địa chỉ">
            </div>
        </div>
        <div class="row mb-3">
            <div class="col">
                <label for="textareaNotePartnerUpdate" class="form-label">Ghi chú:</label>
                <textarea id="textareaNotePartnerUpdate" type="text" class="form-control bg-body"></textarea>
            </div>
        </div>
        <div class="text-end">
            <button type="button" class="btn btn-outline-primary my-wpx-100">Quay lai</button>
            <button type="button" class="btn btn-outline-danger my-wpx-100">Luu</button>
        </div>
    </div>
</div>
