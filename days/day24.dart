/* Напиши симулятор загрузки файлов. У тебя есть список из 3-х «файлов» (урлов). Напиши асинхронную функцию, которая загружает их строго по очереди (через await), и другую версию, которая запускает загрузку всех файлов одновременно (Future.wait). Сравни время выполнения.
Самопроверка: Какой способ загрузки файлов быстрее? Почему?
*/

import 'dart:async';
import 'dart:io';

Future<void> loadFile(String url) async {
  await Future.delayed(Duration(seconds: 1));
  print('Loaded file from $url');
  await Future.delayed(Duration(seconds: 1));
}

Future<void> main() async {
  final urls = [
    'https://example.com/file1.txt',
    'https://example.com/file2.txt',
    'https://example.com/file3.txt',
  ];
  for (final url in urls) {
    await loadFile(url);
  }
}

Future<void> main2() async {
  final urls = [
    'https://example.com/file1.txt',
    'https://example.com/file2.txt',
    'https://example.com/file3.txt',
  ];
  await Future.wait(urls.map((url) => loadFile(url)));
}

void main3() async {
  final urls = [
    'https://example.com/file1.txt',
    'https://example.com/file2.txt',
    'https://example.com/file3.txt',
  ];
  final futures = urls.map((url) => loadFile(url));
  await Future.wait(futures);
}
