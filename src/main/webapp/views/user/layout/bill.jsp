<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container mt-5">
	<h1 class="mb-4" style="text-align: center;">Hóa Đơn Khách Hàng</h1>

	<!-- Nav Tabs -->
	<ul class="nav nav-tabs" id="invoiceTabs" role="tablist">
		<li class="nav-item" role="presentation"><a
			class="nav-link active" id="invoice-tab" data-bs-toggle="tab"
			href="#invoice" role="tab" aria-controls="invoice"
			aria-selected="true">Hóa Đơn</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="invoice-details-tab" data-bs-toggle="tab" href="#invoice-details"
			role="tab" aria-controls="invoice-details" aria-selected="false">Chi
				Tiết Hóa Đơn</a></li>
	</ul>

	<!-- Tab Content -->
	<div class="tab-content" id="invoiceTabsContent">
		<!-- Tab 1: Hóa Đơn -->
		<div class="tab-pane fade show active" id="invoice" role="tabpanel"
			aria-labelledby="invoice-tab">
			<div class="mt-4">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Mã Hóa Đơn</th>
							<th>Ngày Lập</th>
							<th>Tổng Tiền</th>
							<th>Tình Trạng</th>
							<th>Chi Tiết</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>HD001</td>
							<td>2024-05-18</td>
							<td>2,000,000 VND</td>
							<td>Đã Thanh Toán</td>
							<td><button class="btn btn-primary btn-sm"
									data-bs-toggle="tab" href="#invoice-details">Xem</button></td>
						</tr>
						<tr>
							<td>HD002</td>
							<td>2024-05-19</td>
							<td>1,500,000 VND</td>
							<td>Chờ Xử Lý</td>
							<td><button class="btn btn-primary btn-sm"
									data-bs-toggle="tab" href="#invoice-details">Xem</button>
								<button class="btn btn-success btn-sm">Thanh Toán</button>
									</td>
						</tr>
						<!-- Thêm các hóa đơn khác nếu cần -->
					</tbody>
				</table>
			</div>
		</div>

		<!-- Tab 2: Chi Tiết Hóa Đơn -->
		<div class="tab-pane fade" id="invoice-details" role="tabpanel"
			aria-labelledby="invoice-details-tab">
			<div class="mt-4">
				<div class="card">
					<div class="card-header">
						<h5 class="card-title">Chi Tiết Hóa Đơn</h5>
					</div>
					<div class="card-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Tên Sản Phẩm</th>
									<th>Số Lượng</th>
									<th>Giá Mỗi Loại</th>
									<th>Thành Tiền</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Điện thoại XYZ</td>
									<td>2</td>
									<td>10,000,000 VND</td>
									<td>20,000,000 VND</td>
								</tr>
								<tr>
									<td>Laptop ABC</td>
									<td>1</td>
									<td>15,000,000 VND</td>
									<td>15,000,000 VND</td>
								</tr>
								<!-- Thêm các sản phẩm khác nếu cần -->
							</tbody>
							<tfoot>
								<tr>
									<th colspan="3" class="text-end">Tổng Tiền:</th>
									<th>35,000,000 VND</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

