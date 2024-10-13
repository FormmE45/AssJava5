<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<title>Quản lý nhân viên</title>
<style type="text/css">
/* Center icon in button */
.btn-icon {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 40px;
	height: 40px;
}

/* Center icon in circle button */
.btn-icon-circle {
	display: flex;
	justify-content: center;
	align-items: center;
	width: 40px;
	height: 40px;
	border-radius: 50%;
}

/* Sticky header of table */
table.table-sticky thead tr:nth-child(1) th {
	position: sticky;
	top: 0;
	z-index: 10;
}
</style>
<script>
    window.onload = function() {
        const urlParams = new URLSearchParams(window.location.search);
        const page = parseInt(urlParams.get('page')) || 1;
        const totalPages = ${nhanViens.totalPages};

        if (page < 1) {
            window.location.href = '?page=1';
        } else if (page > totalPages) {
            window.location.href = '?page=' + totalPages;
        }
    };
</script>
</head>

<body>
	<div class="row w-100 h-100 min-vh-100">
		<div class="col-2 sticky-top">
            <div class="d-flex flex-column flex-shrink-0 p-3 w-100 h-100" style="background-color: #A3D3DF;">
                <a href="/"
                    class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
                    <svg class="bi pe-none me-2" width="40" height="32">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
                    <span class="fs-4">Java 5</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item" style="height: 40px;">
                        <a href="#" class="nav-link link-body-emphasis" aria-current="page">
                            <div class="row">
                                <div class="col-2 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-house"></i>
                                </div>
                                <div class="col-10 pe-0">
                                    Trang chủ
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="/badmintonManager" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-2 d-flex justify-content-center align-items-center">
                                    <i class="fa-regular fa-clipboard"></i>
                                </div>
                                <div class="col-10 pe-0">
                                    Quản lý sân
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="/courtOrderManager" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-2 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-chalkboard"></i>
                                </div>
                                <div class="col-10 pe-0">
                                    Quản lý đặt sân
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="#" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-2 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-ticket"></i>
                                </div>
                                <div class="col-10 pe-0">
                                    Quản lý ưu đãi
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="/employeeManager" class="nav-link active">
                            <div class="row">
                                <div class="col-2 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-users"></i>
                                </div>
                                <div class="col-10 pe-0">
                                    Quản lý nhân viên
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="#" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-2 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-id-card"></i>
                                </div>
                                <div class="col-10 pe-0">
                                    Quản lý khách hàng
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <hr>
                <div class="dropdown">
                    <a href="#"
                        class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                        <strong>ABC</strong>
                    </a>
                    <ul class="dropdown-menu text-small shadow">
                        <!-- <li><a class="dropdown-item" href="#">New project...</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li> -->
                        <li><a class="dropdown-item" href="#">Thoát</a></li>
                    </ul>
                </div>
            </div>
        </div>
		<div class="col-lg-10 col-xs-12 col-sm-12 py-3">
			<a href="/employeeManager" class="text-decoration-none text-reset"><h3 class="ms-5">Quản lý nhân viên</h3></a>
			<hr>
			<c:if test="${not empty errorNotFound}">
				<div class="rounded-4 bg-danger-subtle p-3 mt-1 mb-3 text-danger">${errorNotFound}</div>
			</c:if>
			
			<!-- Form thông tin nhân viên -->
			<div class="container bg-body-tertiary rounded p-4 shadow mb-4">
				<form:form method="POST" action="/employeeUpdate"
					modelAttribute="employee">
					<div class="row">
						<div
							class="col-4 d-flex justify-content-center align-items-center">
							<img
								src="https://img.freepik.com/premium-vector/badminton-player-match-illustration_9245-796.jpg"
								alt="" width="250" height="250" class="rounded-circle img-fluid">
						</div>
						<div class="col-8">
							<div class="row mb-3">
								<label for="id" class="col-3 col-form-label fw-bold">Mã
									nhân viên</label>
								<div class="col-9">
									<form:input path="id" class="form-control" id="id"
										readonly="true" />
								</div>
							</div>
							<div class="row mb-3">
								<label for="name" class="col-3 col-form-label fw-bold">Tên
									nhân viên</label>
								<div class="col-9">
									<form:input path="name" class="form-control" id="name" />
								</div>
							</div>
							<div class="row mb-3">
								<label for="username" class="col-3 col-form-label fw-bold">Tên
									đăng nhập</label>
								<div class="col-9">
									<form:input path="username" class="form-control" id="username" />
								</div>
							</div>
							<div class="row mb-3">
								<label for="role" class="col-3 col-form-label fw-bold">Vai
									trò</label>
								<div class="col-9">
									<form:input path="role" class="form-control" id="role" />
								</div>
							</div>
							<div class="row mb-3">
								<label for="password" class="col-3 col-form-label fw-bold">Mật
									khẩu</label>
								<div class="col-9">
									<form:input path="password" class="form-control" id="password"
										type="password" />
								</div>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-evenly w-50 ms-auto mt-3">
						<a href="/employeeAdd" class="btn btn-primary rounded-pill text-white">Thêm Nhân Viên</a>
						<button type="submit" class="btn btn-success rounded-pill text-white">Cập nhật thông tin</button>
						<a href="/employeeRemove/${nhanVien.id}" class="btn btn-danger rounded-pill text-white" onclick="return confirm('Are you sure?') ? true : false;">Xóa tài khoản</a>
					</div>
				</form:form>
			</div>
			<hr>
			
			<!-- Danh sách nhân viên -->
			<div class="px-5 overflow-auto">
				<table class="table align-middle mb-0 bg-white">
					<thead class="bg-light">
						<tr>
							<th>Mã nhân viên</th>
							<th>Tên nhân viên</th>
							<th>Tên đăng nhập</th>
							<th>Vai trò</th>
							<th>Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="nv" items="${nhanViens.content}">
							<tr onclick="window.location='/employeeManager/${nv.id}';" style="cursor: pointer;">
								<td>${nv.id}</td>
								<td>${nv.name}</td>
								<td>${nv.username}</td>
								<td>${nv.role}</td>
								<td>
									<a href="/employeeManager/${nv.id}" class="btn btn-outline-warning border-0 btn-sm"><i class="fa-solid fa-pen-to-square"></i></a>
									<a href="/employeeRemove/${nv.id}" class="btn btn-outline-danger border-0 btn-sm" onclick="return confirm('Are you sure?') ? true : false;"><i class="fa-solid fa-ban"></i></a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
	            <c:set var="delta" value="2" />
	            <c:set var="startPage" value="${currentPage - delta < 1 ? 1 : currentPage - delta}" />
	            <c:set var="endPage" value="${currentPage + delta > nhanViens.totalPages ? nhanViens.totalPages : currentPage + delta}" />
				<c:if test="${nhanViens.totalPages > 1}">
		            <nav aria-label="Phân Trang" class="mt-3">
		                <ul class="pagination justify-content-end">
		                    <li class="page-item <c:if test='${nhanViens.first}'>disabled</c:if>">
		                        <a class="page-link" href="?page=${nhanViens.first ? 1 : currentPage - 1}">Trước</a>
		                    </li>
		
		                    <c:if test="${startPage > 1}">
		                        <li class="page-item">
		                            <a class="page-link" href="?page=1">1</a>
		                        </li>
		                        <c:if test="${startPage > 2}">
		                            <li class="page-item disabled"><span class="page-link">...</span></li>
		                        </c:if>
		                    </c:if>
		
		                    <c:forEach var="page" begin="${startPage}" end="${endPage}">
		                        <li class="page-item <c:if test='${page == currentPage}'>active</c:if>">
		                            <a class="page-link" href="?page=${page}">${page}</a>
		                        </li>
		                    </c:forEach>
		
		                    <c:if test="${endPage < nhanViens.totalPages}">
		                        <c:if test="${endPage < nhanViens.totalPages - 1}">
		                            <li class="page-item disabled"><span class="page-link">...</span></li>
		                        </c:if>
		                        <li class="page-item">
		                            <a class="page-link" href="?page=${nhanViens.totalPages}">${nhanViens.totalPages}</a>
		                        </li>
		                    </c:if>
		
		                    <li class="page-item <c:if test='${nhanViens.last}'>disabled</c:if>">
		                        <a class="page-link" href="?page=${nhanViens.last ? nhanViens.totalPages : currentPage + 1}">Sau</a>
		                    </li>
		                </ul>
		            </nav>
	            </c:if>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz4fnFO9gybHtQGBr4JgW8oLazF2M2gWz6AzMo1f6xdgReUAt03ThD6J4n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-JC2OeS1E63wN+MlHGu3m6T5IQk1e2QmxH1If5sF5DyAk08X64M7Um5L+A1Vx1x+2"
		crossorigin="anonymous"></script>
</body>

</html>
