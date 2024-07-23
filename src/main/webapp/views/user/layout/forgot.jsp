<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
    function showAlert(message) {
        if (message) {
            alert(message);
        }
    }
</script>
<div class="container d-flex justify-content-center mt-5 mb-5">
    <div class="row border rounded-5 p-3 bg-white shadow box-area">
        <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column"
            style="background: linear-gradient(45deg, #2196f3, #e91e63);">
            <div class="mb-3">
                <img src="${pageContext.request.contextPath}/img/technology.png" alt="" class="img-fluid" style="width: 250px;">
            </div>
            <p class="h2">
                Forgot password
            </p>

        </div>
        <div class="col-md-6 right-box">
            <div class="row ">
            	
                <form class="row g-2" name="myForm" method="post" action="${pageContext.request.contextPath}/user/forgot">
                    <div class="">
                        <label for="validationServer01" class="form-label">User name</label>
                        <input name="user_id" type="text" class="form-control" value="" required >
                        
                    </div>
                    <div class="">
                        <label for="" class="form-label">Email</label>
                        <input name="email" type="email" class="form-control "  value="" required >
                        
                    </div>
                    
                    <div class="input-group mb-3">
                        <button class="btn btn-lg btn-primary w-100">Retrieve</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        showAlert('${message}');
    });
</script>