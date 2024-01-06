<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Signup</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: linear-gradient(to bottom, #3494e6, #ec6ead);
            animation: changeColor 10s infinite alternate-reverse;
        }

        form {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .input-box {
            width: 300px;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            display: block;
            margin: 10px auto;
        }

        .pretty-button {
            background-color: #4C0050;
            border: none;
            color: white;
            padding: 15px 30px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 18px;
            border-radius: 4px;
            transition: background-color 0.3s;
            cursor: pointer;
        }

        .pretty-button:hover {
            background-color: #00870A;
        }

        @keyframes changeColor {
            0% {
                background: linear-gradient(to bottom, #3494e6, #ec6ead);
            }
            100% {
                background: linear-gradient(to bottom, #ec6ead, #3494e6);
            }
        }
    </style>
</head>
<body>
    <form action="signup" method="post">
        <input type="text" class="input-box" placeholder="Firstname" name="fname">
        <input type="text" class="input-box" placeholder="Lastname" name="lname">
        <input type="text" class="input-box" placeholder="Username" name="uname">
        <input type="password" class="input-box" placeholder="Password" name="pass">
        <input type="submit" class="pretty-button" value="Signup!">
    </form>
</body>
</html>
