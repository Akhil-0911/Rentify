class TPricingCalculator {
  /// Calculate Price based on commission
  static double calculateTotalPrice(double productPrice, String location) {
    double commissionRate = getCommissionRateForLocation(location);
    double commissionAmount = productPrice *
        commissionRate; // Calculate the commission based on the product price
    double totalPrice =
        productPrice + commissionAmount; // Add commission to the product price
    return totalPrice;
  }

  /// Calculate commission
  static String calculateCommission(double productPrice, String location) {
    double commissionRate = getCommissionRateForLocation(location);
    double commissionAmount = productPrice * commissionRate;
    return commissionAmount.toStringAsFixed(
        2); // Return the commission amount as a string with 2 decimal places
  }

  // Get commission rate for the given location
  static double getCommissionRateForLocation(String location) {
    // Lookup the commission rate for the given location from a database or API.
    // Return the appropriate commission rate.
    return 0.10; // Example commission rate of 10%
  }

  /// Sum all cart values and return total amount
// static double calculateCartTotal(CartModel cart) {
//   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
// }
}
