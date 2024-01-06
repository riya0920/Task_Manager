<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>    
<%@ page import="java.util.List" %>
<%@ page import="com.bean.TaskBean" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Tasks</title>
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
            margin-bottom: 20px;
            color: #8B4513; /* Brownish color */
            font-size: 36px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        table {
            width: 80%;
            margin: 20px 0;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #fff;
        }

        th {
            background-color: #4CAF50;
            color: #fff;
        }

        .toggle-button {
            width: 20px;
            height: 20px;
            border-radius: 50%;
            border: 2px solid #001F3F; /* Navy blue border color */
            background-color: #fff;
            cursor: pointer;
            transition: background-color 0.3s, border-color 0.3s;
        }

        .filled {
            background-color: #001F3F; /* Navy blue filled color */
            border-color: #001F3F; /* Navy blue border color */
        }

        .remove-button {
            background-color: #e74c3c;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .remove-button:hover {
            background-color: #c0392b;
        }

        a.button {
            position: fixed;
            bottom: 20px;
            right: 20px;
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

        a.button:hover {
            background-color: #008CBA;
        }

        @keyframes changeColor {
            0% {
                background: linear-gradient(to bottom, #fddb92, #d1dcff);
            }
            100% {
                background: linear-gradient(to bottom, #d1dcff, #fddb92);
            }
        }
    </style>
</head>
<body>
    <% 
        String fname = (String)session.getAttribute("fname");
        List<TaskBean> all_tasks = (List<TaskBean>)session.getAttribute("alltasks");
        session.setAttribute("toggleValue", 0);
    %>

    <h1><%= fname %>'s Tasks</h1>

    <table border="1">
        <tr>
            <th>Task Name</th>
            <th>Task Description</th>
            <th>Completed</th>
            <th>Action</th>
        </tr>
        <% if (all_tasks != null) { %>
            <% for (TaskBean row : all_tasks) { %>
                <tr>
                    <td><%= row.getTask_name() %></td>
                    <td><%= row.getTask_description() %></td>
                    <td>
                        <div>
                            <div id="myButton_<%= row.getTid()%>" class="toggle-button" onclick="toggleButton('<%= row.getTid()%>')"></div>
                        </div>
                    </td>
                    <td>
                        <input type="button" id="removeButton_<%= row.getTid()%>" class="remove-button" value="Remove task" onclick="removeTask('<%= row.getTid()%>')">
                    </td>
                </tr>
            <% } %>
        <% } else { %>
            <tr>
                <td colspan="3">No tasks available</td>
            </tr>
        <% } %>
    </table>

    <a href="addtask" class="button">Add a Task</a>

    <script>
        function toggleButton(id) {
            var button = document.getElementById('myButton_' + id);
            button.classList.toggle('filled');

            var removeButton = document.getElementById('removeButton_' + id);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '${pageContext.request.contextPath}/changeTaskStatus?taskId=' + id, true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        console.log(xhr.responseText);
                        // Handle the response from the controller if needed
                    } else {
                        console.error('Error sending data to controller. Status:', xhr.status);
                    }
                }
            };
            xhr.send();
        }
        
        function removeTask(taskId) {
            console.log('Remove Task clicked for Task ID:', taskId);
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '${pageContext.request.contextPath}/deleteTask?taskId=' + taskId, true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onreadystatechange = function () {
                if (xhr.readyState === XMLHttpRequest.DONE) {
                    if (xhr.status === 200) {
                        console.log(xhr.responseText);
                        // Handle the response from the controller if needed
                    } else {
                        console.error('Error sending data to controller. Status:', xhr.status);
                    }
                }
            };
            xhr.send();
        }
    </script>
</body>
</html>
