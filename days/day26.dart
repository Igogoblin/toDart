/* Параметризация типов <T>. Зачем это нужно, помимо списков.
Практика: Напиши класс DataResult<T>, который инкапсулирует ответ от сети. У него должны быть поля: T? data, String? errorMessage и bool get hasError.
Самопроверка: Создай DataResult<User> и DataResult<List<Product>>. Универсален ли класс?
*/
void main() {
  final dataResultUser = DataResult<User>(user, null, false);

  final dataResultProducts = DataResult<List<Product>>(products, null, false);
}

class DataResult<T> {
  final T? data;
  final String? errorMessage;
  final bool hasError;

  DataResult(this.data, this.errorMessage, this.hasError);
}

class User {
  final String name;
  final int age;

  User(this.name, this.age);
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

List<User> users = [];
List<Product> products = [];

final user = User('John', 30);
final product = Product('Laptop', 1500.0);
