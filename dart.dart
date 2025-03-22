/*
 ERROR HANDLING
import 'dart:io';

void main(List<String> args) {
  personClass();
}

void personClass() {
  while (true) {
    print('How old are you?');
    try {
      String? input = stdin.readLineSync();
      if (input == null || input.isEmpty) {
        print('Please enter a valid number.');
        continue;
      }

      int age = int.parse(input);
      if (age < 0) {  
        print('Age cannot be less than zero. Try another age.');
      } else {
        print('Your age is $age');
        break; // Exit loop when a valid age is entered
      }
    } catch (e) {
      print('Invalid input. Please enter a number.');
    }
  }
}*/
/*ASYNCHRORNOS FUNCTIONS
this is a task that doesn't need to be solved before proceeding to processing the next one
FUTURES are piece of functionality that will complete their task in the future
*/

/*void main(List<String> args) async {
  print(await getName());
  print(await getAdress());
   print(await getPhoneNumber());
  print(await  getIpAddress());
}

Future<String> getName() async {
  return "Abdulwahab Khalid";
}

getAdress() {
  return Future.value('nepa road phase 4');
}

Future<String> getPhoneNumber() =>
    Future.delayed(Duration(seconds: 1), () => '08068680874');
    
Future<int> getIpAddress() async {
 Future.delayed(Duration(seconds: 1));
  return 128;
}
*/
// Future<String> getFullName(
//     {required String firstname, required String lastname}) async {
//   if (firstname.isEmpty || lastname.isEmpty) {
//     throw Exception('one or both names are missing');
//   } else {
//     return '$firstname $lastname';
//   }
// }

// void main(List<String> args) async {
//   try {
//     print(await getFullName(firstname: 'Abdulwahab', lastname: 'Khalid'));
//     print(await getFullName(firstname: 'Abdulwahab', lastname: ''));
//   } catch (e) {
//     print('one or both names are missin');
//   }
// }

//future chaining is the possibility of making a future value be made used of inside another future function to produce another future
// FUTURE CHAINING
// void main(List<String> args)async {
//   // print(await calculateLength(await getValue()));
//   final length = await getValue().then((value) => calculateLength(value)).then((value)=>value+2);
//   print(length);
// }

// // Future<String> getValue() async =>
// //     Future.delayed(Duration(seconds: 1), () => 'Abdulwahab Khalid');
// // Future<int> calculateLength(String value) async =>
// //     Future.delayed(Duration(seconds: 1), () => value.length);

// void main(List<String> args) async {
//   await for (final numbers in getNumbers()) {
//     print(numbers);
//   }
//   try {
//     await for (final name in getNames()) {
//       print(name);
//     }
//   } catch (e) {
//     print("Something went wrong");
//   }
// }

// Stream<int> getNumbers() async* {
//   for (var i = 0; i <= 5; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield i;
//   }
// }

// Stream<String> getNames() async* {
//   await Future.delayed(Duration(seconds: 1));
//   yield "Abdulwahab Khalid";
//   await Future.delayed(Duration(seconds: 1));
//   yield "ABdulwahab Fatima";
//   throw Exception('Something went wrong');
// }

// Stream<int> getNumbers() async* {
//   for (var i = 0; i <= 5; i++) {
//     yield i;
//   }
// }

// Stream<int> addNumbersWithTwo(int numbers) async* {
//    await Future.delayed(Duration(seconds: 1));
//     print('---------------');
//     yield numbers+2;
// }

// void main(List<String> args) async {
//   await for (final number
//       in getNumbers().asyncExpand((number) => addNumbersWithTwo(number))) {
//     print(number);
//   }
// }

// Stream<String> getName() async* {
//   await Future.delayed(Duration(seconds: 1));
//   yield "ABDULWAHAB KHALID";
// }

// Stream<String> calculateLength(String value) async* {
//   for (var i = 0; i < value.length; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     yield value[i];
//   }
// }

// void main(List<String> args) async {
//   await for (final names
//       in getName().asyncExpand((value) => calculateLength(value))) {
//     print(names);
//   }
// }

// USING THE REDUCE METHOD IN ASYNC FUNCTIONS REQUIRES YOU TO MAKE AN OUTSIDE FUNCTION ABOUT THE TASK YOU WANT TO Do
// AND DON'T FORGET THAT THE AMIN USE OF REDUCE IS TO COMBINE
// Stream<int> numbers() async* {
//   yield 20;
//   yield 25;
//   yield 10;
//   yield 8;
// }

// int addNumbers(int a, int b) => a + b;
// void main(List<String> args) async {
//   final sum = await numbers().reduce(addNumbers);
//   print(sum);
// }
// ASYNC GENERATORS

// void main(List<String> args) async {
//   await for (final values in numbers()) {
//     print(values);
//   }
//   print('----------');
//   await for (final value in numbers(f: evenNumbersOnly)) {
//     print(value);
//   }
// }

// typedef Isincluded = bool Function(int value);
// Stream<int> numbers({int start = 0, int end = 4, Isincluded? f}) async* {
//   for (var i = start; i < end; i++) {
//     await Future.delayed(Duration(seconds: 1));
//     if (f == null || f(i)) {
//       yield i;
//     }
//   }
// }

// bool evenNumbersOnly(int value) => value % 2 == 0;
// bool oddNumbersOnly(int value) => value % 2 != 0;
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// void main(List<String> args) async {
//   final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   final response = await http.get(url);
//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     print('Title:${data["title"]}');
//   } else {
//     print('Failed to load data:${response.statusCode}');
//   }
// }
// USING THE YEILD* TO JOIN STRINGS FROM TWO FUNCTIONS TOGETHER
// void main(List<String> args) async {
//   await for (final names in allNames()) {
//     print(names);
//   }
// }

// Stream<String> getMaleNAmes() async* {
//   yield 'Abdulwahab';
//   yield 'Khalid';
// }

// Stream<String> getFemaleNames() async* {
//   yield 'Fatima';
//   yield 'Rahama';
// }

// Stream<String> allNames() async* {
//   yield* getMaleNAmes();
//   yield* getFemaleNames();
// }

// A stream controller is a way you can add values into a stream and readout the values into it
// import 'dart:async';

// void main(List<String> args) async {
//   final controller = StreamController<String>();
//   controller.sink.add('hello');
//   controller.sink.add('World');
//   await for (final value in controller.stream) {
//     print(value);
//   }
//   controller.close();
// }
void main(List<String> args) async {
  await for (final name in names) {
    print(name.toUpperCase());
  }
}

Stream<String> names =
    Stream.fromIterable(['Khalid', 'Fatima', 'Abdulhakeem', 'Rahama']);
