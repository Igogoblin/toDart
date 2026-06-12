import 'dart:io';
import 'dart:math';

void main() {
  print("This is day 4 of learning Dart!");
  print("Game find number in range 1-10");
  if (user["number"] == null) {
    user["number"] = randomNumber(); // Загадываем число при первой игре
  }
  while (user["userNumber"] != user["number"]) {
    print("Enter your guess:");
    playGame();
  }
  print("You win!");
}

/* Практика: Напиши мини-игру «Угадай число». Загадай в const переменную число. Напиши функцию, которая принимает «попытку» пользователя и выводит: «Меньше», «Больше» или «Угадал!». Используй все знания за 3 дня.
*/
Map<String, Object?> user = {"steps": 0, "number": null, "userNumber": null};

int randomNumber() {
  return Random().nextInt(9) + 1; // Генерируем случайное число от 1 до 10
}

String checkGuess(int guess) {
  user["steps"] = (user["steps"] as int) + 1; // Увеличиваем количество попыток
  int number = user["number"] as int;

  if (guess < number) {
    return "Надо больше " + user["number"].toString();
  } else if (guess > number) {
    return "Надо меньше " + user["number"].toString();
  } else {
    return "Угадал! Количество попыток: ${user["steps"]}";
  }
}

void playGame() {
  int guess = int.parse(stdin.readLineSync()!);
  user["userNumber"] = guess; // Сохраняем попытку пользователя
  print(checkGuess(guess));
}
