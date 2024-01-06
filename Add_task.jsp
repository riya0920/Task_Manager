<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task</title>
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background: linear-gradient(to bottom, #3494e6, #ec6ead);
            animation: changeColor 10s infinite alternate-reverse;
        }

        h1 {
            margin-bottom: 20px;
            color: #8B4513; /* Brownish color */
            font-size: 36px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            z-index: 1; /* Ensure the heading is on top */
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .input-box {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da; /* Light gray border */
            border-radius: 4px;
            font-size: 16px;
            box-sizing: border-box;
        }

        .pretty-button {
            margin-top: 15px; /* Add margin to separate the button from the input boxes */
            background-color: #3494e6;
            color: #fff;
            padding: 15px 30px;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            border-radius: 8px;
            transition: background-color 0.3s;
            cursor: pointer;
        }

        .pretty-button:hover {
            background-color: #00870A; /* Dark green background color on hover */
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
    <%String fname = (String)session.getAttribute("fname"); %>
    <h1>Welcome <%= fname %></h1>
    <div class="form-container">
        <form action="addtask" method="post">
            <table>
                <tr>
                    <td>
                        <input type="text" class="input-box" placeholder="Task Name" name="task_name" required><br>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input type="text" class="input-box" placeholder="Task Description" name="task_description" required><br>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input type="submit" class="pretty-button" value="Add Task">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
