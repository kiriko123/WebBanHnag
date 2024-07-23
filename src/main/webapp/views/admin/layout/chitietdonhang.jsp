<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="container mt-5">
        <h1 class="mb-4">Chi Tiết Đơn Hàng</h1>
        
        <div class="card">
            <div class="card-header">
                <h5 class="card-title">Thông Tin Đơn Hàng</h5>
            </div>
            <div class="card-body">
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="order_id" class="form-label">Mã Đơn Hàng:</label>
                        <input type="text" id="order_id" class="form-control" value="001" readonly>
                    </div>
                    <div class="col-md-6">
                        <label for="user_id" class="form-label">Mã Khách Hàng:</label>
                        <input type="text" id="user_id" class="form-control" value="Nguyễn Văn A" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label for="order_date" class="form-label">Ngày Tạo Đơn Hàng:</label>
                        <input type="text" id="order_date" class="form-control" value="2024-05-18 10:30:00" readonly>
                    </div>
                    <div class="col-md-6">
                        <label for="total_amount" class="form-label">Tổng Giá Trị Đơn Hàng:</label>
                        <input type="text" id="total_amount" class="form-control" value="2,000,000 VND" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-12">
                        <label for="shipping_address" class="form-label">Địa Chỉ Giao Hàng:</label>
                        <textarea id="shipping_address" class="form-control" rows="2" readonly>Đường Tô Ký, Quận 12</textarea>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-12">
                        <label for="payment_method" class="form-label">Phương Thức Thanh Toán:</label>
                        <input type="text" id="payment_method" class="form-control" value="Trả tiền khi giao hàng" readonly>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="mt-4 mb-4">
            <a href="donhang" class="btn btn-secondary">Quay Lại</a>
        </div>
    </div>