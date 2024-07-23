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
    <div class="container mt-5 mb-5" onload="showAlert('${message}')">
        <ul class="nav nav-pills">
            <li class="nav-item">
                <a class="nav-link active" data-bs-toggle="pill" href="#home"><span><i class="bi bi-cloud-upload"></i></span>User Edition</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="pill" href="#menu1"><span><i class="bi bi-card-list"></i></span>User List</a>
            </li>
        </ul>
    
        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane active" id="home">
                <div class="">
                    <div class="card">
                        

						<form:form class="p-3" action="${pageContext.request.contextPath}/admin/user" method="post" modelAttribute="user">
						    <div style="display: flex; flex-direction: column; gap: 20px;">
						        <div>
						            <label for="user_id">User name</label>
						            <form:input path="user_id" required="required" class="form-control" placeholder=""/>
						            <div class="error-div">
			                            <form:errors path="user_id" element="span" cssClass="error"></form:errors>
			                        </div>
						        </div>
						        <div>
						            <label for="password">Password</label>
						            <form:input type="password" path="password" required="required" class="form-control" placeholder=""/>
						            <div class="error-div">
			                            <form:errors path="password" element="span" cssClass="error"></form:errors>
			                        </div>
						        </div>
						        <div>
						            <label for="fullname">Fullname</label>
						            <form:input path="full_name" required="required" class="form-control" placeholder=""/>
						            <div class="error-div">
			                            <form:errors path="full_name" element="span" cssClass="error"></form:errors>
			                        </div>
						        </div>
						        <div>
						            <label for="email">Email</label>
						            <form:input path="email" required="required" type="email" class="form-control" placeholder=""/>
						            <div class="error-div">
			                            <form:errors path="email" element="span" cssClass="error"></form:errors>
			                        </div>
						        </div>
						        <div style="display: flex; gap:25px">
						            <label>Gender</label>
						            <div>
						            	<form:radiobutton path="gender" value="true"/>Male
						            	<form:radiobutton path="gender" value="false"/>Female
						            </div>
						            
						        </div>
						        <div style="display: flex; gap:25px">
						            <label>Role</label>
						            <div>
						            	<form:radiobutton path="role" value="true"/>Admin
						            	<form:radiobutton path="role" value="false"/>User
						            </div>
						            
						        </div>
						        <div class="pt-1" style="display: flex; justify-content: end; align-items: center; gap: 10px;">
						            <button formaction="${pageContext.request.contextPath}/admin/user/create" class="btn btn-success">
						                <span><i class="bi bi-box-arrow-down"></i></span>Create
						            </button>
						            <button formaction="${pageContext.request.contextPath}/admin/user/update" class="btn btn-success">
						                <span><i class="bi bi-box-arrow-down"></i></span>Update
						            </button>
						            <button formaction="${pageContext.request.contextPath}/admin/user/delete" class="btn btn-danger">
						                <span><i class="bi bi-x-circle-fill"></i></span>Delete
						            </button>
						            <a href="${pageContext.request.contextPath}/admin/user" class="btn btn-success">
						                <span><i class="bi bi-box-arrow-down"></i></span>Reset
						            </a>
						        </div>
						    </div>
						</form:form>

                        
                    </div>
                </div>
            </div>
            <div class="tab-pane container fade" id="menu1">
                <div class="card">
                    <table class="table table-bordered table-hover" style=" text-align: center; vertical-align: middle;">
                        <thead class ="">
                            <tr>
                                <th class="bg-secondary">user_id</th>
                                <th class="bg-secondary">password</th>
                                <th class="bg-secondary">email</th>
                                <th class="bg-secondary">full_name</th>
                                <th class="bg-secondary">gender</th>
                                <th class="bg-secondary">created_at</th>
                                <th class="bg-secondary">role</th>
                                <th class="bg-secondary"></th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach var="u" items="${users }">
                        		<tr>
	                                <td>${u.user_id}</td>
	                                <td>${u.password}</td>
	                                <td>${u.email}</td>
	                                <td>${u.full_name}</td>
	                                <td>${u.gender? 'Male' : 'Female'}</td>
	                                <td>${u.created_at}</td>
	                                <td>${u.role ? 'Admin' : 'User'}</td>
	                                <td><a href="/admin/user/edit/${u.user_id }">Edit</a></td>
                            	</tr>
                        	</c:forEach> 
                        </tbody>
                    </table>
                    <div class="card-footer">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
                            <div>
                                <div>
                                    <p>${sl } users</p>
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