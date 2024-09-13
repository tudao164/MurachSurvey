<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 8/28/2024
  Time: 10:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url("<c:url value='/template/media/img.png' />") no-repeat  ;
            /* background-size: contain; */
            background-size: 100% 100%;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .thank-you-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        .thank-you-container h1 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
            color: #333333;
        }
        .thank-you-container p {
            margin-bottom: 10px;
            color: #333333;
        }
    </style>
</head>
<body>
<div class="thank-you-container">
    <h1>Thank You!</h1>
    <p>Thank you for completing the survey. Here is a summary of your responses:</p>
    <p><strong>First Name:</strong> <span id="first-name"></span>${userModel.firstName}</p>
    <p><strong>Last Name:</strong> <span id="last-name"></span>${userModel.lastName}</p>
    <p><strong>Email:</strong> <span id="email"></span>${userModel.email}</p>
    <p><strong>Date of Birth:</strong> <span id="dob"></span>
        <c:if test="${not empty userModel.dob}">
            ${userModel.dob}</p>
        </c:if>
    <p><strong>How did you hear about us?</strong> <span id="referral"></span>${userModel.referral}</p>
    <p><strong>Would you like to receive announcements about new CDs and special offers?</strong> <span id="offer"></span>
        <c:if test="${not empty userModel }">
<%--            <c:if test="${not empty userModel.receiveOffers}">--%>
                <ul>
                    <c:forEach var="option" items="${userModel.receiveOffers}">
                        <li>${option}</li>
                    </c:forEach>
                </ul>
<%--            </c:if>--%>
        </c:if>
    </p>
    <p><strong>Preferred Contact Method:</strong> <span id="contact-method"></span>${userModel.contactMethod}</p>
</div>
</body>
</html>
