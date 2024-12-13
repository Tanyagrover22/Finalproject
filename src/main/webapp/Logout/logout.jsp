<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout - Interra</title>
    <style>
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }


        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #000, #434343);
            color: #fff;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        
        .container {
            background: #fff;
            color: #333;
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);
            max-width: 400px;
            width: 100%;
            animation: slideDown 0.5s ease-out;
        }

    
        .container h2 {
            color: #6a11cb;
            margin-bottom: 20px;
            font-size: 1.8rem;
        }

        
        .container p {
            margin-bottom: 20px;
            font-size: 1rem;
            line-height: 1.5;
        }

        
        .button-container {
            display: flex;
            justify-content: space-around;
            gap: 15px;
        }

        button {
            padding: 10px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            color: #fff;
            transition: background 0.3s ease;
            width: 100%;
        }

        #logout-btn {
            background: #e74c3c;
        }

        #logout-btn:hover {
            background: #c0392b;
        }

        #cancel-btn {
            background: #6a11cb;
        }

        #cancel-btn:hover {
            background: #5a0db3;
        }

        /* Animation */
        @keyframes slideDown {
            from {
                transform: translateY(-50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            button {
                font-size: 0.9rem;
                padding: 8px 10px;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Are you sure you want to logout?</h2>
        <p>Logging out will end your session, and you will need to log in again to access your account.</p>
        <div class="button-container">
            <form action="${pageContext.request.contextPath}/logout" method="post" style="margin: 0; width: 100%;">
                <button type="submit" id="logout-btn">Logout</button>
            </form>
            <button id="cancel-btn" onclick="window.location.href='${pageContext.request.contextPath}/Dashboard/dashboard.jsp'">Cancel</button>
        </div>
    </div>

    <script>
        // Add a subtle transition effect for the buttons when hovered
        const buttons = document.querySelectorAll('button');
        buttons.forEach(button => {
            button.addEventListener('mouseenter', () => {
                button.style.transform = 'scale(1.05)';
            });
            button.addEventListener('mouseleave', () => {
                button.style.transform = 'scale(1)';
            });
        });
    </script>
</body>

</html>
