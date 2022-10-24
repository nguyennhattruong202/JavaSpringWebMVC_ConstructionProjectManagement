<%-- 
    Document   : category
    Created on : Oct 3, 2022, 6:46:24 PM
    Author     : ACER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<c:url value="/admin/api/project" var="endpoint" />
<c:url value="/admin" var="adminAction" />
<div class="shadow rounded bg-body mt-3 mb-3">
    <div class="p-2 bg-primary d-flex align-items-center text-white fw-bold h5 rounded-top text-uppercase">
        Danh sách hạng mục thi công
    </div>
    <div class="p-3">
        <div class="mb-3 d-flex justify-content-end">
            <form class="w-100 me-1">
                <div class="input-group">
                    <input type="text" class="form-control" id="inputSearchCategory" placeholder="Nhập từ khóa...">
                    <button class="btn btn-outline-primary" id="buttonSearchCategory" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </form>
            <button type="button" data-bs-toggle="modal" data-bs-target="#modalAddCategory" 
                    class="btn btn-outline-primary me-1">
                <i class="fas fa-plus"></i>
            </button>
            <button id="buttonPrintCategory" class="btn btn-outline-primary">
                <i class="fas fa-print"></i>
            </button>
        </div>
        <table class="table table-hover">
            <thead>
            <th>Id</th>
            <th>Tên hạng mục thi công</th>
            <th>Ngày bắt đầu</th>
            <th>Ngày kết thúc</th>
            <th>Trưởng hạng mục</th>
            <th>Tiến độ</th>
            <th>Trạng thái</th>
            <th></th>
            </thead>
            <tbody>
                <c:forEach items="${categoryList}" var="listCategory">
                    <tr>
                        <td>${listCategory[0]}</td>
                        <td>${listCategory[1]}</td>
                        <td>${listCategory[2]}</td>
                        <td>${listCategory[3]}</td>
                        <td>${listCategory[4]} ${listCategory[7]}</td>
                        <td>${listCategory[5]}</td>
                        <td>${listCategory[6]}</td>
                        <td class="text-center">
                            <a href="#" class="text-decoration-none" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-ellipsis-h"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="${adminAction}/project/category/${listCategory[0]}">Xem công việc</a></li>
                                <li><a class="dropdown-item" href="${adminAction}/project/${projectById.id}/category/${listCategory[0]}/update">Sửa hạng mục thi công</a></li>
                                <li><a class="dropdown-item" href="#">Xóa hạng mục thi công</a></li>
                            </ul>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="modal fade" id="modalAddCategory">
    <div class="modal-dialog modal-lg modal-dialog-centered modal-dialog-scrollable">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title text-white text-uppercase">Thêm hạng mục thi công mới</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="inputNameAddCategory" 
                                       placeholder="inputNameAddCategory">
                                <label for="inputNameAddCategory">Tên hạng mục thi công</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <input type="date" class="form-control" id="inputStartDateAddCategory" 
                                       placeholder="inputStartDateAddCategory">
                                <label for="inputStartDateAddCategory">Ngày bắt đầu</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <input type="date" class="form-control" id="inputFinishDateAddCategory" 
                                       placeholder="inputFinishDateAddCategory"/>
                                <label for="inputFinishDateAddCategory">Ngày kết thúc</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <select class="form-select" id="selectLeaderAddCategory">
                                    <option selected="true" disabled="true">Lựa chọn...</option>
                                    <option value="1">Option 1</option>
                                </select>
                                <label for="selectLeaderAddCategory">Trưởng hạng mục thi công</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <select class="form-select" id="selectStatusAddCategory">
                                    <option selected="true" disabled="true">Lựa chọn...</option>
                                    <c:forEach begin="1" end="10" var="status">
                                        <option value="${status}">Status ${status}</option>
                                    </c:forEach>
                                </select>
                                <label for="selectStatusAddCategory">Trạng thái</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <textarea type="text" class="form-control" id="inputDescriptionAddCategory" 
                                          placeholder="inputDescriptionAddCategory"></textarea>
                                <label for="inputDescriptionAddCategory">Khái quát hạng mục thi công</label>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-outline-primary my-wpx-100 fw-bold" 
                        data-bs-dismiss="modal">Đóng</button>
                <button type="button" class="btn btn-outline-danger my-wpx-100 fw-bold">Lưu</button>
            </div>
        </div>
    </div>
</div>
