/**
 * 
 */
document.getElementById('loginForm').addEventListener('submit', function (event) {
    const username = document.getElementById('username').value.trim();
    const password = document.getElementById('password').value.trim();
    const errorMessage = document.getElementById('error-message');

    if (username === '' || password === '') {
        event.preventDefault();
        errorMessage.textContent = 'All fields are required.';
        errorMessage.style.display = 'block';
    } else if (password.length < 6) {
        event.preventDefault();
        errorMessage.textContent = 'Password must be at least 6 characters.';
        errorMessage.style.display = 'block';
    } else {
        errorMessage.style.display = 'none';
    }
});
