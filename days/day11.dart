void main() {
  print("This is day 11 of learning Dart!");
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> squaredEvenNumbers = numbers
      .where((number) => number % 2 == 0)
      .map((number) => number * number)
      .toList();
  print(numbers);
  print(squaredEvenNumbers);
  List<Map<String, dynamic>> orders = [
    {'id': 1, 'item': 'Клавиатура', 'price': 3000, 'status': 'completed'},
    {'id': 2, 'item': 'Мышь', 'price': 1500, 'status': 'canceled'},
    {'id': 3, 'item': 'Монитор', 'price': 15000, 'status': 'completed'},
    {'id': 4, 'item': 'Коврик', 'price': 600, 'status': 'completed'},
  ];
  List<Map<String, dynamic>> completedOrders = orders
      .where((order) => order['status'] == 'completed')
      .toList();
  print(completedOrders);
  int sumOfCompletedOrders = completedOrders.fold(
    0,
    (sum, order) => sum + (order['price'] as int),
  );
  print(sumOfCompletedOrders);
}
