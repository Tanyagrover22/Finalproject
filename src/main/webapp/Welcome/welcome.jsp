<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Interra</title>
    <style>
      
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #000080, #1E3C72);
            color: #ffffff;
            margin: 0;
            padding: 0;
        }

      
        header {
            text-align: center;
            padding: 20px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5);
        }

        header h1 {
            font-size: 2.8rem;
            margin: 5px 0;
        }

        header p {
            font-size: 1.2rem;
            margin-top: 10px;
        }

        nav {
            background-color: #333;
            padding: 10px 0;
            overflow: hidden;
        }

        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            text-decoration: none;
            color: #ffffff;
            padding: 10px 18px;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        nav ul li a:hover {
            background-color: #555;
        }

        /* Section Styling */
        section {
            padding: 40px;
            text-align: center;
            margin: 20px auto;
            max-width: 900px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.3);
        }

        #details {
            background: #ffffff;
            color: #333;
        }

        #about {
            background: #ffffff;
            color: #333;
        }

        #dashboard {
            background: #ffffff;
            color: #333;
        }

        h2 {
            font-size: 2rem;
            margin-bottom: 10px;
            color: #1E90FF;
        }

        p {
            margin-bottom: 15px;
            font-size: 1.1rem;
            line-height: 1.7;
        }

        .button-container a {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            background: linear-gradient(to right, #4facfe, #00f260);
            transition: transform 0.2s ease, background-color 0.3s ease;
        }

        .button-container a:hover {
            transform: scale(1.1);
            background: linear-gradient(to right, #00f260, #4facfe);
        }

      
        footer {
            text-align: center;
            padding: 15px;
            background: rgba(0, 0, 0, 0.8);
            color: #fff;
            margin-top: 30px;
            font-size: 0.9rem;
        }

      
        @media (max-width: 768px) {
            h1 {
                font-size: 2.2rem;
            }

            nav ul li a {
                font-size: 0.9rem;
                padding: 8px 15px;
            }

            section {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome, <%= session.getAttribute("firstName") %> <%= session.getAttribute("lastName") %>!</h1>
        <p>Your personalized journey with Interra starts here.</p>
    </header>
    
   
    <nav>
        <ul>
            <li><a href="#details">Details</a></li>
            <li><a href="${pageContext.request.contextPath}/AboutUs/AnoutUs.jsp">About Us</a></li>
            <li><a href="${pageContext.request.contextPath}/Dashboard/dashboard.jsp">Dashboard</a></li>
            <li><a href="${pageContext.request.contextPath}/Logout/logout.jsp">Logout</a></li>
        </ul>
    </nav>

    <section id="details">
        <h2>Your Details</h2>
        <p><strong>Email:</strong> <%= session.getAttribute("email") %></p>
        <p><strong>Gender:</strong> <%= session.getAttribute("gender") %></p>
        <p><strong>Address:</strong> <%= session.getAttribute("address") %>, <%= session.getAttribute("city") %>, <%= session.getAttribute("state") %></p>
        <div class="button-container">
            <a href="${pageContext.request.contextPath}/Dashboard/dashboard.jsp">Go to Dashboard</a>
        </div>
    </section>


    <section id="about">
        <h2>About Us</h2>
        <p>We at Interra aim to empower individuals by solving modern technological challenges and fostering innovation with simplicity and creativity.</p>
        <div class="button-container">
            <a href="${pageContext.request.contextPath}/AboutUs/AnoutUs.jsp">View Your Details</a>
        </div>
    </section>

   
    <section id="dashboard">
        <h2>Your Dashboard</h2>
        <p>Hello, <strong><%= session.getAttribute("username") %></strong>! Manage your tools, insights, and projects from here.</p>
        <div class="button-container">
            <a href="#about">Learn More About Us</a>
        </div>
    </section>

 
    <footer>
        <p>&copy; 2024 Interra Project. All Rights Reserved. Designed with passion and creativity.</p>
    </footer>
</body>
</html>
