import 'package:intl/intl.dart';

class SPriceCalculator {
  SPriceCalculator._(); // Private constructor
  
  // Constants for Philippines
  static const double philippinesTaxRate = 0.12; // 12% VAT
  static const double philippinesShippingCost = 150.0; // ₱150 standard shipping
  static const String currencySymbol = '₱';
  
  /// Calculate total price with tax and shipping for Philippines
  static double calculateTotalPrice(double productPrice) {
    double taxAmount = calculateTaxAmount(productPrice);
    return productPrice + taxAmount + philippinesShippingCost;
  }
    
  /// Calculate tax amount (12% VAT in Philippines)
  static double calculateTaxAmount(double productPrice) {
    return productPrice * philippinesTaxRate;
  }
  
  /// Calculate shipping cost (flat rate for Philippines)
  static double calculateShippingCost() {
    return philippinesShippingCost;
  }
  
  /// Calculate discount amount
  static double calculateDiscount(double price, double discountPercentage) {
    return price * (discountPercentage / 100);
  }
  
  /// Apply discount to price
  static double applyDiscount(double price, double discountPercentage) {
    double discountAmount = calculateDiscount(price, discountPercentage);
    return price - discountAmount;
  }
  
  /// Calculate price per item when buying in bulk
  static double calculateBulkPrice(double unitPrice, int quantity, {double bulkDiscount = 0.0}) {
    double totalBeforeDiscount = unitPrice * quantity;
    return applyDiscount(totalBeforeDiscount, bulkDiscount);
  }
  
  /// Format price as PHP currency string
  static String formatPrice(double price) {
    return NumberFormat.currency(
      locale: 'en_PH',
      symbol: currencySymbol,
    ).format(price);
  }
  
  /// Calculate installment price for common Philippines payment plans
  static double calculateInstallment(double totalPrice, int months) {
    if (months <= 0) return totalPrice;
    return totalPrice / months;
  }
  
  /// Calculate price with interest for Philippine payment plans
  static double calculatePriceWithInterest(double price, double interestRate, int months) {
    // Simple interest calculation common in Philippines financing
    return price * (1 + (interestRate / 100) * (months / 12));
  }
  
  /// Calculate cash on delivery fee (if applicable)
  static double calculateCODFee(double orderTotal) {
    // Many Philippine retailers charge a small COD fee
    return orderTotal >= 1000 ? 0.0 : 50.0; // Free for orders over ₱1000
  }
  
  /// Calculate provincial shipping surcharge (for areas outside Metro Manila)
  static double calculateProvincialShippingSurcharge(bool isProvincial) {
    return isProvincial ? 100.0 : 0.0;
  }
}