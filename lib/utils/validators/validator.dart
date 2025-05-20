class SValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'email is required';
    }

    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegex.hasMatch(value)) {
      return 'invalid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'password is required.';
    }
    if (value.length < 6) {
      return 'password must be at least 6 characters long.';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'password must contain at least one uppercase letter.';
    }
    if(!value.contains(RegExp(r'[a-z]'))){
      return 'Password must contain at least one lowercase letter.';
    }
    if(!value.contains(RegExp(r'[0-9]'))){
      return 'Password must contain at least one number.';
    }
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}/;\)-=+_<>]'))){
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone number is required';
    }
    
    // remove any non-digit characters for validation
    final digitsOnly = value.replaceAll(RegExp(r'\D'), '');
    
    // most countries have phone numbers between 8 and 15 digits
    if (digitsOnly.length < 8 || digitsOnly.length > 15) {
      return 'please enter a valid phone number';
    }
    
    // bDasic phone number format validation
    final phoneRegex = RegExp(
      r'^(\+\d{1,3}( )?)?((\(\d{1,3}\))|\d{1,3})[- .]?\d{3,4}[- .]?\d{4}$'
    );
    
    if (!phoneRegex.hasMatch(value)) {
      return 'please enter a valid phone number format';
    }
    
    return null;
  }
}
