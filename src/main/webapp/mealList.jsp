<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <style type="text/css">
        table.mealstable {
            font-family: verdana,arial,sans-serif;
            font-size:11px;
            color:#333333;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
            width: 60%;
            height: 50px;
            margin-left:auto;
            margin-right:auto;
        }
        table.mealstable th {
            background:#1ee2ff;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
            text-align: center;
        }
        table.mealstable td {
            background:#dcddc0 ;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #999999;
            text-align: center;
        }
        .redText{color:#ff0000;
            font-size: 16px ;}
        .greenText{color:#008000;
            font-size: 16px ;}
        .text{font-size: 20px ;}
    </style>
    <title>Meal list</title>
</head>
<body>
<h1 style="color:#d2691e; text-align:center">Meal List</h1>

<table class="mealstable">
    <thead>
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th colspan="2">Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${mealList}" var="umwe">
        <jsp:useBean id="umwe" class="ru.javawebinar.topjava.model.UserMealWithExceed" scope="page"/>
            <tr class="${umwe.exceed ? 'redText' : 'greenText'}">
                <c:url var="editUrl" value="meals?action=edit&id=${umwe.id}" />
                <c:url var="deleteUrl" value="meals?action=delete&id=${umwe.id}" />
                <td> ${umwe.dateTime.toLocalDate()} ${umwe.dateTime.toLocalTime()} </td>
                <td> ${umwe.description} </td>
                <td> ${umwe.calories} </td>
                <td><a href="${editUrl}">Edit</a></td>
                <td><a href="${deleteUrl}">Delete</a></td>
            </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<p><a href="newMeal.jsp">Add Meal</a></p>
<br>
<form method="POST" action="meals?action=filter">
    From date: <input type="datetime-local" name="date1" />
    To date: <input type="datetime-local" name="date2" />
    <input type="submit" value="Submit"/>
</form>
</body>
</html>
