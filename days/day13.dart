int divide(int a, int b) {
  if (b == 0) {
    throw DivisionByZeroException();
  }
  return a ~/ b;
}

void main() {
  try {
    print('Результат успешного деления: ${divide(10, 2)}');
    print('Попытка деления на ноль...');
    print(divide(10, 0)); // Тут выполнение блока try прервется
    print('Эта строчка никогда не выполнится');
  } on DivisionByZeroException catch (e) {
    print('Перехвачена кастомная ошибка → $e');
  } catch (e) {
    print('Перехвачена непредвиденная ошибка: $e');
  } finally {
    print('Конец математического блока.');
  }
}

class DivisionByZeroException implements Exception {
  final String message;
  DivisionByZeroException([this.message = 'Деление на ноль недопустимо!']);

  @override
  String toString() => 'DivisionByZeroException: $message';
}
