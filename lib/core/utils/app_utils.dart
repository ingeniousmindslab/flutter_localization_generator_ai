class AppUtils {
  static String generateNextInvoiceNumber(String previousInvoiceNumber) {
    // Extract numeric part from the previous invoice number
    String numericPart =
        previousInvoiceNumber.replaceAll(RegExp(r'[^0-9]'), '');

    // Convert the numeric part to an integer
    int numericValue = int.tryParse(numericPart) ?? 0;

    // Increment the numeric value by 1
    numericValue++;

    // Get the prefix from the previous invoice number (non-numeric part)
    String prefix = previousInvoiceNumber.replaceAll(RegExp(r'[0-9]'), '');

    // Combine the prefix and the incremented numeric value
    String nextInvoiceNumber = '$prefix$numericValue';

    return nextInvoiceNumber;
  }
}
