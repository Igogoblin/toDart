/* Создай иерархию классов для игры: Абстрактный Hero (поля: name, hp, damage), классы Warrior и Mage. Создай класс Monster. Напиши цикл боя, пока у кого-то не кончится hp. Используй миксины для особых умений (например, миксин CriticalHit).
Самопроверка: Код должен быть разбит на логические классы, методы инкапсулированы.
 Добавь в свою RPG-игру инвентарь для героя. Инвентарь должен быть отдельным классом, содержащим List<Item>. Реализуй методы добавления и использования предметов (аптечки, свитки).
*/
import 'dart:math';

void main() {
  final warrior = Warrior(name: "Conan", hp: 100, damage: 20);
  final mage = Mage(name: "Gandalf", hp: 80, damage: 25);
  final monster = Monster(name: "Orc", hp: 120, damage: 15);

  while (warrior.hp > 0 && monster.hp > 0) {
    warrior.attack(monster);
    if (monster.hp <= 0) {
      break;
    }
    monster.attack(warrior);
  }

  if (warrior.hp > 0) {
    print("${warrior.name} wins!");
  }

  if (monster.hp > 0) {
    print("${monster.name} wins!");
  }
}

class Hero {
  String name;
  int hp;
  int damage;

  Hero({required this.name, required this.hp, required this.damage});
}

// class Warrior extends Hero {
//   Warrior({required String name, required int hp, required int damage})
//     : super(name: name, hp: hp, damage: damage);
// }

class Mage extends Hero {
  Mage({required String name, required int hp, required int damage})
    : super(name: name, hp: hp, damage: damage);
}

class Monster extends Hero {
  Monster({required String name, required int hp, required int damage})
    : super(name: name, hp: hp, damage: damage);
  void attack(Hero hero) {
    hero.hp -= damage;
  }
}

mixin CriticalHit on Hero {
  void criticalHit() {
    damage *= 2;
  }
}
// использование миксина CriticalHit в классе Warrior с вероятностью 20% для нанесения критического удара

class Warrior extends Hero with CriticalHit {
  Warrior({required String name, required int hp, required int damage})
    : super(name: name, hp: hp, damage: damage);
  void attack(Monster monster) {
    if (Random().nextInt(100) < 20) {
      criticalHit();
      print("${name} lands a critical hit!");
    }
    monster.hp -= damage;
  }
}

class Inventory {
  List<Item> items = [];

  void addItem(Item item) {
    items.add(item);
    print("${item.name} added to inventory.");
  }

  void useItem(String itemName, Hero hero) {
    final item = items.firstWhere(
      (item) => item.name == itemName,
      orElse: () => throw Exception("Item not found"),
    );
    item.use(hero);
    items.remove(item);
  }

  void printInventory() {
    print("Inventory:");
    for (final item in items) {
      print("${item.name} - ${item.description}");
    }
  }
}
