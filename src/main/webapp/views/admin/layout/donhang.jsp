<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
<div class="container mt-5">
	<h1 class="mb-4" style="text-align: center;">Quản Lý Đơn Hàng</h1>
		<ul class="nav nav-tabs">
		  <li class="nav-item">
		    <a class="nav-link active" data-bs-toggle="tab" href="#listorder">Danh sách đơn hàng</a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" data-bs-toggle="tab" href="#detailorder">Chi Tiết Đơn Hàng</a>
		  </li>
		</ul>
		
		<!-- Tab panes -->
		<div class="tab-content">
		  <div class="tab-pane container active" id="listorder">
		  	<div class="row mb-4">
            <div class="col-md-6">
                <input type="text" class="form-control" placeholder="Tìm kiếm đơn hàng...">
            </div>
            <div class="col-md-6 text-end">
                <button class="btn btn-primary">Tạo Đơn Hàng Mới</button>
            </div>
        </div>

        <table class="table table-bordered">
            <thead class="thead-light">
                <tr>
                    <th>ID Đơn Hàng</th>
                    <th>Tên Khách Hàng</th>
                    <th>Ngày Đặt</th>
                    <th>Tình Trạng</th>
                    <th>Tổng Tiền</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>001</td>
                    <td>Nguyễn Văn A</td>
                    <td>2024-05-18</td>
                    <td><span class="badge bg-success">Hoàn Thành</span></td>
                    <td>2,000,000 VND</td>
                    <td>
                        <a href="chitietdonhang"><button class="btn btn-info btn-sm">Xem</button></a>
                        <button class="btn btn-warning btn-sm">Sửa</button>
                        <button class="btn btn-danger btn-sm">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>002</td>
                    <td>Trần Thị B</td>
                    <td>2024-05-17</td>
                    <td><span class="badge bg-warning">Đang Xử Lý</span></td>
                    <td>1,500,000 VND</td>
                    <td>
                        <button class="btn btn-info btn-sm">Xem</button>
                        <button class="btn btn-warning btn-sm">Sửa</button>
                        <button class="btn btn-danger btn-sm">Xóa</button>
                    </td>
                </tr>
            </tbody>
        </table>
        
        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
            </ul>
        </nav>
    
		  </div>
		  <div class="tab-pane container fade" id="detailorder">
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
		</div>
</div>

        