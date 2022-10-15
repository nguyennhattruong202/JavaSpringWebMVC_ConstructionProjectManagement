<%-- 
    Document   : projectViewPersonnel
    Created on : Oct 14, 2022, 9:15:20 AM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/api" var="endpoint"/>
<c:url value="/admin" var="adminAction"/>
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white text-uppercase fw-bold h5 rounded-top">
        Nhân sự tham gia: ${project.name}
    </div>
    <div class="p-3">
        <div class="mb-3 d-flex justify-content-end">
            <form class="w-100 me-1">
                <div class="input-group">
                    <input type="text" class="form-control" id="inputSearchProjectViewPersonnel">
                    <button class="btn btn-outline-primary" id="buttonSearchProjectViewPersonnel" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <a id="buttonAddProjectViewPersonnel" href="#" class="btn btn-outline-primary me-1">
                <i class="fas fa-plus"></i>
            </a>
            <a id="buttonPrintProjectViewPersonnel" class="btn btn-outline-primary">
                <i class="fas fa-print"></i>
            </a>
        </div>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Mã tham gia</th>
                    <th>Mã nhân sự</th>
                    <th>Họ và tên</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Ngày bắt đầu</th>
                    <th>Vai trò</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${personnelOfProject}" var="per">
                    <tr class="align-middle">
                        <td>${per[7]}</td>
                        <td>${per[0]}</td>
                        <td>${per[1]} ${per[2]}</td>
                        <td>${per[3]}</td>
                        <td>${per[4]}</td>
                        <td>${per[5]}</td>
                        <td>${per[6]}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalRemovedPersonnelOfProject${per[7]}">Xóa khỏi dự án</a></li>
                                <li><a class="dropdown-item" href="${adminAction}/project/${project.id}/participation/${per[7]}">Sửa</a></li>
                            </ul>
                        </td>
                    </tr>
                <div class="modal fade" id="modalRemovedPersonnelOfProject${per[7]}">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header bg-danger">
                                <h5 class="modal-title text-white text-uppercase">Lưu ý</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                Bạn có chắc muốn xóa ${per[1]} ${per[2]} khỏi ${project.name} ?
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-outline-danger my-wpx-100" onclick="remove('${endpoint}/project/removed/personnel/${per[7]}')">
                                    Xóa
                                </button>
                                <button type="button" class="btn btn-outline-primary my-wpx-100" 
                                        data-bs-dismiss="modal">
                                    Đóng
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--
                <div class="modal fade" id="modalUpdateParticipation${per[7]}">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header bg-primary">
                                <h5 class="modal-title text-white text-uppercase">Cập nhật thông tin</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="row mb-3">
                                    <div class="col">
                                        <div class="form-floating">
                                            <input type="number" class="form-control bg-body" id="inputIdParticipation" readonly="true"/>
                                            <label for="inputIdParticipation">Mã tham gia</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <div class="form-floating">
                                            <input type="date" class="form-control" id="inputStartDateParticipation"/>
                                            <label for="inputStartDateParticipation">Ngày bắt đầu</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="inputPositionParticipation""/>
                                            <label for="inputPositionParticipation">Vai trò</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-outline-danger my-wpx-100">Cập nhật</button>
                                <button type="button" class="btn btn-outline-primary my-wpx-100" data-bs-dismiss="modal">
                                    Đóng
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                -->
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script src="<c:url value="/js/project.js" />"></script>