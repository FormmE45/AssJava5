<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Chi tiết sân</title>
</head>

<body>
    <div class="container">
        <h1 class="mt-4">Chi tiết sân</h1>
        <div class="row">
            <div class="col-7">
                <div class="card">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><b>Mã sân:</b> ${san.id}</li>
                        <li class="list-group-item"><b>Tên sân:</b> ${san.name}</li>
                        <li class="list-group-item"><b>Loại sân:</b> ${san.type}</li>
                        <li class="list-group-item"><b>Giá sân:</b> ${san.price} VND</li>
                        <li class="list-group-item"><b>Địa chỉ:</b> ${san.address}</li>
                        <li class="list-group-item"><b>Mô tả:</b> ${san.description}</li>
                        <li class="list-group-item"><b>Trạng thái:</b> 
                            <c:choose>
                                <c:when test="${san.availability}">
                                    Đang hoạt động
                                </c:when>
                                <c:otherwise>
                                    Tạm dừng hoạt động
                                </c:otherwise>
                            </c:choose>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
