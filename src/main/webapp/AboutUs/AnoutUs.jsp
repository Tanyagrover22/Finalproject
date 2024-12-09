<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Interra</title>

    <!-- CSS for Styling -->
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #333;
            padding: 20px;
        }

        /* Header */
        header {
            text-align: center;
            padding: 10px 0;
            background: white;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        header h1 {
            font-size: 36px;
            color: #333;
            text-transform: uppercase;
        }

        /* Section Title */
        .section-title {
            font-size: 28px;
            text-align: center;
            margin: 20px 0;
            color: #fff;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.6);
        }

        /* About Us Intro */
        .intro {
            max-width: 800px;
            margin: 0 auto 40px;
            font-size: 16px;
            line-height: 1.6;
            text-align: center;
            color: #f0f0f0;
        }

        /* Services Section */
        .services-container {
            display: flex;
            justify-content: space-around;
            gap: 20px;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 0 auto 40px;
        }

        .service-card {
            background: #fff;
            color: #333;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 300px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        }

        .service-card img {
            max-width: 100%;
            height: 120px;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .service-card h3 {
            position: relative;
            z-index: 2;
        }

        .service-card p {
            position: relative;
            z-index: 2;
        }

        /* Footer */
        footer {
            text-align: center;
            font-size: 16px;
            margin: 20px 0;
            color: #fff;
            border-top: 2px solid #fff;
            padding: 20px;
        }

        /* Animation */
        @keyframes bounce {
            0% {
                transform: translateY(0);
            }

            50% {
                transform: translateY(-10px);
            }

            100% {
                transform: translateY(0);
            }
        }

        .animated-header h1 {
            animation: bounce 2s infinite ease-in-out;
        }
    </style>
</head>

<body>
    <!-- Header -->
    <header>
        <h1 class="animated-header">Welcome to Interra's About Us</h1>
    </header>

    <!-- Section Title -->
    <h2 class="section-title">Our Vision, Our Mission, Our Services</h2>

    <!-- Intro Section -->
    <div class="intro">
        <p>
            At Interra, we are committed to innovation, creativity, and excellence in delivering software solutions. Our
            mission is to leverage technology to solve real-world problems and create meaningful experiences for our clients.
        </p>
    </div>

    <!-- Services Section -->
    <section class="services-container">
        <div class="service-card">
            <img src="https://th.bing.com/th/id/OIP.Olj2cCGuzce9Lbl8BPKAnAHaEJ?w=310&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7/150" alt="Web Development">
            <h3>Web Development</h3>
            <p>Building interactive, user-friendly, and dynamic websites that meet business goals.</p>
        </div>
        <div class="service-card">
            <img src="https://th.bing.com/th/id/OIP.D3PTgwq2FgE1OurXFja_agHaEv?w=250&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7/150" alt="AI Solutions">
            <h3>AI Solutions</h3>
            <p>Leverage artificial intelligence to automate tasks and unlock data insights.</p>
        </div>
        <div class="service-card">
            <img src="https://th.bing.com/th/id/OIP.rGK2wpNmrt9_jWhhbg6BhwHaEp?w=281&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7/150" alt="Mobile Apps">
            <h3>Mobile App Development</h3>
            <p>Designing intuitive, scalable, and engaging mobile applications for various platforms.</p>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        &copy; 2024 Interra. All Rights Reserved.
    </footer>

</body>

</html>
