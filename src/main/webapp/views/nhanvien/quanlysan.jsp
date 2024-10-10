<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Quản lý sân</title>
    <script>
        function displaySanDetails(san) {
            document.getElementById("maSan").value = san.maSan;
            document.getElementById("tenSan").value = san.tenSan;
            document.getElementById("loaiSan").value = san.loaiSan;
            document.getElementById("giaSan").value = san.giaSan;
            document.getElementById("diaChiSan").value = san.diaChiSan;
            document.getElementById("moTaSan").value = san.moTaSan;
        }
    </script>
</head>
<body>
    <div class="container">
        <h3 class="my-4">Chỉnh sửa thông tin sân</h3>
        <form:form action="/quanlysan" modelAttribute="sanChiTiet" method="post">
            <div class="row mb-3">
                <label for="maSan" class="col-sm-2 col-form-label">Mã sân:</label>
                <div class="col-sm-10">
                    <form:input path="maSan" class="form-control" id="maSan" readonly="readonly" />
                </div>
            </div>
            <div class="row mb-3">
                <label for="tenSan" class="col-sm-2 col-form-label">Tên sân:</label>
                <div class="col-sm-10">
                    <form:input path="tenSan" class="form-control" id="tenSan" required="required" />
                </div>
            </div>
            <div class="row mb-3">
                <label for="loaiSan" class="col-sm-2 col-form-label">Loại sân:</label>
                <div class="col-sm-10">
                    <form:input path="loaiSan" class="form-control" id="loaiSan" required="required" />
                </div>
            </div>
            <div class="row mb-3">
                <label for="giaSan" class="col-sm-2 col-form-label">Giá sân:</label>
                <div class="col-sm-10">
                    <form:input path="giaSan" class="form-control" id="giaSan" required="required" type="number" />
                </div>
            </div>
            <div class="row mb-3">
                <label for="diaChiSan" class="col-sm-2 col-form-label">Địa chỉ:</label>
                <div class="col-sm-10">
                    <form:input path="diaChiSan" class="form-control" id="diaChiSan" required="required" />
                </div>
            </div>
            <div class="row mb-3">
                <label for="moTaSan" class="col-sm-2 col-form-label">Mô tả:</label>
                <div class="col-sm-10">
                    <form:textarea path="moTaSan" class="form-control" id="moTaSan" rows="3" required="required"></form:textarea>
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-sm-10 offset-sm-2">
                    <button type="submit" class="btn btn-primary">Cập nhật thông tin</button>
                    <a href="/themSan" class="btn btn-success">Thêm sân</a>
                    <a href="/xoaSan" class="btn btn-danger">Xóa sân</a>
                    <a href="/trangChu" class="btn btn-secondary">Quay lại trang chủ</a>
                </div>
            </div>
        </form:form>

        <h3 class="my-4">Danh sách sân</h3>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Mã sân</th>
                    <th>Tên sân</th>
                    <th>Loại sân</th>
                    <th>Giá sân</th>
                    <th>Địa chỉ</th>
                    <th>Mô tả</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="san" items="${danhSachSan}">
                    <tr onclick="displaySanDetails(${san})" style="cursor: pointer;">
                        <td>${san.maSan}</td>
                        <td>${san.tenSan}</td>
                        <td>${san.loaiSan}</td>
                        <td>${san.giaSan}</td>
                        <td>${san.diaChiSan}</td>
                        <td>${san.moTaSan}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
