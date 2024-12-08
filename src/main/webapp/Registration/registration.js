document.addEventListener("DOMContentLoaded", function () {
  const dateField = document.getElementById('dateOfJoining');
  const maxDate = new Date('2023-12-04').toISOString().split('T')[0];
  dateField.setAttribute('max', maxDate);
});

function validateForm() {
  const form = document.getElementById('registerForm');
  const genderFields = form.querySelectorAll('input[name="gender"]:checked');
  if (genderFields.length === 0) {
    alert("Please select at least one gender option.");
    return false;
  }

  return true;
}
