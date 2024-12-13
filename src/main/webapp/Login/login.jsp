<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Interra Project</title>
    <link rel="stylesheet" href="Login.css">
    <script defer src="Login.js"></script>
</head>
<body>

    <nav class="navbar">
        <div class="container">
            <a href="index.jsp" class="brand">Interra</a>
        </div>
    </nav>

    
    <div class="login-container">
        <form id="loginForm" action="LoginServlet" method="post">
            <h2>Login to Interra</h2>
            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter username" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter password" required>
            </div>
            <div id="error-message" class="error-message"></div>
            <button type="submit">Login</button>
            <p>Don't have an account? <a href="${pageContext.request.contextPath}/Registration/registration.jsp">Register here</a></p>
        </form>
    </div>

    
    <footer class="footer">
        <p>&copy; 2024 Interra Project. All Rights Reserved.</p>
    </footer>
</body>
</html>
