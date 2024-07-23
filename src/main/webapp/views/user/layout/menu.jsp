<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>


<section>
    <!--Navbar-->
    <nav class="navbar navbar-expand-sm navbar-light py-1 fixed-top" style="background: #ffffff; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
        <div class="container">
            <a class="navbar-brand pt-2" href="/user/home">
                <h1>Mercy</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="mynavbar">
                <ul class="navbar-nav me-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/user/home"><span><i class="bi bi-house"></i>Home</span></a>
                    </li>
                    
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">Account</a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="/user/updateaccount">Update account</a></li>
                            
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/hello/cart"><span><i class="bi bi-briefcase"></i>Cart</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/hello/bill"><span><i class="bi bi-briefcase"></i>Your bill</span></a>
                    </li>
                </ul>
                <form style="display: flex; gap: 30px; align-items: center; padding-top: 0;">
                    <div class="nav-item">
                        <p class="nav-link" style="margin: 0; font-size: 16px; color: #333;">👤 User: ??</p>
                    </div>
                    <div class="nav-item">
                        <p class="nav-link" style="margin: 0; font-size: 16px; color: #333;">🔒 Role: ??</p>
                    </div>
                    <div class="nav-item">
                        
                                <a class="nav-link" href="/user/login" style="margin: 0; font-size: 16px; color: #333;"><i class="bi bi-box-arrow-in-right"></i> Login</a>
                            
                                <a class="nav-link" href="${pageContext.request.contextPath}/home/logout" style="margin: 0; font-size: 16px; color: #333;"><i class="bi bi-box-arrow-left"></i> Logout</a>
                            
                        
                    </div>
                    <div class="nav-item">
                        <a href="?lang=vi" class="nav-link" style="margin: 0; font-size: 16px; color: #333;">VN</a>
                    </div>
                    <div class="nav-item">
                        <a href="?lang=en" class="nav-link" style="margin: 0; font-size: 16px; color: #333;">EN</a>
                    </div>
                </form>
            </div>
        </div>
    </nav>
</section>
