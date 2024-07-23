<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<style>
    .error-div {
        display: flex;
        justify-content: flex-end;
    }
    .error {
        color: red;
        font-weight: lighter;
        font-size: .9em;
        
    }
</style>
<script type="text/javascript">
    function showAlert(message) {
        if (message) {
            alert(message);
        }
    }
</script>
<div class="container mt-2 mb-5" onload="showAlert('${message}')">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link active" data-bs-toggle="pill" href="#home">
                <span><i class="bi bi-cloud-upload"></i></span> Product Edition
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-bs-toggle="pill" href="#menu1">
                <span><i class="bi bi-card-list"></i></span> Product List
            </a>
        </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <!-- Video Edition Tab -->
        <div class="tab-pane active" id="home">
            <div class="card">
                <form:form class="p-3" action="/products/save" method="post" modelAttribute="product" enctype="multipart/form-data">
                	<div style="display: flex; flex-direction: column; gap: 20px;">
                		<div>
						 	<label for="product_id">Product_id</label>
						     <form:input path="product_id" required="required" class="form-control" placeholder=""/>
						     <div class="error-div">
	                            <form:errors path="product_id" element="span" cssClass="error"></form:errors>
	                        </div>  
						</div>
                		<div>
						 	<label for="">Category_id</label>
						     <select name="category_id" class="form-select">
							        <c:forEach items="${categories}" var="cat">
							            <option value="${cat.category_id}" 
							                    ${cat.category_id eq product.category.category_id ? 'selected' : ''}>
							                ${cat.category_name}
							            </option>
							        </c:forEach>
							   </select>
						</div>
						
						<div>
						 	<label for="product_name">Product_name</label>
						     <form:input path="product_name" required="required" class="form-control" placeholder=""/>
						     <div class="error-div">
	                            <form:errors path="product_name" element="span" cssClass="error"></form:errors>
	                        </div>
						</div>
						
						<div>
						 	<label for="description">Description</label>
						     <form:textarea path="description"  class="form-control" placeholder=""/>
						     <div class="error-div">
	                            <form:errors path="description" element="span" cssClass="error"></form:errors>
	                        </div>
						</div>
						
						<div>
						 	<label for="price">Price</label>
						     <form:input path="price" type="number" step="1" min="0" 
						                     numberFormat="pattern" pattern="#,##0.00" class="form-control"/>
						     <div class="error-div">
	                            <form:errors path="price" element="span" cssClass="error"></form:errors>
	                        </div>
						</div>
						
						<div>
						 	<label for="stock">Stock</label>
						     <form:input type="number" step="1" min="0" path="stock" class="form-control"/>
						     <div class="error-div">
	                            <form:errors path="stock" element="span" cssClass="error"></form:errors>
	                        </div>
						</div>
						
						<div>
						 	<label for=""> Product Image: ${product.product_image} </label>
						    <input name="poster" value="${product.product_image }" type="hidden">
				            <input type="file" name="photo" class="form-control"/>
						</div>
                	</div>
                
				    
									<div class="pt-1" style="display: flex; justify-content: end; align-items: center; gap: 10px;">
	                                    <button formaction="/admin/product/create" 
	                                            class="btn btn-success">
	                                        <span><i class="bi bi-box-arrow-down"></i></span>Create
	                                    </button>
	                                    <button formaction="/admin/product/update" 
	                                            class="btn btn-success">
	                                        <span><i class="bi bi-box-arrow-down"></i></span>Update
	                                    </button>
	                                    <button formaction="/admin/product/delete"
	                                            class="btn btn-danger">
	                                        <span><i class="bi bi-x-circle-fill"></i></span>Delete
	                                    </button>
	                                    <a href="/admin/product"
	                                            class="btn btn-success">
	                                        <span><i class="bi bi-box-arrow-down"></i></span>Reset
	                                    </a>
                                </div>				    
				</form:form>

            </div>
        </div>
        <!-- Video List Tab -->
        <div class="tab-pane container fade" id="menu1">
            <div class="card">
                <table class="table table-bordered table-hover" style="text-align: center; vertical-align: middle;">
                    <thead class="">
                        <tr>
                            <th class="bg-secondary">product_id</th>
                            <th class="bg-secondary">category_id</th>
                            <th class="bg-secondary">product_name</th>
                            <th class="bg-secondary">description</th>
                            <th class="bg-secondary">price</th>
                            <th class="bg-secondary">stock</th>
                            <th class="bg-secondary">product_image</th>
                            <th class="bg-secondary">created_at</th>
                            <th class="bg-secondary">isdelete</th>
                            <th class="bg-secondary"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${products}" var="p">
                            <tr>
                                <td>${p.product_id }</td>
                                <td>${p.category.category_name }</td>
                                <td>${p.product_name }</td>
                                <td>${p.description }</td>
                                <td><fmt:formatNumber value="${p.price}" type="currency" /></td>
                                <td>${p.stock }</td>
                                <td> <img style="width: 100px" alt="" src="/img/${p.product_image }"> </td>
                                <td>${p.created_at }</td>
                                <td>${p.isdelete }</td>
                                
                                <td><a href="/admin/product/edit/${p.product_id }">Edit</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="card-footer">
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <div>
                            <div>
                                <p>${sl} product</p>
                            </div>
                        </div>
                        <div class="mt-3" style="display: flex; justify-content: center; align-items: center;">
                            <div class="row text-center">
                                <ul class="pagination">
                                    
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        showAlert('${message}');
    });
</script>