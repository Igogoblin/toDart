List<double> prices = [150.5, 200.0, 500.75, 1000.0, 45.3];
double totalPrice = prices.reduce((a, b) => a + b);

double totalSum = 0;
void main() {
  print("Total price: \$${totalPrice.toStringAsFixed(2)}");

  for (double price in prices) {
    totalSum += price;
  }
  print("Total price: \$${totalSum.toStringAsFixed(2)}");

  double averagePrice = totalPrice / prices.length;
  print("Average price: \$${averagePrice.toStringAsFixed(2)}");

  // Remove prices below $100
  prices.removeWhere((price) => price < 100);
  print(
    "Prices below \$100 removed. Remaining prices: ${prices.map((p) => "\$${p.toStringAsFixed(2)}").join(", ")}",
  );

  for (int i = 0; i < prices.length; i++) {
    print("Товар №${i + 1} стоит \$${prices[i].toStringAsFixed(2)}");
  }
}
