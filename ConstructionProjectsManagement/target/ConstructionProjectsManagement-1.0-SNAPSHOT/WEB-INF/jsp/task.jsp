<%-- 
    Document   : task
    Created on : Oct 1, 2022, 6:04:57 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 h5 bg-primary text-uppercase text-white rounded-top fw-bold">Danh sach cong viec</div>
    <div class="p-3">
        <table class="table table-hover">
            <thead>
            <th>ID</th>
            <th>Ten cong viec</th>
            <th>Ngay bat dau</th>
            <th>Ngay ket thuc</th>
            <th>Do uu tien</th>
            <th>Nguoi thuc hien</th>
            <th>Hang muc thi cong</th>
            <th>Trang thai</th>
            <th class="text-center"></th>
            </thead>
            <tbody>
                <c:forEach begin="1" end="10" var="i">
                    <tr class="align-middle">
                        <td>ID</td>
                        <td>Ten cong viec</td>
                        <td>Ngay bat dau</td>
                        <td>Ngay ket thuc</td>
                        <td>
                            <select class="form-control">
                                <option value="1">Khong co</option>
                                <option value="2">Thap</option>
                                <option value="3">Trung binh</option>
                                <option value="4">Cao</option>
                            </select>
                        </td>
                        <td>Nguoi thuc hien</td>
                        <td>Hang muc thi cong</td>
                        <td>
                            <select class="form-control">
                                <option value="1">Value 1</option>
                                <option value="2">Value 2</option>
                            </select>
                        </td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Xoa</a></li>
                            </ul>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
