<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title><%= request.getAttribute("pageTitle") != null ? request.getAttribute("pageTitle") : "Page" %></title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css/CSS.css">
</head>
<body>
