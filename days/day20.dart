/*mixin, with, расширения (extension).
Практика: Создай миксин Logger, который имеет метод log(String msg). Подмешай его к классу AuthService. Также напиши extension для класса String, который делает первую букву заглавной (например, "dart".capitalize()).
Самопроверка: В чем разница между extends и with?
*/

void main() {
  final authService = AuthService();
  authService.log("User logged in");
  print("Dart".capitalize()); // Вывод: Dart
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}'; // Возвращает строку с первой заглавной буквой
  }
}

mixin Logger {
  void log(String msg) {
    print(msg);
  }
}

class AuthService with Logger {
  void login() {
    log("User logged in");
  }
}
