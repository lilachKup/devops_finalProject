<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*" %>
<%
    String username = request.getParameter("username");
%>
<html>
<head>
    <title>DevOps Demo App</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #2c3e50, #3498db);
            color: white;
            text-align: center;
            padding-top: 50px;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.2);
            display: inline-block;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px #00000080;
        }

        input[type="text"] {
            padding: 10px;
            width: 200px;
            border: none;
            border-radius: 5px;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #1abc9c;
            border: none;
            padding: 10px 20px;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #16a085;
        }

        a {
            color: #f1c40f;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        h1 {
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 Welcome to Our DevOps Web App</h1>

        <% if (username == null || username.trim().isEmpty()) { %>
            <form method="post">
                <p>What’s your DevOps nickname?</p>
                <input type="text" name="username" placeholder="Type here..." required /><br>
                <input type="submit" value="Deploy!" />
            </form>
            <br><br>
            <p><a href="https://jenkins.io/" target="_blank">Visit Jenkins Official Site</a></p>
        <% } else { %>
            <h2>✅ Hello, <%= username %>!</h2>
            <p>Your DevOps deployment was successful.</p>
            <br>
            <a href="index.jsp">🔁 Back to Home</a>
        <% } %>
    </div>
</body>
</html>
