<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<!doctype html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Quản lý sản phẩm chi tiết </title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="/admin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="/admin/assets/css/style.css">

    <%--    thư viện dùng select picker multiple  --%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.8.1/css/bootstrap-select.css">--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.8.1/js/bootstrap-select.js"></script>--%>
<%--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>--%>
    <%--    thư viện dùng select picker multiple  --%>

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <%-- import axios     --%>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>



<%--    Khai bao thu vien jquery--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <style>
        .messageError{
            color: red;
        }
    </style>
</head>
<body>
<!-- Left Panel -->
<jsp:include page="/WEB-INF/view/admin/layout/left_menu_admin.jsp"></jsp:include>
<!-- /Left Panel -->

<!-- Right Panel -->

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <jsp:include page="/WEB-INF/view/admin/layout/header_admin.jsp"></jsp:include>
    <!-- Header-->

    <div class="breadcrumbs">
        <div class="breadcrumbs-inner">
            <div class="row m-0">
                <div class="col-sm-4">
                    <div class="page-header float-left">
                        <div class="page-title">
                            <h1>Dashboard</h1>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="page-header float-right">
                        <div class="page-title">
                            <ol class="breadcrumb text-right">
                                <li><a href="#">Dashboard</a></li>
                                <li><a href="#">Quản lý giày</a></li>
                                <li class="active">Thêm giày mới</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="content" >
        <div class="animated fadeIn">
            <div class="card col-lg-12">
                <div class="card-header">
                    <div>
                        <strong class="card-title" ><h3>Thêm giày mới</h3></strong>
                    </div>
                </div>
                <div class="card-body">
                    <sf:form action="/admin/quanLySanPham/taoSanPhamChiTiet" method="post" modelAttribute="sanPhamChiTiet" class="row">
