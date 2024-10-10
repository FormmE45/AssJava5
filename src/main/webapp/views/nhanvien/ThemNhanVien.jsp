<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm nhân viên</title>
</head>
<body>
    <div class="container mt-5">
        <h2>Thêm thông tin nhân viên</h2>

        <form:form modelAttribute="employee" action="/employee/add" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Tên nhân viên</label>
                <form:input path="name" class="form-control" id="name" />
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <form:input path="email" class="form-control" id="email" />
            </div>

            <div class="mb-3">
                <label for="phone" class="form-label">Số điện thoại</label>
                <form:input path="phone" class="form-control" id="phone" />
            </div>

            <button type="submit" class="btn btn-primary">Thêm nhân viên</button>
        </form:form>

        <c:if test="${not empty message}">
            <div class="alert alert-success mt-3">
                ${message}
            </div>
        </c:if>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
