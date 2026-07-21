/* Future, состояния асинхронной операции, async, await.
Практика: Напиши функцию fetchWeather(), которая имитирует запрос к серверу с помощью Future.delayed на 2 секунды и возвращает строку «+25°C». Вызови её в main через await.
Самопроверка: Что выведется первым: print('Start') -> await fetchWeather() -> print('End')? А если убрать await?
*/

void main() async {
  print('Start');
  final weather = await fetchWeather(2);
  final weather2 = fetchWeather(3);
  print(weather);
  print(weather2);
  print('End');
}

Future<String> fetchWeather(t) {
  return Future.delayed(
    Duration(seconds: t),
    () => '+25°C',
  ); // имитация запроса к серверу
  /*
future - объект, который представляет собой результат асинхронной операции, которая может завершиться успешно или с ошибкой
delayd - задержка, имитация запроса к серверу
duration - длительность, время задержки

*/
}
