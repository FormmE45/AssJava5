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
    <title>Chi tiết nhân viên</title>
</head>

<body>
    <div class="container bg-body-tertiary rounded p-4 shadow" style="width: 55%;">
        <form action="">
            <div class="row">
                <div class="col-4 d-flex justify-content-center align-items-center">
                    <img src="https://img.freepik.com/premium-vector/badminton-player-match-illustration_9245-796.jpg" alt="" width="250" height="250" class="rounded-circle img-fluid">
                </div>
                <div class="col-8">
                    <div class="row mb-3">
                        <label for="maNhanVien" class="col-3 col-form-label fw-bold">Mã nhân viên</label>
                        <div class="col-9">
                            <input type="text" class="form-control" id="maNhanVien" name="maNhanVien">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="tenNhanVien" class="col-3 col-form-label fw-bold">Tên nhân viên</label>
                        <div class="col-9">
                            <input type="text" class="form-control" id="tenNhanVien" name="tenNhanVien">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="tenNhanVien" class="col-3 col-form-label fw-bold">Giới tính</label>
                        <div class="col-9">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gioiTinh" id="nam" value="nam" checked>
                                <label class="form-check-label" for="nam">Nam</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gioiTinh" id="nu" value="nu">
                                <label class="form-check-label" for="nu">Nữ</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="emailNhanVien" class="col-3 col-form-label fw-bold">Email</label>
                        <div class="col-9">
                            <input type="email" class="form-control" id="emailNhanVien" name="emailNhanVien">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="sdtNhanVien" class="col-3 col-form-label fw-bold">Số điện thoại</label>
                        <div class="col-9">
                            <input type="text" class="form-control" id="sdtNhanVien" name="sdtNhanVien">
                        </div>
                    </div>
                    <div class="row">
                        <label for="tenNhanVien" class="col-3 col-form-label fw-bold">Vai trò</label>
                        <div class="col-9">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="vaiTro" id="quanTri" value="quanTri" checked>
                                <label class="form-check-label" for="quanTri">Quản trị</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="vaiTro" id="nhanVien" value="nhanVien">
                                <label class="form-check-label" for="nhanVien">Nhân viên</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row mb-3">
                <div class="col-5">
                    <div class="row">
                        <label for="matKhau" class="col-4 col-form-label fw-bold">Mật khẩu</label>
                        <div class="col-8">
                            <input type="text" class="form-control" id="matKhau" name="matKhau">
                        </div>
                    </div>
                </div>
                <div class="col-7">
                    <div class="row">
                        <label for="xacNhanMatKhau" class="col-5 col-form-label fw-bold">Xác nhận mật khẩu</label>
                        <div class="col-7">
                            <input type="text" class="form-control" id="xacNhanMatKhau" name="xacNhanMatKhau">
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-evenly">
                <button class="btn btn-success rounded-pill text-white">Cập nhật thông tin</button>
                <button class="btn btn-danger rounded-pill text-white">Vô hiệu hóa tài khoản</button>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
</body>

</html>