<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add Meal</title>
</head>
<body>
<h1 style="color:#d2691e">Add meal</h1>

<form method="POST" action="meals?action=newMeal">
    Date:        <input type="datetime-local" name="date" /><br>
    Description: <input type="text" name="descr" /><br>
    Calories:    <input type="number" name="calory" /><br>
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
