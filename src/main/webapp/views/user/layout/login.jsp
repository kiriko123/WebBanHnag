<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
<div class="container d-flex justify-content-center align-items-center min-vh-100" onload="showAlert('${message}')">
    <div class="row border rounded-5 p-3 bg-white shadow box-area">
        <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column" style="background: lightseagreen;">
            <div class="mb-3">
                <img src="${pageContext.request.contextPath}/img/join.png" alt="" class="img-fluid" style="width: 250px;">
            </div>
            <p class="h4">SIGN IN</p>
        </div>

        <div class="col-md-6 right-box">
            <div class="row">
                <div class="">
                    <p class="h1">Hello again</p> <br>
                </div>

                <form:form style="display: flex; flex-direction: column; gap: 20px;" modelAttribute="user" name="myForm" method="post" action="${pageContext.request.contextPath}/user/login">
                    <div class="">
                        <div>
                            <form:input path="user_id" value="${user_id}" type="text" class="form-control form-control-lg bg-light" placeholder="Account" required="required" />
                        </div>
                        <div class="error-div">
                            <form:errors path="user_id" element="span" cssClass="error"></form:errors>
                        </div>                        
                    </div>
                    <div class="">
                        <div>
                            <form:input path="password" value="${password}" type="password" class="form-control form-control-lg bg-light" placeholder="Password" required="required" />
                        </div>
                        <div class="error-div">
                            <form:errors path="password" element="span" cssClass="error"></form:errors>
                        </div>
                    </div>
                    <div class="input-group mb-3 d-flex justify-content-between align-items-center">
                        <div class="form-check">
                            <input checked="checked" type="checkbox" name="remember" id="formCheck" class="form-check-input">
                            <label for="formCheck" class="form-check-label text-secondary"><small>Remember me?</small></label>
                        </div>
                        <div class="forgot">
                            <small><a href="${pageContext.request.contextPath}/user/forgot">Forgot password?</a></small>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <button class="btn btn-lg btn-primary w-100" type="submit">Sign in</button>
                    </div>
                    <div class="d-flex justify-content-end">
                        <small>Don't have an account? <a href="${pageContext.request.contextPath}/user/signup">Sign up</a></small>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        showAlert('${message}');
    });
</script>
