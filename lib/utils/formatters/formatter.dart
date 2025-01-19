import 'package:intl/intl.dart';

class TFormatter {
  // Format Date
  static String formatDate(DateTime? date) {
    date ??= DateTime.now(); // Null-aware operator to use current date if null
    return DateFormat('dd-MMM-yyyy')
        .format(date); // Non-nullable after null check
  }

  // Format Indian Currency (₹)
  static String formatIndianCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_IN', symbol: '₹').format(amount);
  }

  // Format Indian Phone Numbers (Assuming 10-digit standard format)
  static String formatIndianPhoneNumber(String phoneNumber) {
    // Check for valid length
    if (phoneNumber.length == 10) {
      return '+91-${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';
    } else if (phoneNumber.length == 13 && phoneNumber.startsWith('+91')) {
      return '${phoneNumber.substring(0, 3)}-${phoneNumber.substring(3, 8)} ${phoneNumber.substring(8)}';
    }
    return phoneNumber; // Return as is if not a standard format
  }

  // International Phone Number Format (Supports +91 for India)
  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Default to +91 if no country code is detected
    if (!digitsOnly.startsWith('91')) {
      digitsOnly = '91$digitsOnly';
    }

    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = i == 0 ? 5 : 5;
      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));
      if (end < digitsOnly.length) {
        formattedNumber.write(' '); // Add space between groups
      }
      i = end;
    }

    return formattedNumber.toString();
  }
}
