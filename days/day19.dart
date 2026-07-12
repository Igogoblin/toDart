/* abstract class, implements vs extends.
Практика: Создай абстрактный класс Storage с методами save(String data) и read(). Реализуй два класса: LocalStorage и CloudStorage, которые имплементируют (implements) этот интерфейс.
Самопроверка: Можно ли создать экземпляр абстрактного класса напрямую через Storage()?
*/
void main() {
  final storage = LocalStorage();
  storage.save('Hello, World!');
  print(storage.read());

  final cloudStorage = CloudStorage();
  cloudStorage.save('Hello, World!');
  print(cloudStorage.read());

  // final storage2 = Storage(); // This would cause a compile error since Storage is abstract
}

abstract class Storage {
  void save(String data);
  String read();
}

class LocalStorage implements Storage {
  @override
  void save(String data) {}

  @override
  String read() => '';
}

class CloudStorage implements Storage {
  @override
  void save(String data) {}

  @override
  String read() => '';
}
