<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<title>Quản lý sân</title>
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
					<li class="nav-item" style="height: 40px;"><a
						href="quanlydatsan" class="nav-link active">
							<div class="row">
								<div
									class="col-2 d-flex justify-content-center align-items-center">
									<i class="fa-regular fa-clipboard"></i>
								</div>
								<div class="col-10 pe-0">Quản lý sân</div>
							</div>
					</a></li>
					<li class="nav-item" style="height: 40px;"><a
						href="quanlydatsan" class="nav-link link-body-emphasis">
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
			<h3 class="ms-5">Quản lý sân</h3>
			<hr>
			<!-- Thông tin sân -->
			<div class="rounded px-5 mt-2">
				<div class="row">
					<div class="col-4">
						<!-- Ảnh sân -->
						<div class="row">
							<div class="col-8 ps-0">
								<img
									src="https://media.architecturaldigest.com/photos/60d5eb352990a3040500dc40/16:9/w_5455,h_3068,c_limit/Waterfalling%20Estate%2006-30-2020%20002.jpg"
									alt="" class="hinhSan">
							</div>
							<div class="col-4 px-0">
								<div class="row mb-2">
									<img
										src="https://cdn.speedsize.com/360481fb-1d0c-442f-ad69-87be324bfa71/https://www.neilson.co.uk/sites/default/files/styles/hub_article_info_block_focal_point_mobile/public/2017-08/grass-court_1_1.jpg?h=f4c57e75&ss_h=dfa52849&itok=70__Q7d9"
										alt="" class="hinhSan">
								</div>
								<div class="row">
									<img
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ89aac80RhRN2a0D0WIoIFkURunMcNim7IQw&s"
										alt="" class="hinhSan">
								</div>
							</div>
						</div>
					</div>
					<div class="col-8 px-5">
						<!-- maSan tenSan loaiSan giaSan thoiGianSan diaChiSan moTaSan -->
						<form action="" class="row">
							<div class="col-6">
								<div class="row mb-3">
									<label for="maSan" class="col-3 col-form-label fw-bold">Mã
										sân</label>
									<div class="col-9">
										<input type="text" class="form-control" id="maSan"
											name="maSan">
									</div>
								</div>
								<div class="row mb-3">
									<label for="tenSan" class="col-3 col-form-label fw-bold">Tên
										sân</label>
									<div class="col-9">
										<input type="text" class="form-control" id="tenSan"
											name="tenSan">
									</div>
								</div>
								<div class="row mb-3">
									<label for="loaiSan" class="col-3 col-form-label fw-bold">Loại
										sân</label>
									<div class="col-9">
										<select class="form-select"
											aria-label="Default select example" name="loaiSan">
											<option value="1">Trong nhà</option>
											<option value="2">Ngoài trời</option>
										</select>
									</div>
								</div>
								<div class="row mb-3">
									<label for="giaSan" class="col-3 col-form-label fw-bold">Giá
										sân</label>
									<div class="col-9">
										<input type="text" class="form-control" id="giaSan"
											name="giaSan">
									</div>
								</div>
							</div>
							<div class="col-6">
								<div class="row mb-3">
									<label for="thoiGianSan" class="col-3 col-form-label fw-bold"
										style="font-size: 13px;">Thời gian hoạt động</label>
									<div class="col-9 d-flex align-items-center">
										<input type="text" class="form-control" id="thoiGianSan"
											name="thoiGianSan">
									</div>
								</div>
								<div class="row mb-3">
									<label for="diaChiSan" class="col-3 col-form-label fw-bold">Địa
										chỉ</label>
									<div class="col-9">
										<input type="text" class="form-control" id="diaChiSan"
											name="diaChiSan">
									</div>
								</div>
								<div class="row mb-3">
									<label for="moTaSan" class="col-3 col-form-label fw-bold">Mô
										tả</label>
									<div class="col-9">
										<input type="text" class="form-control" id="moTaSan"
											name="moTaSan">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="d-flex justify-content-end">
					<div class="">
						<button class="btn btn-success text-white fw-bold rounded-3">Mới</button>
						<button class="btn btn-info text-white fw-bold rounded-3">Thêm</button>
						<button class="btn btn-warning text-white fw-bold rounded-3">Cập
							nhật</button>
					</div>
				</div>
			</div>
			<!-- Tìm kiếm -->
			<div class="row px-5 my-3">
				<form action="" class="col-5 row">
					<label for="timTenSan" class="col-3 col-form-label fw-bold">Tên
						sân</label>
					<div class="col-9">
						<div class="input-group">
							<input type="text" class="form-control" aria-label="Tên sân"
								aria-describedby="timTenSan" id="timTenSan" name="timTenSan">
							<button class="btn btn-outline-success">
								<i class="fa-solid fa-magnifying-glass"></i>
							</button>
						</div>
					</div>
				</form>
				<div class="col-2"></div>
				<form action="" class="col-5 row">
					<label for="loc" class="col-2 col-form-label fw-bold">Lọc</label>
					<div class="col-10">
						<select class="form-select" aria-label="Lọc sân" name="loc">
							<option value="1">Giá từ thấp đến cao</option>
							<option value="1">Giá từ cao đến thấp</option>
							<option value="2">Loại sân</option>
							<option value="2">Trạng thái</option>
						</select>
					</div>
				</form>
			</div>
			<hr>
			<!-- Danh sách -->
			<div class="px-5 overflow-auto table-responsive"
				style="height: 282px; scrollbar-width: thin;">
				<table class="table align-middle mb-0 bg-white table-sticky">
					<thead class="bg-light">
						<tr>
							<th>STT</th>
							<th>Mã sân</th>
							<th>Tên sân</th>
							<th>Loại sân</th>
							<th>Giá</th>
							<th>Địa chỉ</th>
							<th>Trạng thái</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>S100</td>
							<td>Sân cầu lông</td>
							<td>Trong nhà</td>
							<td>1.000.000đ</td>
							<td>215 Nguyễn Văn Cừ, P4, Quận 1</td>
							<td><span class="badge text-bg-success rounded-pill">Hoạt
									động</span></td>
							<td>
								<div class="d-flex justify-content-between" style="width: 90px;">
									<button
										class="btn btn-outline-primary border-0 btn-icon-circle">
										<i class="fa-regular fa-pen-to-square"></i>
									</button>
									<button class="btn btn-outline-danger border-0 btn-icon-circle">
										<i class="fa-regular fa-trash-can"></i>
									</button>
								</div>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>S101</td>
							<td>Sân cầu lông</td>
							<td>Trong nhà</td>
							<td>1.100.000đ</td>
							<td>215 Nguyễn Văn Cừ, P4, Quận 1</td>
							<td><span class="badge text-bg-danger rounded-pill">Chưa
									đặt</span></td>
							<td>
								<div class="d-flex justify-content-between" style="width: 90px;">
									<button
										class="btn btn-outline-primary border-0 btn-icon-circle">
										<i class="fa-regular fa-pen-to-square"></i>
									</button>
									<button class="btn btn-outline-danger border-0 btn-icon-circle">
										<i class="fa-regular fa-trash-can"></i>
									</button>
								</div>
							</td>
						</tr>
						<tr>
							<td>3</td>
							<td>S103</td>
							<td>Sân cầu lông</td>
							<td>Trong nhà</td>
							<td>1.120.000đ</td>
							<td>215 Nguyễn Văn Cừ, P4, Quận 1</td>
							<td><span
								class="badge text-bg-warning rounded-pill text-white">Đã
									đặt</span></td>
							<td>
								<div class="d-flex justify-content-between" style="width: 90px;">
									<button
										class="btn btn-outline-primary border-0 btn-icon-circle">
										<i class="fa-regular fa-pen-to-square"></i>
									</button>
									<button class="btn btn-outline-danger border-0 btn-icon-circle">
										<i class="fa-regular fa-trash-can"></i>
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