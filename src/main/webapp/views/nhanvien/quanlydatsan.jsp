<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
					<li class="nav-item" style="height: 40px;">
						<a href="badmintonManager"
							class="nav-link link-body-emphasis">
								<div class="row">
									<div
										class="col-2 d-flex justify-content-center align-items-center">
										<i class="fa-regular fa-clipboard"></i>
									</div>
									<div class="col-10 pe-0">Quản lý sân</div>
								</div>
						</a>
					</li>
					<li class="nav-item" style="height: 40px;"><a
						href="courtOrderManager" class="nav-link active">
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
						href="employeeManager" class="nav-link link-body-emphasis">
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
				<form action="/courtOrderManager" onsubmit="disableEmptyInputs(this)" id="searchForm">
					<div class="row mb-2">
						<div class="col-6">
							<div class="row">
								<label for="searchCustomer"
									class="col-2 col-form-label fw-bold" style="font-size: 15px">Tìm người</label>
								<div class="col-10">
									<input type="text" class="form-control"
										name="searchCustomer" value="${searchCustomer}" />
								</div>
							</div>
						</div>
						<div class="col-6">
							<div class="row">
								<label for="searchCourt"
									class="col-2 col-form-label fw-bold">Tìm sân</label>
								<div class="col-10">
									<input type="text" class="form-control"
										name="searchCourt" value="${searchCourt}" />
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<div class="row">
								<label for="status" class="col-2 col-form-label fw-bold" style="font-size: 15px">Tình trạng</label>
								<div class="col-10">
									<select class="form-select" aria-label="Type" name="status">
										<option value="tatca">Tất cả</option>
										<c:forEach var="tinhTrangItem" items="${tinhTrang}">
											<option value="${tinhTrangItem.key}"
												<c:if test="${searchStatus == tinhTrangItem.key}">selected</c:if>>${tinhTrangItem.value}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<div class="col-6">
							<div class="row">
								<label class="col-2 col-form-label fw-bold">Thời gian</label>
						        <div class="col-10 text-center">
						            <div class="d-flex justify-content-between px-1" style="font-size: 14px; margin-bottom: -11px">
						                <span id="minTimeText"><fmt:formatNumber type="number" maxFractionDigits="3" value="${minTime}"/></span>
						                <span id="maxTimeText"><fmt:formatNumber type="number" maxFractionDigits="3" value="${maxTime}"/></span>
						            </div>
						            
						            <div class="row">
						                <div class="col">
						                    <input type="range" class="form-range" style="height: 0 !important" id="minSlider" name="minTime"
						                           min="6" max="22" value="${minTime}" step="1">
						                </div>
						                <div class="col">
						                    <input type="range" class="form-range" style="height: 0 !important" id="maxSlider" name="maxTime"
						                           min="6" max="22" value="${maxTime}" step="1">
						                </div>
						            </div>
						        </div>
							</div>
					        
						    <script>
							    const minSlider = document.getElementById('minSlider');
							    const maxSlider = document.getElementById('maxSlider');
							    const minTimeText = document.getElementById('minTimeText');
							    const maxTimeText = document.getElementById('maxTimeText');
							    
							    function updateMin() {
							        let minVal = parseInt(minSlider.value);
							        let maxVal = parseInt(maxSlider.value);
	
							        if (minVal >= maxVal) {
							            minSlider.value = maxVal - 1;
							            minVal = maxVal - 1;
							        }
	
							        minTimeText.textContent = minVal.toLocaleString('it-IT');
							    }
							    
							    function updateMax() {
							        let minVal = parseInt(minSlider.value);
							        let maxVal = parseInt(maxSlider.value);
	
							        if (maxVal <= minVal) {
							            maxSlider.value = minVal + 1;
							            maxVal = minVal + 1;
							        }
	
							        maxTimeText.textContent = maxVal.toLocaleString('it-IT');
							    }

							    minSlider.addEventListener('input', updateMin);
							    maxSlider.addEventListener('input', updateMax);
							</script>
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<div class="mx-2">
							<button class="w-100 btn btn-success">Search</button>
						</div>
						<div class="">
							<a href="/courtOrderManager" class="w-100 btn btn-primary">Clear</a>
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
							<th>Tên sân</th>
							<th>Ngày đặt</th>
							<th>Thời gian</th>
							<th>Tình trạng</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="courtOrderItem" items="${courtOrders.content}">
							<tr onclick="window.location='/courtOrderManager/${courtOrderItem.id}';" style="cursor: pointer;">
								<td>${courtOrderItem.id}</td>
								<td>${courtOrderItem.customer.name}</td>
								<td>${courtOrderItem.badmintoncourt.name}</td>
								<td><fmt:formatDate type="date" pattern="dd/MM" value="${courtOrderItem.date}"/></td>
								<td>
									<fmt:formatDate type="time" pattern="HH:mm" value="${courtOrderItem.start}"/>
									 - 
									<fmt:formatDate type="time" pattern="HH:mm" value="${courtOrderItem.end}"/>
								</td>
								<td>
									<c:if test="${courtOrderItem.status == 'Đã thanh toán'}">
										<span class="badge text-bg-success rounded-pill">Đã thanh toán</span>
									</c:if>
									<c:if test="${courtOrderItem.status == 'Đang xử lý'}">
										<span class="badge text-bg-warning rounded-pill text-white">Đang xử lý</span>
									</c:if>
								</td>
								<td>
									<a href="/courtOrderManager/${courtOrderItem.id}" class="btn btn-primary border-0 btn-sm">
										<i class="fa-solid fa-eye"></i>
									</a>
									<a href="/courtOrderChecked/${courtOrderItem.id}" onclick="return confirm('Are you sure?') ? true : false;"
										class="btn
										<c:choose>
											<c:when test="${courtOrderItem.status == 'Đã thanh toán'}">
												btn-success disabled
											</c:when>
											<c:otherwise>
												btn-warning
											</c:otherwise>
										</c:choose> 
										border-0 btn-sm text-white">
										<i class="fa-solid fa-check"></i>
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
	            <c:set var="delta" value="2" />
	            <c:set var="startPage" value="${currentPage - delta < 1 ? 1 : currentPage - delta}" />
	            <c:set var="endPage" value="${currentPage + delta > courtOrders.totalPages ? courtOrders.totalPages : currentPage + delta}" />
				<c:if test="${courtOrders.totalPages > 1}">
		            <nav aria-label="Phân Trang" class="mt-3">
		                <ul class="pagination justify-content-end">
		                    <li class="page-item <c:if test='${courtOrders.first}'>disabled</c:if>">
		                        <a class="page-link" href="${urlString}&page=${courtOrders.first ? 1 : currentPage - 1}">Trước</a>
		                    </li>
		
		                    <c:if test="${startPage > 1}">
		                        <li class="page-item">
		                            <a class="page-link" href="${urlString}&page=1">1</a>
		                        </li>
		                        <c:if test="${startPage > 2}">
		                            <li class="page-item disabled"><span class="page-link">...</span></li>
		                        </c:if>
		                    </c:if>
		
		                    <c:forEach var="page" begin="${startPage}" end="${endPage}">
		                        <li class="page-item <c:if test='${page == currentPage}'>active</c:if>">
		                            <a class="page-link" href="${urlString}&page=${page}">${page}</a>
		                        </li>
		                    </c:forEach>
		
		                    <c:if test="${endPage < courtOrders.totalPages}">
		                        <c:if test="${endPage < courtOrders.totalPages - 1}">
		                            <li class="page-item disabled"><span class="page-link">...</span></li>
		                        </c:if>
		                        <li class="page-item">
		                            <a class="page-link" href="${urlString}&page=${courtOrders.totalPages}">${courtOrders.totalPages}</a>
		                        </li>
		                    </c:if>
		
		                    <li class="page-item <c:if test='${courtOrders.last}'>disabled</c:if>">
		                        <a class="page-link" href="${urlString}&page=${courtOrders.last ? courtOrders.totalPages : currentPage + 1}">Sau</a>
		                    </li>
		                </ul>
		            </nav>
	            </c:if>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>