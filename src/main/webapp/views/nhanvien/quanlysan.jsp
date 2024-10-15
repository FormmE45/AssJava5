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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/style.css">
    <title>Quản lý sân</title>
    <style type="text/css">
		/* Showing badminton court */
		img.hinhSan {
		    max-width: none;
		    max-height: none;
		    object-fit: cover;
		    width: 100%;
		    height: 100%;
		}
    </style>
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
                                <div class="col-lg-2 col-md-0 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-house"></i>
                                </div>
                                <div class="col-lg-10 col-md-12 pe-0">
                                    Trang chủ
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="/badmintonManager" class="nav-link active">
                            <div class="row">
                                <div class="col-lg-2 col-md-0 d-flex justify-content-center align-items-center">
                                    <i class="fa-regular fa-clipboard"></i>
                                </div>
                                <div class="col-lg-10 col-md-12 pe-0">
                                    Quản lý sân
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="/courtOrderManager" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-lg-2 col-md-0 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-chalkboard"></i>
                                </div>
                                <div class="col-lg-10 col-md-12 pe-0">
                                    Quản lý đặt sân
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="#" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-lg-2 col-md-0 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-ticket"></i>
                                </div>
                                <div class="col-lg-10 col-md-12 pe-0">
                                    Quản lý ưu đãi
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="/employeeManager" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-2 col-md-0 d-flex justify-content-center align-items-center">
                                    <i class="fa-solid fa-users"></i>
                                </div>
                                <div class="col-10 pe-0">
                                    Quản lý nhân viên
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="nav-item" style="height: 40px;">
                        <a href="/customerManager" class="nav-link link-body-emphasis">
                            <div class="row">
                                <div class="col-2 col-md-0 d-flex justify-content-center align-items-center">
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
                <div class="dropup">
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
        <div class="col-10 py-3">
            <h3 class="ms-5">Quản lý sân</h3>
            <hr>
			<c:if test="${not empty errorNotFound}">
				<div class="rounded-4 bg-danger-subtle p-3 mt-1 mb-3 text-danger">${errorNotFound}</div>
			</c:if>
            <!-- Thông tin sân -->
            <div class="rounded px-5 mt-2">
                <div class="row">
                    <div class="col-4">
                        <!-- Ảnh sân -->
                        <c:if test="${empty sanChiTiet.badmintonCourtPics}">
	                        <div class="row">
	                            <div class="col-8 ps-0">
	                                <img src="https://media.architecturaldigest.com/photos/60d5eb352990a3040500dc40/16:9/w_5455,h_3068,c_limit/Waterfalling%20Estate%2006-30-2020%20002.jpg"
	                                    alt="" class="hinhSan">
	                            </div>
	                            <div class="col-4 px-0">
	                                <div class="row mb-2">
	                                    <img src="https://cdn.speedsize.com/360481fb-1d0c-442f-ad69-87be324bfa71/https://www.neilson.co.uk/sites/default/files/styles/hub_article_info_block_focal_point_mobile/public/2017-08/grass-court_1_1.jpg?h=f4c57e75&ss_h=dfa52849&itok=70__Q7d9"
	                                        alt="" class="hinhSan">
	                                </div>
	                                <div class="row">
	                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ89aac80RhRN2a0D0WIoIFkURunMcNim7IQw&s"
	                                        alt="" class="hinhSan">
	                                </div>
	                            </div>
	                        </div>
                        </c:if>
                        <c:if test="${not empty sanChiTiet.badmintonCourtPics}">
						<div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
							<div class="carousel-inner">
							    <c:forEach var="pic" items="${sanChiTiet.badmintonCourtPics}" varStatus="num">
								    <div class="carousel-item <c:if test="${num.index == 0}">active</c:if>">
								      	<img src="${pic.linkAnh}" class="d-block w-100" alt="Image">
								    </div>
							    </c:forEach>
						  	</div>
						  	<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
						  		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						    	<span class="visually-hidden">Previous</span>
						  	</button>
						  	<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
						    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
						    	<span class="visually-hidden">Next</span>
						  	</button>
						</div>
                        </c:if>
                    </div>
                    <div class="col-8 px-5">
                        <!-- maSan tenSan loaiSan giaSan thoiGianSan diaChiSan moTaSan -->
                        <form:form action="/badmintonUpdate" method="post" class="row" modelAttribute="sanChiTiet">
                            <div class="col-6">
                                <div class="row mb-3">
                                    <label for="id" class="col-3 col-form-label fw-bold">Mã sân</label>
                                    <div class="col-9">
                                        <form:input path="id" class="form-control" id="id" readonly="true" />
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="name" class="col-3 col-form-label fw-bold">Tên sân</label>
                                    <div class="col-9">
                                        <form:input path="name" class="form-control" id="name" />
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="type" class="col-3 col-form-label fw-bold">Loại sân</label>
                                    <div class="col-9">
                                        <form:input path="type" class="form-control" id="type" />
									</select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="row mb-3">
                                    <label for="price" class="col-3 col-form-label fw-bold">Giá sân</label>
                                    <div class="col-9">
                                        <form:input path="price" class="form-control" id="price" type="number" />
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="address" class="col-3 col-form-label fw-bold">Địa chỉ</label>
                                    <div class="col-9">
                                        <form:input path="address" class="form-control" id="address" />
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <label for="description" class="col-3 col-form-label fw-bold">Mô tả</label>
                                    <div class="col-9">
                                        <form:textarea path="description" class="form-control" id="description" rows="3" />
                                    </div>
                                </div>
                            </div>
			                <div class="d-flex justify-content-end">
			                    <div class="">
			                        <a href="/badmintonAdd" class="btn btn-success text-white fw-bold rounded-3">Thêm mới</a>
			                        <button class="btn btn-warning text-white fw-bold rounded-3">Cập nhật</button>
			                    </div>
			                </div>
                        </form:form>
                    </div>
                </div>
            </div>
            <hr>
            <!-- Tìm kiếm -->
            <div class="px-5 my-3 mx-auto" style="width: 90%">
                <form action="/badmintonManager" onsubmit="disableEmptyInputs(this)" id="searchForm">
					<div class="row mb-2">
						<div class="col-6">
							<div class="row">
								<label for="searchName"
									class="col-2 col-form-label fw-bold">Tìm</label>
								<div class="col-10">
									<input type="text" class="form-control"
										name="searchName" value="${searchName}" />
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<div class="row">
								<label for="searchType" class="col-2 col-form-label fw-bold">Loại</label>
								<div class="col-10">
									<select class="form-select" aria-label="Type" name="searchType">
										<option value="tatca">Tất cả</option>
										<c:forEach var="loaiSanItem" items="${loaiSan}">
											<option value="${loaiSanItem.key}"
												<c:if test="${searchType == loaiSanItem.key}">selected</c:if>>${loaiSanItem.value}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
						<div class="col-6">
							<div class="row">
								<label for="searchCountry" class="col-2 col-form-label fw-bold">Khu vực</label>
								<div class="col-10">
									<select class="form-select" aria-label="Country" name="searchCountry">
										<c:forEach var="khuVucItem" items="${khuvuc}">
											<option value="${khuVucItem.key}"
												<c:if test="${searchCountry == khuVucItem.key}">selected</c:if>>${khuVucItem.value}</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<div class="row">
								<label class="col-2 col-form-label fw-bold">Giá</label>
						        <div class="col-10 text-center">
						            <div class="d-flex justify-content-between px-1" style="font-size: 14px; margin-bottom: -11px">
						                <span id="minPriceText"><fmt:formatNumber type="number" maxFractionDigits="3" value="${minPrice}"/></span>
						                <span id="maxPriceText"><fmt:formatNumber type="number" maxFractionDigits="3" value="${maxPrice}"/></span>
						            </div>
						            
						            <div class="row">
						                <div class="col">
						                    <input type="range" class="form-range" style="height: 0 !important" id="minSlider" name="minPrice"
						                           min="0" max="1000000" value="${minPrice}" step="100000">
						                </div>
						                <div class="col">
						                    <input type="range" class="form-range" style="height: 0 !important" id="maxSlider" name="maxPrice"
						                           min="0" max="1000000" value="${maxPrice}" step="100000">
						                </div>
						            </div>
						        </div>
							</div>
					        
						    <script>
							    const minSlider = document.getElementById('minSlider');
							    const maxSlider = document.getElementById('maxSlider');
							    const minPriceText = document.getElementById('minPriceText');
							    const maxPriceText = document.getElementById('maxPriceText');
							    
							    function updateMinPrice() {
							        let minVal = parseInt(minSlider.value);
							        let maxVal = parseInt(maxSlider.value);
	
							        if (minVal >= maxVal) {
							            minSlider.value = maxVal - 100000;
							            minVal = maxVal - 100000;
							        }
	
							        minPriceText.textContent = minVal.toLocaleString('it-IT');
							    }
							    
							    function updateMaxPrice() {
							        let minVal = parseInt(minSlider.value);
							        let maxVal = parseInt(maxSlider.value);
	
							        if (maxVal <= minVal) {
							            maxSlider.value = minVal + 100000;
							            maxVal = minVal + 100000;
							        }
	
							        maxPriceText.textContent = maxVal.toLocaleString('it-IT');
							    }

							    minSlider.addEventListener('input', updateMinPrice);
							    maxSlider.addEventListener('input', updateMaxPrice);
							</script>
						</div>
						<div class="col-6">
							<div class="btn-group w-100 h-100" role="group">
								<input type="radio" class="btn-check" name="sort"
									id="sort1" autocomplete="off" value="asc" <c:if test="${sort == 'asc'}">checked</c:if> onchange="submitForm()"/> 
								<label class="h-100 btn btn-outline-danger px-2 pt-1" for="sort1"> 
									<i class="fa-solid fa-arrow-down-wide-short"></i> Giá cao-thấp
								</label> 
								<input type="radio" class="btn-check" name="sort"
									id="sort2" autocomplete="off" value="desc" <c:if test="${sort == 'desc'}">checked</c:if>  onchange="submitForm()"/> 
								<label class="h-100 btn btn-outline-danger px-2 pt-1" for="sort2"> 
									<i class="fa-solid fa-arrow-down-short-wide"></i> Giá thấp-cao
								</label>
							</div>
						</div>
					</div>
					<div class="d-flex justify-content-end">
						<div class="mx-2">
							<button class="w-100 btn btn-success">Search</button>
						</div>
						<div class="">
							<a href="/badmintonManager" class="w-100 btn btn-primary">Clear</a>
						</div>
					</div>
				</form>
            </div>
            <hr>
            <!-- Danh sách -->
            <div class="px-5 overflow-auto">
                <table class="table align-middle mb-0 bg-white table-sticky">
                    <thead class="bg-light">
                        <tr>
                            <th>Mã sân</th>
                            <th>Tên sân</th>
                            <th>Loại sân</th>
                            <th>Giá sân</th>
                            <th>Địa chỉ</th>
                            <th>Trạng thái</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach var="san" items="${sans.content}">
		                    <tr onclick="window.location='/badmintonManager/${san.id}${urlString}';" style="cursor: pointer;">
		                        <td>${san.id}</td>
		                        <td>${san.name}</td>
		                        <td>${san.type}</td>
		                        <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${san.price}"/></td>
		                        <td>${san.address}</td>
		                        <td>
		                        	<c:if test="${san.availability}"><span class="badge text-bg-success rounded-pill">Hoạt động</span></c:if>
		                        	<c:if test="${not san.availability}"><span class="badge text-bg-danger rounded-pill">Chưa đặt</span></c:if>
		                        </td>
		                        <td>
                                    <a href="/badmintonManager/${san.id}" class="btn btn-outline-primary border-0 btn-sm">
                                        <i class="fa-regular fa-pen-to-square"></i>
                                    </a>
                                    <a href="/badmintonRemove/${san.id}" class="btn btn-outline-danger border-0 btn-sm" onclick="return confirm('Are you sure?') ? true : false;">
                                        <i class="fa-regular fa-trash-can"></i>
                                    </a>
	                            </td>
		                    </tr>
		                </c:forEach>
                    </tbody>
                </table>
	            <c:set var="delta" value="2" />
	            <c:set var="startPage" value="${currentPage - delta < 1 ? 1 : currentPage - delta}" />
	            <c:set var="endPage" value="${currentPage + delta > sans.totalPages ? sans.totalPages : currentPage + delta}" />
				<c:if test="${sans.totalPages > 1}">
		            <nav aria-label="Phân Trang" class="mt-3">
		                <ul class="pagination justify-content-end">
		                    <li class="page-item <c:if test='${sans.first}'>disabled</c:if>">
		                        <a class="page-link" href="${urlString}&page=${sans.first ? 1 : currentPage - 1}">Trước</a>
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
		
		                    <c:if test="${endPage < sans.totalPages}">
		                        <c:if test="${endPage < sans.totalPages - 1}">
		                            <li class="page-item disabled"><span class="page-link">...</span></li>
		                        </c:if>
		                        <li class="page-item">
		                            <a class="page-link" href="${urlString}&page=${sans.totalPages}">${sans.totalPages}</a>
		                        </li>
		                    </c:if>
		
		                    <li class="page-item <c:if test='${sans.last}'>disabled</c:if>">
		                        <a class="page-link" href="${urlString}&page=${sans.last ? sans.totalPages : currentPage + 1}">Sau</a>
		                    </li>
		                </ul>
		            </nav>
	            </c:if>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>