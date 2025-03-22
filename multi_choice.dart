import 'dart:io';

void main(List<String> args) {
  print('Welcome to this little multi-choice questionaire!!');
  multichoiceQuestions();
}

void multichoiceQuestions() {
  var totalPoints = 0;
  firstQuestion() {
    while (true) {
      try {
        print('How many legs does a cat have: ');
        int? legs = int.parse(stdin.readLineSync() ?? '');
        if (legs == 4) {
          print('You are correct!!');
          totalPoints += 1;
        } else {
          print('You got that wrong');
        }
        break;
      } catch (e) {
        print('Wrong type of Input provided. Please try again');
      }
    }
  }
  secondQuestion() {
    print('Who is the richest man in the world currently');
    String? name = stdin.readLineSync() ?? 'Wrong input given';
    name = name.toLowerCase();
    if (name == 'elon musk') {
      print('Nice job! you got that');
      totalPoints += 1;
    } else {
      print('You got that wrong');
    }
    print('Your total point is $totalPoints/2');
  }
  secondQuestion();
  firstQuestion();
}
