<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
  <title>User Management Application</title>
  <style>
    /* Khung chứa các công cụ tìm kiếm & sắp xếp */
    .action-bar {
      width: 80%;
      margin: 0 auto 15px auto;
      display: flex;
      justify-content: flex-end;
      align-items: center;
      gap: 10px;
    }
    .action-bar input[type="text"] {
      padding: 6px 10px;
      font-size: 14px;
      width: 200px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }
    .btn {
      padding: 6px 12px;
      font-size: 14px;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      text-decoration: none;
      display: inline-block;
    }
    .btn-search {
      background-color: #4CAF50;
    }
    .btn-search:hover {
      background-color: #45a049;
    }
    .btn-sort {
      background-color: #008CBA;
    }
    .btn-sort:hover {
      background-color: #007bb5;
    }
    .message-alert {
      color: red;
      font-weight: bold;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
<center>
  <h1>User Management</h1>
  <h2>
    <a href="users?action=create">Add New User</a>
  </h2>
</center>

<!-- Khu vực chứa thanh tìm kiếm và nút sắp xếp nằm trên bên phải bảng -->
<div class="action-bar">
  <!-- Form tìm kiếm -->
  <form action="users" method="get" style="margin: 0;">
    <input type="hidden" name="action" value="find">
    <input type="text" name="country" value="${searchCountry}" placeholder="Enter country..." required>
    <button type="submit" class="btn btn-search">Search</button>
  </form>

  <!-- Nút Sắp xếp theo tên -->
  <a href="users?action=sort" class="btn btn-sort">Sort by Name (A-Z)</a>

  <!-- Nút Reset về danh sách ban đầu khi đang tìm kiếm hoặc sắp xếp -->
  <c:if test="${not empty searchCountry || isSorted}">
    <a href="users" style="font-size: 13px; text-decoration: none;">[Show All]</a>
  </c:if>
</div>

<div align="center">
  <c:if test="${not empty message}">
    <div class="message-alert">${message}</div>
  </c:if>

  <table border="1" cellpadding="5" style="width: 80%;">
    <caption><h2>List of Users</h2></caption>
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Email</th>
      <th>Country</th>
      <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${listUser}">
      <tr>
        <td><c:out value="${user.id}"/></td>
        <td><c:out value="${user.name}"/></td>
        <td><c:out value="${user.email}"/></td>
        <td><c:out value="${user.country}"/></td>
        <td>
          <a href="users?action=edit&id=${user.id}">Edit</a>
          <a href="users?action=delete&id=${user.id}">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>