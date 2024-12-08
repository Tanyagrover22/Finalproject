package demo.backend;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/saveProfile")
public class SaveProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/your_database_name";
    private static final String DB_USER = "your_database_user";
    private static final String DB_PASSWORD = "Tanya@750";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get user input from the form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");

        // Get the session user ID (assumes user is logged in and ID is stored in session)
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("Login/login.jsp?status=sessionExpired");
            return;
        }

        int userId = (int) session.getAttribute("userId");

        // Update user details in the database
        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             PreparedStatement stmt = conn.prepareStatement(
                     "UPDATE users SET first_name = ?, last_name = ?, email = ?, address = ?, city = ?, state = ? WHERE user_id = ?")) {

            // Set parameter values
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, email);
            stmt.setString(4, address);
            stmt.setString(5, city);
            stmt.setString(6, state);
            stmt.setInt(7, userId);

            // Execute update
            int rowsUpdated = stmt.executeUpdate();

            // Check update status
            if (rowsUpdated > 0) {
                // Update session attributes
                session.setAttribute("firstName", firstName);
                session.setAttribute("lastName", lastName);
                session.setAttribute("email", email);
                session.setAttribute("address", address);
                session.setAttribute("city", city);
                session.setAttribute("state", state);

                // Redirect to dashboard with a success message
                response.sendRedirect("Dashboard/dashboard.jsp?status=success");
            } else {
                // Handle case where no rows were updated
                response.sendRedirect("editProfile.jsp?status=error");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("editProfile.jsp?status=error");
        }
    }
}
