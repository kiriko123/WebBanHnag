<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<section class="container mt-5">
    <div class="row">
      <div class="col-md-6" style="display: flex; justify-content: center; align-items: c">
        <img src="${pageContext.request.contextPath}/img/${product.product_image}" alt="Product Image" class="img-fluid rounded-3" style="width: 300px">
       </div>
      <div class="col-md-6">
        <h1>${product.product_name}</h1>
        <p class="text-muted">Stock: ${product.stock}</p>
        <p class="text-muted">Category: ${product.category.category_name} </p>
        <hr>
        <p class="lead">Price: <fmt:formatNumber value="${product.price}" type="currency" /></p>
        <p>${product.description}</p>
        <button class="btn btn-primary">Add to Cart</button>
        <button class="btn btn-outline-secondary">Wishlist</button>
      </div>
    </div>
  </section>

  <section class="container mt-5">
    <h2>Related Products</h2>
    <div class="row">
      <div class="col-md-4 mb-3">
        <div class="card h-100 shadow-sm rounded-3">
          <img src="product-image1.jpg" class="card-img-top" alt="Product Image 1">
          <div class="card-body">
            <h5 class="card-title">Product Name 1</h5>
            <p class="card-text">Short description</p>
            <a href="#" class="btn btn-primary">View Details</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-3">
        <div class="card h-100 shadow-sm rounded-3">
          <img src="product-image1.jpg" class="card-img-top" alt="Product Image 1">
          <div class="card-body">
            <h5 class="card-title">Product Name 1</h5>
            <p class="card-text">Short description</p>
            <a href="#" class="btn btn-primary">View Details</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-3">
        <div class="card h-100 shadow-sm rounded-3">
          <img src="product-image1.jpg" class="card-img-top" alt="Product Image 1">
          <div class="card-body">
            <h5 class="card-title">Product Name 1</h5>
            <p class="card-text">Short description</p>
            <a href="#" class="btn btn-primary">View Details</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-3">
        <div class="card h-100 shadow-sm rounded-3">
          <img src="product-image1.jpg" class="card-img-top" alt="Product Image 1">
          <div class="card-body">
            <h5 class="card-title">Product Name 1</h5>
            <p class="card-text">Short description</p>
            <a href="#" class="btn btn-primary">View Details</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-3">
        <div class="card h-100 shadow-sm rounded-3">
          <img src="product-image1.jpg" class="card-img-top" alt="Product Image 1">
          <div class="card-body">
            <h5 class="card-title">Product Name 1</h5>
            <p class="card-text">Short description</p>
            <a href="#" class="btn btn-primary">View Details</a>
          </div>
        </div>
      </div>
      </div>
  </section>
