<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register Page</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $("form").submit(function(e) {
                e.preventDefault();
                let valid = true;
                let username = $("#username").val().trim();
                let password = $("#password").val().trim();
                let email = $("#email").val().trim();
                let birthdate = $("#birthdate").val().trim();

                // 用户名验证
                if (username === "") {
                    $("#usernameErr").text("Username is required");
                    valid = false;
                } else {
                    $("#usernameErr").text("");
                }

                // 密码验证
                if (password === "" || password.length < 8) {
                    $("#passwordErr").text("Password is required and must be at least 8 characters");
                    valid = false;
                } else {
                    $("#passwordErr").text("");
                }

                // 邮箱验证
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (email === "" || !emailRegex.test(email)) {
                    $("#emailErr").text("Please enter a valid email");
                    valid = false;
                } else {
                    $("#emailErr").text("");
                }

                // 生日验证 (yyyy-dd-mm 格式)
                const birthRegex = /^\d{4}-\d{2}-\d{2}$/;
                if (birthdate === "" || !birthRegex.test(birthdate)) {
                    $("#birthdateErr").text("Birthdate must be in yyyy-dd-mm format");
                    valid = false;
                } else {
                    $("#birthdateErr").text("");
                }

                if (valid) {
                    this.submit();
                }
            });
        });
    </script>
</head>
<body>
    <h2>User Registration</h2>
    <form action="#" method="post">
        <div>
            <label>Username:</label>
            <input type="text" id="username" name="username">
            <span id="usernameErr" style="color: red;"></span>
        </div>
        <div>
            <label>Password:</label>
            <input type="password" id="password" name="password">
            <span id="passwordErr" style="color: red;"></span>
        </div>
        <div>
            <label>Email:</label>
            <input type="text" id="email" name="email">
            <span id="emailErr" style="color: red;"></span>
        </div>
        <div>
            <label>Birthdate (yyyy-dd-mm):</label>
            <input type="text" id="birthdate" name="birthdate">
            <span id="birthdateErr" style="color: red;"></span>
        </div>
        <div>
            <label>Gender:</label>
            <input type="radio" name="gender" value="male"> Male
            <input type="radio" name="gender" value="female"> Female
        </div>
        <div>
            <input type="submit" value="Register">
        </div>
    </form>
</body>
</html>