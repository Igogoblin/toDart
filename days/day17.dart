/*extends, super, переопределение методов @override.
Практика: Создай базовый класс Animal с методом makeSound(). Создай классы Dog и Cat, которые наследуются от Animal и переопределяют этот метод.
Самопроверка: Создай список List<Animal> animals = [Dog(), Cat()]; и в цикле вызови makeSound(). Что произошло? (Это и есть полиморфизм).
*/
void main() {
  List<Animal> animals = [Dog(), Cat()];
  for (var animal in animals) {
    animal.makeSound();
  }
}

class Animal {
  void makeSound() {
    print('Animal makes a sound.');
  }
}

class Dog extends Animal {
  @override // Переопределение метода makeSound() для класса Dog
  void makeSound() {
    print('Woof! Woof!');
  }
}

class Cat extends Animal {
  @override // Переопределение метода makeSound() для класса Cat
  void makeSound() {
    print('Meow! Meow!');
  }
}
