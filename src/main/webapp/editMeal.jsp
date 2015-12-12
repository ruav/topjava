<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Edit Meal</title>
</head>
<body>
<h1 style="color:#d2691e">Edit meal</h1>

<form method="POST" action="meals?action=edit">
    <jsp:useBean id="userMeal" class="ru.javawebinar.topjava.model.UserMeal" scope="request"/>
    <input type="hidden" name="id" value="${userMeal.id}"/>
    Date:        <input type="datetime-local" name="date" value="${userMeal.dateTime}"/><br>
    Description: <input type="text" name="descr" value="${userMeal.description}"/><br>
    Calories:    <input type="number" name="calory" value="${userMeal.calories}" min="0"/><br>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
