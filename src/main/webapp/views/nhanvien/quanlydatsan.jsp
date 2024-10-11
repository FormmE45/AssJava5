<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

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
.btn-warning.text-white:hover {
	background-color: #eeb60e;
}
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

/* Showing badminton court */
img.hinhSan {
	max-width: none;
	max-height: none;
	object-fit: cover;
	width: 100%;
	height: 100%;
}

/* Text and line */
.text-line {
	display: flex;
	flex-direction: row;
	align-items: center;
}

.text-line>:first-child {
	flex-grow: 0;
}

.text-line>:nth-child(2) {
	flex-grow: 1;
}

.divider {
	height: 0.8px;
	background-color: black;
	opacity: .25;
}
</style>
</head>

<body>
	<div class="row w-100 h-100 min-vh-100">
		<div class="col-2 sticky-top">
			<div class="d-flex flex-column flex-shrink-0 p-3 w-100 h-100"
				style="background-color: #A3D3DF;">
				<a href="/"
					class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
					<svg class="bi pe-none me-2" width="40" height="32">
                        <use xlink:href="#bootstrap"></use>
                    </svg> <span class="fs-4">Java 5</span>
				</a>
				<hr>
				<ul class="nav nav-pills flex-column mb-auto">
					<li class="nav-item" style="height: 40px;"><a href="#"
						class="nav-link link-body-emphasis" aria-current="page">
							<div class="row">
								<div
									class="col-2 d-flex justify-content-center align-items-center">
									<i class="fa-solid fa-house"></i>
								</div>
								<div class="col-10 pe-0">Trang chủ</div>
							</div>
					</a></li>
					<li class="nav-item" style="height: 40px;"><a href="quanlysan"
						class="nav-link link-body-emphasis">
							<div class="row">
								<div
									class="col-2 d-flex justify-content-center align-items-center">
									<i class="fa-regular fa-clipboard"></i>
								</div>
								<div class="col-10 pe-0">Quản lý sân</div>
							</div>
					</a></li>
					<li class="nav-item" style="height: 40px;"><a
						href="quanlydatsan" class="nav-link active">
							<div class="row">
								<div
									class="col-2 d-flex justify-content-center align-items-center">
									<i class="fa-solid fa-chalkboard"></i>
								</div>
								<div class="col-10 pe-0">Quản lý đặt sân</div>
							</div>
					</a></li>
					<li class="nav-item" style="height: 40px;"><a href="#"
						class="nav-link link-body-emphasis">
							<div class="row">
								<div
									class="col-2 d-flex justify-content-center align-items-center">
									<i class="fa-solid fa-ticket"></i>
								</div>
								<div class="col-10 pe-0">Quản lý ưu đãi</div>
							</div>
					</a></li>
					<li class="nav-item" style="height: 40px;"><a
						href="quanlynhanvien" class="nav-link link-body-emphasis">
							<div class="row">
								<div
									class="col-2 d-flex justify-content-center align-items-center">
									<i class="fa-solid fa-users"></i>
								</div>
								<div class="col-10 pe-0">Quản lý nhân viên</div>
							</div>
					</a></li>
					<li class="nav-item" style="height: 40px;"><a href="#"
						class="nav-link link-body-emphasis">
							<div class="row">
								<div
									class="col-2 d-flex justify-content-center align-items-center">
									<i class="fa-solid fa-id-card"></i>
								</div>
								<div class="col-10 pe-0">Quản lý khách hàng</div>
							</div>
					</a></li>
				</ul>
				<hr>
				<div class="dropdown">
					<a href="#"
						class="d-flex align-items-center link-body-emphasis text-decoration-none dropdown-toggle"
						data-bs-toggle="dropdown" aria-expanded="false"> <img
						src="https://github.com/mdo.png" alt="" width="32" height="32"
						class="rounded-circle me-2"> <strong>ABC</strong>
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
		<div class="col-10 py-3">
			<h3 class="ms-5">Quản lý đặt sân</h3>
			<hr>
			<!-- Tìm kiếm -->
			<div class="row px-5 my-3">
				<form action="" class="col-5 row">
					<label for="timDatSan" class="col-3 col-form-label fw-bold">Sân</label>
					<div class="col-9">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Mã/Tên"
								aria-label="Sân" aria-describedby="timDatSan" id="timDatSan"
								name="timDatSan">
							<button class="btn btn-outline-success">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
			<hr>
			<!-- Danh sách -->
			<div class="px-5 overflow-auto table-responsive"
				style="height: 564px; scrollbar-width: thin;">
				<table class="table align-middle mb-0 bg-white table-sticky">
					<thead class="bg-light">
						<tr>
							<th>Mã đặt sân</th>
							<th>Tên người đặt</th>
							<th>Ngày đặt</th>
							<th>Thời gian</th>
							<th>Tình trạng</th>
							<th>Tùy chọn</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>DS01</td>
							<td>Nguyễn Văn A</td>
							<td>25/09</td>
							<td>8h00 - 9h00 (1h)</td>
							<td><span class="badge text-bg-success rounded-pill">Hoạt
									động</span></td>
							<td>
								<div class="d-flex justify-content-between"
									style="width: 130px;">
									<button class="btn btn-primary border-0 btn-icon-circle">
										<i class="fa-solid fa-eye"></i>
									</button>
									<button
										class="btn btn-warning border-0 btn-icon-circle text-white">
										<i class="fa-solid fa-check"></i>
									</button>
									<button class="btn btn-danger border-0 btn-icon-circle">
										<i class="fa-solid fa-ban"></i>
									</button>
								</div>
							</td>
						</tr>
						<tr>
							<td>DS02</td>
							<td>Nguyễn Văn B</td>
							<td>25/09</td>
							<td>15h00 - 16h00 (1h)</td>
							<td><span
								class="badge text-bg-warning rounded-pill text-white">Chờ
									duyệt</span></td>
							<td>
								<div class="d-flex justify-content-between"
									style="width: 130px;">
									<button class="btn btn-primary border-0 btn-icon-circle">
										<i class="fa-solid fa-eye"></i>
									</button>
									<button
										class="btn btn-warning border-0 btn-icon-circle text-white">
										<i class="fa-solid fa-check"></i>
									</button>
									<button class="btn btn-danger border-0 btn-icon-circle">
										<i class="fa-solid fa-ban"></i>
									</button>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>