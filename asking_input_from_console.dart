import 'dart:io';

void main(List<String> args) {
  print('What is your age');
  int age = int.parse(stdin.readLineSync() ?? '0');
  print('You are $age years old');
}
