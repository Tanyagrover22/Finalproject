<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Interra</title>
    <link rel="stylesheet" href="welcome.css">
    <style>
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #121212, #333);
            color: #fff;
            height: 100vh;
            overflow-y: auto; /* Enable scroll if necessary */
        }

    
        header {
            text-align: center;
            padding: 20px 0;
            background-color: #1f1f1f;
            color: white;
            border-bottom: 3px solid #2980b9;
        }

        header h1 {
            font-size: 3rem;
            margin-bottom: 5px;
        }

        header p {
            font-size: 1.2rem;
            margin-bottom: 10px;
            font-style: italic;
        }

    
        nav {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin: 10px 0;
            background-color: #242424;
            padding: 10px 0;
            border-bottom: 2px solid #2980b9;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            background: #2980b9;
            transition: background 0.3s ease;
        }

        nav a:hover {
            background: #1f5f8b;
        }

        /* Main Dashboard */
        main {
            padding: 30px;
            max-width: 1400px;
            margin: 20px auto;
            background: #252525;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.7);
            color: #fff;
            overflow-y: auto;
            height: calc(100vh - 180px); /* Adjust to fit viewport */
        }

        
        #user-details {
            background: #444;
            padding: 20px;
            border-radius: 8px;
            color: #fff;
            margin: 10px 0;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.5);
        }

        #user-details h3 {
            margin-bottom: 10px;
            color: #2980b9;
        }

    
        #highlights {
            display: flex;
            justify-content: space-between;
            gap: 20px;
            flex-wrap: wrap;
            padding: 20px;
            margin: 20px 0;
        }

        .highlight-card {
            background: #555;
            color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.6);
            flex: 1 1 calc(33% - 20px);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
            font-size: 1rem;
            height: 120px;
        }

        .highlight-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.7);
        }

    
        footer {
            text-align: center;
            padding: 15px 0;
            background-color: #1f1f1f;
            color: white;
            margin-top: 20px;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            #highlights {
                gap: 10px;
            }

            .highlight-card {
                flex: 1 1 100%;
            }
        }

    </style>
</head>

<body>
    
    <header>
        <h1>Welcome to Interra Dashboard, <%= session.getAttribute("firstName") %>!</h1>
        <p>Your personalized platform for innovation and creativity awaits you.</p>
    </header>


    <nav>
        <a href="${pageContext.request.contextPath}/EditProfile/EditProfile.jsp">Edit Profile</a>
        <a href="${pageContext.request.contextPath}/Logout/logout.jsp">Logout</a>
    </nav>


    <main>
        <!-- User Details Section -->
        <section id="user-details">
            <h3>Your Personal Information</h3>
            <p><strong>Name:</strong> <%= session.getAttribute("firstName") %> <%= session.getAttribute("lastName") %></p>
            <p><strong>Email:</strong> <%= session.getAttribute("email") %></p>
            <p><strong>Gender:</strong> <%= session.getAttribute("gender") %></p>
            <p><strong>City:</strong> <%= session.getAttribute("city") %></p>
            <p><strong>State:</strong> <%= session.getAttribute("state") %></p>
            <p><strong>Address:</strong> <%= session.getAttribute("address") %></p>
        </section>

        
        <section id="highlights">
            <div class="highlight-card">
                <h4>Innovative Solutions</h4>
                <p>Empowering industries with cutting-edge technology solutions tailored for real-world challenges.</p>
            </div>
            <div class="highlight-card">
                <h4>Global Reach</h4>
                <p>Our solutions are trusted across continents, driving business transformation worldwide.</p>
            </div>
            <div class="highlight-card">
                <h4>Committed Vision</h4>
                <p>Our mission is to lead innovation while ensuring customer success with seamless execution.</p>
            </div>
        </section>
    </main>

    
    <footer>
        &copy; 2024 Interra Project | Powered by Creativity & Innovation
    </footer>
</body>

</html>
