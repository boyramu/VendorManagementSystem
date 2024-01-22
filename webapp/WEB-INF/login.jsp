<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('Images/PC2.jpeg'); /* Set background image */
            background-size: cover; /* Make the background image cover the entire screen */
            background-position: center; /* Center the background image */
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .login-container {
            background-color: #98fb98; /* Light green background */
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            border-radius: 15px; /* Curved border */
            border: 3px solid #000; /* Thick black border */
        }

        h1, h2 {
            color: #ff0000;
            font-weight: bold;
            text-decoration: underline;
            text-transform: uppercase; /* Convert text to uppercase */
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input {
            width: 70%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border-radius: 8px; /* Curved border for text boxes */
            border: 2px solid #000; /* Thick black border for text boxes */
            font-family: 'Times New Roman', serif;
            font-size: 18px;
            background-color: transparent;
            color: black;
        }

        .submit-btn {
            width: 30%;
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 8px 15px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .register-link {
            color: #007bff;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Welcome To Vendor Management System</h1>
        <h2>Login</h2>
        <form action="loginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Login" class="submit-btn">
        </form>
        <p>Not registered? <a href="index.jsp" class="register-link">Register here</a></p>
    </div>
</body>
</html>
