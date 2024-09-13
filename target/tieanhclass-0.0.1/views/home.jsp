<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Murach Survey</title>
    <link rel="stylesheet" href="<c:url value='/template/css/style.css' />" />
    <style>
        .checkbox-group .checkbox-item {
            display: inline-flex; /* Hiển thị thẻ input và label theo hàng ngang */
            align-items: center; /* Căn chỉnh dọc giữa input và label */
            margin-bottom: 10px; /* Khoảng cách giữa các mục checkbox */
        }

        .checkbox-group label {
            font-size: 14px; /* Kích thước chữ của label nhỏ hơn */
            font-weight: normal; /* Bỏ in đậm */
            margin-left: 5px; /* Khoảng cách giữa checkbox và label */
        }

        .error-message {
            color: red;
            font-size: 14px;
            margin-top: 5px;
        }
    </style>

    <script>
        function validateForm() {
            let isValid = true;
            let errorMessages = [];

            const referral = document.querySelector('input[name="referral"]:checked');

            if (!referral) {
                isValid = false;
                errorMessages.push("Please select how you heard about us.");
            }

            // Hiển thị thông báo lỗi
            const errorContainer = document.getElementById('error-container');
            errorContainer.innerHTML = "";
            if (!isValid) {
                errorMessages.forEach(msg => {
                    const errorMessage = document.createElement('div');
                    errorMessage.classList.add('error-message');
                    errorMessage.textContent = msg;
                    errorContainer.appendChild(errorMessage);
                });
            }

            return isValid;
        }
    </script>
</head>
<body>
<div class="survey-container">
    <img src="<c:url value='/template/media/images.png' />" alt="Murach Logo" width="80" height="80" style="margin: 0px;">
    <h1>Survey</h1>
    <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

    <!-- Hiển thị thông báo lỗi -->
    <div id="error-container"></div>

    <form action="<c:url value='/Thank'/>" id="formSubmit" method="post" onsubmit="return validateForm();">
        <div>
            <h2>Your Information</h2>
            <label for="first-name">First Name</label>
            <input type="text" id="first-name" name="first-name">

            <label for="last-name">Last Name</label>
            <input type="text" id="last-name" name="last-name">

            <label for="email">Email</label>
            <input type="email" id="email" name="email">

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob">
        </div>

        <div class="radio-group">
            <h2>How did you hear about us?</h2>
            <input type="radio" id="search-engine" name="referral" value="Search engine">
            <label for="search-engine">Search engine</label>

            <input type="radio" id="word-of-mouth" name="referral" value="Word of mouth">
            <label for="word-of-mouth">Word of mouth</label>

            <input type="radio" id="social-media" name="referral" value="Social media">
            <label for="social-media">Social media</label>

            <input type="radio" id="other" name="referral" value="Other">
            <label for="other">Other</label>
        </div>

        <div class="checkbox-group">
            <h2>Would you like to receive announcements about new CDs and special offers?</h2>
            <div class="checkbox-item">
                <input type="checkbox" id="email-announcements" name="email-announcements" value="I'd like that.">
                <label for="email-announcements">YES, I'd like that.</label>
            </div>
            <div class="checkbox-item">
                <input type="checkbox" id="email-announcements" name="email-announcements" value="Send me an Email">
                <label for="email-announcements">YES, please send me email announcements.</label>
            </div>
        </div>

        <label for="contact-method">Please contact me by:</label>
        <select id="contact-method" name="contact-method" class="dropdown">
            <option value="email">Email or postal mail</option>
            <option value="phone">Phone</option>
        </select>

        <br>

        <button type="submit" style="margin-top:15px;">Submit</button>
    </form>
</div>
</body>
</html>
