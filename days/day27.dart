/*Переопределение оператора == и hashCode. Почему в Dart два одинаковых по полям объекта — это разные объекты.
Практика: Создай класс Point(this.x, this.y). Переопредели оператор == так, чтобы Point(1, 2) == Point(1, 2) возвращало true.
Самопроверка: Зачем вместе с == нужно обязательно переопределять hashCode?
*/
class Point {
  final int x;
  final int y;

  Point(this.x, this.y);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Point) return false;
    return x == other.x && y == other.y;
  }

  @override
  int get hashCode => Object.hash(x, y);
}

void main() {
  final point1 = Point(1, 2);
  final point2 = Point(1, 2);
  final point3 = Point(3, 4);

  print(point1 == point2); // true
  print(point1 == point3); // false
  print(point1.hashCode == point2.hashCode); // true
}
