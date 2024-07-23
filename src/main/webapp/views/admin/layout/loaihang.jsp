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

<div class="container mt-5 mb-5" onload="showAlert('${message}')">
    <ul class="nav nav-pills">
        <li class="nav-item"><a class="nav-link active"
            data-bs-toggle="pill" href="#home"><span><i
                class="bi bi-cloud-upload"></i></span>Category Edition</a></li>
        <li class="nav-item"><a class="nav-link" data-bs-toggle="pill"
            href="#menu1"><span><i class="bi bi-card-list"></i></span>Category
            List</a></li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div class="tab-pane active" id="home">
            <div class="">
                <div class="card">
                    <form:form class="p-3"
                               action="/admin/category"
                               method="post"
                               modelAttribute="category">
                        
                        <div class="">
                            <div class="" style="display: flex; flex-direction: column; gap: 20px;">
                                <div class="">
                                    <label for="category_id">Category_id</label>
                                    <form:input path="category_id" class="form-control"  placeholder="" />
                                    <div class="error-div">
			                            <form:errors path="category_id" element="span" cssClass="error"></form:errors>
			                        </div>
                                </div>
                                <div class="">
                                    <label for="category_name">Category_name</label>
                                    <form:input required="required" path="category_name" class="form-control" placeholder="" />
                                    <div class="error-div">
			                            <form:errors path="category_name" element="span" cssClass="error"></form:errors>
			                        </div>
                                </div>

                                <div>
                                    <div style="display: flex; gap: 20px;">
                                        <label>Is_delete</label>
                                        <label for="activeTrue">
                                            <form:radiobutton path="isdelete" value="true" />
                                            True
                                        </label>
                                        <label for="activeFalse">
                                            <form:radiobutton path="isdelete" value="false" />
                                            False
                                        </label>
                                    </div>
                                </div>

                                <div class="pt-1" style="display: flex; justify-content: end; align-items: center; gap: 10px;">
                                    <button formaction="/admin/category/create" 
                                            class="btn btn-success">
                                        <span><i class="bi bi-box-arrow-down"></i></span>Create
                                    </button>
                                    <button formaction="/admin/category/update" 
                                            class="btn btn-success">
                                        <span><i class="bi bi-box-arrow-down"></i></span>Update
                                    </button>
                                    <button formaction="/admin/category/delete"
                                            class="btn btn-danger">
                                        <span><i class="bi bi-x-circle-fill"></i></span>Delete
                                    </button>
                                    <a href="/admin/category"
                                            class="btn btn-success">
                                        <span><i class="bi bi-box-arrow-down"></i></span>Reset
                                    </a>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <div class="tab-pane container fade" id="menu1">
            <div class="card">
                <table class="table table-bordered table-hover"
                    style="text-align: center; vertical-align: middle;">
                    <thead class="">
                        <tr>
                            <th class="bg-secondary">Category_id</th>
                            <th class="bg-secondary">Category_name</th>
                            <th class="bg-secondary">Is_delete</th>
                            <th class="bg-secondary"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${categories}" var="c">
                            <tr>
                                <td>${c.category_id}</td>
                                <td>${c.category_name}</td>
                                <td>${c.isdelete}</td>
                                <td><a href="/admin/category/edit/${c.category_id}">Edit</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="card-footer">
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                        <div>
                            <div>
                                <h5>${count} Category</h5>
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
