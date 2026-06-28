void main() {
  processData(42); // Вывод: Вы ввели целое число: 42
  processData(3.14); // Вывод: Вы ввели число с плавающей точкой: 3.14
  processData("Hello"); // Вывод: Вы ввели строку: Hello
  processData(true); // Вывод: Неизвестный тип данных: bool

  dynamic rawData = 'Передай привет Flutter';
  String strongData = rawData as String; // Приведение типа
  print(strongData.toUpperCase()); // Вывод: ПЕРЕДАЙ ПРИВЕТ FLUTTER

  try {
    print(apiKey); // Ошибка: переменная не инициализирована
  } catch (e) {
    print("Ошибка: переменная apiKey не инициализирована. ${e.toString()}");
  }
  initApp(); // Инициализация переменной
  print(apiKey); // Вывод: 1234567890abcdef

  print(parseServerResponse("Hello")); // Вывод: Строка: Hello
  print(parseServerResponse(100)); // Вывод: Целое число: 100
  print(parseServerResponse(3.14)); // Вывод: Число с плавающей точкой: 3.14
  print(parseServerResponse(false)); // Вывод: Булев тип: false
  print(
    parseServerResponse([1, 2, 3]),
  ); // Вывод: Неизвестный тип данных: List<int>
  print(
    parseServerResponse({"error": "Invalid request"}),
  ); // Вывод: Ошибка: Invalid request
}

void processData(dynamic input) {
  if (input is Map<String, dynamic>) {
    if (input.containsKey("error")) {
      print("Ошибка: ${input["error"]}");
      return;
    }
  }
  if (input is int) {
    print("Вы ввели целое число: $input");
  } else if (input is double) {
    print("Вы ввели число с плавающей точкой: $input");
  } else if (input is String) {
    print("Вы ввели строку: $input");
  } else {
    print("Неизвестный тип данных: ${input.runtimeType}");
  }
}

late String apiKey; // Объявление переменной без инициализации

void initApp() {
  apiKey = "1234567890abcdef"; // Инициализация переменной
  print("API Key инициализирован: $apiKey");
}

String parseServerResponse(dynamic response) {
  if (response is String) {
    return "Строка: $response";
  } else if (response is int) {
    return "Целое число: $response";
  } else if (response is double) {
    return "Число с плавающей точкой: $response";
  } else if (response is bool) {
    return "Булев тип: $response";
  } else {
    return "Неизвестный тип данных: ${response.runtimeType}"; // Возвращаем строку с указанием типа данных
  }
}
