/* Future, состояния асинхронной операции, async, await.
Практика: Напиши функцию fetchWeather(), которая имитирует запрос к серверу с помощью Future.delayed на 2 секунды и возвращает строку «+25°C». Вызови её в main через await.
Самопроверка: Что выведется первым: print('Start') -> await fetchWeather() -> print('End')? А если убрать await?
*/

void main() async {
  print('Start');
  final weather = await fetchWeather();
  print(weather);
  print('End');
}

Future<String> fetchWeather() {
  return Future.delayed(Duration(seconds: 2), () => '+25°C');
}
