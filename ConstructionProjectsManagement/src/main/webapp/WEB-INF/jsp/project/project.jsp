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
<div class="my-main-content-container">
    <div class="d-flex justify-content-end mb-2">
        <input type="text" id="inputSearchProject" style="border-radius: 0px;" class="form-control">
        <button id="buttonSearchProject" type="button" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Tìm kiếm">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
        <a href="#"class="my-button" id="aAddProject" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Thêm mới">
            <i class="fa-solid fa-plus"></i>
        </a>
        <button id="buttonFilterProject" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Lọc dữ liệu">
            <i class="fa-solid fa-filter"></i>
        </button>
        <button id="buttonRemoveProject" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Xóa">
            <i class="fa-solid fa-trash"></i>
        </button>
        <button id="buttonPrintProject" class="my-button" data-bs-toggle="tooltip" data-bs-placement="bottom" title="In">
            <i class="fa-solid fa-print"></i>
        </button>
    </div>
    <div class="my-container">
        <div class="my-titile-container">Danh sách dự án</div>
        <div class="pe-2 ps-2">
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
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalViewProject${iProjectList[0]}">Chi tiết dự án</a></li>
                                    <li><a class="dropdown-item" href="${adminAction}/project/${iProjectList[0]}/update">Sửa dự án</a></li>
                                    <li><a class="dropdown-item" href="#" data-bs-toggle="modal" data-bs-target="#modalRemovedProject${iProjectList[0]}">Xóa</a></li>
                                </ul>
                            </td>
                        </tr>
                    <div class="modal fade" id="modalViewProject${iProjectList[0]}">
                        <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                            <div class="modal-content">
                                <div class="modal-header bg-primary">
                                    <h5 class="modal-title text-white">Thông tin dự án</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-3 d-flex align-items-center">
                                            <img class="img-fluid" src="${iProjectList[3]}" alt="imageProject">
                                        </div>
                                        <div class="col-9">
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="number" class="form-control bg-body" id="inputIdProject" value="${iProjectList[0]}" readonly>
                                                        <label for="inputIdProject">Mã dự án</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="text" class="form-control bg-body" id="inputNameProject" value="${iProjectList[1]}" readonly>
                                                        <label for="inputNameProject">Tên dự án</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="text" class="form-control bg-body" id="inputLocationProject" value="${iProjectList[4]}" readonly>
                                                        <label for="inputLocationProject">Địa chỉ dự án</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="date" class="form-control bg-body" id="inputStartDateProject" value="${iProjectList[5]}" readonly>
                                                        <label for="inputStartDateProject">Ngày bắt đầu</label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="date" class="form-control bg-body" id="inputFinishDateProject" value="${iProjectList[6]}" readonly>
                                                        <label for="inputFinishDateProject">Ngày kết thúc</label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="datetime" class="form-control bg-body" id="inputCreatedDateProject" value="${iProjectList[7]}" readonly>
                                                        <label for="inputCreatedDateProject">Ngày tạo</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="text" class="form-control bg-body" id="inputLeaderProject" value="${iProjectList[11]} ${iProjectList[12]}" readonly>
                                                        <label for="inputLeaderProject">Trưởng dự án</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-2">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="number" class="form-control bg-body" id="inputMaxPersonProject" value="${iProjectList[8]}" readonly>
                                                        <label for="inputCreatedDateProject">Nhân công tối đa</label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="text" class="form-control bg-body" id="inputPercentProject" value="${iProjectList[9]}" readonly>
                                                        <label for="inputPercentProject">Tiến độ thực hiện</label>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <input type="text" class="form-control bg-body" id="inputStatusProject" value="${iProjectList[10]}" readonly>
                                                        <label for="inputStatusProject">Trạng thái</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <div class="form-floating">
                                                        <textarea class="form-control bg-body" id="textareaDescriptionProject" readonly>${iProjectList[2]}</textarea>
                                                        <label for="textareaDescriptionProject">Khái quát dự án</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" data-bs-dismiss="modal">
                                        Đóng
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="modalRemovedProject${iProjectList[0]}">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header bg-danger">
                                    <h5 class="modal-title text-white text-uppercase">Lưu ý</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có chắc muốn xóa dự án ${iProjectList[1]}?
                                </div>
                                <div class="modal-footer">
                                    <button class="btn btn-outline-danger my-wpx-100"
                                            onclick="removeProject('${endpoint}/removed/${iProjectList[0]}')">
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
