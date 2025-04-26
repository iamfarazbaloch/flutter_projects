class PhoneUtils {
  // Format Pakistan phone number to E.164 format
  static String formatPakistanPhone(String phone) {
    // Remove spaces, dashes and parentheses
    phone = phone.replaceAll(RegExp(r'[\s\-()]'), '');

    // Convert to E.164 format for Pakistan
    if (phone.startsWith('+92')) {
      return phone;
    } else if (phone.startsWith('92')) {
      return '+$phone';
    } else if (phone.startsWith('0')) {
      return '+92${phone.substring(1)}';
    } else if (phone.length == 10 &&
        phone.startsWith('3')) {
      return '+92$phone';
    }
    return '+92$phone'; // Default case, add country code
  }

  // Validate if phone number is in valid Pakistan format
  static bool isValidPakistanPhone(String phone) {
    // Full format with country code: +92 3XX XXXXXXX
    RegExp fullRegex = RegExp(r'^\+92[3][0-9]{9}$');

    if (fullRegex.hasMatch(phone)) {
      return true;
    }

    return false;
  }
}
