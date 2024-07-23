<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="row border rounded-5 p-3 bg-white shadow box-area">
        <div class="col-md-6 rounded-4 d-flex justify-content-center align-items-center flex-column"
            style="background: linear-gradient(45deg, #2196f3, #e91e63);">
            <div class="mb-3">
                <img src="${pageContext.request.contextPath}/img/swift.png" alt="" class="img-fluid" style="width: 250px;">
            </div>
            <p class="h2">
                Change password
            </p>

        </div>

        <div class="col-md-6 right-box">
            <div class="row ">
            	        <div class="">
                        	
                        	<div class="text-center">
                        	<h5 class="">${ms }</h5>
                        </div>
                    	</div>
                <form class="row g-3" name="myForm" method="post" action="${pageContext.request.contextPath}/changepassword">
                    <div class="">
                        <label for="validationServer01" class="form-label">User name</label>
                        <input name="id" type="text" class="form-control" value="" required >
                        
                    </div>
                    <div class="">
                        <label for="" class="form-label">Current Password</label>
                        <input name="password" type="password" class="form-control "  value="" required >
                        
                    </div>
                    <div class="">
                        <label for="" class="form-label">New Password</label>
                        <input name="newpassword1" type="password" class="form-control "  value="" required>
                        
                    </div>
                    <div class="">
                        <label for="" class="form-label">Comfirm New Pasword</label>
                        <input name="newpassword2" type="password" class="form-control "
                            aria-describedby="" required>              
                        
                    </div>
                    
                    <div class="input-group mb-3">
                        <button class="btn btn-lg btn-primary w-100">Change</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>