<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<style>
    .error-div{
        display: flex;
        justify-content: flex-end;
    }
    .error {
        color: red;
        font-weight: lighter;
        font-size: .8em;
    }
</style>
<script type="text/javascript">
    function showAlert(message) {
        if (message) {
            alert(message);
        }
    }
</script>
<div class="container d-flex justify-content-center align-items-center min-vh-100 mt-3">
    <div class="row border rounded-5 p-3 bg-white shadow box-area">
        <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column"
            style="background: linear-gradient(45deg, #2196f3, #e91e63);">
            <div class="mb-3">
                <img src="${pageContext.request.contextPath}/img/globe1.png" alt="" class="img-fluid" style="width: 250px;">
            </div>
            <p class="h2">
                Update Account
            </p>

        </div>

        <div class="col-md-6 right-box">
            <div class="row ">
            	<form:form class="row g-1" name="myForm" method="post" action="${pageContext.request.contextPath}/user/updateaccount" modelAttribute="user">
                    <div class="">
                        <label for="validationServer01" class="form-label">User name</label>
                        <form:input path="user_id" class="form-control" required="required" />
                        <div class="error-div">
                            <form:errors path="user_id" element="span" cssClass="error"></form:errors>
                        </div>  
                    </div>
                    <div class="">
                        <label for="" class="form-label">Password</label>
                        <form:input type="password" path="password" class="form-control" required="required" />
                        <div class="error-div">
                            <form:errors path="password" element="span" cssClass="error"></form:errors>
                        </div>  
                    </div>
                    <div class="">
                        <label for="" class="form-label">Password check</label>
                        <input name="passwordCheck" type="password" class="form-control" required="required">
                        <div class="error-div">
                            <span class="error" <c:if test="${check == null}">hidden="true"</c:if>>Password check must be equal to password</span>
                        </div>
                    </div>
                    <div class="">
                        <label for="" class="form-label">Fullname</label>
                        <form:input path="full_name" class="form-control" required="required" />
                        <div class="error-div">
                            <form:errors path="full_name" element="span" cssClass="error"></form:errors>
                        </div>  
                    </div>
                    <div class="">
                        <label for="" class="form-label">Email</label>
                        <form:input path="email" type="email" class="form-control" required="required" />
                        <div class="error-div">
                            <form:errors path="email" element="span" cssClass="error"></form:errors>
                        </div>  
                    </div>
                    <div class="">
                        <label for="" class="form-label">Gender</label>
                        <br>
                        <form:radiobutton path="gender" value="true" /> Male
                        <form:radiobutton path="gender" value="false" /> Female
                    </div>
                    <div class="input-group mb-3">
                        <button class="btn btn-lg btn-primary w-100" type="submit">Update</button>
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