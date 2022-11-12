<%-- 
    Document   : projectmanagement
    Created on : Sep 17, 2022, 10:53:26 AM
    Author     : DELL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:url value="/admin/api/project" var="endpoint" />
<c:url value="/admin" var="adminAction" />
<c:url value="/admin/project/add" var="addProjectUrl" />

<div class="my-main-content-container">
    <div class="d-flex justify-content-end mb-2">
        <input type="text" id="inputSearchProject" style="border-radius: 0px;" class="form-control">
        <button id="buttonSearchProject" type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
        <a href="${addProjectUrl}" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </a>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i>
        </button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Xóa">
            <i class="fa-solid fa-trash"></i>
        </button>
        <button class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-container">
        <div class="my-titile-container">Danh sách dự án</div>
        <div class="my-content-container">
            <table class="table table-hover table-striped">
                <thead>
                <th></th>
                <th>ID</th>
                <th>Tên dự án</th>
                <th>Ngày bắt đầu</th>
                <th>Ngày kết thúc</th>
                <th>Trưởng dự án</th>
                <th>Nhân công tối đa</th>
                <th>Tiến độ</th>
                <th>Trạng thái</th>
                <th>Ngày tạo</th>
                <th></th>
                </thead>
                <tbody>
                    <c:forEach items="${projectList}" var="iProjectList">
                        <tr class="align-middle">
                            <td><input type="checkbox"></td>
                            <td>${iProjectList[0]}</td>
                            <td>${iProjectList[1]}</td>
                            <td>${iProjectList[5]}</td>
                            <td>${iProjectList[6]}</td>
                            <td>${iProjectList[11]} ${iProjectList[12]}</td>
                            <td>${iProjectList[8]}</td>
                            <td>${iProjectList[9]}</td>
                            <td>${iProjectList[10]}</td>
                            <td>${iProjectList[7]}</td>
                            <td class="text-center">
                                <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fas fa-ellipsis-h"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="${adminAction}/project/${iProjectList[0]}/categories">Xem hạng mục thi công</a></li>
                                    <li><a class="dropdown-item" href="${adminAction}/project/${iProjectList[0]}/personnel">Xem nhân sự tham gia dự án</a></li>
                                    <li><a class="dropdown-item" href="${adminAction}/project/${iProjectList[0]}">Xem & cập nhật</a></li>
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalConfirmRemoveProject${iProjectList[0]}">Xóa dự án</a></li>
                                </ul>
                            </td>
                        </tr>
                    <div class="modal fade" id="modalConfirmRemoveProject${iProjectList[0]}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    Lưu ý
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có chắc muốn xóa ${iProjectList[1]}?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="my-button-action" data-bs-dismiss="modal">Xóa</button>
                                    <button class="my-button-action" type="button" data-bs-dismiss="modal">Đóng</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </tbody>
            </table>
            <ul class="pagination d-flex justify-content-end">
                <li class="page-item"><a class="page-link" href="#">1</a></li>
            </ul>
        </div>   
    </div>
</div>
<script src="<c:url value="/js/project.js" />"></script>
