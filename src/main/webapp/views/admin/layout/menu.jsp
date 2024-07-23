<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<section>
    <nav class="navbar navbar-expand-sm navbar-dark sticky-top bg-dark">
        <div class="container">
            <a class="navbar-brand text-light" href="/user/home">
                <h3>Admin</h3>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" style="display: flex; justify-content: end; gap:120px" id="mynavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link text-light" href="/user/home"><span><i class="bi bi-house"></i> Home</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="/admin/user"><span><i class="bi bi-people"></i> Users</span></a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-bs-toggle="dropdown">
                            Products
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-dark" href="/admin/category">Categories</a></li>
                            <li><a class="dropdown-item text-dark" href="/admin/product">Products</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="/hello/donhang"><span><i class="bi bi-receipt"></i> Orders</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="/hello/thongke"><span><i class="bi bi-graph-up"></i> Statistics</span></a>
                    </li>
                </ul>
                <form class="d-flex align-items-center">
                    <div class="me-3">
                        <p class="text-light mb-0"> User: ??</p>
                        <p class="text-light mb-0"> Role: ??</p>
                    </div>
                    <div class="d-flex align-items-center">
                        <a class="nav-link text-light me-2" href="/user/login"><i class="bi bi-box-arrow-in-right"></i> Login</a>
                        <a class="nav-link text-light" href="${pageContext.request.contextPath}/home/logout"><i class="bi bi-box-arrow-left"></i> Logout</a>
                    </div>
                    <div class="ms-3 dropdown">
                        <a class="nav-link text-light dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                            <i class="bi bi-globe"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item text-dark" href="?lang=vi">VN</a></li>
                            <li><a class="dropdown-item text-dark" href="?lang=en">EN</a></li>
                        </ul>
                    </div>
                </form>
            </div>
        </div>
    </nav>
</section>
