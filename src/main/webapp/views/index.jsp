<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Trang chủ</title>
    <style>
        nav .nav-link {
            color: rgba(255, 255, 255, 0.8) !important;
        }

        nav .nav-link:hover {
            color: rgba(255, 255, 255) !important;
        }

        .btn.rounded-circle {
            width: 2.3125rem;
            line-height: 2.3125rem;
        }

        .btn.rounded-circle:hover {
            box-shadow: 0 8px 9px -4px rgba(0, 0, 0, 0.15), 0 4px 18px 0 rgba(0, 0, 0, 0.1);
        }
    </style>
</head>

<body>
    <nav class="navbar navbar-dark navbar-expand-md bg-faded justify-content-center sticky-top mb-4"
        style="background-color: #597a94;">
        <div class="container-fluid px-4">
            <a href="/" class="navbar-brand d-flex w-50 me-auto">Java 5</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsingNavbar3">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
                <ul class="navbar-nav w-100 justify-content-evenly">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="san">Sân</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Shop</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tin tức</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="nhanvien/quanlydatsan">Dành cho chủ sân</a>
                    </li>
                </ul>
                <ul class="nav navbar-nav ms-auto w-100 justify-content-end align-items-center">
                    <li class="nav-item pe-4">
                        <a class="nav-link position-relative" href="#">
                            <i class="fa-solid fa-cart-shopping fa-xl"></i>
                            <span class="position-absolute top-10 start-100 translate-middle badge rounded-pill bg-danger">99
                                <span class="visually-hidden">số lượng</span>
                            </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="signup">Đăng ký</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login">
                            <span class="btn btn-danger rounded-4 flex-grow-1">Đăng nhập</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="w-100 mb-4 position-relative overflow-none" style="height: 690px;">
        <div class="position-absolute w-100 h-75 d-flex align-items-center justify-content-center">
            <div class="row text-center m-0">
                <div class="col-12 text-white pb-5">
                    <h1 style="-webkit-text-stroke-color: black; -webkit-text-stroke-width: 1px;">
                        Sân của bạn, niềm vui của bạn</h1>
                    <h2 style="-webkit-text-stroke-color: black; -webkit-text-stroke-width: 1px;">
                        Trải nghiệm đặt sân cầu lông tiện lợi, dành thời gian cho những trận đấu hấp dẫn cùng bạn bè!
                    </h2>
                </div>
                <div class="col-12 d-flex justify-content-center">
                    <form action="" class="row bg-secondary-subtle rounded-4 px-2 py-3" style="width: 40%;">
                        <div class="col-5 d-flex flex-column">
                            <label for="timKhuVuc" class="form-label text-start ps-1 mb-1">
                                <i class="fa-solid fa-location-dot text-danger"></i> Khu vực
                            </label>
                            <input type="text" name="timKhuVuc" id="timKhuVuc" class="form-control">
                        </div>
                        <div class="col-5 d-flex flex-column">
                            <label for="timThoiGian" class="form-label text-start ps-1 mb-1">
                                <i class="fa-solid fa-clock text-danger"></i> Thời gian
                            </label>
                            <input type="text" name="timThoiGian" id="timThoiGian" class="form-control">
                        </div>
                        <div class="col-2 d-flex justify-content-center align-items-center p-0">
                            <button class="btn"><i class="fa-solid fa-magnifying-glass fa-2xl text-danger"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <img src="https://www.racquetpoint.com/cdn/shop/articles/what-is-badminton-racquet-point.jpg?v=1654120169"
            alt="" class="w-100 h-100" style="object-fit: cover;">
    </div>

    <!-- Body -->
    <div class="container">
        <div class="mb-4">
            <h3>Chọn sân của bạn</h3>
            <button class="btn btn-danger rounded-pill">Hồ Chí Minh</button> <button
                class="btn btn-outline-danger rounded-pill ms-2">Hà Nội</button>
            <div class="row flex-nowrap overflow-auto mt-2">
                <div class="col-4">
                    <div class="card shadow">
                        <div class="card-header">Quận 1</div>
                        <ul class="list-group list-group-flush py-1">
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://thethaothienlong.vn/wp-content/uploads/2022/04/Danh-sach-san-cau-long-o-tphcm-1.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://tigerturf.com/in/wp-content/uploads/2019/11/How-to-build-a-tennis-court-1440x1080.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://s42493.pcdn.co/wp-content/uploads/2023/07/courts-scaled.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card shadow">
                        <div class="card-header">Quận 2</div>
                        <ul class="list-group list-group-flush py-1">
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://thethaothienlong.vn/wp-content/uploads/2022/04/Danh-sach-san-cau-long-o-tphcm-1.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://tigerturf.com/in/wp-content/uploads/2019/11/How-to-build-a-tennis-court-1440x1080.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://s42493.pcdn.co/wp-content/uploads/2023/07/courts-scaled.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card shadow">
                        <div class="card-header">Quận 3</div>
                        <ul class="list-group list-group-flush py-1">
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://thethaothienlong.vn/wp-content/uploads/2022/04/Danh-sach-san-cau-long-o-tphcm-1.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://tigerturf.com/in/wp-content/uploads/2019/11/How-to-build-a-tennis-court-1440x1080.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                            <li class="list-group-item border-0">
                                <a href="" class="d-flex align-items-center text-black text-decoration-none">
                                    <div class="">
                                        <img src="https://s42493.pcdn.co/wp-content/uploads/2023/07/courts-scaled.jpg"
                                            alt="" class="rounded-4"
                                            style="width: 130px; height: 80px; object-fit: cover;">
                                    </div>
                                    <div class="w-100 h-100 ps-2">
                                        <span>Sân cầu lông</span>
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="mb-4">
            <h3>Ưu đãi cuối tuần</h3>
            <div class="row">
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB0TJzZCvbinhjb-e__BLBrRXITO9KdkoNlA&s"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Sân cầu lông</h5>
                            <p class="card-text fs-5">Giá:
                                <span class="text-decoration-line-through">500.000đ</span>
                                <span>200.000đ</span>
                            </p>
                            <div class="d-flex justify-content-evenly">
                                <a href="#" class="btn btn-outline-danger">Đặt ngay</a>
                                <a href="#" class="btn btn-danger">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB0TJzZCvbinhjb-e__BLBrRXITO9KdkoNlA&s"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Sân cầu lông</h5>
                            <p class="card-text fs-5">Giá:
                                <span class="text-decoration-line-through">500.000đ</span>
                                <span>200.000đ</span>
                            </p>
                            <div class="d-flex justify-content-evenly">
                                <a href="#" class="btn btn-outline-danger">Đặt ngay</a>
                                <a href="#" class="btn btn-danger">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB0TJzZCvbinhjb-e__BLBrRXITO9KdkoNlA&s"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Sân cầu lông</h5>
                            <p class="card-text fs-5">Giá:
                                <span class="text-decoration-line-through">500.000đ</span>
                                <span>200.000đ</span>
                            </p>
                            <div class="d-flex justify-content-evenly">
                                <a href="#" class="btn btn-outline-danger">Đặt ngay</a>
                                <a href="#" class="btn btn-danger">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB0TJzZCvbinhjb-e__BLBrRXITO9KdkoNlA&s"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Sân cầu lông</h5>
                            <p class="card-text fs-5">Giá:
                                <span class="text-decoration-line-through">500.000đ</span>
                                <span>200.000đ</span>
                            </p>
                            <div class="d-flex justify-content-evenly">
                                <a href="#" class="btn btn-outline-danger">Đặt ngay</a>
                                <a href="#" class="btn btn-danger">Xem chi tiết</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mb-4">
            <h3>Phụ kiện</h3>
            <div class="row">
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://product.hstatic.net/1000341630/product/fix_wweb-02_904663092c6e41fbb6cffee7844ce302_master.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Vợt cầu lông Tiến Minh Legend Limited</h5>
                            <p class="card-text fs-5">Giá: <span>1.500.000đ</span></p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="btn btn-outline-danger">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://product.hstatic.net/1000341630/product/fix_wweb-02_904663092c6e41fbb6cffee7844ce302_master.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Vợt cầu lông Tiến Minh Legend Limited</h5>
                            <p class="card-text fs-5">Giá: <span>1.500.000đ</span></p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="btn btn-outline-danger">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://product.hstatic.net/1000341630/product/fix_wweb-02_904663092c6e41fbb6cffee7844ce302_master.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Vợt cầu lông Tiến Minh Legend Limited</h5>
                            <p class="card-text fs-5">Giá: <span>1.500.000đ</span></p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="btn btn-outline-danger">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <div class="card shadow">
                        <img src="https://product.hstatic.net/1000341630/product/fix_wweb-02_904663092c6e41fbb6cffee7844ce302_master.jpg"
                            class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Vợt cầu lông Tiến Minh Legend Limited</h5>
                            <p class="card-text fs-5">Giá: <span>1.500.000đ</span></p>
                            <div class="d-flex justify-content-center">
                                <a href="#" class="btn btn-outline-danger">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="mt-4">
        <footer class="text-center text-lg-start text-white" style="background-color: #597a94;">
            <div class="container pt-4 pb-2">
                <div class="row mt-4">
                    <div class="col-6">
                        <div class="d-flex align-items-center justify-content-center my-4">
                            <img src="https://t3.ftcdn.net/jpg/00/54/89/08/360_F_54890802_j6XIBBYEpMf9D5mTZsSrqmXmJCtT3X0d.jpg" height="70" alt="" class="rounded-circle">
                            <h1 class="px-2">Java 5</h1>
                        </div>
                        <ul class="list-unstyled d-flex flex-row justify-content-center mb-5 mt-4">
                            <li class="px-2">
                                <a class="btn text-white btn-floating m-1 d-flex justify-content-center align-items-center" style="background-color: #3b5998; width: 35px; height: 35px;" href="#!" role="button">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="px-2">
                                <a class="btn text-white btn-floating m-1 d-flex justify-content-center align-items-center" style="background-color: #55acee; width: 35px; height: 35px;" href="#!" role="button">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li class="px-2">
                                <a class="btn text-white btn-floating m-1 d-flex justify-content-center align-items-center" style="background-color: #ac2bac; width: 35px; height: 35px;" href="#!" role="button">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                        </ul>
                        <div class="text-white-50 text-center">
                            <span>©2024 FPT Polytechnic</span>
                        </div>
                    </div>

                    <div class="col-3">
                        <h5 class="text-uppercase mb-4 fw-bold">Liên kết</h5>
                        <ul class="list-unstyled">
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Sân</a>
                            </li>
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Phụ kiện</a>
                            </li>
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Tin tức</a>
                            </li>
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Dành cho chủ sân</a>
                            </li>
                        </ul>
                    </div>

                    <div class="col-3">
                        <h5 class="text-uppercase mb-4 fw-bold">Liên hệ</h5>
                        <ul class="list-unstyled">
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Về chúng tôi</a>
                            </li>
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Chính sách bảo mật</a>
                            </li>
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Điều khoản sử dụng</a>
                            </li>
                            <li class="mb-2">
                                <a href="#!" class="text-white text-decoration-none">Hướng dẫn sử dụng</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>