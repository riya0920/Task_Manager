<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Task Manager</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: linear-gradient(to bottom, #fddb92, #d1dcff); /* Yellowish gradient background */
            animation: changeColor 10s infinite alternate-reverse;
            color: #001F3F; /* Navy blue text color */
        }

        h1 {
            color: #fff;
            text-align: center;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            margin: 10px;
            padding: 15px 30px;
            border: 2px solid #fff;
            border-radius: 25px;
            transition: background-color 0.3s, color 0.3s;
            display: inline-block;
            font-size: 18px;
        }

        a:hover {
            background-color: #fff;
            color: #3494e6;
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
    <h1>Welcome to the Task Manager!</h1>
    <a href="login">Click here to Sign in</a>
    <br>
    <a href="signup">Click here to Register</a>
</body>
</html>
