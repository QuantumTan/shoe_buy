import 'package:intl/intl.dart';

class SFormatter {
  // Private constructor
  SFormatter._();
  
  /// Format date to dd-MMM-yyyy
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  /// Format currency with proper symbol and separators
  static String formatCurrency(double amount, {String symbol = '₱', String locale = 'en_PH'}) {
    return NumberFormat.currency(locale: locale, symbol: symbol).format(amount);
  }

  /// Format phone number with proper separators
  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}';
    }
    return phoneNumber;
  }

  /// Format international phone number with country code
  static String formatInternationalPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Check if there are enough digits
    if (digitsOnly.length < 2) {
      return phoneNumber; // Return original if too short
    }

    // Extract country code and remaining digits
    String countryCode = digitsOnly.substring(0, 2);
    digitsOnly = digitsOnly.substring(2);

    // Build the formatted number
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int index = 0;

    // Format the remaining digits in groups
    while (index < digitsOnly.length) {
      int groupLength = 2;

      if (index == 0 && countryCode == '+1') {
        groupLength = 3;
      }

      // Make sure we don't go out of bounds
      int end = index + groupLength;
      if (end > digitsOnly.length) {
        end = digitsOnly.length;
      }

      formattedNumber.write(digitsOnly.substring(index, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      index = end;
    }

    // Return the formatted number as string
    return formattedNumber.toString();
  }
}
