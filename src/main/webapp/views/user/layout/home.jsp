<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <!--Carousel-->
<section class="container-fluid mt-4 p-0">
    <div id="carouselExampleDark" class="carousel carousel-dark slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="10000">
                <img src="https://cdn.pixabay.com/photo/2016/03/27/18/52/flower-1283602_1280.jpg" class="d-block w-100" alt="Beautiful Flower">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Beautiful Flower</h5>
                    <p>Nature at its best.</p>
                </div>
            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img src="${pageContext.request.contextPath}/img/banner2.jpg" class="d-block w-100" alt="Banner 2">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Scenic View</h5>
                    <p>Enjoy the beautiful landscape.</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/img/banner3.jpg" class="d-block w-100" alt="Banner 3">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Adventure Awaits</h5>
                    <p>Experience the thrill of exploration.</p>
                </div>
            </div>
        </div>
        
    </div>
</section>
<section class="container mt-3" style="background: #ffffff;">
	<div class="row mb-4">
        <div class="col-md-12">
            <h2 class="text-center text-danger" style="font-size: 2rem; font-weight: bold;">Top sản phẩm</h2>
            <div class="d-flex flex-wrap justify-content-between">
                
                <div class="product-card mb-3 me-2 rounded-3 shadow overflow-hidden" style="width: 220px; background-color: #fff; border: 1px solid #ddd; transition: transform 0.3s ease-in-out;">
				    <img src="${pageContext.request.contextPath}/img/sp1.webp" class="card-img-top" alt="Product Image" style="height: 180px;">
				    <div class="card-body d-flex flex-column justify-content-between bg-light" style="padding: 10px;">
				        <a href="/hello/chitiet" class="text-dark stretched-link" style="text-decoration: none;">
				            <h6 class="card-title text-truncate mb-1" style="font-size: 16px; font-weight: bold; line-height: 1.2; height: 40px; overflow: hidden;">Sản phẩm giảm giá 1</h6>
				        </a>
				        <div class="d-flex justify-content-between align-items-center">
				            <span class="text-muted text-decoration-line-through" style="font-size: 14px;">$50.00</span>
				            <span class="text-danger fw-bold" style="font-size: 16px;">$40.00</span>
				        </div>
				    </div>
				</div>
				
				<div class="product-card mb-3 me-2 rounded-3 shadow overflow-hidden" style="width: 220px; background-color: #fff; border: 1px solid #ddd; transition: transform 0.3s ease-in-out;">
				    <img src="${pageContext.request.contextPath}/img/sp1.webp" class="card-img-top" alt="Product Image" style="height: 180px;">
				    <div class="card-body d-flex flex-column justify-content-between bg-light" style="padding: 10px;">
				        <a href="/hello/chitiet" class="text-dark stretched-link" style="text-decoration: none;">
				            <h6 class="card-title text-truncate mb-1" style="font-size: 16px; font-weight: bold; line-height: 1.2; height: 40px; overflow: hidden;">Sản phẩm giảm giá 1</h6>
				        </a>
				        <div class="d-flex justify-content-between align-items-center">
				            <span class="text-muted text-decoration-line-through" style="font-size: 14px;">$50.00</span>
				            <span class="text-danger fw-bold" style="font-size: 16px;">$40.00</span>
				        </div>
				    </div>
				</div>
				
				<div class="product-card mb-3 me-2 rounded-3 shadow overflow-hidden" style="width: 220px; background-color: #fff; border: 1px solid #ddd; transition: transform 0.3s ease-in-out;">
				    <img src="${pageContext.request.contextPath}/img/sp1.webp" class="card-img-top" alt="Product Image" style="height: 180px;">
				    <div class="card-body d-flex flex-column justify-content-between bg-light" style="padding: 10px;">
				        <a href="/hello/chitiet" class="text-dark stretched-link" style="text-decoration: none;">
				            <h6 class="card-title text-truncate mb-1" style="font-size: 16px; font-weight: bold; line-height: 1.2; height: 40px; overflow: hidden;">Sản phẩm giảm giá 1</h6>
				        </a>
				        <div class="d-flex justify-content-between align-items-center">
				            <span class="text-muted text-decoration-line-through" style="font-size: 14px;">$50.00</span>
				            <span class="text-danger fw-bold" style="font-size: 16px;">$40.00</span>
				        </div>
				    </div>
				</div>
				
				<div class="product-card mb-3 me-2 rounded-3 shadow overflow-hidden" style="width: 220px; background-color: #fff; border: 1px solid #ddd; transition: transform 0.3s ease-in-out;">
				    <img src="${pageContext.request.contextPath}/img/sp1.webp" class="card-img-top" alt="Product Image" style="height: 180px;">
				    <div class="card-body d-flex flex-column justify-content-between bg-light" style="padding: 10px;">
				        <a href="/hello/chitiet" class="text-dark stretched-link" style="text-decoration: none;">
				            <h6 class="card-title text-truncate mb-1" style="font-size: 16px; font-weight: bold; line-height: 1.2; height: 40px; overflow: hidden;">Sản phẩm giảm giá 1</h6>
				        </a>
				        <div class="d-flex justify-content-between align-items-center">
				            <span class="text-muted text-decoration-line-through" style="font-size: 14px;">$50.00</span>
				            <span class="text-danger fw-bold" style="font-size: 16px;">$40.00</span>
				        </div>
				    </div>
				</div>
				
				<div class="product-card mb-3 me-2 rounded-3 shadow overflow-hidden" style="width: 220px; background-color: #fff; border: 1px solid #ddd; transition: transform 0.3s ease-in-out;">
				    <img src="${pageContext.request.contextPath}/img/sp1.webp" class="card-img-top" alt="Product Image" style="height: 180px;">
				    <div class="card-body d-flex flex-column justify-content-between bg-light" style="padding: 10px;">
				        <a href="/hello/chitiet" class="text-dark stretched-link" style="text-decoration: none;">
				            <h6 class="card-title text-truncate mb-1" style="font-size: 16px; font-weight: bold; line-height: 1.2; height: 40px; overflow: hidden;">Sản phẩm giảm giá 1</h6>
				        </a>
				        <div class="d-flex justify-content-between align-items-center">
				            <span class="text-muted text-decoration-line-through" style="font-size: 14px;">$50.00</span>
				            <span class="text-danger fw-bold" style="font-size: 16px;">$40.00</span>
				        </div>
				    </div>
				</div>
				
				

                </div>
        </div>
    </div>
	
	<div class="row">
		<div class="col-md-12 mb-3">
	      <h2 class="text-center" style="font-size: 2rem; font-weight: bold;">Danh Mục Sản Phẩm</h2>
	      <ul class="nav nav-pills " style="display: flex; gap:20px; justify-content: center; align-items: center;">
	        <li class="nav-item">
	          <a class="nav-link active" href="/user/home" style="color: #333;">Tất cả</a>
	        </li>
	        <c:forEach  var="c" items="${categories }">        
	        	<li class="nav-item">
		          <a class="nav-link active" href="/user/home/${ c.category_id}" style="color: #333;">${c.category_name }</a>
		        </li>		        
	        </c:forEach>     
	      </ul>

	</div>
	</div>
    <div class="row">
        <div class="mt-1 container">
            <div class="row g-4 d-flex justify-content-center">
                <c:forEach var="p" items="${products }">
                	<div class="col-md-6 col-lg-4 mb-4">
					  <div class="card h-100 shadow-sm rounded-3">  <img src="${pageContext.request.contextPath}/img/${p.product_image}" class="card-img-top" alt="Product Image" style="height: auto; object-fit: cover;">
					    <div class="card-body d-flex flex-column justify-content-between">
					      <a href="/detail/${p.product_id }" class="text-dark stretched-link" style="text-decoration: none;">  <h3 class="card-title text-truncate mb-1">${p.product_name }</h3>  </a>
					      <p class="card-text text-muted mb-2">${p.description }</p>
					      <div class="d-flex justify-content-between align-items-center">
					        <div class="text-success">
					          <i class="bi bi-star-fill"></i> <fmt:formatNumber value="${p.price}" type="currency" /> (${p.stock } remaining)  </div>
					        <a href="${pageContext.request.contextPath}" class="btn btn-sm btn-outline-success">Add to Cart</a>
					      </div>
					    </div>
					  </div>
					</div>
                </c:forEach>  
            </div>
        </div>
    </div>
    <div class="mt-3" style="display: flex; justify-content: center; align-items: center;">
        <div class="row text-center">
            <ul class="pagination">
                
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/home?page=${currentPage - 1}" style="font-size: 1rem; color: #333;"><<</a></li>
                
                
                    <li class="page-item active"><a class="page-link" href="#" style="font-size: 1rem; color: #333;">${pageNumber+1}</a></li>
                        
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/home?page=${pageNumber}" style="font-size: 1rem; color: #333;">${pageNumber+1}</a></li>
                       
               
                    <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/home?page=${currentPage + 1}" style="font-size: 1rem; color: #333;">>></a></li>
                
            </ul>
        </div>
	</div>
</section>
