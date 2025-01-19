class TValidator {
  // Validate Email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required.';
    }
    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  // Validate Password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }
    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    // Check for uppercase letters
    if (!value.contains(RegExp('[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }
    // Check for numbers
    if (!value.contains(RegExp('[0-9]'))) {
      return 'Password must contain at least one number.';
    }
    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}[<>]]'))) {
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  // Validate Phone Number (Indian format)
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required.';
    }
    // Regular expression for Indian phone number validation (10 digits, can start with 7-9)
    final phoneRegExp = RegExp(r'^(?:\+91|91)?[789]\d{9}$');
    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required, starting with 7, 8, or 9).';
    }
    return null;
  }
}
