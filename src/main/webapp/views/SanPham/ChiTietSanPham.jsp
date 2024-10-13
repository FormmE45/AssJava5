<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi Tiết Sản Phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="card">
        <div class="card-header bg-primary text-white text-center">
            <h2>Chi Tiết Sản Phẩm</h2>
        </div>
        <div class="card-body">
            <form:form modelAttribute="product" class="form-horizontal">
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Mã Sản Phẩm:</label>
                    <div class="col-sm-9">
                        <form:input path="maSanPham" class="form-control" readonly="true"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Tên Sản Phẩm:</label>
                    <div class="col-sm-9">
                        <form:input path="tenSanPham" class="form-control" readonly="true"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Đơn Giá:</label>
                    <div class="col-sm-9">
                        <form:input path="donGia" class="form-control" readonly="true"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Mã Loại:</label>
                    <div class="col-sm-9">
                        <form:input path="maLoai" class="form-control" readonly="true"/>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Mô Tả:</label>
                    <div class="col-sm-9">
                        <form:textarea path="moTa" class="form-control" rows="4" readonly="true"/>
                    </div>
                </div>

                <div class="text-center">
                    <a href="/" class="btn btn-secondary">Quay Lại</a>
                </div>
            </form:form>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
