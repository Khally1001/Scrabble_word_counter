import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  functionToGiveAlphabetsValue();
}

functionToGiveAlphabetsValue() {
  print('What is the word');
  while (true) {
    try {
      var word = stdin.readLineSync();
      if (word == null || word.isEmpty) {
        throw FormatException('word can not be left empty.Input word');
      }
      word = word.trim();
      word = word.toUpperCase();
      final wordSplitted = word.split('');
      print('The splitted word to be given points is $wordSplitted');
      int totalPoints = 0;
      for (var letter in wordSplitted) {
        totalPoints += alphabetsAndPointsMap[letter] ?? 0;
        print(
            'the value of the character $letter is ${alphabetsAndPointsMap[letter]}');
      }
      print('TotalPoints is equal to $totalPoints');
      break;
    } catch (e) {
      print(e);
    }
  }
}

Map<String, int> alphabetsAndPointsMap = {
  'A': 1,
  'B': 4,
  'C': 3,
  'D': 2,
  'E': 1,
  'F': 4,
  'G': 2,
  'H': 4,
  'I': 1,
  'J': 8,
  'K': 5,
  'L': 1,
  'M': 3,
  'N': 1,
  'O': 1,
  'P': 3,
  'Q': 10,
  'R': 1,
  'S': 1,
  'T': 1,
  'U': 1,
  'V': 1,
  'W': 4,
  'X': 8,
  'Y': 4,
  'Z': 10
};