<%--                        <div class="col-lg-6">--%>
<%--                            <span>Mã (<i class="fa fa-asterisk" style="color: red;"></i>)</span>--%>
<%--                            <sf:input path="ma" type="text" style="margin-top: 5px;" class="form-control"/>--%>
<%--                            <sf:errors path="ma" cssClass="text-danger" />--%>
<%--                            <c:if test="${trungMa==true}">--%>
<%--                                <p class="text-danger">Mã sản phẩm đã có trong hệ thống, vui lòng nhập mã mới</p>--%>
<%--                            </c:if>--%>
<%--                        </div>--%>
                        <div class="col-lg-10">
                            <span>Tên giày (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="thuongHieu" id="danhSachTenGiay" class="form-control" onchange="resetCheckTenGiay()">
                                <option value="">Chọn tên giày</option>
                            </select>
                            <span id="checkTenGiay" style="color: red;"></span>
                        </div>
                        <div class="col-lg-2" style="margin-top: 23px;">
                            <button class="btn btn-success"><i class="menu-icon fa fa-plus" style="margin-right: 5px; "></i>Thêm</button>
                        </div>

                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Thương hiệu (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="thuongHieu" id="danhSachThuongHieu" class="form-control" onchange="resetCheckThuongHieu()">
                                <option value="">Chọn thương hiệu</option>
                            </select>
                            <span id="checkThuongHieu" style="color: red;"></span>
                        </div>
                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Nhà sản xuất (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="thuongHieu" id="danhSachNSX" class="form-control" onchange="resetCheckNSX()">
                                <option value="">Chọn nhà sản xuất</option>
                            </select>
                            <span id="checkNSX" style="color: red;"></span>
                        </div>


                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Danh mục (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="danhMuc" id="danhSachDanhMuc" class="form-control" onchange="resetCheckDanhMuc()">
                                <option value="">Chọn danh mục</option>
                            </select>
                            <span id="checkDanhMuc" style="color: red;"></span>
                        </div>

                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Loại sản phẩm (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="loaiSanPham" id="danhSachLoaiSanPham" class="form-control" onchange="resetCheckLoaiSanPham()">
                                <option value="">Chọn loại sản phẩm</option>
                            </select>
                            <span id="checkLoaiSP" style="color: red;"></span>
                        </div>

                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Kiểu dáng (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="kieuDang" id="danhSachKieuDang" class="form-control" onchange="resetCheckKieuDang()">
                                <option value="">Chọn kiểu dáng</option>
                            </select>
                            <span id="checkKieuDang" style="color: red;"></span>
                        </div>

                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Chất liệu (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="chatLieu" id="danhSachChatLieu" class="form-control" onchange="resetCheckChatLieu()">
                                <option value="">Chọn chất liệu</option>
                            </select>
                            <span id="checkChatLieu" style="color: red;"></span>
                        </div>

                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Mũi giày (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="muiGiay" id="danhSachMuiGiay" class="form-control" onchange="resetCheckMuiGiay()">
                                <option value="">Chọn mũi giày</option>
                            </select>
                            <span id="checkMuiGiay" style="color: red;"></span>
                        </div>
                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Dây giày (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="dayGiay" id="danhSachDayGiay" class="form-control" onchange="resetCheckDayGiay()">
                                <option value="">Chọn dây giày</option>
                            </select>
                            <span id="checkDayGiay" style="color: red;"></span>
                        </div>
                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Đế giày (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="deGiay" id="danhSachDeGiay" class="form-control" onchange="resetCheckDeGiay()">
                                <option value="">Chọn đế giày</option>
                            </select>
                            <span id="checkDeGiay" style="color: red;"></span>
                        </div>
                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Lót giày (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="lotGiay" id="danhSachLotGiay" class="form-control" onchange="resetCheckLotGiay()">
                                <option value="">Chọn lót giày</option>
                            </select>
                            <span id="checkLotGiay" style="color: red;"></span>
                        </div>
                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Màu sắc (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="lotGiay" id="danhSachMauSac" class="form-control" onchange="resetCheckMauSac()">

                            </select>
                            <span id="checkMauSac" style="color: red;"></span>
                        </div>
                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Size giày (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <select name="lotGiay" id="danhSachSizeGiay" class="form-control" onchange="resetCheckSizeGiay()">

                            </select>
                            <span id="checkSizeGiay" style="color: red;"></span>
                        </div>

                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Số lượng  (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <input type="number" id="soLuong" name="soLuong" class="form-control" value="100">
                            <span id="checkSoLuong" style="color: red;"></span>
                        </div>

                        <div class="col-lg-3" style="margin-top: 20px;">
                            <span>Khối lượng  (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <input type="number" id="khoiLuong" name="khoiLuong" class="form-control" value="200">
                            <span id="checkKhoiLuong" style="color: red;"></span>
                        </div>

                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Giá bán  (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <input type="text" id="giaTriSanPham" name="giaTriSanPham" class="form-control" value="500000">
                            <span id="checkGiaTriSanPham" style="color: red;"></span>
                        </div>

                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Mô tả (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <textarea id="moTa" rows="3" cols="50" class="form-control" style="margin-top: 5px;" name="moTa" onchange="resetCheckMoTa()"></textarea>

                            <span id="checkMoTa" style="color: red;"></span>
                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Trạng thái </span>
                            <br>
                            <input type="radio" id="hoatDong" name="trangThai" value="1"  style="transform: scale(1.6); margin-right: 5px;">
                            <label for="hoatDong">Hoạt động</label>
                            <input type="radio" id="ngungHoatDong" name="trangThai" value="0"  style="transform: scale(1.6); margin-right: 5px; margin-left: 20px;">
                            <label for="hoatDong">Ngưng hoạt động</label>
                            <br>
                            <span id="checkHoatDong" style="color: red;" ></span>
                        </div>

                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Chọn 1 ảnh chính (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <br>
                            <span id="checkChonAnhChinh" style="color: red;" ></span>
                            <input type="file"  name="hinhAnh" id="chonMotAnhChinh"   style="margin-right: 5px;">
                            <img id="previewImage" src="#" style="margin-top: 10px; width: 300px; height: 300px;" >

                        </div>
                        <div class="col-lg-6" style="margin-top: 20px;">
                            <span>Chọn 1-5 ảnh sản phẩm (<i class="fa fa-asterisk" style="color: red;"></i>)</span>
                            <br>
                            <span id="checkChonAnhPhu" style="color: red;" ></span>
                            <input type="file" id="anhSanPhamCon"  name="hinhAnh"   style="margin-right: 5px;" multiple onchange="eventChangeChooseHinhAnhCon();">
                            <div id="danhSachHinhAnhConDuocChon"></div>
                        </div>

                        <div class="col-lg-4 justify-content-end" style="margin-top: 20px; ">
                            <a href="#" class="btn btn-primary" onclick="themMoiGiayChiTiet();">
                                <i class="menu-icon fa fa-plus"></i> Thêm mới
                            </a>
                            <a href="/admin/quanLySanPham/hien-thi" class="btn btn-secondary">
                                <i class="menu-icon fa fa-undo"></i> Quay lại
                            </a>
                        </div>
                    </sf:form>

                </div>
            </div>
        </div><!-- .animated -->
    </div><!-- .content -->




    <div class="clearfix"></div>

    <!-- footer -->
    <jsp:include page="/WEB-INF/view/admin/layout/footer.jsp"></jsp:include>
    <!--/ footer -->




</div><!-- /#right-panel -->

<!-- Right Panel -->

<!-- Scripts -->



<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
<script src="/admin/assets/js/main.js"></script>

<script>

    // hàm thực hiện mỗi lần load trang sẽ thực hiện các hàm bên trong
    document.addEventListener("DOMContentLoaded", function() {
        fetchDataToSelect_tenSanPham();
        fetchDataToSelect_tenThuongHieu();
        fetchDataToSelect_tenNSX();
        fetchDataToSelect_tenDanhMuc();
        fetchDataToSelect_tenLoaiSanPham();
        fetchDataToSelect_tenKieuDang();
        fetchDataToSelect_tenChatLieu();
        fetchDataToSelect_tenMuiGiay();
        fetchDataToSelect_tenDayGiay();
        fetchDataToSelect_tenDeGiay();
        fetchDataToSelect_tenLotGiay();

        fetchDataToSelect_tenMauSac();
        fetchDataToSelect_tenSizeGiay();

        var giaTriSanPham = document.getElementById("giaTriSanPham");
        formatCurrency(giaTriSanPham);
    });


    function fetchDataToSelect_tenSanPham() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachSanPham",
            type: "GET",
            success: function(data) {
                console.log("Danh sách sản phẩm " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachSanPham = data;
                if (danhSachSanPham && danhSachSanPham.length > 0) {
                    var select = $('#danhSachTenGiay');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn sản phẩm" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachSanPham.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenThuongHieu() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachThuongHieu",
            type: "GET",
            success: function(data) {
                console.log("Danh sách thương hiệu " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachThuongHieu = data;
                if (danhSachThuongHieu && danhSachThuongHieu.length > 0) {
                    var select = $('#danhSachThuongHieu');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn thương hiệu" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachThuongHieu.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenNSX() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachNSX",
            type: "GET",
            success: function(data) {
                console.log("Danh sách NSX " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachNSX = data;
                if (danhSachNSX && danhSachNSX.length > 0) {
                    var select = $('#danhSachNSX');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn nhà sản xuất" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachNSX.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenDanhMuc() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachDanhMuc",
            type: "GET",
            success: function(data) {
                console.log("Danh sách danh mục " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachDanhMuc = data;
                if (danhSachDanhMuc && danhSachDanhMuc.length > 0) {
                    var select = $('#danhSachDanhMuc');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn danh mục" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachDanhMuc.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenLoaiSanPham() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachLoaiSanPham",
            type: "GET",
            success: function(data) {
                console.log("Danh sách loại sản phẩm " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachLoaiSanPham = data;
                if (danhSachLoaiSanPham && danhSachLoaiSanPham.length > 0) {
                    var select = $('#danhSachLoaiSanPham');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn loại sản phẩm" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachLoaiSanPham.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenKieuDang() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachKieuDang",
            type: "GET",
            success: function(data) {
                console.log("Danh sách kiểu dáng " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachKieuDang = data;
                if (danhSachKieuDang && danhSachKieuDang.length > 0) {
                    var select = $('#danhSachKieuDang');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn kiểu dáng" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachKieuDang.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenChatLieu() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachChatLieu",
            type: "GET",
            success: function(data) {
                console.log("Danh sách chất liệu " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachChatLieu = data;
                if (danhSachChatLieu && danhSachChatLieu.length > 0) {
                    var select = $('#danhSachChatLieu');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn chất liệu" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachChatLieu.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenMuiGiay() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachMuiGiay",
            type: "GET",
            success: function(data) {
                console.log("Danh sách mũi giày " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachMuiGiay = data;
                if (danhSachMuiGiay && danhSachMuiGiay.length > 0) {
                    var select = $('#danhSachMuiGiay');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn mũi giày" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachMuiGiay.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenDayGiay() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachDayGiay",
            type: "GET",
            success: function(data) {
                console.log("Danh sách dây giày " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachDayGiay = data;
                if (danhSachDayGiay && danhSachDayGiay.length > 0) {
                    var select = $('#danhSachDayGiay');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn dây giày" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachDayGiay.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenDeGiay() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachDeGiay",
            type: "GET",
            success: function(data) {
                console.log("Danh sách đế giày " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachDeGiay = data;
                if (danhSachDeGiay && danhSachDeGiay.length > 0) {
                    var select = $('#danhSachDeGiay');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn đế giày" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachDeGiay.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenLotGiay() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachLotGiay",
            type: "GET",
            success: function(data) {
                console.log("Danh sách lót giày " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachLotGiay = data;
                if (danhSachLotGiay && danhSachLotGiay.length > 0) {
                    var select = $('#danhSachLotGiay');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn lót giày" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachLotGiay.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }


    function fetchDataToSelect_tenMauSac() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachMauSac",
            type: "GET",
            success: function(data) {
                console.log("Danh sách màu sắc " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachMauSac = data;
                if (danhSachMauSac && danhSachMauSac.length > 0) {
                    var select = $('#danhSachMauSac');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn màu sắc" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachMauSac.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });
    }

    function fetchDataToSelect_tenSizeGiay() {
        $.ajax({
            url: "http://localhost:8080/api/ql-san-pham/getDanhSachSizeGiay",
            type: "GET",
            success: function(data) {
                console.log("Danh sách size giày: " + JSON.stringify(data));
                // Parse chuỗi JSON thành một đối tượng JavaScript
                var danhSachSizeGiay = data;
                if (danhSachSizeGiay && danhSachSizeGiay.length > 0) {
                    var select = $('#danhSachSizeGiay');
                    // Xóa các option hiện có trong thẻ select
                    select.empty();
                    select.append($('<option>', {
                        value: "", // Giá trị của option
                        text: "Chọn size giày" // Text hiển thị của option
                    }));

                    // Thêm option mới vào thẻ select từ kết quả trả về từ server
                    danhSachSizeGiay.forEach(function(item) {
                        // console.log("item : " + item.id);
                        select.append($('<option>', {
                            value: item.id, // Giá trị của option
                            text: item.ten // Text hiển thị của option
                        }));
                    });
                }
            },
            error: function(error) {
                console.log("Error: " + error);
            }
        });

    }


    function fetchData_danhSachSanPhamCT(dsMauSacDaChon, dsSanPhamSauThemDB){
        var dsMauSac = dsMauSacDaChon;
        var dsSanPhamDaThem = dsSanPhamSauThemDB;

        // Xóa nội dung của phần tử có id là "danhSachSanPhamThemMoi"
        $("#danhSachSanPhamThemMoi").empty();

        // Lặp qua danh sách màu sắc trả về từ server
        dsMauSac.forEach(function (mauSac) {
            // Tạo phần tử div
            var div = $('<div>', {
                style: 'margin-top: 20px;'
            });
            // Tạo phần tử h4 trong div
            var h4 = $('<h4><b># Danh sách sản phẩm cùng loại màu: ' + mauSac.ten + '</b></h4>');
            div.append(h4);

            // Tạo phần tử table trong div
            var table = $('<table>', {
                class: 'table table-bordered table-hover no-wrap'
            });
            // Tạo phần tử thead trong table
            var thead = $('<thead><tr style="text-align: center;"><th scope="col">STT</th><th scope="col">Tên sản phẩm</th><th scope="col">Màu sắc</th><th scope="col">Số lượng</th><th scope="col">Đơn giá</th><th scope="col">Cân nặng</th><th scope="col">Danh mục</th><th scope="col">Thương hiệu</th><th scope="col">Thao tác</th><th scope="col">Ảnh</th></tr></thead>');
            table.append(thead);

            // Tạo phần tử tbody trong table
            var tbodyId = "tbody_" + mauSac.id; // Tạo id cho tbody
            var tbody = $('<tbody>', { id: tbodyId }); // Gán id cho tbody
            // Lặp qua danh sách sản phẩm đã thêm mới
            dsSanPhamDaThem.forEach(function (sanPhamCT, index) {
                // Kiểm tra nếu sản phẩm có màu sắc tương ứng với màu đang xét
                if (sanPhamCT.mauSac.id.toString() === mauSac.id.toString()) {
                    // console.log("mau sac id " + mauSac.id.toString());
                    // console.log("mau sac o sanPhamCT " + sanPhamCT.mauSac.id.toString());

                    // Tạo hàng mới trong tbody
                    var tr = $('<tr style="text-align: center;">');
                    tr.append('<td>' + (index + 1) + '</td>');
                    tr.append('<td>' + sanPhamCT.sanPham.ten + '</td>');
                    tr.append('<td>' + sanPhamCT.mauSac.ten + '</td>');
                    tr.append('<td>' + sanPhamCT.soLuong + '</td>');
                    tr.append('<td>' + sanPhamCT.giaTriSanPham + '</td>');
                    tr.append('<td>' + sanPhamCT.khoiLuong + '</td>');
                    tr.append('<td>' + sanPhamCT.danhMuc.ten + '</td>');
                    tr.append('<td>' + sanPhamCT.thuongHieu.ten + '</td>');
                    tr.append('<td><a href="/san-pham/xoa/' + sanPhamCT.id + '" class="btn btn-warning" onclick="return confirm(\'Bạn chắc chắn muốn xóa sản phẩm ?\')"> <i class="menu-icon fa fa-trash-o"></i> Xóa</a></td>');
                    tr.append('<td>' + sanPhamCT.anh + '</td>');
                    tbody.append(tr);
                }
            });

            table.append(tbody);
            div.append(table);

            // Thêm div vào trong #danhSachSanPhamThemMoi
            $("#danhSachSanPhamThemMoi").append(div);
        });
    }

    function themMoiGiayChiTiet() {
        console.log("Chạy vào hàm themMoiGiayChiTiet");
        var chonTenGiay = document.getElementById("danhSachTenGiay").value;
        var chonThuongHieu = document.getElementById("danhSachThuongHieu").value;
        var chonNSX = document.getElementById("danhSachNSX").value;
        var chonDanhMuc = document.getElementById("danhSachDanhMuc").value;
        var chonLoaiSP = document.getElementById("danhSachLoaiSanPham").value;
        var chonKieuDang = document.getElementById("danhSachKieuDang").value;
        var chonChatLieu = document.getElementById("danhSachChatLieu").value;
        var chonMuiGiay = document.getElementById("danhSachMuiGiay").value;
        var chonDayGiay = document.getElementById("danhSachDayGiay").value;
        var chonDeGiay = document.getElementById("danhSachDeGiay").value;
        var chonLotGiay = document.getElementById("danhSachLotGiay").value;

        var nhapKhoiLuong = document.getElementById("khoiLuong").value;
        var nhapGiaBan = document.getElementById("giaTriSanPham").value;
        var nhapSoLuong = document.getElementById("soLuong").value;


        var nhapMoTa = document.getElementById("moTa").value;
        var trangThai = document.getElementsByName("trangThai");


        // Biến để lưu giá trị của radio button được chọn
        var trangThaiDuocChon = "";

        // Lặp qua tất cả các radio buttons
        trangThai.forEach(function (radio) {
            // Kiểm tra xem radio button nào được chọn
            if (radio.checked) {
                // Lấy giá trị của radio button được chọn
                trangThaiDuocChon = radio.value;
            }
        });

        if (trangThaiDuocChon === "" || !trangThaiDuocChon) {
            document.getElementById("checkHoatDong").innerText = "Vui lòng chọn trạng thái sản phẩm";
            checkValidate = false;
        } else {
            document.getElementById("checkHoatDong").innerText = "";
        }


        var chonMauSac = document.getElementById("danhSachMauSac").value;
        var chonSizeGiay = document.getElementById("danhSachSizeGiay").value;


        var checkValidate = true;
        // <input type="file"  name="hinhAnh" id="chonMotAnhChinh"   style="margin-right: 5px;">
        var anhChinhDuocChon = document.getElementById("chonMotAnhChinh");
        var duongDanTuyetDoiAnhChinh = ""; // Biến để lưu trữ đường dẫn tuyệt đối của tệp ảnh
        // var anhChinhDuocChon = document.getElementById("chonMotAnhChinh");

        chonMotAnhChinh.addEventListener('click', function (event) {
            var file = event.target.files[0]; // Lấy ra tệp ảnh đã chọn

            if (file) {
                duongDanTuyetDoiAnhChinh = URL.createObjectURL(file); // Lấy đường dẫn tuyệt đối của tệp ảnh và lưu vào biến
                console.log('Đường dẫn tuyệt đối của tệp ảnh:', duongDanTuyetDoiAnhChinh);
            }
        });
        chonMotAnhChinh.addEventListener('change', function (event) {
            var file = event.target.files[0]; // Lấy ra tệp ảnh đã chọn

            if (file) {
                duongDanTuyetDoiAnhChinh = URL.createObjectURL(file); // Lấy đường dẫn tuyệt đối của tệp ảnh và lưu vào biến
                console.log('Đường dẫn tuyệt đối của tệp ảnh:', duongDanTuyetDoiAnhChinh);
            }
        });


        if (anhChinhDuocChon.files.length === 0) {
            document.getElementById("checkChonAnhChinh").innerText = "Vui lòng chọn 1 ảnh chính cho giày";
            checkValidate = false;
        } else {
            document.getElementById("checkChonAnhChinh").innerText = "";
        }

        var cacAnhConDuocChon = document.getElementById("anhSanPhamCon");
        if (cacAnhConDuocChon.files.length === 0) {
            document.getElementById("checkChonAnhPhu").innerText = "Vui lòng chọn từ 1-5 ảnh cho sản phẩm";
            checkValidate = false;
        } else {
            document.getElementById("checkChonAnhPhu").innerText = "";
        }

        if (chonTenGiay === "" || !chonTenGiay) {
            document.getElementById("checkTenGiay").innerText = "Vui lòng chọn tên giày";
            checkValidate = false;
        } else {
            document.getElementById("checkTenGiay").innerText = "";
        }

        if (chonThuongHieu === "" || !chonThuongHieu) {
            document.getElementById("checkThuongHieu").innerText = "Vui lòng chọn thương hiệu";
            checkValidate = false;
        } else {
            document.getElementById("checkThuongHieu").innerText = "";
        }

        if (chonNSX === "" || !chonNSX) {
            document.getElementById("checkNSX").innerText = "Vui lòng chọn nhà sản xuất";
            checkValidate = false;
        } else {
            document.getElementById("checkNSX").innerText = "";
        }

        if (chonDanhMuc === "" || !chonDanhMuc) {
            document.getElementById("checkDanhMuc").innerText = "Vui lòng chọn danh mục";
            checkValidate = false;
        } else {
            document.getElementById("checkDanhMuc").innerText = "";
        }

        if (chonLoaiSP === "" || !chonLoaiSP) {
            document.getElementById("checkLoaiSP").innerText = "Vui lòng chọn loại sản phẩm";
            checkValidate = false;
        } else {
            document.getElementById("checkLoaiSP").innerText = "";
        }

        if (chonKieuDang === "" || !chonKieuDang) {
            document.getElementById("checkKieuDang").innerText = "Vui lòng chọn kiểu dáng";
            checkValidate = false;
        } else {
            document.getElementById("checkKieuDang").innerText = "";
        }

        if (chonChatLieu === "" || !chonChatLieu) {
            document.getElementById("checkChatLieu").innerText = "Vui lòng chọn chất liệu";
            checkValidate = false;
        } else {
            document.getElementById("checkChatLieu").innerText = "";
        }

        if (chonMuiGiay === "" || !chonMuiGiay) {
            document.getElementById("checkMuiGiay").innerText = "Vui lòng chọn mũi giày";
            checkValidate = false;
        } else {
            document.getElementById("checkMuiGiay").innerText = "";
        }

        if (chonDayGiay === "" || !chonDayGiay) {
            document.getElementById("checkDayGiay").innerText = "Vui lòng chọn dây giày";
            checkValidate = false;
        } else {
            document.getElementById("checkDayGiay").innerText = "";
        }

        if (chonDeGiay === "" || !chonDeGiay) {
            document.getElementById("checkDeGiay").innerText = "Vui lòng chọn đế giày";
            checkValidate = false;
        } else {
            document.getElementById("checkDeGiay").innerText = "";
        }

        if (chonLotGiay === "" || !chonLotGiay) {
            document.getElementById("checkLotGiay").innerText = "Vui lòng chọn lót giày";
            checkValidate = false;
        } else {
            document.getElementById("checkLotGiay").innerText = "";
        }


        if (chonMauSac === "" || !chonMauSac) {
            document.getElementById("checkMauSac").innerText = "Vui lòng chọn màu sắc";
            checkValidate = false;
        } else {
            document.getElementById("checkMauSac").innerText = "";
        }

        if (chonSizeGiay === "" || !chonSizeGiay) {
            document.getElementById("checkSizeGiay").innerText = "Vui lòng chọn size giày";
            checkValidate = false;
        } else {
            document.getElementById("checkSizeGiay").innerText = "";
        }

        if (nhapMoTa === "" || !nhapMoTa) {
            document.getElementById("checkMoTa").innerText = "Vui lòng nhập mô tả";
            checkValidate = false;
        } else {
            document.getElementById("checkMoTa").innerText = "";
        }

        // var nhapKhoiLuong = document.getElementById("khoiLuong").value;
        // var nhapGiaBan = document.getElementById("giaTriSanPham").value;
        // var nhapSoLuong = document.getElementById("soLuong").value;

        if (nhapKhoiLuong === "" || !nhapKhoiLuong || nhapKhoiLuong < 200) {
            document.getElementById("checkKhoiLuong").innerText = "Vui lòng nhập khối lượng với giá trị ít nhất 200gram";
            checkValidate = false;
        } else {
            document.getElementById("checkKhoiLuong").innerText = "";
        }


        if (nhapGiaBan === "" || !nhapGiaBan || nhapGiaBan < 100000 || !isNumberWithCommas(nhapGiaBan)) {
            console.log("Gia bán : " + nhapGiaBan);
            document.getElementById("checkGiaTriSanPham").innerText = "Vui lòng chỉ nhập giá trị số, và giá bán ít nhất 100.000vnđ";
            checkValidate = false;
        } else {
            document.getElementById("checkGiaTriSanPham").innerText = "";
        }

        if (nhapSoLuong === "" || !nhapSoLuong || nhapSoLuong < 1) {
            document.getElementById("checkSoLuong").innerText = "Vui lòng nhập số lượng với giá trị > 0";
            checkValidate = false;
        } else {
            document.getElementById("checkSoLuong").innerText = "";
        }

        // console.log("Trạng thái được chọn : " + trangThaiDuocChon);


        if (!checkValidate) {
            return;
        }



            let data = {
                idSanPham: chonTenGiay,
                idNSX: chonNSX,
                idThuongHieu: chonThuongHieu,
                idDanhMuc: chonDanhMuc,
                idLoaiSanPham: chonLoaiSP,
                idKieuDang: chonKieuDang,
                idChatLieu: chonChatLieu,
                idMuiGiay: chonMuiGiay,
                idDayGiay: chonDayGiay,
                idDeGiay: chonDeGiay,
                idLotGiay: chonLotGiay,
                moTa: nhapMoTa,
                idMauSac: chonMauSac,
                idSizeGiay: chonSizeGiay,
                trangThai: trangThaiDuocChon,
                duongDanAnhChinh: duongDanTuyetDoiAnhChinh
            };

            // thuc hien vao server tao sanPham
            $.ajax({
                url: "http://localhost:8080/admin/quanLySanPham/taoSanPhamChiTiet",
                type: "POST",
                contentType: "application/json",
                data: JSON.stringify(data),
                dataType: "json", //Kieu du lieu tra ve tu controller la json

                success: function (data) {
                    // function xử lý lấy ra danh sách sản phẩm đã thêm từ danh sách UUID

                    alert(data.message);
                },
                error: function (error) {
                    console.log("Error: " + error);
                }
            });

    }




    function isNumberWithCommas(str) {
        // Xác định biểu thức chính quy để kiểm tra chuỗi có phải là số hay không
        var numberPattern = /^[+-]?\d+(,\d+)*(\.\d+)?$/;
        return numberPattern.test(str);
    }



    function resetCheckTenGiay() {
       document.getElementById("checkTenGiay").innerText= "";
    }

    function resetCheckThuongHieu() {
        document.getElementById("checkThuongHieu").innerText= "";
    }

    function resetCheckNSX() {
        document.getElementById("checkNSX").innerText= "";
    }

    function resetCheckDanhMuc() {
        document.getElementById("checkDanhMuc").innerText= "";
    }

    function resetCheckLoaiSanPham() {
        document.getElementById("checkLoaiSP").innerText= "";
    }

    function resetCheckKieuDang() {
        document.getElementById("checkKieuDang").innerText= "";
    }

    function resetCheckChatLieu() {
        document.getElementById("checkChatLieu").innerText= "";
    }

    function resetCheckMuiGiay() {
        document.getElementById("checkMuiGiay").innerText= "";
    }

    function resetCheckDayGiay() {
        document.getElementById("checkDayGiay").innerText= "";
    }

    function resetCheckDeGiay() {
        document.getElementById("checkDeGiay").innerText= "";
    }

    function resetCheckLotGiay() {
        document.getElementById("checkLotGiay").innerText= "";
    }

    function resetCheckMoTa() {
        document.getElementById("checkMoTa").innerText= "";
    }

    function resetCheckMauSac() {
        document.getElementById("checkMauSac").innerText= "";
    }

    function resetCheckSizeGiay() {
        document.getElementById("checkSizeGiay").innerText= "";
    }

    function eventChangeChooseHinhAnhCon(){}

    function formatCurrency(input) {
        // Lấy giá trị số từ ô nhập
        var value = parseFloat(input.value);

        // Kiểm tra nếu giá trị không phải là một số hợp lệ
        if (isNaN(value)) {
            // Nếu không phải số, đặt giá trị là 0
            input.value = 0;
            // alert('Vui lòng nhập số tại giá bán');

            // Đặt trỏ chuột vào ô nhập
            input.focus();

            return;
        }

        // Định dạng giá trị thành tiền tệ
        var formattedValue = value.toLocaleString('en-US', { minimumFractionDigits: 2 });

        // Bỏ đi ký hiệu tiền tệ
        formattedValue = formattedValue.replace(/^(\D+)/, '');

        // Bỏ đi phần .00 nếu có
        formattedValue = formattedValue.replace(/\.00$/, '');

        // Gán lại giá trị đã định dạng cho ô nhập
        input.value = formattedValue;
        console.log("giá trị sau khi format current : " + formattedValue);
    }

    // Lắng nghe sự kiện khi người dùng chọn file ảnh chính
        document.getElementById('chonMotAnhChinh').addEventListener('change', function() {
            // Lấy ra danh sách các tệp đã chọn
            var files = this.files;

            // Kiểm tra xem có tệp nào được chọn không
            if (files.length === 0) {
                document.getElementById("checkChonAnhChinh").innerText = "Vui lòng chọn ảnh chính cho sản phẩm";
                alert('Vui lòng chọn ảnh chính cho sản phẩm');

                // Set đường dẫn của ảnh thành rỗng
                document.getElementById('previewImage').src = '';
            } else {
                document.getElementById("checkChonAnhChinh").innerText = "";

                // Có ít nhất một tệp được chọn

                // Lấy tệp đầu tiên từ danh sách
                var file = files[0];

                // Tạo đối tượng FileReader để đọc tệp
                var reader = new FileReader();

                // Xử lý sự kiện khi FileReader hoàn thành việc đọc
                reader.onload = function(event) {
                    // Lấy đường dẫn hình ảnh từ FileReader và gán cho thuộc tính src của thẻ <img>
                    document.getElementById('previewImage').src = event.target.result;
                };

                // Đọc tệp dưới dạng URL dữ liệu (data URL)
                reader.readAsDataURL(file);

            }
        });



        // sự kiện hiển thị các hình ảnh sản phẩm đã chọn trước đó
    document.getElementById('anhSanPhamCon').addEventListener('change', function() {
        // Lấy ra danh sách các tệp đã chọn
        var files = this.files;

        // Kiểm tra xem có tệp nào được chọn không
        if (files.length === 0) {
            // Không có tệp nào được chọn
            document.getElementById("checkChonAnhPhu").innerText= "Vui lòng chọn từ 1-5 ảnh cho sản phẩm chi tiết";
            alert('Vui lòng chọn từ 1-5 ảnh cho sản phẩm chi tiết');

            // Xóa toàn bộ nội dung bên trong phần tử danhSachHinhAnhConDuocChon
            document.getElementById('danhSachHinhAnhConDuocChon').innerHTML = '';

            return;
        }


        document.getElementById("checkChonAnhPhu").innerText="";

        // Kiểm tra số lượng tệp đã chọn
        if (files.length > 5) {
            document.getElementById("checkChonAnhPhu").innerText="Vui lòng chọn lại ảnh với số lượng tối đa 5 ảnh";
            alert('Bạn chỉ có thể chọn tối đa 5 ảnh.');
            this.value = ''; // Xóa các tệp đã chọn để ngăn chọn quá số lượng quy định

            // Xóa toàn bộ nội dung bên trong phần tử danhSachHinhAnhConDuocChon
            document.getElementById('danhSachHinhAnhConDuocChon').innerHTML = '';
            return;
        }

        document.getElementById("checkChonAnhPhu").innerText="";

        // Lặp qua từng tệp và hiển thị ảnh trên giao diện
        for (var i = 0; i < files.length; i++) {
            var reader = new FileReader();

            reader.onload = function(event) {
                var img = document.createElement('img');
                img.src = event.target.result;
                img.classList.add('hinhAnhCon');

                img.width = 100;
                img.height = 100;
                img.style.marginRight = '10px';
                img.style.marginTop = '10px';
                document.getElementById('danhSachHinhAnhConDuocChon').appendChild(img);
            };

            reader.readAsDataURL(files[i]);
        }
    });


</script>

</body>
</html>

