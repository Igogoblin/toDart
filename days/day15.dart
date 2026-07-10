class Product {
  final String name;
  final double price;

  Product(this.name, this.price);

  @override // String делает переопределение метода toString() для удобного отображения информации о продукте.
  String toString() {
    return 'Product{name: $name, price: $price}';
  }

  int discountPrice({int discount = 20}) {
    return (price * (1 - discount / 100)).toInt();
  }
}

void main() {
  final product = Product('Laptop', 1500.0);
  print(product); // Выводит информацию о продукте
  print(
    'Discounted Price: ${product.discountPrice(discount: 10)}',
  ); // Выводит цену со скидкой
}
