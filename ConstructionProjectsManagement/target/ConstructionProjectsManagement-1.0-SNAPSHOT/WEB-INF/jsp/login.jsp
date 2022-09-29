<%-- 
    Document   : login
    Created on : Sep 29, 2022, 4:29:43 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<section class="vh-100">
    <div class="row h-100">
        <div class="col-3 bg-primary"></div>
        <div class="col-9 d-flex justify-content-center align-items-center">
            <form class="w-50">
                <div class="shadow bg-body p-5" style="height: 500px">
                    <h2 class="mb-5">Login</h2>
                    <div class="input-group mb-4">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                        <input type="email" class="form-control" placeholder="Enter email">
                    </div>
                    <div class="input-group mb-4">
                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                        <input type="password" class="form-control" placeholder="Enter password">
                    </div>
                    <div class="d-grid mb-4">
                        <button class="btn btn-primary fw-bold" type="button">Login</button>
                    </div>
                    <div class="text-end">
                        <a href="#" class="text-decoration-none">Forgot password?</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
