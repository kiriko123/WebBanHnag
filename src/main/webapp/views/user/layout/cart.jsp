<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="container bg-white rounded-2 p-4" style="margin: 60px auto;">
    <table style="width: 100%; border-collapse: collapse;">
        <tr>
            <th style="text-align: left; padding-left: 10px;">Sản phẩm</th>
            <th>Số lượng</th>
            <th>Thành tiền</th>
        </tr>

        <tr >
            <td>
                <div style="display: flex; flex-wrap: wrap;">
                    <img src="${pageContext.request.contextPath}/img/sp1.webp" class="" style="width: 90px" alt="">
                    <div style="margin-left: 10px;">
                        <small><strong>sp1</strong> <br>Giá: 100 đ</small>
                        <br>
                        <a href="" style="color: red;">Xóa</a>
                    </div>
                </div>
            </td>
            <td><input type="number" min="1" style="width: 50px; padding: 5px;"></td>
            <td><p>10000 đ</p></td>
        </tr>
        <tr >
            <td>
                <div style="display: flex; flex-wrap: wrap;">
                    <img src="${pageContext.request.contextPath}/img/sp1.webp" class="" style="width: 90px" alt="">
                    <div style="margin-left: 10px;">
                        <small><strong>sp1</strong> <br>Giá: 100 đ</small>
                        <br>
                        <a href="" style="color: red;">Xóa</a>
                    </div>
                </div>
            </td>
            <td><input type="number" min="1" style="width: 50px; padding: 5px;"></td>
            <td><p>10000 đ</p></td>
        </tr>
    </table>
    <div class="d-flex justify-content-end mt-3">
        <table style="border-top:3px solid #ff523b; width: 100%; max-width: 350px;">
            <tr>
                <td style="padding-right: 10px;">Tổng số lượng</td>
                <td>????</td>
            </tr>
            <tr>
                <td style="padding-right: 10px;">Tổng tiền</td>
                <td>???? VND</td>
            </tr>
        </table>
    </div>
    <div class="row float-end" style="margin-right: 0;"><button class="btn btn-danger">Xóa hết</button></div>

    <div class="row d-flex justify-content-end mt-5 p-3" ><button class="btn btn-info">Mua ngay</button></div>
</section>
