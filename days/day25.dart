/*Stream, async*, yield, подписка на поток .listen().
Практика: Напиши функцию-таймер countdown(int ticks) async*. Она должна каждую секунду отдавать (yield) оставшееся количество секунд. В функции main подпишись на этот поток и выводи цифры в консоль.
Самопроверка: Какое ключевое слово заменяет return в генераторах потоков?
*/
void main() {
  countdown(5).listen((value) {
    print(value);
  });
}

Stream<int> countdown(int ticks) async* {
  for (int i = ticks; i > 0; i--) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}
