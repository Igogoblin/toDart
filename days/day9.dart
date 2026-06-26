void main() {
  int getNameLength(String? username) {
    return username?.length ?? 0;
  }

  print(getNameLength("Alice")); // Output: 5
  print(getNameLength(null)); // Output: 0

  String? username1 = "Bob";
  String? username2 = null;

  print(username1.length); // Output: 3
  print(username2?.length); // Output: null
}

/*В Dart по умолчанию все типы являются non-nullable (не могут принимать значение null).
String — это железно строка. Там обязаны быть символы (хотя бы пустые кавычки "").
String? — это абсолютно другой тип-контейнер. Он говорит компилятору: «Здесь может быть строка, а может быть пустота (null)».
*/
//Оператор нарезки/запасного значения (??) Если выражение слева от ?? возвращает null, то берется значение справа. Это способ задать «дефолт».
