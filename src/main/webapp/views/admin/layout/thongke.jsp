<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container mt-5">
        <h1 class="mb-4" style="text-align: center;">Thống Kê Doanh Thu</h1>
        <ul class="nav nav-tabs" id="revenueTabs" role="tablist">
            <li class="nav-item" role="presentation">
                <a class="nav-link active" id="category-tab" data-bs-toggle="tab" href="#category" role="tab" aria-controls="category" aria-selected="true">Thống kê theo loại sản phẩm</a>
            </li>
            <li class="nav-item" role="presentation">
                <a class="nav-link" id="time-tab" data-bs-toggle="tab" href="#time" role="tab" aria-controls="time" aria-selected="false">Thống kê theo thời gian</a>
            </li>
        </ul>
        <div class="tab-content" id="revenueTabsContent">
            <div class="tab-pane fade show active" id="category" role="tabpanel" aria-labelledby="category-tab">
                <div class="mt-4">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="productCategory" class="form-label">Chọn loại sản phẩm:</label>
                            <select id="productCategory" class="form-select">
                                <option value="phone">Điện thoại</option>
                                <option value="laptop">Laptop</option>
                                <option value="tablet">Máy tính bảng</option>
                                <option value="headphone">Tai nghe</option>
                            </select>
                        </div>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Sản Phẩm</th>
                                <th>Số Lượng Đã Bán</th>
                                <th>Tổng Doanh Thu</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Điện thoại</td>
                                <td>100</td>
                                <td>2,000,000,000 VND</td>
                            </tr>
                            <tr>
                                <td>Laptop</td>
                                <td>50</td>
                                <td>1,500,000,000 VND</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="tab-pane fade" id="time" role="tabpanel" aria-labelledby="time-tab">
                <div class="mt-4">
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="timeType" class="form-label">Chọn loại thống kê:</label>
                            <select id="timeType" class="form-select" data-bs-toggle="collapse" data-bs-target=".time-collapse">
                                <option value="year">Theo Năm</option>
                                <option value="month">Theo Tháng</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3 collapse time-collapse" id="yearSelector">
                        <div class="col-md-6">
                            <label for="year" class="form-label">Chọn năm:</label>
                            <select id="year" class="form-select">
                                <option value="2024">2024</option>
                                <option value="2023">2023</option>
                                <option value="2022">2022</option>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3 collapse time-collapse" id="monthSelector">
                        <div class="col-md-6">
                            <label for="month" class="form-label">Chọn tháng:</label>
                            <input type="month" id="month" class="form-control">
                        </div>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Thời Gian</th>
                                <th>Tổng Doanh Thu</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Tháng 1, 2024</td>
                                <td>500,000,000 VND</td>
                            </tr>
                            <tr>
                                <td>Tháng 2, 2024</td>
                                <td>600,000,000 VND</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>